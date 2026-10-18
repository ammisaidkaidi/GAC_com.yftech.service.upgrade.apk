package com.google.android.material.f;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.ai;
import androidx.appcompat.widget.h;
import androidx.core.widget.c;
import com.google.android.material.a;
import com.google.android.material.internal.s;

/* loaded from: /home/user/work/dex/classes.dex */
public class a extends h {

    /* renamed from: a, reason: collision with root package name */
    private static final int f1282a = a.n.Widget_MaterialComponents_CompoundButton_CheckBox;
    private static final int[][] b = {new int[]{R.attr.state_enabled, R.attr.state_checked}, new int[]{R.attr.state_enabled, -16842912}, new int[]{-16842910, R.attr.state_checked}, new int[]{-16842910, -16842912}};

    @ai
    private ColorStateList c;
    private boolean d;

    public a(Context context) {
        this(context, null);
    }

    public a(Context context, @ai AttributeSet attributeSet) {
        this(context, attributeSet, a.c.checkboxStyle);
    }

    public a(Context context, @ai AttributeSet attributeSet, int i) {
        super(com.google.android.material.theme.a.a.a(context, attributeSet, i, f1282a), attributeSet, i);
        Context context2 = getContext();
        TypedArray a2 = s.a(context2, attributeSet, a.o.MaterialCheckBox, i, f1282a, new int[0]);
        if (a2.hasValue(a.o.MaterialCheckBox_buttonTint)) {
            c.a(this, com.google.android.material.q.c.a(context2, a2, a.o.MaterialCheckBox_buttonTint));
        }
        this.d = a2.getBoolean(a.o.MaterialCheckBox_useMaterialThemeColors, false);
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
            int[] iArr = new int[b.length];
            int a2 = com.google.android.material.h.a.a(this, a.c.colorControlActivated);
            int a3 = com.google.android.material.h.a.a(this, a.c.colorSurface);
            int a4 = com.google.android.material.h.a.a(this, a.c.colorOnSurface);
            iArr[0] = com.google.android.material.h.a.a(a3, a2, 1.0f);
            iArr[1] = com.google.android.material.h.a.a(a3, a4, 0.54f);
            iArr[2] = com.google.android.material.h.a.a(a3, a4, 0.38f);
            iArr[3] = com.google.android.material.h.a.a(a3, a4, 0.38f);
            this.c = new ColorStateList(b, iArr);
        }
        return this.c;
    }
}
