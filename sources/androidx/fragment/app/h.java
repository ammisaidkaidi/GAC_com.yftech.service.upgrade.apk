package androidx.fragment.app;

import androidx.annotation.ah;
import androidx.fragment.app.d;
import java.lang.reflect.InvocationTargetException;

/* loaded from: /home/user/work/dex/classes.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    private static final androidx.c.i<String, Class<?>> f761a = new androidx.c.i<>();

    @ah
    private static Class<?> d(@ah ClassLoader classLoader, @ah String str) {
        Class<?> cls = f761a.get(str);
        if (cls != null) {
            return cls;
        }
        Class<?> cls2 = Class.forName(str, false, classLoader);
        f761a.put(str, cls2);
        return cls2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(@ah ClassLoader classLoader, @ah String str) {
        try {
            return d.class.isAssignableFrom(d(classLoader, str));
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    @ah
    public static Class<? extends d> b(@ah ClassLoader classLoader, @ah String str) {
        try {
            return d(classLoader, str);
        } catch (ClassCastException e) {
            throw new d.b("Unable to instantiate fragment " + str + ": make sure class is a valid subclass of Fragment", e);
        } catch (ClassNotFoundException e2) {
            throw new d.b("Unable to instantiate fragment " + str + ": make sure class name exists", e2);
        }
    }

    @ah
    public d c(@ah ClassLoader classLoader, @ah String str) {
        try {
            return b(classLoader, str).getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (IllegalAccessException e) {
            throw new d.b("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e);
        } catch (InstantiationException e2) {
            throw new d.b("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e2);
        } catch (NoSuchMethodException e3) {
            throw new d.b("Unable to instantiate fragment " + str + ": could not find Fragment constructor", e3);
        } catch (InvocationTargetException e4) {
            throw new d.b("Unable to instantiate fragment " + str + ": calling Fragment constructor caused an exception", e4);
        }
    }
}
