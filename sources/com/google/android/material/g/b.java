package com.google.android.material.g;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.k;
import com.google.android.material.g.g;

/* loaded from: /home/user/work/dex/classes.dex */
public class b extends FrameLayout implements g {

    /* renamed from: a, reason: collision with root package name */
    @ah
    private final d f1311a;

    public b(@ah Context context) {
        this(context, null);
    }

    public b(@ah Context context, @ai AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1311a = new d(this);
    }

    @Override // com.google.android.material.g.g
    public void a() {
        this.f1311a.a();
    }

    @Override // com.google.android.material.g.g
    public void g_() {
        this.f1311a.b();
    }

    @Override // com.google.android.material.g.g
    @ai
    public g.d getRevealInfo() {
        return this.f1311a.c();
    }

    @Override // com.google.android.material.g.g
    public void setRevealInfo(@ai g.d dVar) {
        this.f1311a.a(dVar);
    }

    @Override // com.google.android.material.g.g
    public int getCircularRevealScrimColor() {
        return this.f1311a.d();
    }

    @Override // com.google.android.material.g.g
    public void setCircularRevealScrimColor(@k int i) {
        this.f1311a.a(i);
    }

    @Override // com.google.android.material.g.g
    @ai
    public Drawable getCircularRevealOverlayDrawable() {
        return this.f1311a.e();
    }

    @Override // com.google.android.material.g.g
    public void setCircularRevealOverlayDrawable(@ai Drawable drawable) {
        this.f1311a.a(drawable);
    }

    @Override // android.view.View, com.google.android.material.g.g
    @SuppressLint({"MissingSuperCall"})
    public void draw(@ah Canvas canvas) {
        if (this.f1311a != null) {
            this.f1311a.a(canvas);
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
        if (this.f1311a != null) {
            return this.f1311a.f();
        }
        return super.isOpaque();
    }

    @Override // com.google.android.material.g.d.a
    public boolean c() {
        return super.isOpaque();
    }
}
