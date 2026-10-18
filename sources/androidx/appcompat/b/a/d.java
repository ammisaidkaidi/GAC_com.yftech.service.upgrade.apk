package androidx.appcompat.b.a;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.annotation.ap;
import androidx.annotation.k;
import androidx.annotation.r;
import androidx.appcompat.a;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: /home/user/work/dex/classes.dex */
public class d extends Drawable {

    /* renamed from: a, reason: collision with root package name */
    public static final int f106a = 0;
    public static final int b = 1;
    public static final int c = 2;
    public static final int d = 3;
    private static final float f = (float) Math.toRadians(45.0d);
    private float g;
    private float h;
    private float i;
    private float j;
    private boolean k;
    private final int m;
    private float o;
    private float p;
    private final Paint e = new Paint();
    private final Path l = new Path();
    private boolean n = false;
    private int q = 2;

    @Retention(RetentionPolicy.SOURCE)
    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface a {
    }

    private static float a(float f2, float f3, float f4) {
        return f2 + ((f3 - f2) * f4);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public d(Context context) {
        this.e.setStyle(Paint.Style.STROKE);
        this.e.setStrokeJoin(Paint.Join.MITER);
        this.e.setStrokeCap(Paint.Cap.BUTT);
        this.e.setAntiAlias(true);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, a.m.DrawerArrowToggle, a.b.drawerArrowStyle, a.l.Base_Widget_AppCompat_DrawerArrowToggle);
        a(obtainStyledAttributes.getColor(a.m.DrawerArrowToggle_color, 0));
        d(obtainStyledAttributes.getDimension(a.m.DrawerArrowToggle_thickness, 0.0f));
        a(obtainStyledAttributes.getBoolean(a.m.DrawerArrowToggle_spinBars, true));
        e(Math.round(obtainStyledAttributes.getDimension(a.m.DrawerArrowToggle_gapBetweenBars, 0.0f)));
        this.m = obtainStyledAttributes.getDimensionPixelSize(a.m.DrawerArrowToggle_drawableSize, 0);
        this.h = Math.round(obtainStyledAttributes.getDimension(a.m.DrawerArrowToggle_barLength, 0.0f));
        this.g = Math.round(obtainStyledAttributes.getDimension(a.m.DrawerArrowToggle_arrowHeadLength, 0.0f));
        this.i = obtainStyledAttributes.getDimension(a.m.DrawerArrowToggle_arrowShaftLength, 0.0f);
        obtainStyledAttributes.recycle();
    }

    public void a(float f2) {
        if (this.g != f2) {
            this.g = f2;
            invalidateSelf();
        }
    }

    public float a() {
        return this.g;
    }

    public void b(float f2) {
        if (this.i != f2) {
            this.i = f2;
            invalidateSelf();
        }
    }

    public float b() {
        return this.i;
    }

    public float c() {
        return this.h;
    }

    public void c(float f2) {
        if (this.h != f2) {
            this.h = f2;
            invalidateSelf();
        }
    }

    public void a(@k int i) {
        if (i != this.e.getColor()) {
            this.e.setColor(i);
            invalidateSelf();
        }
    }

    @k
    public int d() {
        return this.e.getColor();
    }

    public void d(float f2) {
        if (this.e.getStrokeWidth() != f2) {
            this.e.setStrokeWidth(f2);
            this.p = (float) ((f2 / 2.0f) * Math.cos(f));
            invalidateSelf();
        }
    }

    public float e() {
        return this.e.getStrokeWidth();
    }

    public float f() {
        return this.j;
    }

    public void e(float f2) {
        if (f2 != this.j) {
            this.j = f2;
            invalidateSelf();
        }
    }

    public void b(int i) {
        if (i != this.q) {
            this.q = i;
            invalidateSelf();
        }
    }

    public boolean g() {
        return this.k;
    }

    public void a(boolean z) {
        if (this.k != z) {
            this.k = z;
            invalidateSelf();
        }
    }

    public int h() {
        return this.q;
    }

    public void b(boolean z) {
        if (this.n != z) {
            this.n = z;
            invalidateSelf();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x001e, code lost:
    
        if (androidx.core.graphics.drawable.a.i(r19) == 0) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0016, code lost:
    
        if (androidx.core.graphics.drawable.a.i(r19) == 1) goto L7;
     */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        int i = this.q;
        boolean z = false;
        if (i != 3) {
            switch (i) {
                case 1:
                    z = true;
                    break;
            }
        }
        float a2 = a(this.h, (float) Math.sqrt(this.g * this.g * 2.0f), this.o);
        float a3 = a(this.h, this.i, this.o);
        float round = Math.round(a(0.0f, this.p, this.o));
        float a4 = a(0.0f, f, this.o);
        float a5 = a(z ? 0.0f : -180.0f, z ? 180.0f : 0.0f, this.o);
        double d2 = a2;
        double d3 = a4;
        boolean z2 = z;
        float round2 = (float) Math.round(Math.cos(d3) * d2);
        float round3 = (float) Math.round(d2 * Math.sin(d3));
        this.l.rewind();
        float a6 = a(this.j + this.e.getStrokeWidth(), -this.p, this.o);
        float f2 = (-a3) / 2.0f;
        this.l.moveTo(f2 + round, 0.0f);
        this.l.rLineTo(a3 - (round * 2.0f), 0.0f);
        this.l.moveTo(f2, a6);
        this.l.rLineTo(round2, round3);
        this.l.moveTo(f2, -a6);
        this.l.rLineTo(round2, -round3);
        this.l.close();
        canvas.save();
        canvas.translate(bounds.centerX(), ((((int) ((bounds.height() - (3.0f * r3)) - (this.j * 2.0f))) / 4) * 2) + (this.e.getStrokeWidth() * 1.5f) + this.j);
        if (this.k) {
            canvas.rotate(a5 * (this.n ^ z2 ? -1 : 1));
        } else if (z2) {
            canvas.rotate(180.0f);
        }
        canvas.drawPath(this.l, this.e);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (i != this.e.getAlpha()) {
            this.e.setAlpha(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.e.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.m;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.m;
    }

    @r(a = 0.0d, b = 1.0d)
    public float i() {
        return this.o;
    }

    public void f(@r(a = 0.0d, b = 1.0d) float f2) {
        if (this.o != f2) {
            this.o = f2;
            invalidateSelf();
        }
    }

    public final Paint j() {
        return this.e;
    }
}
