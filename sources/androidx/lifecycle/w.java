package androidx.lifecycle;

import android.app.Application;
import androidx.annotation.ae;
import androidx.annotation.ah;
import java.lang.reflect.InvocationTargetException;

/* loaded from: /home/user/work/dex/classes.dex */
public class w {

    /* renamed from: a, reason: collision with root package name */
    private static final String f981a = "androidx.lifecycle.ViewModelProvider.DefaultKey";
    private final b b;
    private final x c;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface b {
        @ah
        <T extends v> T a(@ah Class<T> cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class c implements b {
        @ah
        public abstract <T extends v> T a(@ah String str, @ah Class<T> cls);

        c() {
        }

        @Override // androidx.lifecycle.w.b
        @ah
        public <T extends v> T a(@ah Class<T> cls) {
            throw new UnsupportedOperationException("create(String, Class<?>) must be called on implementaions of KeyedFactory");
        }
    }

    public w(@ah y yVar, @ah b bVar) {
        this(yVar.d(), bVar);
    }

    public w(@ah x xVar, @ah b bVar) {
        this.b = bVar;
        this.c = xVar;
    }

    @ae
    @ah
    public <T extends v> T a(@ah Class<T> cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName == null) {
            throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
        }
        return (T) a("androidx.lifecycle.ViewModelProvider.DefaultKey:" + canonicalName, cls);
    }

    @ae
    @ah
    public <T extends v> T a(@ah String str, @ah Class<T> cls) {
        T t;
        T t2 = (T) this.c.a(str);
        if (cls.isInstance(t2)) {
            return t2;
        }
        if (this.b instanceof c) {
            t = (T) ((c) this.b).a(str, cls);
        } else {
            t = (T) this.b.a(cls);
        }
        this.c.a(str, t);
        return t;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class d implements b {
        @Override // androidx.lifecycle.w.b
        @ah
        public <T extends v> T a(@ah Class<T> cls) {
            try {
                return cls.newInstance();
            } catch (IllegalAccessException e) {
                throw new RuntimeException("Cannot create an instance of " + cls, e);
            } catch (InstantiationException e2) {
                throw new RuntimeException("Cannot create an instance of " + cls, e2);
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a extends d {

        /* renamed from: a, reason: collision with root package name */
        private static a f982a;
        private Application b;

        @ah
        public static a a(@ah Application application) {
            if (f982a == null) {
                f982a = new a(application);
            }
            return f982a;
        }

        public a(@ah Application application) {
            this.b = application;
        }

        @Override // androidx.lifecycle.w.d, androidx.lifecycle.w.b
        @ah
        public <T extends v> T a(@ah Class<T> cls) {
            if (androidx.lifecycle.a.class.isAssignableFrom(cls)) {
                try {
                    return cls.getConstructor(Application.class).newInstance(this.b);
                } catch (IllegalAccessException e) {
                    throw new RuntimeException("Cannot create an instance of " + cls, e);
                } catch (InstantiationException e2) {
                    throw new RuntimeException("Cannot create an instance of " + cls, e2);
                } catch (NoSuchMethodException e3) {
                    throw new RuntimeException("Cannot create an instance of " + cls, e3);
                } catch (InvocationTargetException e4) {
                    throw new RuntimeException("Cannot create an instance of " + cls, e4);
                }
            }
            return (T) super.a(cls);
        }
    }
}
