package androidx.b.a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import androidx.annotation.ai;
import androidx.b.a;

/* loaded from: /home/user/work/dex/classes.dex */
class h extends Drawable {

    /* renamed from: a, reason: collision with root package name */
    static a f305a = null;
    private static final double b = Math.cos(Math.toRadians(45.0d));
    private static final float c = 1.5f;
    private final int d;
    private Paint f;
    private Paint g;
    private final RectF h;
    private float i;
    private Path j;
    private float k;
    private float l;
    private float m;
    private ColorStateList n;
    private final int p;
    private final int q;
    private boolean o = true;
    private boolean r = true;
    private boolean s = false;
    private Paint e = new Paint(5);

    /* loaded from: /home/user/work/dex/classes.dex */
    interface a {
        void a(Canvas canvas, RectF rectF, float f, Paint paint);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(Resources resources, ColorStateList colorStateList, float f, float f2, float f3) {
        this.p = resources.getColor(a.b.cardview_shadow_start_color);
        this.q = resources.getColor(a.b.cardview_shadow_end_color);
        this.d = resources.getDimensionPixelSize(a.c.cardview_compat_inset_shadow);
        b(colorStateList);
        this.f = new Paint(5);
        this.f.setStyle(Paint.Style.FILL);
        this.i = (int) (f + 0.5f);
        this.h = new RectF();
        this.g = new Paint(this.f);
        this.g.setAntiAlias(false);
        a(f2, f3);
    }

    private void b(ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        this.n = colorStateList;
        this.e.setColor(this.n.getColorForState(getState(), this.n.getDefaultColor()));
    }

    private int d(float f) {
        int i = (int) (f + 0.5f);
        return i % 2 == 1 ? i - 1 : i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
        this.r = z;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.e.setAlpha(i);
        this.f.setAlpha(i);
        this.g.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.o = true;
    }

    private void a(float f, float f2) {
        if (f < 0.0f) {
            throw new IllegalArgumentException("Invalid shadow size " + f + ". Must be >= 0");
        }
        if (f2 < 0.0f) {
            throw new IllegalArgumentException("Invalid max shadow size " + f2 + ". Must be >= 0");
        }
        float d = d(f);
        float d2 = d(f2);
        if (d > d2) {
            if (!this.s) {
                this.s = true;
            }
            d = d2;
        }
        if (this.m == d && this.k == d2) {
            return;
        }
        this.m = d;
        this.k = d2;
        this.l = (int) ((d * c) + this.d + 0.5f);
        this.o = true;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int ceil = (int) Math.ceil(a(this.k, this.i, this.r));
        int ceil2 = (int) Math.ceil(b(this.k, this.i, this.r));
        rect.set(ceil2, ceil, ceil2, ceil);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float a(float f, float f2, boolean z) {
        return z ? (float) ((f * c) + ((1.0d - b) * f2)) : f * c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float b(float f, float f2, boolean z) {
        return z ? (float) (f + ((1.0d - b) * f2)) : f;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        int colorForState = this.n.getColorForState(iArr, this.n.getDefaultColor());
        if (this.e.getColor() == colorForState) {
            return false;
        }
        this.e.setColor(colorForState);
        this.o = true;
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return (this.n != null && this.n.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.e.setColorFilter(colorFilter);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(float f) {
        if (f < 0.0f) {
            throw new IllegalArgumentException("Invalid radius " + f + ". Must be >= 0");
        }
        float f2 = (int) (f + 0.5f);
        if (this.i == f2) {
            return;
        }
        this.i = f2;
        this.o = true;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.o) {
            b(getBounds());
            this.o = false;
        }
        canvas.translate(0.0f, this.m / 2.0f);
        a(canvas);
        canvas.translate(0.0f, (-this.m) / 2.0f);
        f305a.a(canvas, this.h, this.i, this.e);
    }

    private void a(Canvas canvas) {
        float f = (-this.i) - this.l;
        float f2 = this.i + this.d + (this.m / 2.0f);
        float f3 = f2 * 2.0f;
        boolean z = this.h.width() - f3 > 0.0f;
        boolean z2 = this.h.height() - f3 > 0.0f;
        int save = canvas.save();
        canvas.translate(this.h.left + f2, this.h.top + f2);
        canvas.drawPath(this.j, this.f);
        if (z) {
            canvas.drawRect(0.0f, f, this.h.width() - f3, -this.i, this.g);
        }
        canvas.restoreToCount(save);
        int save2 = canvas.save();
        canvas.translate(this.h.right - f2, this.h.bottom - f2);
        canvas.rotate(180.0f);
        canvas.drawPath(this.j, this.f);
        if (z) {
            canvas.drawRect(0.0f, f, this.h.width() - f3, (-this.i) + this.l, this.g);
        }
        canvas.restoreToCount(save2);
        int save3 = canvas.save();
        canvas.translate(this.h.left + f2, this.h.bottom - f2);
        canvas.rotate(270.0f);
        canvas.drawPath(this.j, this.f);
        if (z2) {
            canvas.drawRect(0.0f, f, this.h.height() - f3, -this.i, this.g);
        }
        canvas.restoreToCount(save3);
        int save4 = canvas.save();
        canvas.translate(this.h.right - f2, this.h.top + f2);
        canvas.rotate(90.0f);
        canvas.drawPath(this.j, this.f);
        if (z2) {
            canvas.drawRect(0.0f, f, this.h.height() - f3, -this.i, this.g);
        }
        canvas.restoreToCount(save4);
    }

    private void g() {
        RectF rectF = new RectF(-this.i, -this.i, this.i, this.i);
        RectF rectF2 = new RectF(rectF);
        rectF2.inset(-this.l, -this.l);
        if (this.j == null) {
            this.j = new Path();
        } else {
            this.j.reset();
        }
        this.j.setFillType(Path.FillType.EVEN_ODD);
        this.j.moveTo(-this.i, 0.0f);
        this.j.rLineTo(-this.l, 0.0f);
        this.j.arcTo(rectF2, 180.0f, 90.0f, false);
        this.j.arcTo(rectF, 270.0f, -90.0f, false);
        this.j.close();
        this.f.setShader(new RadialGradient(0.0f, 0.0f, this.i + this.l, new int[]{this.p, this.p, this.q}, new float[]{0.0f, this.i / (this.i + this.l), 1.0f}, Shader.TileMode.CLAMP));
        this.g.setShader(new LinearGradient(0.0f, (-this.i) + this.l, 0.0f, (-this.i) - this.l, new int[]{this.p, this.p, this.q}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
        this.g.setAntiAlias(false);
    }

    private void b(Rect rect) {
        float f = this.k * c;
        this.h.set(rect.left + this.k, rect.top + f, rect.right - this.k, rect.bottom - f);
        g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float a() {
        return this.i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Rect rect) {
        getPadding(rect);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(float f) {
        a(f, this.k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(float f) {
        a(this.m, f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float b() {
        return this.m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float c() {
        return this.k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float d() {
        return (Math.max(this.k, this.i + this.d + (this.k / 2.0f)) * 2.0f) + ((this.k + this.d) * 2.0f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float e() {
        return (Math.max(this.k, this.i + this.d + ((this.k * c) / 2.0f)) * 2.0f) + (((this.k * c) + this.d) * 2.0f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@ai ColorStateList colorStateList) {
        b(colorStateList);
        invalidateSelf();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ColorStateList f() {
        return this.n;
    }
}
