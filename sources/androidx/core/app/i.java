package androidx.core.app;

import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import androidx.annotation.ah;
import androidx.annotation.ai;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: /home/user/work/dex/classes.dex */
public final class i {

    /* loaded from: /home/user/work/dex/classes.dex */
    static class a {

        /* renamed from: a, reason: collision with root package name */
        private static final String f345a = "BundleCompatBaseImpl";
        private static Method b;
        private static boolean c;
        private static Method d;
        private static boolean e;

        private a() {
        }

        public static IBinder a(Bundle bundle, String str) {
            if (!c) {
                try {
                    b = Bundle.class.getMethod("getIBinder", String.class);
                    b.setAccessible(true);
                } catch (NoSuchMethodException e2) {
                    Log.i(f345a, "Failed to retrieve getIBinder method", e2);
                }
                c = true;
            }
            if (b != null) {
                try {
                    return (IBinder) b.invoke(bundle, str);
                } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e3) {
                    Log.i(f345a, "Failed to invoke getIBinder via reflection", e3);
                    b = null;
                }
            }
            return null;
        }

        public static void a(Bundle bundle, String str, IBinder iBinder) {
            if (!e) {
                try {
                    d = Bundle.class.getMethod("putIBinder", String.class, IBinder.class);
                    d.setAccessible(true);
                } catch (NoSuchMethodException e2) {
                    Log.i(f345a, "Failed to retrieve putIBinder method", e2);
                }
                e = true;
            }
            if (d != null) {
                try {
                    d.invoke(bundle, str, iBinder);
                } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e3) {
                    Log.i(f345a, "Failed to invoke putIBinder via reflection", e3);
                    d = null;
                }
            }
        }
    }

    private i() {
    }

    @ai
    public static IBinder a(@ah Bundle bundle, @ai String str) {
        if (Build.VERSION.SDK_INT >= 18) {
            return bundle.getBinder(str);
        }
        return a.a(bundle, str);
    }

    public static void a(@ah Bundle bundle, @ai String str, @ai IBinder iBinder) {
        if (Build.VERSION.SDK_INT >= 18) {
            bundle.putBinder(str, iBinder);
        } else {
            a.a(bundle, str, iBinder);
        }
    }
}
