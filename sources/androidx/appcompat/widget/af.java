package androidx.appcompat.widget;

import android.R;
import android.annotation.SuppressLint;
import android.graphics.Insets;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ScaleDrawable;
import android.os.Build;
import android.util.Log;
import androidx.annotation.ap;
import java.lang.reflect.Field;

@SuppressLint({"RestrictedAPI"})
@androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public class af {
    private static final String d = "DrawableUtils";
    private static Class<?> e = null;
    private static final String f = "android.graphics.drawable.VectorDrawable";
    private static final int[] b = {R.attr.state_checked};
    private static final int[] c = new int[0];

    /* renamed from: a, reason: collision with root package name */
    public static final Rect f201a = new Rect();

    static {
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                e = Class.forName("android.graphics.Insets");
            } catch (ClassNotFoundException unused) {
            }
        }
    }

    private af() {
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0099 A[Catch: Exception -> 0x00b8, TryCatch #0 {Exception -> 0x00b8, blocks: (B:11:0x0024, B:13:0x003d, B:15:0x004c, B:25:0x0095, B:29:0x0099, B:31:0x00a0, B:33:0x00a7, B:35:0x00ae, B:37:0x006c, B:40:0x0076, B:43:0x0080, B:46:0x008a), top: B:10:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a0 A[Catch: Exception -> 0x00b8, TryCatch #0 {Exception -> 0x00b8, blocks: (B:11:0x0024, B:13:0x003d, B:15:0x004c, B:25:0x0095, B:29:0x0099, B:31:0x00a0, B:33:0x00a7, B:35:0x00ae, B:37:0x006c, B:40:0x0076, B:43:0x0080, B:46:0x008a), top: B:10:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00a7 A[Catch: Exception -> 0x00b8, TryCatch #0 {Exception -> 0x00b8, blocks: (B:11:0x0024, B:13:0x003d, B:15:0x004c, B:25:0x0095, B:29:0x0099, B:31:0x00a0, B:33:0x00a7, B:35:0x00ae, B:37:0x006c, B:40:0x0076, B:43:0x0080, B:46:0x008a), top: B:10:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ae A[Catch: Exception -> 0x00b8, TRY_LEAVE, TryCatch #0 {Exception -> 0x00b8, blocks: (B:11:0x0024, B:13:0x003d, B:15:0x004c, B:25:0x0095, B:29:0x0099, B:31:0x00a0, B:33:0x00a7, B:35:0x00ae, B:37:0x006c, B:40:0x0076, B:43:0x0080, B:46:0x008a), top: B:10:0x0024 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Rect a(Drawable drawable) {
        char c2;
        if (Build.VERSION.SDK_INT >= 29) {
            Insets opticalInsets = drawable.getOpticalInsets();
            Rect rect = new Rect();
            rect.left = opticalInsets.left;
            rect.right = opticalInsets.right;
            rect.top = opticalInsets.top;
            rect.bottom = opticalInsets.bottom;
            return rect;
        }
        if (e != null) {
            try {
                Drawable h = androidx.core.graphics.drawable.a.h(drawable);
                Object invoke = h.getClass().getMethod("getOpticalInsets", new Class[0]).invoke(h, new Object[0]);
                if (invoke != null) {
                    Rect rect2 = new Rect();
                    for (Field field : e.getFields()) {
                        String name = field.getName();
                        int hashCode = name.hashCode();
                        if (hashCode == -1383228885) {
                            if (name.equals("bottom")) {
                                c2 = 3;
                                switch (c2) {
                                }
                            }
                            c2 = 65535;
                            switch (c2) {
                            }
                        } else if (hashCode == 115029) {
                            if (name.equals("top")) {
                                c2 = 1;
                                switch (c2) {
                                }
                            }
                            c2 = 65535;
                            switch (c2) {
                            }
                        } else if (hashCode != 3317767) {
                            if (hashCode == 108511772 && name.equals("right")) {
                                c2 = 2;
                                switch (c2) {
                                    case 0:
                                        rect2.left = field.getInt(invoke);
                                        break;
                                    case 1:
                                        rect2.top = field.getInt(invoke);
                                        break;
                                    case 2:
                                        rect2.right = field.getInt(invoke);
                                        break;
                                    case 3:
                                        rect2.bottom = field.getInt(invoke);
                                        break;
                                }
                            }
                            c2 = 65535;
                            switch (c2) {
                            }
                        } else {
                            if (name.equals("left")) {
                                c2 = 0;
                                switch (c2) {
                                }
                            }
                            c2 = 65535;
                            switch (c2) {
                            }
                        }
                    }
                    return rect2;
                }
            } catch (Exception unused) {
                Log.e(d, "Couldn't obtain the optical insets. Ignoring.");
            }
        }
        return f201a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(@androidx.annotation.ah Drawable drawable) {
        if (Build.VERSION.SDK_INT == 21 && f.equals(drawable.getClass().getName())) {
            d(drawable);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean c(@androidx.annotation.ah Drawable drawable) {
        if (Build.VERSION.SDK_INT < 15 && (drawable instanceof InsetDrawable)) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 15 && (drawable instanceof GradientDrawable)) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 17 && (drawable instanceof LayerDrawable)) {
            return false;
        }
        if (drawable instanceof DrawableContainer) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (!(constantState instanceof DrawableContainer.DrawableContainerState)) {
                return true;
            }
            for (Drawable drawable2 : ((DrawableContainer.DrawableContainerState) constantState).getChildren()) {
                if (!c(drawable2)) {
                    return false;
                }
            }
            return true;
        }
        if (drawable instanceof androidx.core.graphics.drawable.f) {
            return c(((androidx.core.graphics.drawable.f) drawable).a());
        }
        if (drawable instanceof androidx.appcompat.b.a.c) {
            return c(((androidx.appcompat.b.a.c) drawable).a());
        }
        if (drawable instanceof ScaleDrawable) {
            return c(((ScaleDrawable) drawable).getDrawable());
        }
        return true;
    }

    private static void d(Drawable drawable) {
        int[] state = drawable.getState();
        if (state == null || state.length == 0) {
            drawable.setState(b);
        } else {
            drawable.setState(c);
        }
        drawable.setState(state);
    }

    public static PorterDuff.Mode a(int i, PorterDuff.Mode mode) {
        if (i == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }
}
