package androidx.lifecycle;

import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import androidx.lifecycle.g;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public class m {

    /* renamed from: a, reason: collision with root package name */
    private static final int f972a = 1;
    private static final int b = 2;
    private static Map<Class, Integer> c = new HashMap();
    private static Map<Class, List<Constructor<? extends e>>> d = new HashMap();

    @ah
    @Deprecated
    static f a(Object obj) {
        final h b2 = b(obj);
        return new f() { // from class: androidx.lifecycle.Lifecycling$1
            @Override // androidx.lifecycle.h
            public void a(@ah j jVar, @ah g.a aVar) {
                h.this.a(jVar, aVar);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ah
    public static h b(Object obj) {
        boolean z = obj instanceof h;
        boolean z2 = obj instanceof d;
        if (z && z2) {
            return new FullLifecycleObserverAdapter((d) obj, (h) obj);
        }
        if (z2) {
            return new FullLifecycleObserverAdapter((d) obj, null);
        }
        if (z) {
            return (h) obj;
        }
        Class<?> cls = obj.getClass();
        if (b(cls) == 2) {
            List<Constructor<? extends e>> list = d.get(cls);
            if (list.size() == 1) {
                return new SingleGeneratedAdapterObserver(a(list.get(0), obj));
            }
            e[] eVarArr = new e[list.size()];
            for (int i = 0; i < list.size(); i++) {
                eVarArr[i] = a(list.get(i), obj);
            }
            return new CompositeGeneratedAdaptersObserver(eVarArr);
        }
        return new ReflectiveGenericLifecycleObserver(obj);
    }

    private static e a(Constructor<? extends e> constructor, Object obj) {
        try {
            return constructor.newInstance(obj);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InstantiationException e2) {
            throw new RuntimeException(e2);
        } catch (InvocationTargetException e3) {
            throw new RuntimeException(e3);
        }
    }

    @ai
    private static Constructor<? extends e> a(Class<?> cls) {
        try {
            Package r0 = cls.getPackage();
            String canonicalName = cls.getCanonicalName();
            String name = r0 != null ? r0.getName() : com.yftech.service.upgrade.a.d;
            if (!name.isEmpty()) {
                canonicalName = canonicalName.substring(name.length() + 1);
            }
            String a2 = a(canonicalName);
            if (!name.isEmpty()) {
                a2 = name + "." + a2;
            }
            Constructor declaredConstructor = Class.forName(a2).getDeclaredConstructor(cls);
            if (!declaredConstructor.isAccessible()) {
                declaredConstructor.setAccessible(true);
            }
            return declaredConstructor;
        } catch (ClassNotFoundException unused) {
            return null;
        } catch (NoSuchMethodException e) {
            throw new RuntimeException(e);
        }
    }

    private static int b(Class<?> cls) {
        Integer num = c.get(cls);
        if (num != null) {
            return num.intValue();
        }
        int c2 = c(cls);
        c.put(cls, Integer.valueOf(c2));
        return c2;
    }

    private static int c(Class<?> cls) {
        if (cls.getCanonicalName() == null) {
            return 1;
        }
        Constructor<? extends e> a2 = a(cls);
        if (a2 != null) {
            d.put(cls, Collections.singletonList(a2));
            return 2;
        }
        if (b.f961a.a(cls)) {
            return 1;
        }
        Class<? super Object> superclass = cls.getSuperclass();
        ArrayList arrayList = null;
        if (d(superclass)) {
            if (b((Class<?>) superclass) == 1) {
                return 1;
            }
            arrayList = new ArrayList(d.get(superclass));
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            if (d(cls2)) {
                if (b(cls2) == 1) {
                    return 1;
                }
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.addAll(d.get(cls2));
            }
        }
        if (arrayList == null) {
            return 1;
        }
        d.put(cls, arrayList);
        return 2;
    }

    private static boolean d(Class<?> cls) {
        return cls != null && i.class.isAssignableFrom(cls);
    }

    public static String a(String str) {
        return str.replace(".", "_") + "_LifecycleAdapter";
    }

    private m() {
    }
}
