package androidx.core.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.widget.CompoundButton;
import androidx.annotation.ah;
import androidx.annotation.ai;
import java.lang.reflect.Field;

/* loaded from: /home/user/work/dex/classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    private static final String f582a = "CompoundButtonCompat";
    private static Field b;
    private static boolean c;

    private c() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(@ah CompoundButton compoundButton, @ai ColorStateList colorStateList) {
        if (Build.VERSION.SDK_INT >= 21) {
            compoundButton.setButtonTintList(colorStateList);
        } else if (compoundButton instanceof n) {
            ((n) compoundButton).setSupportButtonTintList(colorStateList);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @ai
    public static ColorStateList a(@ah CompoundButton compoundButton) {
        if (Build.VERSION.SDK_INT >= 21) {
            return compoundButton.getButtonTintList();
        }
        if (compoundButton instanceof n) {
            return ((n) compoundButton).getSupportButtonTintList();
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(@ah CompoundButton compoundButton, @ai PorterDuff.Mode mode) {
        if (Build.VERSION.SDK_INT >= 21) {
            compoundButton.setButtonTintMode(mode);
        } else if (compoundButton instanceof n) {
            ((n) compoundButton).setSupportButtonTintMode(mode);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @ai
    public static PorterDuff.Mode b(@ah CompoundButton compoundButton) {
        if (Build.VERSION.SDK_INT >= 21) {
            return compoundButton.getButtonTintMode();
        }
        if (compoundButton instanceof n) {
            return ((n) compoundButton).getSupportButtonTintMode();
        }
        return null;
    }

    @ai
    public static Drawable c(@ah CompoundButton compoundButton) {
        if (Build.VERSION.SDK_INT >= 23) {
            return compoundButton.getButtonDrawable();
        }
        if (!c) {
            try {
                b = CompoundButton.class.getDeclaredField("mButtonDrawable");
                b.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.i(f582a, "Failed to retrieve mButtonDrawable field", e);
            }
            c = true;
        }
        if (b != null) {
            try {
                return (Drawable) b.get(compoundButton);
            } catch (IllegalAccessException e2) {
                Log.i(f582a, "Failed to get button drawable via reflection", e2);
                b = null;
            }
        }
        return null;
    }
}
