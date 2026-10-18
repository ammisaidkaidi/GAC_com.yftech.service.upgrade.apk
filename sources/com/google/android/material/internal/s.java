package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import androidx.annotation.at;
import androidx.annotation.au;
import androidx.appcompat.widget.ba;
import com.google.android.material.a;

@ap(a = {ap.a.LIBRARY_GROUP})
/* loaded from: /home/user/work/dex/classes.dex */
public final class s {
    private static final String b = "Theme.AppCompat";
    private static final String d = "Theme.MaterialComponents";

    /* renamed from: a, reason: collision with root package name */
    private static final int[] f1351a = {a.c.colorPrimary};
    private static final int[] c = {a.c.colorPrimaryVariant};

    private s() {
    }

    @ah
    public static TypedArray a(@ah Context context, AttributeSet attributeSet, @au @ah int[] iArr, @androidx.annotation.f int i, @at int i2, @au int... iArr2) {
        a(context, attributeSet, i, i2);
        c(context, attributeSet, iArr, i, i2, iArr2);
        return context.obtainStyledAttributes(attributeSet, iArr, i, i2);
    }

    public static ba b(@ah Context context, AttributeSet attributeSet, @au @ah int[] iArr, @androidx.annotation.f int i, @at int i2, @au int... iArr2) {
        a(context, attributeSet, i, i2);
        c(context, attributeSet, iArr, i, i2, iArr2);
        return ba.a(context, attributeSet, iArr, i, i2);
    }

    private static void a(@ah Context context, AttributeSet attributeSet, @androidx.annotation.f int i, @at int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.o.ThemeEnforcement, i, i2);
        boolean z = obtainStyledAttributes.getBoolean(a.o.ThemeEnforcement_enforceMaterialTheme, false);
        obtainStyledAttributes.recycle();
        if (z) {
            TypedValue typedValue = new TypedValue();
            if (!context.getTheme().resolveAttribute(a.c.isMaterialTheme, typedValue, true) || (typedValue.type == 18 && typedValue.data == 0)) {
                b(context);
            }
        }
        a(context);
    }

    private static void c(@ah Context context, AttributeSet attributeSet, @au @ah int[] iArr, @androidx.annotation.f int i, @at int i2, @ai @au int... iArr2) {
        boolean z;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.o.ThemeEnforcement, i, i2);
        if (!obtainStyledAttributes.getBoolean(a.o.ThemeEnforcement_enforceTextAppearance, false)) {
            obtainStyledAttributes.recycle();
            return;
        }
        if (iArr2 == null || iArr2.length == 0) {
            z = obtainStyledAttributes.getResourceId(a.o.ThemeEnforcement_android_textAppearance, -1) != -1;
        } else {
            z = d(context, attributeSet, iArr, i, i2, iArr2);
        }
        obtainStyledAttributes.recycle();
        if (!z) {
            throw new IllegalArgumentException("This component requires that you specify a valid TextAppearance attribute. Update your app theme to inherit from Theme.MaterialComponents (or a descendant).");
        }
    }

    private static boolean d(@ah Context context, AttributeSet attributeSet, @au @ah int[] iArr, @androidx.annotation.f int i, @at int i2, @au @ah int... iArr2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, i2);
        for (int i3 : iArr2) {
            if (obtainStyledAttributes.getResourceId(i3, -1) == -1) {
                obtainStyledAttributes.recycle();
                return false;
            }
        }
        obtainStyledAttributes.recycle();
        return true;
    }

    public static void a(@ah Context context) {
        a(context, f1351a, b);
    }

    public static void b(@ah Context context) {
        a(context, c, d);
    }

    public static boolean c(@ah Context context) {
        return a(context, f1351a);
    }

    public static boolean d(@ah Context context) {
        return a(context, c);
    }

    private static boolean a(@ah Context context, @ah int[] iArr) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(iArr);
        for (int i = 0; i < iArr.length; i++) {
            if (!obtainStyledAttributes.hasValue(i)) {
                obtainStyledAttributes.recycle();
                return false;
            }
        }
        obtainStyledAttributes.recycle();
        return true;
    }

    private static void a(@ah Context context, @ah int[] iArr, String str) {
        if (a(context, iArr)) {
            return;
        }
        throw new IllegalArgumentException("The style on this component requires your app theme to be " + str + " (or a descendant).");
    }
}
