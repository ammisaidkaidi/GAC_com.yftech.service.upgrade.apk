package com.google.android.material.q;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.TypedValue;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import androidx.annotation.au;
import androidx.appcompat.widget.ba;

@ap(a = {ap.a.LIBRARY_GROUP})
/* loaded from: /home/user/work/dex/classes.dex */
public class c {
    private c() {
    }

    @ai
    public static ColorStateList a(@ah Context context, @ah TypedArray typedArray, @au int i) {
        int color;
        int resourceId;
        ColorStateList a2;
        if (typedArray.hasValue(i) && (resourceId = typedArray.getResourceId(i, 0)) != 0 && (a2 = androidx.appcompat.a.a.a.a(context, resourceId)) != null) {
            return a2;
        }
        if (Build.VERSION.SDK_INT <= 15 && (color = typedArray.getColor(i, -1)) != -1) {
            return ColorStateList.valueOf(color);
        }
        return typedArray.getColorStateList(i);
    }

    @ai
    public static ColorStateList a(@ah Context context, @ah ba baVar, @au int i) {
        int b;
        int g;
        ColorStateList a2;
        if (baVar.j(i) && (g = baVar.g(i, 0)) != 0 && (a2 = androidx.appcompat.a.a.a.a(context, g)) != null) {
            return a2;
        }
        if (Build.VERSION.SDK_INT <= 15 && (b = baVar.b(i, -1)) != -1) {
            return ColorStateList.valueOf(b);
        }
        return baVar.g(i);
    }

    @ai
    public static Drawable b(@ah Context context, @ah TypedArray typedArray, @au int i) {
        int resourceId;
        Drawable b;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (b = androidx.appcompat.a.a.a.b(context, resourceId)) == null) ? typedArray.getDrawable(i) : b;
    }

    @ai
    public static d c(@ah Context context, @ah TypedArray typedArray, @au int i) {
        int resourceId;
        if (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0) {
            return null;
        }
        return new d(context, resourceId);
    }

    public static int a(@ah Context context, @ah TypedArray typedArray, @au int i, int i2) {
        TypedValue typedValue = new TypedValue();
        if (!typedArray.getValue(i, typedValue) || typedValue.type != 2) {
            return typedArray.getDimensionPixelSize(i, i2);
        }
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{typedValue.data});
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(0, i2);
        obtainStyledAttributes.recycle();
        return dimensionPixelSize;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @au
    public static int a(@ah TypedArray typedArray, @au int i, @au int i2) {
        return typedArray.hasValue(i) ? i : i2;
    }
}
