package com.google.android.material.r;

import android.R;
import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.os.Build;
import android.util.Log;
import android.util.StateSet;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import androidx.annotation.ax;
import androidx.annotation.k;
import androidx.core.graphics.e;

@ap(a = {ap.a.LIBRARY_GROUP})
/* loaded from: /home/user/work/dex/classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean f1376a;

    @ax
    static final String b;

    @ax
    static final String c = "Use a non-transparent color for the default color as it will be used to finish ripple animations.";
    private static final int[] d;
    private static final int[] e;
    private static final int[] f;
    private static final int[] g;
    private static final int[] h;
    private static final int[] i;
    private static final int[] j;
    private static final int[] k;
    private static final int[] l;
    private static final int[] m;

    static {
        f1376a = Build.VERSION.SDK_INT >= 21;
        d = new int[]{R.attr.state_pressed};
        e = new int[]{R.attr.state_hovered, R.attr.state_focused};
        f = new int[]{R.attr.state_focused};
        g = new int[]{R.attr.state_hovered};
        h = new int[]{R.attr.state_selected, R.attr.state_pressed};
        i = new int[]{R.attr.state_selected, R.attr.state_hovered, R.attr.state_focused};
        j = new int[]{R.attr.state_selected, R.attr.state_focused};
        k = new int[]{R.attr.state_selected, R.attr.state_hovered};
        l = new int[]{R.attr.state_selected};
        m = new int[]{R.attr.state_enabled, R.attr.state_pressed};
        b = b.class.getSimpleName();
    }

    private b() {
    }

    @ah
    public static ColorStateList a(@ai ColorStateList colorStateList) {
        if (f1376a) {
            return new ColorStateList(new int[][]{l, StateSet.NOTHING}, new int[]{a(colorStateList, h), a(colorStateList, d)});
        }
        return new ColorStateList(new int[][]{h, i, j, k, l, d, e, f, g, StateSet.NOTHING}, new int[]{a(colorStateList, h), a(colorStateList, i), a(colorStateList, j), a(colorStateList, k), 0, a(colorStateList, d), a(colorStateList, e), a(colorStateList, f), a(colorStateList, g), 0});
    }

    @ah
    public static ColorStateList b(@ai ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (Build.VERSION.SDK_INT >= 22 && Build.VERSION.SDK_INT <= 27 && Color.alpha(colorStateList.getDefaultColor()) == 0 && Color.alpha(colorStateList.getColorForState(m, 0)) != 0) {
                Log.w(b, c);
            }
            return colorStateList;
        }
        return ColorStateList.valueOf(0);
    }

    public static boolean a(@ah int[] iArr) {
        boolean z = false;
        boolean z2 = false;
        for (int i2 : iArr) {
            if (i2 == 16842910) {
                z = true;
            } else if (i2 == 16842908 || i2 == 16842919 || i2 == 16843623) {
                z2 = true;
            }
        }
        return z && z2;
    }

    @k
    private static int a(@ai ColorStateList colorStateList, int[] iArr) {
        int colorForState = colorStateList != null ? colorStateList.getColorForState(iArr, colorStateList.getDefaultColor()) : 0;
        return f1376a ? a(colorForState) : colorForState;
    }

    @TargetApi(21)
    @k
    private static int a(@k int i2) {
        return e.c(i2, Math.min(Color.alpha(i2) * 2, 255));
    }
}
