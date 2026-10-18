package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import android.util.Log;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.am;
import androidx.annotation.ap;
import androidx.core.b.b.d;
import androidx.core.j.b;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.List;

@am(a = 24)
@ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
class m extends q {

    /* renamed from: a, reason: collision with root package name */
    private static final String f440a = "TypefaceCompatApi24Impl";
    private static final String b = "android.graphics.FontFamily";
    private static final String c = "addFontWeightStyle";
    private static final String d = "createFromFamiliesWithDefault";
    private static final Class<?> e;
    private static final Constructor<?> f;
    private static final Method g;
    private static final Method h;

    static {
        Class<?> cls;
        Method method;
        Method method2;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName(b);
            Constructor<?> constructor2 = cls.getConstructor(new Class[0]);
            method2 = cls.getMethod(c, ByteBuffer.class, Integer.TYPE, List.class, Integer.TYPE, Boolean.TYPE);
            method = Typeface.class.getMethod(d, Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException e2) {
            Log.e(f440a, e2.getClass().getName(), e2);
            cls = null;
            method = null;
            method2 = null;
        }
        f = constructor;
        e = cls;
        g = method2;
        h = method;
    }

    public static boolean a() {
        if (g == null) {
            Log.w(f440a, "Unable to collect necessary private methods.Fallback to legacy implementation.");
        }
        return g != null;
    }

    private static Object b() {
        try {
            return f.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            return null;
        }
    }

    private static boolean a(Object obj, ByteBuffer byteBuffer, int i, int i2, boolean z) {
        try {
            return ((Boolean) g.invoke(obj, byteBuffer, Integer.valueOf(i), null, Integer.valueOf(i2), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    private static Typeface a(Object obj) {
        try {
            Object newInstance = Array.newInstance(e, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) h.invoke(null, newInstance);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    @Override // androidx.core.graphics.q
    @ai
    public Typeface a(Context context, @ai CancellationSignal cancellationSignal, @ah b.c[] cVarArr, int i) {
        Object b2 = b();
        if (b2 == null) {
            return null;
        }
        androidx.c.i iVar = new androidx.c.i();
        for (b.c cVar : cVarArr) {
            Uri a2 = cVar.a();
            ByteBuffer byteBuffer = (ByteBuffer) iVar.get(a2);
            if (byteBuffer == null) {
                byteBuffer = r.a(context, cancellationSignal, a2);
                iVar.put(a2, byteBuffer);
            }
            if (byteBuffer == null || !a(b2, byteBuffer, cVar.b(), cVar.c(), cVar.d())) {
                return null;
            }
        }
        Typeface a3 = a(b2);
        if (a3 == null) {
            return null;
        }
        return Typeface.create(a3, i);
    }

    @Override // androidx.core.graphics.q
    @ai
    public Typeface a(Context context, d.c cVar, Resources resources, int i) {
        Object b2 = b();
        if (b2 == null) {
            return null;
        }
        for (d.C0027d c0027d : cVar.a()) {
            ByteBuffer a2 = r.a(context, resources, c0027d.f());
            if (a2 == null || !a(b2, a2, c0027d.e(), c0027d.b(), c0027d.c())) {
                return null;
            }
        }
        return a(b2);
    }
}
