package com.google.android.material.textview;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.au;
import androidx.appcompat.widget.aa;
import com.google.android.material.a;
import com.google.android.material.q.b;
import com.google.android.material.q.c;
import com.google.android.material.theme.a.a;

/* loaded from: /home/user/work/dex/classes.dex */
public class MaterialTextView extends aa {
    public MaterialTextView(@ah Context context) {
        this(context, null);
    }

    public MaterialTextView(@ah Context context, @ai AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textViewStyle);
    }

    public MaterialTextView(@ah Context context, @ai AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public MaterialTextView(@ah Context context, @ai AttributeSet attributeSet, int i, int i2) {
        super(a.a(context, attributeSet, i, i2), attributeSet, i);
        int a2;
        Context context2 = getContext();
        if (a(context2)) {
            Resources.Theme theme = context2.getTheme();
            if (a(context2, theme, attributeSet, i, i2) || (a2 = a(theme, attributeSet, i, i2)) == -1) {
                return;
            }
            a(theme, a2);
        }
    }

    @Override // androidx.appcompat.widget.aa, android.widget.TextView
    public void setTextAppearance(@ah Context context, int i) {
        super.setTextAppearance(context, i);
        if (a(context)) {
            a(context.getTheme(), i);
        }
    }

    private void a(@ah Resources.Theme theme, int i) {
        TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(i, a.o.MaterialTextAppearance);
        int a2 = a(getContext(), obtainStyledAttributes, a.o.MaterialTextAppearance_android_lineHeight, a.o.MaterialTextAppearance_lineHeight);
        obtainStyledAttributes.recycle();
        if (a2 >= 0) {
            setLineHeight(a2);
        }
    }

    private static boolean a(Context context) {
        return b.a(context, a.c.textAppearanceLineHeightEnabled, true);
    }

    private static int a(@ah Context context, @ah TypedArray typedArray, @au @ah int... iArr) {
        int i = -1;
        for (int i2 = 0; i2 < iArr.length && i < 0; i2++) {
            i = c.a(context, typedArray, iArr[i2], -1);
        }
        return i;
    }

    private static boolean a(@ah Context context, @ah Resources.Theme theme, @ai AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, a.o.MaterialTextView, i, i2);
        int a2 = a(context, obtainStyledAttributes, a.o.MaterialTextView_android_lineHeight, a.o.MaterialTextView_lineHeight);
        obtainStyledAttributes.recycle();
        return a2 != -1;
    }

    private static int a(@ah Resources.Theme theme, @ai AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, a.o.MaterialTextView, i, i2);
        int resourceId = obtainStyledAttributes.getResourceId(a.o.MaterialTextView_android_textAppearance, -1);
        obtainStyledAttributes.recycle();
        return resourceId;
    }
}
