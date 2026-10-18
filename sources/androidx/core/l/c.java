package androidx.core.l;

import android.icu.util.ULocale;
import android.os.Build;
import android.util.Log;
import androidx.annotation.ai;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Locale;

/* loaded from: /home/user/work/dex/classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    private static final String f489a = "ICUCompat";
    private static Method b;
    private static Method c;

    static {
        if (Build.VERSION.SDK_INT < 21) {
            try {
                Class<?> cls = Class.forName("libcore.icu.ICU");
                if (cls != null) {
                    b = cls.getMethod("getScript", String.class);
                    c = cls.getMethod("addLikelySubtags", String.class);
                    return;
                }
                return;
            } catch (Exception e) {
                b = null;
                c = null;
                Log.w(f489a, e);
                return;
            }
        }
        if (Build.VERSION.SDK_INT < 24) {
            try {
                c = Class.forName("libcore.icu.ICU").getMethod("addLikelySubtags", Locale.class);
            } catch (Exception e2) {
                throw new IllegalStateException(e2);
            }
        }
    }

    @ai
    public static String a(Locale locale) {
        if (Build.VERSION.SDK_INT >= 24) {
            return ULocale.addLikelySubtags(ULocale.forLocale(locale)).getScript();
        }
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                return ((Locale) c.invoke(null, locale)).getScript();
            } catch (IllegalAccessException e) {
                Log.w(f489a, e);
                return locale.getScript();
            } catch (InvocationTargetException e2) {
                Log.w(f489a, e2);
                return locale.getScript();
            }
        }
        String b2 = b(locale);
        if (b2 != null) {
            return a(b2);
        }
        return null;
    }

    private static String a(String str) {
        try {
            if (b != null) {
                return (String) b.invoke(null, str);
            }
        } catch (IllegalAccessException e) {
            Log.w(f489a, e);
        } catch (InvocationTargetException e2) {
            Log.w(f489a, e2);
        }
        return null;
    }

    private static String b(Locale locale) {
        String locale2 = locale.toString();
        try {
            if (c != null) {
                return (String) c.invoke(null, locale2);
            }
        } catch (IllegalAccessException e) {
            Log.w(f489a, e);
        } catch (InvocationTargetException e2) {
            Log.w(f489a, e2);
        }
        return locale2;
    }

    private c() {
    }
}
