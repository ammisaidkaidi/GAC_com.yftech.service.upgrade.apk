package com.google.android.material.s;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import androidx.annotation.ah;
import com.google.android.material.a;

@Deprecated
/* loaded from: /home/user/work/dex/classes.dex */
public class a extends androidx.appcompat.b.a.c {

    /* renamed from: a, reason: collision with root package name */
    static final double f1377a = Math.cos(Math.toRadians(45.0d));
    static final float b = 1.5f;
    static final float c = 0.25f;
    static final float d = 0.5f;
    static final float e = 1.0f;

    @ah
    final Paint f;

    @ah
    final Paint g;

    @ah
    final RectF h;
    float i;
    Path j;
    float k;
    float l;
    float m;
    float n;
    private boolean o;
    private final int p;
    private final int q;
    private final int r;
    private boolean s;
    private float t;
    private boolean u;

    @Override // androidx.appcompat.b.a.c, android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public a(Context context, Drawable drawable, float f, float f2, float f3) {
        super(drawable);
        this.o = true;
        this.s = true;
        this.u = false;
        this.p = androidx.core.b.c.c(context, a.e.design_fab_shadow_start_color);
        this.q = androidx.core.b.c.c(context, a.e.design_fab_shadow_mid_color);
        this.r = androidx.core.b.c.c(context, a.e.design_fab_shadow_end_color);
        this.f = new Paint(5);
        this.f.setStyle(Paint.Style.FILL);
        this.i = Math.round(f);
        this.h = new RectF();
        this.g = new Paint(this.f);
        this.g.setAntiAlias(false);
        a(f2, f3);
    }

    private static int e(float f) {
        int round = Math.round(f);
        return round % 2 == 1 ? round - 1 : round;
    }

    public void a(boolean z) {
        this.s = z;
        invalidateSelf();
    }

    @Override // androidx.appcompat.b.a.c, android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        super.setAlpha(i);
        this.f.setAlpha(i);
        this.g.setAlpha(i);
    }

    @Override // androidx.appcompat.b.a.c, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.o = true;
    }

    public void a(float f, float f2) {
        if (f < 0.0f || f2 < 0.0f) {
            throw new IllegalArgumentException("invalid shadow size");
        }
        float e2 = e(f);
        float e3 = e(f2);
        if (e2 > e3) {
            if (!this.u) {
                this.u = true;
            }
            e2 = e3;
        }
        if (this.n == e2 && this.l == e3) {
            return;
        }
        this.n = e2;
        this.l = e3;
        this.m = Math.round(e2 * b);
        this.k = e3;
        this.o = true;
        invalidateSelf();
    }

    public void a(float f) {
        a(f, this.l);
    }

    public float b() {
        return this.n;
    }

    @Override // androidx.appcompat.b.a.c, android.graphics.drawable.Drawable
    public boolean getPadding(@ah Rect rect) {
        int ceil = (int) Math.ceil(a(this.l, this.i, this.s));
        int ceil2 = (int) Math.ceil(b(this.l, this.i, this.s));
        rect.set(ceil2, ceil, ceil2, ceil);
        return true;
    }

    public static float a(float f, float f2, boolean z) {
        return z ? (float) ((f * b) + ((1.0d - f1377a) * f2)) : f * b;
    }

    public static float b(float f, float f2, boolean z) {
        return z ? (float) (f + ((1.0d - f1377a) * f2)) : f;
    }

    public void b(float f) {
        float round = Math.round(f);
        if (this.i == round) {
            return;
        }
        this.i = round;
        this.o = true;
        invalidateSelf();
    }

    @Override // androidx.appcompat.b.a.c, android.graphics.drawable.Drawable
    public void draw(@ah Canvas canvas) {
        if (this.o) {
            a(getBounds());
            this.o = false;
        }
        a(canvas);
        super.draw(canvas);
    }

    public final void c(float f) {
        if (this.t != f) {
            this.t = f;
            invalidateSelf();
        }
    }

    private void a(@ah Canvas canvas) {
        int i;
        float f;
        int i2;
        float f2;
        float f3;
        float f4;
        int save = canvas.save();
        canvas.rotate(this.t, this.h.centerX(), this.h.centerY());
        float f5 = (-this.i) - this.m;
        float f6 = this.i;
        float f7 = f6 * 2.0f;
        boolean z = this.h.width() - f7 > 0.0f;
        boolean z2 = this.h.height() - f7 > 0.0f;
        float f8 = this.n - (this.n * c);
        float f9 = f6 / ((this.n - (this.n * d)) + f6);
        float f10 = f6 / (f8 + f6);
        float f11 = f6 / ((this.n - (this.n * 1.0f)) + f6);
        int save2 = canvas.save();
        canvas.translate(this.h.left + f6, this.h.top + f6);
        canvas.scale(f9, f10);
        canvas.drawPath(this.j, this.f);
        if (z) {
            canvas.scale(1.0f / f9, 1.0f);
            i = save2;
            f = f11;
            i2 = save;
            f2 = f10;
            canvas.drawRect(0.0f, f5, this.h.width() - f7, -this.i, this.g);
        } else {
            i = save2;
            f = f11;
            i2 = save;
            f2 = f10;
        }
        canvas.restoreToCount(i);
        int save3 = canvas.save();
        canvas.translate(this.h.right - f6, this.h.bottom - f6);
        float f12 = f;
        canvas.scale(f9, f12);
        canvas.rotate(180.0f);
        canvas.drawPath(this.j, this.f);
        if (z) {
            canvas.scale(1.0f / f9, 1.0f);
            f3 = f2;
            f4 = f12;
            canvas.drawRect(0.0f, f5, this.h.width() - f7, (-this.i) + this.m, this.g);
        } else {
            f3 = f2;
            f4 = f12;
        }
        canvas.restoreToCount(save3);
        int save4 = canvas.save();
        canvas.translate(this.h.left + f6, this.h.bottom - f6);
        canvas.scale(f9, f4);
        canvas.rotate(270.0f);
        canvas.drawPath(this.j, this.f);
        if (z2) {
            canvas.scale(1.0f / f4, 1.0f);
            canvas.drawRect(0.0f, f5, this.h.height() - f7, -this.i, this.g);
        }
        canvas.restoreToCount(save4);
        int save5 = canvas.save();
        canvas.translate(this.h.right - f6, this.h.top + f6);
        float f13 = f3;
        canvas.scale(f9, f13);
        canvas.rotate(90.0f);
        canvas.drawPath(this.j, this.f);
        if (z2) {
            canvas.scale(1.0f / f13, 1.0f);
            canvas.drawRect(0.0f, f5, this.h.height() - f7, -this.i, this.g);
        }
        canvas.restoreToCount(save5);
        canvas.restoreToCount(i2);
    }

    private void g() {
        RectF rectF = new RectF(-this.i, -this.i, this.i, this.i);
        RectF rectF2 = new RectF(rectF);
        rectF2.inset(-this.m, -this.m);
        if (this.j == null) {
            this.j = new Path();
        } else {
            this.j.reset();
        }
        this.j.setFillType(Path.FillType.EVEN_ODD);
        this.j.moveTo(-this.i, 0.0f);
        this.j.rLineTo(-this.m, 0.0f);
        this.j.arcTo(rectF2, 180.0f, 90.0f, false);
        this.j.arcTo(rectF, 270.0f, -90.0f, false);
        this.j.close();
        float f = -rectF2.top;
        if (f > 0.0f) {
            float f2 = this.i / f;
            this.f.setShader(new RadialGradient(0.0f, 0.0f, f, new int[]{0, this.p, this.q, this.r}, new float[]{0.0f, f2, ((1.0f - f2) / 2.0f) + f2, 1.0f}, Shader.TileMode.CLAMP));
        }
        this.g.setShader(new LinearGradient(0.0f, rectF.top, 0.0f, rectF2.top, new int[]{this.p, this.q, this.r}, new float[]{0.0f, d, 1.0f}, Shader.TileMode.CLAMP));
        this.g.setAntiAlias(false);
    }

    private void a(@ah Rect rect) {
        float f = this.l * b;
        this.h.set(rect.left + this.l, rect.top + f, rect.right - this.l, rect.bottom - f);
        a().setBounds((int) this.h.left, (int) this.h.top, (int) this.h.right, (int) this.h.bottom);
        g();
    }

    public float c() {
        return this.i;
    }

    public void d(float f) {
        a(this.n, f);
    }

    public float d() {
        return this.l;
    }

    public float e() {
        return (Math.max(this.l, this.i + (this.l / 2.0f)) * 2.0f) + (this.l * 2.0f);
    }

    public float f() {
        return (Math.max(this.l, this.i + ((this.l * b) / 2.0f)) * 2.0f) + (this.l * b * 2.0f);
    }
}
