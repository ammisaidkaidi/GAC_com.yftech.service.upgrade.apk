package com.google.android.material.g.b;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.k;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.g.d;
import com.google.android.material.g.g;

/* loaded from: /home/user/work/dex/classes.dex */
public class a extends CoordinatorLayout implements g {

    @ah
    private final d j;

    public a(@ah Context context) {
        this(context, null);
    }

    public a(@ah Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.j = new d(this);
    }

    @Override // com.google.android.material.g.g
    public void a() {
        this.j.a();
    }

    @Override // com.google.android.material.g.g
    public void g_() {
        this.j.b();
    }

    @Override // com.google.android.material.g.g
    public void setRevealInfo(@ai g.d dVar) {
        this.j.a(dVar);
    }

    @Override // com.google.android.material.g.g
    @ai
    public g.d getRevealInfo() {
        return this.j.c();
    }

    @Override // com.google.android.material.g.g
    public void setCircularRevealScrimColor(@k int i) {
        this.j.a(i);
    }

    @Override // com.google.android.material.g.g
    public int getCircularRevealScrimColor() {
        return this.j.d();
    }

    @Override // com.google.android.material.g.g
    @ai
    public Drawable getCircularRevealOverlayDrawable() {
        return this.j.e();
    }

    @Override // com.google.android.material.g.g
    public void setCircularRevealOverlayDrawable(@ai Drawable drawable) {
        this.j.a(drawable);
    }

    @Override // android.view.View, com.google.android.material.g.g
    public void draw(Canvas canvas) {
        if (this.j != null) {
            this.j.a(canvas);
        } else {
            super.draw(canvas);
        }
    }

    @Override // com.google.android.material.g.d.a
    public void a(Canvas canvas) {
        super.draw(canvas);
    }

    @Override // android.view.View, com.google.android.material.g.g
    public boolean isOpaque() {
        if (this.j != null) {
            return this.j.f();
        }
        return super.isOpaque();
    }

    @Override // com.google.android.material.g.d.a
    public boolean c() {
        return super.isOpaque();
    }
}
