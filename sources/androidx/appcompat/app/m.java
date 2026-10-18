package androidx.appcompat.app;

import android.content.res.Resources;
import android.os.Build;
import android.util.Log;
import android.util.LongSparseArray;
import androidx.annotation.ah;
import androidx.annotation.am;
import java.lang.reflect.Field;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes.dex */
class m {

    /* renamed from: a, reason: collision with root package name */
    private static final String f83a = "ResourcesFlusher";
    private static Field b;
    private static boolean c;
    private static Class<?> d;
    private static boolean e;
    private static Field f;
    private static boolean g;
    private static Field h;
    private static boolean i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(@ah Resources resources) {
        if (Build.VERSION.SDK_INT >= 28) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            d(resources);
        } else if (Build.VERSION.SDK_INT >= 23) {
            c(resources);
        } else if (Build.VERSION.SDK_INT >= 21) {
            b(resources);
        }
    }

    @am(a = 21)
    private static void b(@ah Resources resources) {
        Map map;
        if (!c) {
            try {
                b = Resources.class.getDeclaredField("mDrawableCache");
                b.setAccessible(true);
            } catch (NoSuchFieldException e2) {
                Log.e(f83a, "Could not retrieve Resources#mDrawableCache field", e2);
            }
            c = true;
        }
        if (b != null) {
            try {
                map = (Map) b.get(resources);
            } catch (IllegalAccessException e3) {
                Log.e(f83a, "Could not retrieve value from Resources#mDrawableCache", e3);
                map = null;
            }
            if (map != null) {
                map.clear();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0036 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0037  */
    @am(a = 23)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void c(@ah Resources resources) {
        Object obj;
        if (!c) {
            try {
                b = Resources.class.getDeclaredField("mDrawableCache");
                b.setAccessible(true);
            } catch (NoSuchFieldException e2) {
                Log.e(f83a, "Could not retrieve Resources#mDrawableCache field", e2);
            }
            c = true;
        }
        if (b != null) {
            try {
                obj = b.get(resources);
            } catch (IllegalAccessException e3) {
                Log.e(f83a, "Could not retrieve value from Resources#mDrawableCache", e3);
            }
            if (obj != null) {
                return;
            }
            a(obj);
            return;
        }
        obj = null;
        if (obj != null) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    @am(a = 24)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void d(@ah Resources resources) {
        Object obj;
        Object obj2;
        if (!i) {
            try {
                h = Resources.class.getDeclaredField("mResourcesImpl");
                h.setAccessible(true);
            } catch (NoSuchFieldException e2) {
                Log.e(f83a, "Could not retrieve Resources#mResourcesImpl field", e2);
            }
            i = true;
        }
        if (h == null) {
            return;
        }
        try {
            obj = h.get(resources);
        } catch (IllegalAccessException e3) {
            Log.e(f83a, "Could not retrieve value from Resources#mResourcesImpl", e3);
            obj = null;
        }
        if (obj == null) {
            return;
        }
        if (!c) {
            try {
                b = obj.getClass().getDeclaredField("mDrawableCache");
                b.setAccessible(true);
            } catch (NoSuchFieldException e4) {
                Log.e(f83a, "Could not retrieve ResourcesImpl#mDrawableCache field", e4);
            }
            c = true;
        }
        if (b != null) {
            try {
                obj2 = b.get(obj);
            } catch (IllegalAccessException e5) {
                Log.e(f83a, "Could not retrieve value from ResourcesImpl#mDrawableCache", e5);
            }
            if (obj2 == null) {
                a(obj2);
                return;
            }
            return;
        }
        obj2 = null;
        if (obj2 == null) {
        }
    }

    @am(a = 16)
    private static void a(@ah Object obj) {
        LongSparseArray longSparseArray;
        if (!e) {
            try {
                d = Class.forName("android.content.res.ThemedResourceCache");
            } catch (ClassNotFoundException e2) {
                Log.e(f83a, "Could not find ThemedResourceCache class", e2);
            }
            e = true;
        }
        if (d == null) {
            return;
        }
        if (!g) {
            try {
                f = d.getDeclaredField("mUnthemedEntries");
                f.setAccessible(true);
            } catch (NoSuchFieldException e3) {
                Log.e(f83a, "Could not retrieve ThemedResourceCache#mUnthemedEntries field", e3);
            }
            g = true;
        }
        if (f == null) {
            return;
        }
        try {
            longSparseArray = (LongSparseArray) f.get(obj);
        } catch (IllegalAccessException e4) {
            Log.e(f83a, "Could not retrieve value from ThemedResourceCache#mUnthemedEntries", e4);
            longSparseArray = null;
        }
        if (longSparseArray != null) {
            longSparseArray.clear();
        }
    }

    private m() {
    }
}
