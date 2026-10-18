package com.google.android.material.p;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.appcompat.widget.t;
import androidx.core.widget.c;
import com.google.android.material.a;
import com.google.android.material.internal.s;

/* loaded from: /home/user/work/dex/classes.dex */
public class a extends t {

    /* renamed from: a, reason: collision with root package name */
    private static final int f1368a = a.n.Widget_MaterialComponents_CompoundButton_RadioButton;
    private static final int[][] b = {new int[]{R.attr.state_enabled, R.attr.state_checked}, new int[]{R.attr.state_enabled, -16842912}, new int[]{-16842910, R.attr.state_checked}, new int[]{-16842910, -16842912}};

    @ai
    private ColorStateList c;
    private boolean d;

    public a(@ah Context context) {
        this(context, null);
    }

    public a(@ah Context context, @ai AttributeSet attributeSet) {
        this(context, attributeSet, a.c.radioButtonStyle);
    }

    public a(@ah Context context, @ai AttributeSet attributeSet, int i) {
        super(com.google.android.material.theme.a.a.a(context, attributeSet, i, f1368a), attributeSet, i);
        Context context2 = getContext();
        TypedArray a2 = s.a(context2, attributeSet, a.o.MaterialRadioButton, i, f1368a, new int[0]);
        if (a2.hasValue(a.o.MaterialRadioButton_buttonTint)) {
            c.a(this, com.google.android.material.q.c.a(context2, a2, a.o.MaterialRadioButton_buttonTint));
        }
        this.d = a2.getBoolean(a.o.MaterialRadioButton_useMaterialThemeColors, false);
        a2.recycle();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.d && c.a(this) == null) {
            setUseMaterialThemeColors(true);
        }
    }

    public void setUseMaterialThemeColors(boolean z) {
        this.d = z;
        if (z) {
            c.a(this, getMaterialThemeColorsTintList());
        } else {
            c.a(this, (ColorStateList) null);
        }
    }

    public boolean a() {
        return this.d;
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.c == null) {
            int a2 = com.google.android.material.h.a.a(this, a.c.colorControlActivated);
            int a3 = com.google.android.material.h.a.a(this, a.c.colorOnSurface);
            int a4 = com.google.android.material.h.a.a(this, a.c.colorSurface);
            int[] iArr = new int[b.length];
            iArr[0] = com.google.android.material.h.a.a(a4, a2, 1.0f);
            iArr[1] = com.google.android.material.h.a.a(a4, a3, 0.54f);
            iArr[2] = com.google.android.material.h.a.a(a4, a3, 0.38f);
            iArr[3] = com.google.android.material.h.a.a(a4, a3, 0.38f);
            this.c = new ColorStateList(b, iArr);
        }
        return this.c;
    }
}
