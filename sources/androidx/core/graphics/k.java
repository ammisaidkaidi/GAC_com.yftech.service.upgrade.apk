package androidx.core.graphics;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Handler;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import androidx.core.b.b.d;
import androidx.core.b.b.g;
import androidx.core.j.b;

@SuppressLint({"NewApi"})
/* loaded from: /home/user/work/dex/classes.dex */
public class k {

    /* renamed from: a, reason: collision with root package name */
    private static final q f438a;
    private static final androidx.c.g<String, Typeface> b;

    static {
        if (Build.VERSION.SDK_INT >= 29) {
            f438a = new p();
        } else if (Build.VERSION.SDK_INT >= 28) {
            f438a = new o();
        } else if (Build.VERSION.SDK_INT >= 26) {
            f438a = new n();
        } else if (Build.VERSION.SDK_INT >= 24 && m.a()) {
            f438a = new m();
        } else if (Build.VERSION.SDK_INT >= 21) {
            f438a = new l();
        } else {
            f438a = new q();
        }
        b = new androidx.c.g<>(16);
    }

    private k() {
    }

    @ai
    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public static Typeface a(@ah Resources resources, int i, int i2) {
        return b.a((androidx.c.g<String, Typeface>) b(resources, i, i2));
    }

    private static String b(Resources resources, int i, int i2) {
        return resources.getResourcePackageName(i) + "-" + i + "-" + i2;
    }

    @ai
    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public static Typeface a(@ah Context context, @ah d.a aVar, @ah Resources resources, int i, int i2, @ai g.a aVar2, @ai Handler handler, boolean z) {
        Typeface a2;
        if (aVar instanceof d.e) {
            d.e eVar = (d.e) aVar;
            boolean z2 = false;
            if (!z ? aVar2 == null : eVar.b() == 0) {
                z2 = true;
            }
            a2 = androidx.core.j.b.a(context, eVar.a(), aVar2, handler, z2, z ? eVar.c() : -1, i2);
        } else {
            a2 = f438a.a(context, (d.c) aVar, resources, i2);
            if (aVar2 != null) {
                if (a2 != null) {
                    aVar2.a(a2, handler);
                } else {
                    aVar2.a(-3, handler);
                }
            }
        }
        if (a2 != null) {
            b.a(b(resources, i, i2), a2);
        }
        return a2;
    }

    @ai
    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public static Typeface a(@ah Context context, @ah Resources resources, int i, String str, int i2) {
        Typeface a2 = f438a.a(context, resources, i, str, i2);
        if (a2 != null) {
            b.a(b(resources, i, i2), a2);
        }
        return a2;
    }

    @ai
    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public static Typeface a(@ah Context context, @ai CancellationSignal cancellationSignal, @ah b.c[] cVarArr, int i) {
        return f438a.a(context, cancellationSignal, cVarArr, i);
    }

    @ai
    private static Typeface b(Context context, Typeface typeface, int i) {
        d.c a2 = f438a.a(typeface);
        if (a2 == null) {
            return null;
        }
        return f438a.a(context, a2, context.getResources(), i);
    }

    @ah
    public static Typeface a(@ah Context context, @ai Typeface typeface, int i) {
        Typeface b2;
        if (context != null) {
            return (Build.VERSION.SDK_INT >= 21 || (b2 = b(context, typeface, i)) == null) ? Typeface.create(typeface, i) : b2;
        }
        throw new IllegalArgumentException("Context cannot be null");
    }
}
