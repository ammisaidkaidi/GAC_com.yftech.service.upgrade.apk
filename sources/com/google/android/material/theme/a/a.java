package com.google.android.material.theme.a;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.at;
import androidx.annotation.f;
import androidx.appcompat.view.d;
import com.google.android.material.a;

/* loaded from: /home/user/work/dex/classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static final int[] f1469a = {R.attr.theme, a.c.theme};
    private static final int[] b = {a.c.materialThemeOverlay};

    private a() {
    }

    @ah
    public static Context a(@ah Context context, @ai AttributeSet attributeSet, @f int i, @at int i2) {
        int b2 = b(context, attributeSet, i, i2);
        boolean z = (context instanceof d) && ((d) context).getThemeResId() == b2;
        if (b2 == 0 || z) {
            return context;
        }
        d dVar = new d(context, b2);
        int a2 = a(context, attributeSet);
        if (a2 != 0) {
            dVar.getTheme().applyStyle(a2, true);
        }
        return dVar;
    }

    @at
    private static int a(@ah Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f1469a);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        int resourceId2 = obtainStyledAttributes.getResourceId(1, 0);
        obtainStyledAttributes.recycle();
        return resourceId != 0 ? resourceId : resourceId2;
    }

    @at
    private static int b(@ah Context context, @ai AttributeSet attributeSet, @f int i, @at int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b, i, i2);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        return resourceId;
    }
}
