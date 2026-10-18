package com.google.android.material.q;

import android.content.Context;
import android.util.TypedValue;
import android.view.View;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ak;
import androidx.annotation.ap;
import androidx.annotation.o;
import com.google.android.material.a;

@ap(a = {ap.a.LIBRARY_GROUP})
/* loaded from: /home/user/work/dex/classes.dex */
public class b {
    @ai
    public static TypedValue a(@ah Context context, @androidx.annotation.f int i) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i, typedValue, true)) {
            return typedValue;
        }
        return null;
    }

    public static int a(@ah Context context, @androidx.annotation.f int i, @ah String str) {
        TypedValue a2 = a(context, i);
        if (a2 == null) {
            throw new IllegalArgumentException(String.format("%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant).", str, context.getResources().getResourceName(i)));
        }
        return a2.data;
    }

    public static int a(@ah View view, @androidx.annotation.f int i) {
        return a(view.getContext(), i, view.getClass().getCanonicalName());
    }

    public static boolean b(@ah Context context, @androidx.annotation.f int i, @ah String str) {
        return a(context, i, str) != 0;
    }

    public static boolean a(@ah Context context, @androidx.annotation.f int i, boolean z) {
        TypedValue a2 = a(context, i);
        return (a2 == null || a2.type != 18) ? z : a2.data != 0;
    }

    @ak
    public static int a(@ah Context context) {
        return a(context, a.c.minTouchTargetSize, a.f.mtrl_min_touch_target_size);
    }

    @ak
    public static int a(@ah Context context, @androidx.annotation.f int i, @o int i2) {
        TypedValue a2 = a(context, i);
        if (a2 == null || a2.type != 5) {
            return (int) context.getResources().getDimension(i2);
        }
        return (int) a2.getDimension(context.getResources().getDisplayMetrics());
    }
}
