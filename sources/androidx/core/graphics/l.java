package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import androidx.annotation.ah;
import androidx.annotation.am;
import androidx.annotation.ap;
import androidx.core.b.b.d;
import androidx.core.j.b;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@am(a = 21)
@ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
class l extends q {

    /* renamed from: a, reason: collision with root package name */
    private static final String f439a = "TypefaceCompatApi21Impl";
    private static final String b = "android.graphics.FontFamily";
    private static final String c = "addFontWeightStyle";
    private static final String d = "createFromFamiliesWithDefault";
    private static Class<?> e = null;
    private static Constructor<?> f = null;
    private static Method g = null;
    private static Method h = null;
    private static boolean i = false;

    private static void a() {
        Method method;
        Class<?> cls;
        Method method2;
        if (i) {
            return;
        }
        i = true;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName(b);
            Constructor<?> constructor2 = cls.getConstructor(new Class[0]);
            method2 = cls.getMethod(c, String.class, Integer.TYPE, Boolean.TYPE);
            method = Typeface.class.getMethod(d, Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException e2) {
            Log.e(f439a, e2.getClass().getName(), e2);
            method = null;
            cls = null;
            method2 = null;
        }
        f = constructor;
        e = cls;
        g = method2;
        h = method;
    }

    private File a(@ah ParcelFileDescriptor parcelFileDescriptor) {
        try {
            String readlink = Os.readlink("/proc/self/fd/" + parcelFileDescriptor.getFd());
            if (OsConstants.S_ISREG(Os.stat(readlink).st_mode)) {
                return new File(readlink);
            }
            return null;
        } catch (ErrnoException unused) {
            return null;
        }
    }

    private static Object b() {
        a();
        try {
            return f.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    private static Typeface a(Object obj) {
        a();
        try {
            Object newInstance = Array.newInstance(e, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) h.invoke(null, newInstance);
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    private static boolean a(Object obj, String str, int i2, boolean z) {
        a();
        try {
            return ((Boolean) g.invoke(obj, str, Integer.valueOf(i2), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // androidx.core.graphics.q
    public Typeface a(Context context, CancellationSignal cancellationSignal, @ah b.c[] cVarArr, int i2) {
        if (cVarArr.length < 1) {
            return null;
        }
        b.c a2 = a(cVarArr, i2);
        try {
            ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(a2.a(), "r", cancellationSignal);
            if (openFileDescriptor == null) {
                if (openFileDescriptor != null) {
                    openFileDescriptor.close();
                }
                return null;
            }
            try {
                File a3 = a(openFileDescriptor);
                if (a3 != null && a3.canRead()) {
                    Typeface createFromFile = Typeface.createFromFile(a3);
                    if (openFileDescriptor != null) {
                        openFileDescriptor.close();
                    }
                    return createFromFile;
                }
                FileInputStream fileInputStream = new FileInputStream(openFileDescriptor.getFileDescriptor());
                try {
                    Typeface a4 = super.a(context, fileInputStream);
                    fileInputStream.close();
                    if (openFileDescriptor != null) {
                        openFileDescriptor.close();
                    }
                    return a4;
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } finally {
            }
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // androidx.core.graphics.q
    public Typeface a(Context context, d.c cVar, Resources resources, int i2) {
        Object b2 = b();
        for (d.C0027d c0027d : cVar.a()) {
            File a2 = r.a(context);
            if (a2 == null) {
                return null;
            }
            try {
                if (!r.a(a2, resources, c0027d.f())) {
                    return null;
                }
                if (!a(b2, a2.getPath(), c0027d.b(), c0027d.c())) {
                    return null;
                }
                a2.delete();
            } catch (RuntimeException unused) {
                return null;
            } finally {
                a2.delete();
            }
        }
        return a(b2);
    }
}
