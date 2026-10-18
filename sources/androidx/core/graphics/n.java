package androidx.core.graphics;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.am;
import androidx.annotation.ap;
import androidx.core.b.b.d;
import androidx.core.j.b;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Map;

@am(a = 26)
@ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public class n extends l {
    private static final String h = "TypefaceCompatApi26Impl";
    private static final String i = "android.graphics.FontFamily";
    private static final String j = "addFontFromAssetManager";
    private static final String k = "addFontFromBuffer";
    private static final String l = "createFromFamiliesWithDefault";
    private static final String m = "freeze";
    private static final String n = "abortCreation";
    private static final int o = -1;

    /* renamed from: a, reason: collision with root package name */
    protected final Class<?> f441a;
    protected final Constructor<?> b;
    protected final Method c;
    protected final Method d;
    protected final Method e;
    protected final Method f;
    protected final Method g;

    public n() {
        Constructor<?> constructor;
        Method method;
        Method method2;
        Method method3;
        Method method4;
        Method method5;
        Class<?> cls = null;
        try {
            Class<?> a2 = a();
            constructor = a(a2);
            method = b(a2);
            method2 = c(a2);
            method3 = d(a2);
            method4 = e(a2);
            method5 = f(a2);
            cls = a2;
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            Log.e(h, "Unable to collect necessary methods for class " + e.getClass().getName(), e);
            constructor = null;
            method = null;
            method2 = null;
            method3 = null;
            method4 = null;
            method5 = null;
        }
        this.f441a = cls;
        this.b = constructor;
        this.c = method;
        this.d = method2;
        this.e = method3;
        this.f = method4;
        this.g = method5;
    }

    private boolean b() {
        if (this.c == null) {
            Log.w(h, "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        return this.c != null;
    }

    @ai
    private Object c() {
        try {
            return this.b.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            return null;
        }
    }

    private boolean a(Context context, Object obj, String str, int i2, int i3, int i4, @ai FontVariationAxis[] fontVariationAxisArr) {
        try {
            return ((Boolean) this.c.invoke(obj, context.getAssets(), str, 0, false, Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), fontVariationAxisArr)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    private boolean a(Object obj, ByteBuffer byteBuffer, int i2, int i3, int i4) {
        try {
            return ((Boolean) this.d.invoke(obj, byteBuffer, Integer.valueOf(i2), null, Integer.valueOf(i3), Integer.valueOf(i4))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    @ai
    protected Typeface a(Object obj) {
        try {
            Object newInstance = Array.newInstance(this.f441a, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) this.g.invoke(null, newInstance, -1, -1);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    private boolean b(Object obj) {
        try {
            return ((Boolean) this.e.invoke(obj, new Object[0])).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    private void c(Object obj) {
        try {
            this.f.invoke(obj, new Object[0]);
        } catch (IllegalAccessException | InvocationTargetException unused) {
        }
    }

    @Override // androidx.core.graphics.l, androidx.core.graphics.q
    @ai
    public Typeface a(Context context, d.c cVar, Resources resources, int i2) {
        if (!b()) {
            return super.a(context, cVar, resources, i2);
        }
        Object c = c();
        if (c == null) {
            return null;
        }
        for (d.C0027d c0027d : cVar.a()) {
            if (!a(context, c, c0027d.a(), c0027d.e(), c0027d.b(), c0027d.c() ? 1 : 0, FontVariationAxis.fromFontVariationSettings(c0027d.d()))) {
                c(c);
                return null;
            }
        }
        if (b(c)) {
            return a(c);
        }
        return null;
    }

    @Override // androidx.core.graphics.l, androidx.core.graphics.q
    @ai
    public Typeface a(Context context, @ai CancellationSignal cancellationSignal, @ah b.c[] cVarArr, int i2) {
        Typeface a2;
        if (cVarArr.length < 1) {
            return null;
        }
        if (!b()) {
            b.c a3 = a(cVarArr, i2);
            try {
                ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(a3.a(), "r", cancellationSignal);
                if (openFileDescriptor == null) {
                    if (openFileDescriptor != null) {
                        openFileDescriptor.close();
                    }
                    return null;
                }
                try {
                    Typeface build = new Typeface.Builder(openFileDescriptor.getFileDescriptor()).setWeight(a3.c()).setItalic(a3.d()).build();
                    if (openFileDescriptor != null) {
                        openFileDescriptor.close();
                    }
                    return build;
                } finally {
                }
            } catch (IOException unused) {
                return null;
            }
        }
        Map<Uri, ByteBuffer> a4 = androidx.core.j.b.a(context, cVarArr, cancellationSignal);
        Object c = c();
        if (c == null) {
            return null;
        }
        boolean z = false;
        for (b.c cVar : cVarArr) {
            ByteBuffer byteBuffer = a4.get(cVar.a());
            if (byteBuffer != null) {
                if (!a(c, byteBuffer, cVar.b(), cVar.c(), cVar.d() ? 1 : 0)) {
                    c(c);
                    return null;
                }
                z = true;
            }
        }
        if (!z) {
            c(c);
            return null;
        }
        if (b(c) && (a2 = a(c)) != null) {
            return Typeface.create(a2, i2);
        }
        return null;
    }

    @Override // androidx.core.graphics.q
    @ai
    public Typeface a(Context context, Resources resources, int i2, String str, int i3) {
        if (!b()) {
            return super.a(context, resources, i2, str, i3);
        }
        Object c = c();
        if (c == null) {
            return null;
        }
        if (!a(context, c, str, 0, -1, -1, null)) {
            c(c);
            return null;
        }
        if (b(c)) {
            return a(c);
        }
        return null;
    }

    protected Class<?> a() {
        return Class.forName(i);
    }

    protected Constructor<?> a(Class<?> cls) {
        return cls.getConstructor(new Class[0]);
    }

    protected Method b(Class<?> cls) {
        return cls.getMethod(j, AssetManager.class, String.class, Integer.TYPE, Boolean.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE, FontVariationAxis[].class);
    }

    protected Method c(Class<?> cls) {
        return cls.getMethod(k, ByteBuffer.class, Integer.TYPE, FontVariationAxis[].class, Integer.TYPE, Integer.TYPE);
    }

    protected Method d(Class<?> cls) {
        return cls.getMethod(m, new Class[0]);
    }

    protected Method e(Class<?> cls) {
        return cls.getMethod(n, new Class[0]);
    }

    protected Method f(Class<?> cls) {
        Method declaredMethod = Typeface.class.getDeclaredMethod(l, Array.newInstance(cls, 1).getClass(), Integer.TYPE, Integer.TYPE);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }
}
