package androidx.activity;

import android.app.Activity;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.annotation.ae;
import androidx.annotation.ah;
import androidx.annotation.am;
import androidx.lifecycle.g;
import androidx.lifecycle.h;
import androidx.lifecycle.j;
import java.lang.reflect.Field;

@am(a = 19)
/* loaded from: /home/user/work/dex/classes.dex */
final class ImmLeaksCleaner implements h {

    /* renamed from: a, reason: collision with root package name */
    private static final int f17a = 0;
    private static final int b = 1;
    private static final int c = 2;
    private static int d;
    private static Field e;
    private static Field f;
    private static Field g;
    private Activity h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImmLeaksCleaner(Activity activity) {
        this.h = activity;
    }

    @Override // androidx.lifecycle.h
    public void a(@ah j jVar, @ah g.a aVar) {
        if (aVar != g.a.ON_DESTROY) {
            return;
        }
        if (d == 0) {
            a();
        }
        if (d == 1) {
            InputMethodManager inputMethodManager = (InputMethodManager) this.h.getSystemService("input_method");
            try {
                Object obj = e.get(inputMethodManager);
                if (obj == null) {
                    return;
                }
                synchronized (obj) {
                    try {
                        try {
                            View view = (View) f.get(inputMethodManager);
                            if (view == null) {
                                return;
                            }
                            if (view.isAttachedToWindow()) {
                                return;
                            }
                            try {
                                g.set(inputMethodManager, null);
                                inputMethodManager.isActive();
                            } catch (IllegalAccessException unused) {
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    } catch (ClassCastException unused2) {
                    } catch (IllegalAccessException unused3) {
                    }
                }
            } catch (IllegalAccessException unused4) {
            }
        }
    }

    @ae
    private static void a() {
        try {
            d = 2;
            f = InputMethodManager.class.getDeclaredField("mServedView");
            f.setAccessible(true);
            g = InputMethodManager.class.getDeclaredField("mNextServedView");
            g.setAccessible(true);
            e = InputMethodManager.class.getDeclaredField("mH");
            e.setAccessible(true);
            d = 1;
        } catch (NoSuchFieldException unused) {
        }
    }
}
