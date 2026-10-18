package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import androidx.annotation.ap;
import androidx.appcompat.a;

@androidx.annotation.ap(a = {ap.a.LIBRARY})
/* loaded from: /home/user/work/dex/classes.dex */
public class av {
    private static final String i = "ThemeUtils";
    private static final ThreadLocal<TypedValue> j = new ThreadLocal<>();

    /* renamed from: a, reason: collision with root package name */
    static final int[] f238a = {-16842910};
    static final int[] b = {R.attr.state_focused};
    static final int[] c = {R.attr.state_activated};
    static final int[] d = {R.attr.state_pressed};
    static final int[] e = {R.attr.state_checked};
    static final int[] f = {R.attr.state_selected};
    static final int[] g = {-16842919, -16842908};
    static final int[] h = new int[0];
    private static final int[] k = new int[1];

    @androidx.annotation.ah
    public static ColorStateList a(int i2, int i3) {
        return new ColorStateList(new int[][]{f238a, h}, new int[]{i3, i2});
    }

    public static int a(@androidx.annotation.ah Context context, int i2) {
        k[0] = i2;
        ba a2 = ba.a(context, (AttributeSet) null, k);
        try {
            return a2.b(0, 0);
        } finally {
            a2.f();
        }
    }

    @androidx.annotation.ai
    public static ColorStateList b(@androidx.annotation.ah Context context, int i2) {
        k[0] = i2;
        ba a2 = ba.a(context, (AttributeSet) null, k);
        try {
            return a2.g(0);
        } finally {
            a2.f();
        }
    }

    public static int c(@androidx.annotation.ah Context context, int i2) {
        ColorStateList b2 = b(context, i2);
        if (b2 != null && b2.isStateful()) {
            return b2.getColorForState(f238a, b2.getDefaultColor());
        }
        TypedValue a2 = a();
        context.getTheme().resolveAttribute(R.attr.disabledAlpha, a2, true);
        return a(context, i2, a2.getFloat());
    }

    private static TypedValue a() {
        TypedValue typedValue = j.get();
        if (typedValue != null) {
            return typedValue;
        }
        TypedValue typedValue2 = new TypedValue();
        j.set(typedValue2);
        return typedValue2;
    }

    static int a(@androidx.annotation.ah Context context, int i2, float f2) {
        return androidx.core.graphics.e.c(a(context, i2), Math.round(Color.alpha(r0) * f2));
    }

    public static void a(@androidx.annotation.ah View view, @androidx.annotation.ah Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(a.m.AppCompatTheme);
        try {
            if (!obtainStyledAttributes.hasValue(a.m.AppCompatTheme_windowActionBar)) {
                Log.e(i, "View " + view.getClass() + " is an AppCompat widget that can only be used with a Theme.AppCompat theme (or descendant).");
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    private av() {
    }
}
