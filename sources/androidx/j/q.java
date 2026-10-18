package androidx.j;

import android.graphics.Matrix;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@androidx.annotation.am(a = 21)
/* loaded from: /home/user/work/dex/classes.dex */
class q implements o {

    /* renamed from: a, reason: collision with root package name */
    private static final String f911a = "GhostViewApi21";
    private static Class<?> b;
    private static boolean c;
    private static Method d;
    private static boolean e;
    private static Method f;
    private static boolean g;
    private final View h;

    @Override // androidx.j.o
    public void a(ViewGroup viewGroup, View view) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static o a(View view, ViewGroup viewGroup, Matrix matrix) {
        b();
        if (d != null) {
            try {
                return new q((View) d.invoke(null, view, viewGroup, matrix));
            } catch (IllegalAccessException unused) {
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(View view) {
        c();
        if (f != null) {
            try {
                f.invoke(null, view);
            } catch (IllegalAccessException unused) {
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
    }

    private q(@androidx.annotation.ah View view) {
        this.h = view;
    }

    @Override // androidx.j.o
    public void setVisibility(int i) {
        this.h.setVisibility(i);
    }

    private static void a() {
        if (c) {
            return;
        }
        try {
            b = Class.forName("android.view.GhostView");
        } catch (ClassNotFoundException e2) {
            Log.i(f911a, "Failed to retrieve GhostView class", e2);
        }
        c = true;
    }

    private static void b() {
        if (e) {
            return;
        }
        try {
            a();
            d = b.getDeclaredMethod("addGhost", View.class, ViewGroup.class, Matrix.class);
            d.setAccessible(true);
        } catch (NoSuchMethodException e2) {
            Log.i(f911a, "Failed to retrieve addGhost method", e2);
        }
        e = true;
    }

    private static void c() {
        if (g) {
            return;
        }
        try {
            a();
            f = b.getDeclaredMethod("removeGhost", View.class);
            f.setAccessible(true);
        } catch (NoSuchMethodException e2) {
            Log.i(f911a, "Failed to retrieve removeGhost method", e2);
        }
        g = true;
    }
}
