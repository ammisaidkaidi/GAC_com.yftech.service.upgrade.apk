package androidx.j;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.ViewGroup;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: /home/user/work/dex/classes.dex */
class at {

    /* renamed from: a, reason: collision with root package name */
    private static boolean f863a = true;
    private static Method b;
    private static boolean c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static as a(@androidx.annotation.ah ViewGroup viewGroup) {
        if (Build.VERSION.SDK_INT >= 18) {
            return new ar(viewGroup);
        }
        return aq.a(viewGroup);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(@androidx.annotation.ah ViewGroup viewGroup, boolean z) {
        if (Build.VERSION.SDK_INT >= 29) {
            viewGroup.suppressLayout(z);
        } else if (Build.VERSION.SDK_INT >= 18) {
            b(viewGroup, z);
        } else {
            au.a(viewGroup, z);
        }
    }

    @androidx.annotation.am(a = 18)
    @SuppressLint({"NewApi"})
    private static void b(@androidx.annotation.ah ViewGroup viewGroup, boolean z) {
        if (f863a) {
            try {
                viewGroup.suppressLayout(z);
            } catch (NoSuchMethodError unused) {
                f863a = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(@androidx.annotation.ah ViewGroup viewGroup, int i) {
        if (Build.VERSION.SDK_INT >= 29) {
            return viewGroup.getChildDrawingOrder(i);
        }
        if (!c) {
            try {
                b = ViewGroup.class.getDeclaredMethod("getChildDrawingOrder", Integer.TYPE, Integer.TYPE);
                b.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            c = true;
        }
        if (b != null) {
            try {
                return ((Integer) b.invoke(viewGroup, Integer.valueOf(viewGroup.getChildCount()), Integer.valueOf(i))).intValue();
            } catch (IllegalAccessException | InvocationTargetException unused2) {
            }
        }
        return i;
    }

    private at() {
    }
}
