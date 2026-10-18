package androidx.core.graphics.drawable;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import androidx.annotation.ah;
import androidx.annotation.ai;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class b extends Drawable {
    private static final int c = 3;

    /* renamed from: a, reason: collision with root package name */
    final Bitmap f427a;
    private int d;
    private final BitmapShader g;
    private float i;
    private boolean l;
    private int m;
    private int n;
    private int e = 119;
    private final Paint f = new Paint(3);
    private final Matrix h = new Matrix();
    final Rect b = new Rect();
    private final RectF j = new RectF();
    private boolean k = true;

    private static boolean b(float f) {
        return f > 0.05f;
    }

    @ah
    public final Paint a() {
        return this.f;
    }

    @ai
    public final Bitmap b() {
        return this.f427a;
    }

    private void i() {
        this.m = this.f427a.getScaledWidth(this.d);
        this.n = this.f427a.getScaledHeight(this.d);
    }

    public void a(@ah Canvas canvas) {
        a(canvas.getDensity());
    }

    public void a(@ah DisplayMetrics displayMetrics) {
        a(displayMetrics.densityDpi);
    }

    public void a(int i) {
        if (this.d != i) {
            if (i == 0) {
                i = 160;
            }
            this.d = i;
            if (this.f427a != null) {
                i();
            }
            invalidateSelf();
        }
    }

    public int c() {
        return this.e;
    }

    public void b(int i) {
        if (this.e != i) {
            this.e = i;
            this.k = true;
            invalidateSelf();
        }
    }

    public void a(boolean z) {
        throw new UnsupportedOperationException();
    }

    public boolean d() {
        throw new UnsupportedOperationException();
    }

    public void b(boolean z) {
        this.f.setAntiAlias(z);
        invalidateSelf();
    }

    public boolean e() {
        return this.f.isAntiAlias();
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        this.f.setFilterBitmap(z);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        this.f.setDither(z);
        invalidateSelf();
    }

    void a(int i, int i2, int i3, Rect rect, Rect rect2) {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f() {
        if (this.k) {
            if (this.l) {
                int min = Math.min(this.m, this.n);
                a(this.e, min, min, getBounds(), this.b);
                int min2 = Math.min(this.b.width(), this.b.height());
                this.b.inset(Math.max(0, (this.b.width() - min2) / 2), Math.max(0, (this.b.height() - min2) / 2));
                this.i = min2 * 0.5f;
            } else {
                a(this.e, this.m, this.n, getBounds(), this.b);
            }
            this.j.set(this.b);
            if (this.g != null) {
                this.h.setTranslate(this.j.left, this.j.top);
                this.h.preScale(this.j.width() / this.f427a.getWidth(), this.j.height() / this.f427a.getHeight());
                this.g.setLocalMatrix(this.h);
                this.f.setShader(this.g);
            }
            this.k = false;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@ah Canvas canvas) {
        Bitmap bitmap = this.f427a;
        if (bitmap == null) {
            return;
        }
        f();
        if (this.f.getShader() == null) {
            canvas.drawBitmap(bitmap, (Rect) null, this.b, this.f);
        } else {
            canvas.drawRoundRect(this.j, this.i, this.i, this.f);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (i != this.f.getAlpha()) {
            this.f.setAlpha(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        return this.f.getColorFilter();
    }

    public void c(boolean z) {
        this.l = z;
        this.k = true;
        if (z) {
            j();
            this.f.setShader(this.g);
            invalidateSelf();
            return;
        }
        a(0.0f);
    }

    private void j() {
        this.i = Math.min(this.n, this.m) / 2;
    }

    public boolean g() {
        return this.l;
    }

    public void a(float f) {
        if (this.i == f) {
            return;
        }
        this.l = false;
        if (b(f)) {
            this.f.setShader(this.g);
        } else {
            this.f.setShader(null);
        }
        this.i = f;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        if (this.l) {
            j();
        }
        this.k = true;
    }

    public float h() {
        return this.i;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.m;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.n;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Bitmap bitmap;
        return (this.e != 119 || this.l || (bitmap = this.f427a) == null || bitmap.hasAlpha() || this.f.getAlpha() < 255 || b(this.i)) ? -3 : -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Resources resources, Bitmap bitmap) {
        this.d = 160;
        if (resources != null) {
            this.d = resources.getDisplayMetrics().densityDpi;
        }
        this.f427a = bitmap;
        if (this.f427a != null) {
            i();
            this.g = new BitmapShader(this.f427a, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
        } else {
            this.n = -1;
            this.m = -1;
            this.g = null;
        }
    }
}
