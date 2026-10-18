package com.google.android.material.g.a;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.k;
import com.google.android.material.g.d;
import com.google.android.material.g.g;

/* loaded from: /home/user/work/dex/classes.dex */
public class a extends com.google.android.material.e.a implements g {

    @ah
    private final d e;

    public a(Context context) {
        this(context, null);
    }

    public a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = new d(this);
    }

    @Override // com.google.android.material.g.g
    public void a() {
        this.e.a();
    }

    @Override // com.google.android.material.g.g
    public void g_() {
        this.e.b();
    }

    @Override // com.google.android.material.g.g
    public void setRevealInfo(@ai g.d dVar) {
        this.e.a(dVar);
    }

    @Override // com.google.android.material.g.g
    @ai
    public g.d getRevealInfo() {
        return this.e.c();
    }

    @Override // com.google.android.material.g.g
    public void setCircularRevealScrimColor(@k int i) {
        this.e.a(i);
    }

    @Override // com.google.android.material.g.g
    public int getCircularRevealScrimColor() {
        return this.e.d();
    }

    @Override // com.google.android.material.g.g
    @ai
    public Drawable getCircularRevealOverlayDrawable() {
        return this.e.e();
    }

    @Override // com.google.android.material.g.g
    public void setCircularRevealOverlayDrawable(@ai Drawable drawable) {
        this.e.a(drawable);
    }

    @Override // android.view.View, com.google.android.material.g.g
    public void draw(Canvas canvas) {
        if (this.e != null) {
            this.e.a(canvas);
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
        if (this.e != null) {
            return this.e.f();
        }
        return super.isOpaque();
    }

    @Override // com.google.android.material.g.d.a
    public boolean c() {
        return super.isOpaque();
    }
}
