package com.google.android.material.floatingactionbutton;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import androidx.annotation.k;
import androidx.annotation.p;
import androidx.annotation.z;
import com.google.android.material.t.o;

/* JADX INFO: Access modifiers changed from: package-private */
@ap(a = {ap.a.LIBRARY_GROUP})
/* loaded from: /home/user/work/dex/classes.dex */
public class c extends Drawable {
    private static final float b = 1.3333f;

    /* renamed from: a, reason: collision with root package name */
    @p
    float f1297a;

    @k
    private int j;

    @k
    private int k;

    @k
    private int l;

    @k
    private int m;

    @k
    private int n;
    private o p;

    @ai
    private ColorStateList q;
    private final com.google.android.material.t.p c = new com.google.android.material.t.p();
    private final Path e = new Path();
    private final Rect f = new Rect();
    private final RectF g = new RectF();
    private final RectF h = new RectF();
    private final a i = new a();
    private boolean o = true;

    @ah
    private final Paint d = new Paint(1);

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(o oVar) {
        this.p = oVar;
        this.d.setStyle(Paint.Style.STROKE);
    }

    public void a(@p float f) {
        if (this.f1297a != f) {
            this.f1297a = f;
            this.d.setStrokeWidth(f * b);
            this.o = true;
            invalidateSelf();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@ai ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.n = colorStateList.getColorForState(getState(), this.n);
        }
        this.q = colorStateList;
        this.o = true;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@ai ColorFilter colorFilter) {
        this.d.setColorFilter(colorFilter);
        invalidateSelf();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@k int i, @k int i2, @k int i3, @k int i4) {
        this.j = i;
        this.k = i2;
        this.l = i3;
        this.m = i4;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@ah Canvas canvas) {
        if (this.o) {
            this.d.setShader(c());
            this.o = false;
        }
        float strokeWidth = this.d.getStrokeWidth() / 2.0f;
        copyBounds(this.f);
        this.g.set(this.f);
        float min = Math.min(this.p.f().a(a()), this.g.width() / 2.0f);
        if (this.p.a(a())) {
            this.g.inset(strokeWidth, strokeWidth);
            canvas.drawRoundRect(this.g, min, min, this.d);
        }
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(@ah Outline outline) {
        if (this.p.a(a())) {
            outline.setRoundRect(getBounds(), this.p.f().a(a()));
            return;
        }
        copyBounds(this.f);
        this.g.set(this.f);
        this.c.a(this.p, 1.0f, this.g, this.e);
        if (this.e.isConvex()) {
            outline.setConvexPath(this.e);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(@ah Rect rect) {
        if (!this.p.a(a())) {
            return true;
        }
        int round = Math.round(this.f1297a);
        rect.set(round, round, round, round);
        return true;
    }

    @ah
    protected RectF a() {
        this.h.set(getBounds());
        return this.h;
    }

    public o b() {
        return this.p;
    }

    public void a(o oVar) {
        this.p = oVar;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(@z(a = 0, b = 255) int i) {
        this.d.setAlpha(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f1297a > 0.0f ? -3 : -2;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.o = true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return (this.q != null && this.q.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        int colorForState;
        if (this.q != null && (colorForState = this.q.getColorForState(iArr, this.n)) != this.n) {
            this.o = true;
            this.n = colorForState;
        }
        if (this.o) {
            invalidateSelf();
        }
        return this.o;
    }

    @ah
    private Shader c() {
        copyBounds(this.f);
        float height = this.f1297a / r0.height();
        return new LinearGradient(0.0f, r0.top, 0.0f, r0.bottom, new int[]{androidx.core.graphics.e.a(this.j, this.n), androidx.core.graphics.e.a(this.k, this.n), androidx.core.graphics.e.a(androidx.core.graphics.e.c(this.k, 0), this.n), androidx.core.graphics.e.a(androidx.core.graphics.e.c(this.m, 0), this.n), androidx.core.graphics.e.a(this.m, this.n), androidx.core.graphics.e.a(this.l, this.n)}, new float[]{0.0f, height, 0.5f, 0.5f, 1.0f - height, 1.0f}, Shader.TileMode.CLAMP);
    }

    @Override // android.graphics.drawable.Drawable
    @ai
    public Drawable.ConstantState getConstantState() {
        return this.i;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private class a extends Drawable.ConstantState {
        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        private a() {
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @ah
        public Drawable newDrawable() {
            return c.this;
        }
    }
}
