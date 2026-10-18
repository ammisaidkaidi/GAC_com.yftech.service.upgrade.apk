package com.google.android.material.g;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.k;
import com.google.android.material.g.g;

/* loaded from: /home/user/work/dex/classes.dex */
public class f extends RelativeLayout implements g {

    /* renamed from: a, reason: collision with root package name */
    @ah
    private final d f1315a;

    public f(Context context) {
        this(context, null);
    }

    public f(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1315a = new d(this);
    }

    @Override // com.google.android.material.g.g
    public void a() {
        this.f1315a.a();
    }

    @Override // com.google.android.material.g.g
    public void g_() {
        this.f1315a.b();
    }

    @Override // com.google.android.material.g.g
    @ai
    public g.d getRevealInfo() {
        return this.f1315a.c();
    }

    @Override // com.google.android.material.g.g
    public void setRevealInfo(@ai g.d dVar) {
        this.f1315a.a(dVar);
    }

    @Override // com.google.android.material.g.g
    public int getCircularRevealScrimColor() {
        return this.f1315a.d();
    }

    @Override // com.google.android.material.g.g
    public void setCircularRevealScrimColor(@k int i) {
        this.f1315a.a(i);
    }

    @Override // com.google.android.material.g.g
    @ai
    public Drawable getCircularRevealOverlayDrawable() {
        return this.f1315a.e();
    }

    @Override // com.google.android.material.g.g
    public void setCircularRevealOverlayDrawable(@ai Drawable drawable) {
        this.f1315a.a(drawable);
    }

    @Override // android.view.View, com.google.android.material.g.g
    public void draw(@ah Canvas canvas) {
        if (this.f1315a != null) {
            this.f1315a.a(canvas);
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
        if (this.f1315a != null) {
            return this.f1315a.f();
        }
        return super.isOpaque();
    }

    @Override // com.google.android.material.g.d.a
    public boolean c() {
        return super.isOpaque();
    }
}
