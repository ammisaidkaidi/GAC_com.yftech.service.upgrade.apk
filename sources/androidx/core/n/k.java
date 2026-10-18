package androidx.core.n;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import java.lang.reflect.Field;

/* loaded from: /home/user/work/dex/classes.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    private static final String f569a = "LayoutInflaterCompatHC";
    private static Field b;
    private static boolean c;

    /* loaded from: /home/user/work/dex/classes.dex */
    static class a implements LayoutInflater.Factory2 {

        /* renamed from: a, reason: collision with root package name */
        final l f570a;

        a(l lVar) {
            this.f570a = lVar;
        }

        @Override // android.view.LayoutInflater.Factory
        public View onCreateView(String str, Context context, AttributeSet attributeSet) {
            return this.f570a.a(null, str, context, attributeSet);
        }

        @Override // android.view.LayoutInflater.Factory2
        public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
            return this.f570a.a(view, str, context, attributeSet);
        }

        @androidx.annotation.ah
        public String toString() {
            return getClass().getName() + "{" + this.f570a + "}";
        }
    }

    private static void b(LayoutInflater layoutInflater, LayoutInflater.Factory2 factory2) {
        if (!c) {
            try {
                b = LayoutInflater.class.getDeclaredField("mFactory2");
                b.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e(f569a, "forceSetFactory2 Could not find field 'mFactory2' on class " + LayoutInflater.class.getName() + "; inflation may have unexpected results.", e);
            }
            c = true;
        }
        if (b != null) {
            try {
                b.set(layoutInflater, factory2);
            } catch (IllegalAccessException e2) {
                Log.e(f569a, "forceSetFactory2 could not set the Factory2 on LayoutInflater " + layoutInflater + "; inflation may have unexpected results.", e2);
            }
        }
    }

    private k() {
    }

    @Deprecated
    public static void a(@androidx.annotation.ah LayoutInflater layoutInflater, @androidx.annotation.ah l lVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            layoutInflater.setFactory2(lVar != null ? new a(lVar) : null);
            return;
        }
        a aVar = lVar != null ? new a(lVar) : null;
        layoutInflater.setFactory2(aVar);
        LayoutInflater.Factory factory = layoutInflater.getFactory();
        if (factory instanceof LayoutInflater.Factory2) {
            b(layoutInflater, (LayoutInflater.Factory2) factory);
        } else {
            b(layoutInflater, aVar);
        }
    }

    public static void a(@androidx.annotation.ah LayoutInflater layoutInflater, @androidx.annotation.ah LayoutInflater.Factory2 factory2) {
        layoutInflater.setFactory2(factory2);
        if (Build.VERSION.SDK_INT < 21) {
            LayoutInflater.Factory factory = layoutInflater.getFactory();
            if (factory instanceof LayoutInflater.Factory2) {
                b(layoutInflater, (LayoutInflater.Factory2) factory);
            } else {
                b(layoutInflater, factory2);
            }
        }
    }

    @Deprecated
    public static l a(LayoutInflater layoutInflater) {
        LayoutInflater.Factory factory = layoutInflater.getFactory();
        if (factory instanceof a) {
            return ((a) factory).f570a;
        }
        return null;
    }
}
