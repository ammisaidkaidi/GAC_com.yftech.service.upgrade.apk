package com.google.android.material.appbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.am;
import androidx.appcompat.widget.Toolbar;
import androidx.core.n.af;
import com.google.android.material.a;
import com.google.android.material.t.j;
import com.google.android.material.t.k;

/* loaded from: /home/user/work/dex/classes.dex */
public class MaterialToolbar extends Toolbar {
    private static final int e = a.n.Widget_MaterialComponents_Toolbar;

    public MaterialToolbar(@ah Context context) {
        this(context, null);
    }

    public MaterialToolbar(@ah Context context, @ai AttributeSet attributeSet) {
        this(context, attributeSet, a.c.toolbarStyle);
    }

    public MaterialToolbar(@ah Context context, @ai AttributeSet attributeSet, int i) {
        super(com.google.android.material.theme.a.a.a(context, attributeSet, i, e), attributeSet, i);
        a(getContext());
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        k.a(this);
    }

    @Override // android.view.View
    @am(a = 21)
    public void setElevation(float f) {
        super.setElevation(f);
        k.a(this, f);
    }

    private void a(Context context) {
        Drawable background = getBackground();
        if (background == null || (background instanceof ColorDrawable)) {
            j jVar = new j();
            jVar.g(ColorStateList.valueOf(background != null ? ((ColorDrawable) background).getColor() : 0));
            jVar.b(context);
            jVar.r(af.P(this));
            af.a(this, jVar);
        }
    }
}
