package androidx.appcompat.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.annotation.ac;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.am;
import androidx.annotation.ap;
import androidx.annotation.at;
import androidx.annotation.w;
import androidx.appcompat.app.b;
import androidx.appcompat.view.b;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.bf;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class g {

    /* renamed from: a, reason: collision with root package name */
    static final boolean f56a = false;
    static final String b = "AppCompatDelegate";
    public static final int c = -1;

    @Deprecated
    public static final int d = 0;

    @Deprecated
    public static final int e = 0;
    public static final int f = 1;
    public static final int g = 2;
    public static final int h = 3;
    public static final int i = -100;
    public static final int j = 108;
    public static final int k = 109;
    public static final int l = 10;
    private static int m = -100;
    private static final androidx.c.b<WeakReference<g>> n = new androidx.c.b<>();
    private static final Object o = new Object();

    @Retention(RetentionPolicy.SOURCE)
    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface a {
    }

    public abstract View a(@ai View view, String str, @ah Context context, @ah AttributeSet attributeSet);

    @ai
    public abstract androidx.appcompat.app.a a();

    @ai
    public abstract androidx.appcompat.view.b a(@ah b.a aVar);

    public void a(@at int i2) {
    }

    @Deprecated
    public void a(Context context) {
    }

    public abstract void a(Configuration configuration);

    public abstract void a(Bundle bundle);

    public abstract void a(View view);

    public abstract void a(View view, ViewGroup.LayoutParams layoutParams);

    public abstract void a(@ai Toolbar toolbar);

    public abstract void a(@ai CharSequence charSequence);

    public abstract void a(boolean z);

    public abstract MenuInflater b();

    @ai
    public abstract <T extends View> T b(@w int i2);

    public abstract void b(Bundle bundle);

    public abstract void b(View view, ViewGroup.LayoutParams layoutParams);

    public abstract void c();

    public abstract void c(@ac int i2);

    public abstract void c(Bundle bundle);

    public abstract void d();

    public abstract boolean d(int i2);

    public abstract void e();

    public abstract boolean e(int i2);

    public abstract void f();

    @am(a = 17)
    public abstract void f(int i2);

    public abstract void g();

    @ai
    public abstract b.a h();

    public abstract void i();

    public abstract boolean j();

    public abstract boolean k();

    public int l() {
        return -100;
    }

    @ah
    public static g a(@ah Activity activity, @ai f fVar) {
        return new h(activity, fVar);
    }

    @ah
    public static g a(@ah Dialog dialog, @ai f fVar) {
        return new h(dialog, fVar);
    }

    @ah
    public static g a(@ah Context context, @ah Window window, @ai f fVar) {
        return new h(context, window, fVar);
    }

    @ah
    public static g a(@ah Context context, @ah Activity activity, @ai f fVar) {
        return new h(context, activity, fVar);
    }

    @androidx.annotation.i
    @ah
    public Context b(@ah Context context) {
        a(context);
        return context;
    }

    public static void g(int i2) {
        switch (i2) {
            case -1:
            case 0:
            case 1:
            case 2:
            case 3:
                if (m != i2) {
                    m = i2;
                    o();
                    return;
                }
                return;
            default:
                Log.d(b, "setDefaultNightMode() called with an unknown mode");
                return;
        }
    }

    public static int m() {
        return m;
    }

    public static void b(boolean z) {
        bf.a(z);
    }

    public static boolean n() {
        return bf.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(@ah g gVar) {
        synchronized (o) {
            c(gVar);
            n.add(new WeakReference<>(gVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(@ah g gVar) {
        synchronized (o) {
            c(gVar);
        }
    }

    private static void c(@ah g gVar) {
        synchronized (o) {
            Iterator<WeakReference<g>> it = n.iterator();
            while (it.hasNext()) {
                g gVar2 = it.next().get();
                if (gVar2 == gVar || gVar2 == null) {
                    it.remove();
                }
            }
        }
    }

    private static void o() {
        synchronized (o) {
            Iterator<WeakReference<g>> it = n.iterator();
            while (it.hasNext()) {
                g gVar = it.next().get();
                if (gVar != null) {
                    gVar.k();
                }
            }
        }
    }
}
