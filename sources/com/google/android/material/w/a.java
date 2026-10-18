package com.google.android.material.w;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.appcompat.widget.au;
import com.google.android.material.a;
import com.google.android.material.internal.s;
import com.google.android.material.internal.z;

/* loaded from: /home/user/work/dex/classes.dex */
public class a extends au {
    private static final int c = a.n.Widget_MaterialComponents_CompoundButton_Switch;
    private static final int[][] d = {new int[]{R.attr.state_enabled, R.attr.state_checked}, new int[]{R.attr.state_enabled, -16842912}, new int[]{-16842910, R.attr.state_checked}, new int[]{-16842910, -16842912}};

    @ah
    private final com.google.android.material.k.a e;

    @ai
    private ColorStateList f;

    @ai
    private ColorStateList g;
    private boolean h;

    public a(@ah Context context) {
        this(context, null);
    }

    public a(@ah Context context, @ai AttributeSet attributeSet) {
        this(context, attributeSet, a.c.switchStyle);
    }

    public a(@ah Context context, @ai AttributeSet attributeSet, int i) {
        super(com.google.android.material.theme.a.a.a(context, attributeSet, i, c), attributeSet, i);
        Context context2 = getContext();
        this.e = new com.google.android.material.k.a(context2);
        TypedArray a2 = s.a(context2, attributeSet, a.o.SwitchMaterial, i, c, new int[0]);
        this.h = a2.getBoolean(a.o.SwitchMaterial_useMaterialThemeColors, false);
        a2.recycle();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.h && getThumbTintList() == null) {
            setThumbTintList(getMaterialThemeColorsThumbTintList());
        }
        if (this.h && getTrackTintList() == null) {
            setTrackTintList(getMaterialThemeColorsTrackTintList());
        }
    }

    public void setUseMaterialThemeColors(boolean z) {
        this.h = z;
        if (z) {
            setThumbTintList(getMaterialThemeColorsThumbTintList());
            setTrackTintList(getMaterialThemeColorsTrackTintList());
        } else {
            setThumbTintList(null);
            setTrackTintList(null);
        }
    }

    public boolean a() {
        return this.h;
    }

    private ColorStateList getMaterialThemeColorsThumbTintList() {
        if (this.f == null) {
            int a2 = com.google.android.material.h.a.a(this, a.c.colorSurface);
            int a3 = com.google.android.material.h.a.a(this, a.c.colorControlActivated);
            float dimension = getResources().getDimension(a.f.mtrl_switch_thumb_elevation);
            if (this.e.a()) {
                dimension += z.d(this);
            }
            int a4 = this.e.a(a2, dimension);
            int[] iArr = new int[d.length];
            iArr[0] = com.google.android.material.h.a.a(a2, a3, 1.0f);
            iArr[1] = a4;
            iArr[2] = com.google.android.material.h.a.a(a2, a3, 0.38f);
            iArr[3] = a4;
            this.f = new ColorStateList(d, iArr);
        }
        return this.f;
    }

    private ColorStateList getMaterialThemeColorsTrackTintList() {
        if (this.g == null) {
            int[] iArr = new int[d.length];
            int a2 = com.google.android.material.h.a.a(this, a.c.colorSurface);
            int a3 = com.google.android.material.h.a.a(this, a.c.colorControlActivated);
            int a4 = com.google.android.material.h.a.a(this, a.c.colorOnSurface);
            iArr[0] = com.google.android.material.h.a.a(a2, a3, 0.54f);
            iArr[1] = com.google.android.material.h.a.a(a2, a4, 0.32f);
            iArr[2] = com.google.android.material.h.a.a(a2, a3, 0.12f);
            iArr[3] = com.google.android.material.h.a.a(a2, a4, 0.12f);
            this.g = new ColorStateList(d, iArr);
        }
        return this.g;
    }
}
