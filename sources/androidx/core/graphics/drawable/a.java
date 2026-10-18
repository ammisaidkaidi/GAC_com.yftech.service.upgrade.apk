package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.k;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: /home/user/work/dex/classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f426a = "DrawableCompat";
    private static Method b;
    private static boolean c;
    private static Method d;
    private static boolean e;

    @Deprecated
    public static void a(@ah Drawable drawable) {
        drawable.jumpToCurrentState();
    }

    public static void a(@ah Drawable drawable, boolean z) {
        if (Build.VERSION.SDK_INT >= 19) {
            drawable.setAutoMirrored(z);
        }
    }

    public static boolean b(@ah Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 19) {
            return drawable.isAutoMirrored();
        }
        return false;
    }

    public static void a(@ah Drawable drawable, float f, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setHotspot(f, f2);
        }
    }

    public static void a(@ah Drawable drawable, int i, int i2, int i3, int i4) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setHotspotBounds(i, i2, i3, i4);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(@ah Drawable drawable, @k int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setTint(i);
        } else if (drawable instanceof e) {
            ((e) drawable).setTint(i);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(@ah Drawable drawable, @ai ColorStateList colorStateList) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setTintList(colorStateList);
        } else if (drawable instanceof e) {
            ((e) drawable).setTintList(colorStateList);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(@ah Drawable drawable, @ah PorterDuff.Mode mode) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setTintMode(mode);
        } else if (drawable instanceof e) {
            ((e) drawable).setTintMode(mode);
        }
    }

    public static int c(@ah Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 19) {
            return drawable.getAlpha();
        }
        return 0;
    }

    public static void a(@ah Drawable drawable, @ah Resources.Theme theme) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.applyTheme(theme);
        }
    }

    public static boolean d(@ah Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 21) {
            return drawable.canApplyTheme();
        }
        return false;
    }

    public static ColorFilter e(@ah Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 21) {
            return drawable.getColorFilter();
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void f(@ah Drawable drawable) {
        DrawableContainer.DrawableContainerState drawableContainerState;
        if (Build.VERSION.SDK_INT >= 23) {
            drawable.clearColorFilter();
            return;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.clearColorFilter();
            if (drawable instanceof InsetDrawable) {
                f(((InsetDrawable) drawable).getDrawable());
                return;
            }
            if (drawable instanceof f) {
                f(((f) drawable).a());
                return;
            }
            if (!(drawable instanceof DrawableContainer) || (drawableContainerState = (DrawableContainer.DrawableContainerState) ((DrawableContainer) drawable).getConstantState()) == null) {
                return;
            }
            int childCount = drawableContainerState.getChildCount();
            for (int i = 0; i < childCount; i++) {
                Drawable child = drawableContainerState.getChild(i);
                if (child != null) {
                    f(child);
                }
            }
            return;
        }
        drawable.clearColorFilter();
    }

    public static void a(@ah Drawable drawable, @ah Resources resources, @ah XmlPullParser xmlPullParser, @ah AttributeSet attributeSet, @ai Resources.Theme theme) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.inflate(resources, xmlPullParser, attributeSet, theme);
        } else {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        }
    }

    public static Drawable g(@ah Drawable drawable) {
        return Build.VERSION.SDK_INT >= 23 ? drawable : Build.VERSION.SDK_INT >= 21 ? !(drawable instanceof e) ? new h(drawable) : drawable : !(drawable instanceof e) ? new g(drawable) : drawable;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T extends Drawable> T h(@ah Drawable drawable) {
        return drawable instanceof f ? (T) ((f) drawable).a() : drawable;
    }

    public static boolean b(@ah Drawable drawable, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            return drawable.setLayoutDirection(i);
        }
        if (Build.VERSION.SDK_INT < 17) {
            return false;
        }
        if (!c) {
            try {
                b = Drawable.class.getDeclaredMethod("setLayoutDirection", Integer.TYPE);
                b.setAccessible(true);
            } catch (NoSuchMethodException e2) {
                Log.i(f426a, "Failed to retrieve setLayoutDirection(int) method", e2);
            }
            c = true;
        }
        if (b != null) {
            try {
                b.invoke(drawable, Integer.valueOf(i));
                return true;
            } catch (Exception e3) {
                Log.i(f426a, "Failed to invoke setLayoutDirection(int) via reflection", e3);
                b = null;
            }
        }
        return false;
    }

    public static int i(@ah Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 23) {
            return drawable.getLayoutDirection();
        }
        if (Build.VERSION.SDK_INT < 17) {
            return 0;
        }
        if (!e) {
            try {
                d = Drawable.class.getDeclaredMethod("getLayoutDirection", new Class[0]);
                d.setAccessible(true);
            } catch (NoSuchMethodException e2) {
                Log.i(f426a, "Failed to retrieve getLayoutDirection() method", e2);
            }
            e = true;
        }
        if (d != null) {
            try {
                return ((Integer) d.invoke(drawable, new Object[0])).intValue();
            } catch (Exception e3) {
                Log.i(f426a, "Failed to invoke getLayoutDirection() via reflection", e3);
                d = null;
            }
        }
        return 0;
    }

    private a() {
    }
}
