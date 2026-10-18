package androidx.appcompat.widget;

import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.View;
import androidx.annotation.ap;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public class bg {

    /* renamed from: a, reason: collision with root package name */
    private static final String f253a = "ViewUtils";
    private static Method b;

    static {
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                b = View.class.getDeclaredMethod("computeFitSystemWindows", Rect.class, Rect.class);
                if (b.isAccessible()) {
                    return;
                }
                b.setAccessible(true);
            } catch (NoSuchMethodException unused) {
                Log.d(f253a, "Could not find method computeFitSystemWindows. Oh well.");
            }
        }
    }

    private bg() {
    }

    public static boolean a(View view) {
        return androidx.core.n.af.p(view) == 1;
    }

    public static void a(View view, Rect rect, Rect rect2) {
        if (b != null) {
            try {
                b.invoke(view, rect, rect2);
            } catch (Exception e) {
                Log.d(f253a, "Could not invoke computeFitSystemWindows", e);
            }
        }
    }

    public static void b(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            try {
                Method method = view.getClass().getMethod("makeOptionalFitsSystemWindows", new Class[0]);
                if (!method.isAccessible()) {
                    method.setAccessible(true);
                }
                method.invoke(view, new Object[0]);
            } catch (IllegalAccessException e) {
                Log.d(f253a, "Could not invoke makeOptionalFitsSystemWindows", e);
            } catch (NoSuchMethodException unused) {
                Log.d(f253a, "Could not find method makeOptionalFitsSystemWindows. Oh well...");
            } catch (InvocationTargetException e2) {
                Log.d(f253a, "Could not invoke makeOptionalFitsSystemWindows", e2);
            }
        }
    }
}
