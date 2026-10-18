package androidx.core.b.b;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.TypedValue;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.am;
import androidx.annotation.ap;
import androidx.annotation.k;
import androidx.annotation.m;
import androidx.annotation.o;
import androidx.annotation.q;
import androidx.annotation.s;
import androidx.core.b.b.d;
import androidx.core.m.i;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: /home/user/work/dex/classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    @androidx.annotation.c
    public static final int f405a = 0;
    private static final String b = "ResourcesCompat";

    @ai
    public static Drawable a(@ah Resources resources, @q int i, @ai Resources.Theme theme) {
        if (Build.VERSION.SDK_INT >= 21) {
            return resources.getDrawable(i, theme);
        }
        return resources.getDrawable(i);
    }

    @ai
    public static Drawable a(@ah Resources resources, @q int i, int i2, @ai Resources.Theme theme) {
        if (Build.VERSION.SDK_INT >= 21) {
            return resources.getDrawableForDensity(i, i2, theme);
        }
        if (Build.VERSION.SDK_INT >= 15) {
            return resources.getDrawableForDensity(i, i2);
        }
        return resources.getDrawable(i);
    }

    @k
    public static int b(@ah Resources resources, @m int i, @ai Resources.Theme theme) {
        if (Build.VERSION.SDK_INT >= 23) {
            return resources.getColor(i, theme);
        }
        return resources.getColor(i);
    }

    @ai
    public static ColorStateList c(@ah Resources resources, @m int i, @ai Resources.Theme theme) {
        if (Build.VERSION.SDK_INT >= 23) {
            return resources.getColorStateList(i, theme);
        }
        return resources.getColorStateList(i);
    }

    public static float a(@ah Resources resources, @o int i) {
        TypedValue typedValue = new TypedValue();
        resources.getValue(i, typedValue, true);
        if (typedValue.type == 4) {
            return typedValue.getFloat();
        }
        throw new Resources.NotFoundException("Resource ID #0x" + Integer.toHexString(i) + " type #0x" + Integer.toHexString(typedValue.type) + " is not valid");
    }

    @ai
    public static Typeface a(@ah Context context, @s int i) {
        if (context.isRestricted()) {
            return null;
        }
        return a(context, i, new TypedValue(), 0, null, null, false);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class a {
        public abstract void a(int i);

        public abstract void a(@ah Typeface typeface);

        @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
        public final void a(final Typeface typeface, @ai Handler handler) {
            if (handler == null) {
                handler = new Handler(Looper.getMainLooper());
            }
            handler.post(new Runnable() { // from class: androidx.core.b.b.g.a.1
                @Override // java.lang.Runnable
                public void run() {
                    a.this.a(typeface);
                }
            });
        }

        @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
        public final void a(final int i, @ai Handler handler) {
            if (handler == null) {
                handler = new Handler(Looper.getMainLooper());
            }
            handler.post(new Runnable() { // from class: androidx.core.b.b.g.a.2
                @Override // java.lang.Runnable
                public void run() {
                    a.this.a(i);
                }
            });
        }
    }

    public static void a(@ah Context context, @s int i, @ah a aVar, @ai Handler handler) {
        i.a(aVar);
        if (context.isRestricted()) {
            aVar.a(-4, handler);
        } else {
            a(context, i, new TypedValue(), 0, aVar, handler, false);
        }
    }

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public static Typeface a(@ah Context context, @s int i, TypedValue typedValue, int i2, @ai a aVar) {
        if (context.isRestricted()) {
            return null;
        }
        return a(context, i, typedValue, i2, aVar, null, true);
    }

    private static Typeface a(@ah Context context, int i, TypedValue typedValue, int i2, @ai a aVar, @ai Handler handler, boolean z) {
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        Typeface a2 = a(context, resources, typedValue, i, i2, aVar, handler, z);
        if (a2 != null || aVar != null) {
            return a2;
        }
        throw new Resources.NotFoundException("Font resource ID #0x" + Integer.toHexString(i) + " could not be retrieved.");
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00a7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Typeface a(@ah Context context, Resources resources, TypedValue typedValue, int i, int i2, @ai a aVar, @ai Handler handler, boolean z) {
        if (typedValue.string == null) {
            throw new Resources.NotFoundException("Resource \"" + resources.getResourceName(i) + "\" (" + Integer.toHexString(i) + ") is not a Font: " + typedValue);
        }
        String charSequence = typedValue.string.toString();
        if (!charSequence.startsWith("res/")) {
            if (aVar != null) {
                aVar.a(-3, handler);
            }
            return null;
        }
        Typeface a2 = androidx.core.graphics.k.a(resources, i, i2);
        if (a2 != null) {
            if (aVar != null) {
                aVar.a(a2, handler);
            }
            return a2;
        }
        try {
            if (charSequence.toLowerCase().endsWith(".xml")) {
                d.a a3 = d.a(resources.getXml(i), resources);
                if (a3 == null) {
                    Log.e(b, "Failed to find font-family tag");
                    if (aVar != null) {
                        aVar.a(-3, handler);
                    }
                    return null;
                }
                return androidx.core.graphics.k.a(context, a3, resources, i, i2, aVar, handler, z);
            }
            Typeface a4 = androidx.core.graphics.k.a(context, resources, i, charSequence, i2);
            if (aVar != null) {
                if (a4 != null) {
                    aVar.a(a4, handler);
                } else {
                    aVar.a(-3, handler);
                }
            }
            return a4;
        } catch (IOException e) {
            Log.e(b, "Failed to read xml resource " + charSequence, e);
            if (aVar != null) {
                aVar.a(-3, handler);
            }
            return null;
        } catch (XmlPullParserException e2) {
            Log.e(b, "Failed to parse xml resource " + charSequence, e2);
            if (aVar != null) {
            }
            return null;
        }
    }

    private g() {
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class b {
        private b() {
        }

        public static void a(@ah Resources.Theme theme) {
            if (Build.VERSION.SDK_INT >= 29) {
                C0028b.a(theme);
            } else if (Build.VERSION.SDK_INT >= 23) {
                a.a(theme);
            }
        }

        @am(a = 29)
        /* renamed from: androidx.core.b.b.g$b$b, reason: collision with other inner class name */
        /* loaded from: /home/user/work/dex/classes.dex */
        static class C0028b {
            private C0028b() {
            }

            static void a(@ah Resources.Theme theme) {
                theme.rebase();
            }
        }

        @am(a = 23)
        /* loaded from: /home/user/work/dex/classes.dex */
        static class a {

            /* renamed from: a, reason: collision with root package name */
            private static final Object f408a = new Object();
            private static Method b;
            private static boolean c;

            private a() {
            }

            static void a(@ah Resources.Theme theme) {
                synchronized (f408a) {
                    if (!c) {
                        try {
                            b = Resources.Theme.class.getDeclaredMethod("rebase", new Class[0]);
                            b.setAccessible(true);
                        } catch (NoSuchMethodException e) {
                            Log.i(g.b, "Failed to retrieve rebase() method", e);
                        }
                        c = true;
                    }
                    if (b != null) {
                        try {
                            b.invoke(theme, new Object[0]);
                        } catch (IllegalAccessException | InvocationTargetException e2) {
                            Log.i(g.b, "Failed to invoke rebase() method via reflection", e2);
                            b = null;
                        }
                    }
                }
            }
        }
    }
}
