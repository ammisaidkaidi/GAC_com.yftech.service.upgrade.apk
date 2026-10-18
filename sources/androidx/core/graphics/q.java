package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.util.Log;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import androidx.core.b.b.d;
import androidx.core.j.b;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: Access modifiers changed from: package-private */
@ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public class q {

    /* renamed from: a, reason: collision with root package name */
    private static final String f442a = "TypefaceCompatBaseImpl";
    private static final int b = 0;
    private ConcurrentHashMap<Long, d.c> c = new ConcurrentHashMap<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface a<T> {
        boolean a(T t);

        int b(T t);
    }

    private static <T> T a(T[] tArr, int i, a<T> aVar) {
        int i2 = (i & 1) == 0 ? 400 : 700;
        boolean z = (i & 2) != 0;
        int i3 = Integer.MAX_VALUE;
        T t = null;
        for (T t2 : tArr) {
            int abs = (Math.abs(aVar.b(t2) - i2) * 2) + (aVar.a(t2) == z ? 0 : 1);
            if (t == null || i3 > abs) {
                t = t2;
                i3 = abs;
            }
        }
        return t;
    }

    private static long b(@ai Typeface typeface) {
        if (typeface == null) {
            return 0L;
        }
        try {
            Field declaredField = Typeface.class.getDeclaredField("native_instance");
            declaredField.setAccessible(true);
            return ((Number) declaredField.get(typeface)).longValue();
        } catch (IllegalAccessException e) {
            Log.e(f442a, "Could not retrieve font from family.", e);
            return 0L;
        } catch (NoSuchFieldException e2) {
            Log.e(f442a, "Could not retrieve font from family.", e2);
            return 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public b.c a(b.c[] cVarArr, int i) {
        return (b.c) a(cVarArr, i, new a<b.c>() { // from class: androidx.core.graphics.q.1
            @Override // androidx.core.graphics.q.a
            /* renamed from: a, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
            public int b(b.c cVar) {
                return cVar.c();
            }

            @Override // androidx.core.graphics.q.a
            /* renamed from: b, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
            public boolean a(b.c cVar) {
                return cVar.d();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Typeface a(Context context, InputStream inputStream) {
        File a2 = r.a(context);
        if (a2 == null) {
            return null;
        }
        try {
            if (r.a(a2, inputStream)) {
                return Typeface.createFromFile(a2.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            a2.delete();
        }
    }

    @ai
    public Typeface a(Context context, @ai CancellationSignal cancellationSignal, @ah b.c[] cVarArr, int i) {
        InputStream inputStream;
        InputStream inputStream2 = null;
        if (cVarArr.length < 1) {
            return null;
        }
        try {
            inputStream = context.getContentResolver().openInputStream(a(cVarArr, i).a());
        } catch (IOException unused) {
            inputStream = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            Typeface a2 = a(context, inputStream);
            r.a(inputStream);
            return a2;
        } catch (IOException unused2) {
            r.a(inputStream);
            return null;
        } catch (Throwable th2) {
            th = th2;
            inputStream2 = inputStream;
            r.a(inputStream2);
            throw th;
        }
    }

    private d.C0027d a(d.c cVar, int i) {
        return (d.C0027d) a(cVar.a(), i, new a<d.C0027d>() { // from class: androidx.core.graphics.q.2
            @Override // androidx.core.graphics.q.a
            /* renamed from: a, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
            public int b(d.C0027d c0027d) {
                return c0027d.b();
            }

            @Override // androidx.core.graphics.q.a
            /* renamed from: b, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
            public boolean a(d.C0027d c0027d) {
                return c0027d.c();
            }
        });
    }

    @ai
    public Typeface a(Context context, d.c cVar, Resources resources, int i) {
        d.C0027d a2 = a(cVar, i);
        if (a2 == null) {
            return null;
        }
        Typeface a3 = k.a(context, resources, a2.f(), a2.a(), i);
        a(a3, cVar);
        return a3;
    }

    @ai
    public Typeface a(Context context, Resources resources, int i, String str, int i2) {
        File a2 = r.a(context);
        if (a2 == null) {
            return null;
        }
        try {
            if (r.a(a2, resources, i)) {
                return Typeface.createFromFile(a2.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            a2.delete();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ai
    public d.c a(Typeface typeface) {
        long b2 = b(typeface);
        if (b2 == 0) {
            return null;
        }
        return this.c.get(Long.valueOf(b2));
    }

    private void a(Typeface typeface, d.c cVar) {
        long b2 = b(typeface);
        if (b2 != 0) {
            this.c.put(Long.valueOf(b2), cVar);
        }
    }
}
