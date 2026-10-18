package com.google.android.material.g;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.k;
import androidx.core.n.af;
import com.google.android.material.g.g;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: /home/user/work/dex/classes.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    public static final int f1313a = 0;
    public static final int b = 1;
    public static final int c = 2;
    public static final int d;
    private static final boolean e = false;
    private final a f;

    @ah
    private final View g;

    @ah
    private final Path h;

    @ah
    private final Paint i;

    @ah
    private final Paint j;

    @ai
    private g.d k;

    @ai
    private Drawable l;
    private Paint m;
    private boolean n;
    private boolean o;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface a {
        void a(Canvas canvas);

        boolean c();
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface b {
    }

    static {
        if (Build.VERSION.SDK_INT >= 21) {
            d = 2;
        } else if (Build.VERSION.SDK_INT >= 18) {
            d = 1;
        } else {
            d = 0;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public d(a aVar) {
        this.f = aVar;
        this.g = (View) aVar;
        this.g.setWillNotDraw(false);
        this.h = new Path();
        this.i = new Paint(7);
        this.j = new Paint(1);
        this.j.setColor(0);
    }

    public void a() {
        if (d == 0) {
            this.n = true;
            this.o = false;
            this.g.buildDrawingCache();
            Bitmap drawingCache = this.g.getDrawingCache();
            if (drawingCache == null && this.g.getWidth() != 0 && this.g.getHeight() != 0) {
                drawingCache = Bitmap.createBitmap(this.g.getWidth(), this.g.getHeight(), Bitmap.Config.ARGB_8888);
                this.g.draw(new Canvas(drawingCache));
            }
            if (drawingCache != null) {
                this.i.setShader(new BitmapShader(drawingCache, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP));
            }
            this.n = false;
            this.o = true;
        }
    }

    public void b() {
        if (d == 0) {
            this.o = false;
            this.g.destroyDrawingCache();
            this.i.setShader(null);
            this.g.invalidate();
        }
    }

    public void a(@ai g.d dVar) {
        if (dVar == null) {
            this.k = null;
        } else {
            if (this.k == null) {
                this.k = new g.d(dVar);
            } else {
                this.k.a(dVar);
            }
            if (com.google.android.material.n.a.b(dVar.d, b(dVar), 1.0E-4f)) {
                this.k.d = Float.MAX_VALUE;
            }
        }
        g();
    }

    @ai
    public g.d c() {
        if (this.k == null) {
            return null;
        }
        g.d dVar = new g.d(this.k);
        if (dVar.a()) {
            dVar.d = b(dVar);
        }
        return dVar;
    }

    public void a(@k int i) {
        this.j.setColor(i);
        this.g.invalidate();
    }

    @k
    public int d() {
        return this.j.getColor();
    }

    @ai
    public Drawable e() {
        return this.l;
    }

    public void a(@ai Drawable drawable) {
        this.l = drawable;
        this.g.invalidate();
    }

    private void g() {
        if (d == 1) {
            this.h.rewind();
            if (this.k != null) {
                this.h.addCircle(this.k.b, this.k.c, this.k.d, Path.Direction.CW);
            }
        }
        this.g.invalidate();
    }

    private float b(@ah g.d dVar) {
        return com.google.android.material.n.a.a(dVar.b, dVar.c, 0.0f, 0.0f, this.g.getWidth(), this.g.getHeight());
    }

    public void a(@ah Canvas canvas) {
        if (h()) {
            switch (d) {
                case 0:
                    canvas.drawCircle(this.k.b, this.k.c, this.k.d, this.i);
                    if (i()) {
                        canvas.drawCircle(this.k.b, this.k.c, this.k.d, this.j);
                        break;
                    }
                    break;
                case 1:
                    int save = canvas.save();
                    canvas.clipPath(this.h);
                    this.f.a(canvas);
                    if (i()) {
                        canvas.drawRect(0.0f, 0.0f, this.g.getWidth(), this.g.getHeight(), this.j);
                    }
                    canvas.restoreToCount(save);
                    break;
                case 2:
                    this.f.a(canvas);
                    if (i()) {
                        canvas.drawRect(0.0f, 0.0f, this.g.getWidth(), this.g.getHeight(), this.j);
                        break;
                    }
                    break;
                default:
                    throw new IllegalStateException("Unsupported strategy " + d);
            }
        } else {
            this.f.a(canvas);
            if (i()) {
                canvas.drawRect(0.0f, 0.0f, this.g.getWidth(), this.g.getHeight(), this.j);
            }
        }
        b(canvas);
    }

    private void b(@ah Canvas canvas) {
        if (j()) {
            Rect bounds = this.l.getBounds();
            float width = this.k.b - (bounds.width() / 2.0f);
            float height = this.k.c - (bounds.height() / 2.0f);
            canvas.translate(width, height);
            this.l.draw(canvas);
            canvas.translate(-width, -height);
        }
    }

    public boolean f() {
        return this.f.c() && !h();
    }

    private boolean h() {
        boolean z = this.k == null || this.k.a();
        return d == 0 ? !z && this.o : !z;
    }

    private boolean i() {
        return (this.n || Color.alpha(this.j.getColor()) == 0) ? false : true;
    }

    private boolean j() {
        return (this.n || this.l == null || this.k == null) ? false : true;
    }

    private void c(@ah Canvas canvas) {
        this.f.a(canvas);
        if (i()) {
            canvas.drawCircle(this.k.b, this.k.c, this.k.d, this.j);
        }
        if (h()) {
            a(canvas, af.s, 10.0f);
            a(canvas, androidx.core.e.a.a.f, 5.0f);
        }
        b(canvas);
    }

    private void a(@ah Canvas canvas, int i, float f) {
        this.m.setColor(i);
        this.m.setStrokeWidth(f);
        canvas.drawCircle(this.k.b, this.k.c, this.k.d - (f / 2.0f), this.m);
    }
}
