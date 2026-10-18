package androidx.j;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.os.Build;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: /home/user/work/dex/classes.dex */
class d {

    /* renamed from: a, reason: collision with root package name */
    private static Method f882a;
    private static Method b;
    private static boolean c;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SuppressLint({"SoonBlockedPrivateApi"})
    public static void a(@androidx.annotation.ah Canvas canvas, boolean z) {
        if (Build.VERSION.SDK_INT < 21) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 29) {
            if (z) {
                canvas.enableZ();
                return;
            } else {
                canvas.disableZ();
                return;
            }
        }
        if (Build.VERSION.SDK_INT == 28) {
            throw new IllegalStateException("This method doesn't work on Pie!");
        }
        if (!c) {
            try {
                f882a = Canvas.class.getDeclaredMethod("insertReorderBarrier", new Class[0]);
                f882a.setAccessible(true);
                b = Canvas.class.getDeclaredMethod("insertInorderBarrier", new Class[0]);
                b.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            c = true;
        }
        if (z) {
            try {
                if (f882a != null) {
                    f882a.invoke(canvas, new Object[0]);
                }
            } catch (IllegalAccessException unused2) {
                return;
            } catch (InvocationTargetException e) {
                throw new RuntimeException(e.getCause());
            }
        }
        if (z || b == null) {
            return;
        }
        b.invoke(canvas, new Object[0]);
    }

    private d() {
    }
}
