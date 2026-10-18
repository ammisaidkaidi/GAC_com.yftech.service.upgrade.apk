package com.google.android.material.t;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.Build;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.am;
import androidx.annotation.ap;

/* loaded from: /home/user/work/dex/classes.dex */
public class p {

    /* renamed from: a, reason: collision with root package name */
    private final q[] f1421a = new q[4];
    private final Matrix[] b = new Matrix[4];
    private final Matrix[] c = new Matrix[4];
    private final PointF d = new PointF();
    private final Path e = new Path();
    private final Path f = new Path();
    private final q g = new q();
    private final float[] h = new float[2];
    private final float[] i = new float[2];
    private boolean j = true;

    @ap(a = {ap.a.LIBRARY_GROUP})
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface a {
        void a(q qVar, Matrix matrix, int i);

        void b(q qVar, Matrix matrix, int i);
    }

    private float b(int i) {
        return (i + 1) * 90;
    }

    public p() {
        for (int i = 0; i < 4; i++) {
            this.f1421a[i] = new q();
            this.b[i] = new Matrix();
            this.c[i] = new Matrix();
        }
    }

    public void a(o oVar, float f, RectF rectF, @ah Path path) {
        a(oVar, f, rectF, null, path);
    }

    @ap(a = {ap.a.LIBRARY_GROUP})
    public void a(o oVar, float f, RectF rectF, a aVar, @ah Path path) {
        path.rewind();
        this.e.rewind();
        this.f.rewind();
        this.f.addRect(rectF, Path.Direction.CW);
        b bVar = new b(oVar, f, rectF, aVar, path);
        for (int i = 0; i < 4; i++) {
            a(bVar, i);
            a(i);
        }
        for (int i2 = 0; i2 < 4; i2++) {
            b(bVar, i2);
            c(bVar, i2);
        }
        path.close();
        this.e.close();
        if (Build.VERSION.SDK_INT < 19 || this.e.isEmpty()) {
            return;
        }
        path.op(this.e, Path.Op.UNION);
    }

    private void a(@ah b bVar, int i) {
        a(i, bVar.f1422a).a(this.f1421a[i], 90.0f, bVar.e, bVar.c, b(i, bVar.f1422a));
        float b2 = b(i);
        this.b[i].reset();
        a(i, bVar.c, this.d);
        this.b[i].setTranslate(this.d.x, this.d.y);
        this.b[i].preRotate(b2);
    }

    private void a(int i) {
        this.h[0] = this.f1421a[i].d();
        this.h[1] = this.f1421a[i].e();
        this.b[i].mapPoints(this.h);
        float b2 = b(i);
        this.c[i].reset();
        this.c[i].setTranslate(this.h[0], this.h[1]);
        this.c[i].preRotate(b2);
    }

    private void b(@ah b bVar, int i) {
        this.h[0] = this.f1421a[i].b();
        this.h[1] = this.f1421a[i].c();
        this.b[i].mapPoints(this.h);
        if (i == 0) {
            bVar.b.moveTo(this.h[0], this.h[1]);
        } else {
            bVar.b.lineTo(this.h[0], this.h[1]);
        }
        this.f1421a[i].a(this.b[i], bVar.b);
        if (bVar.d != null) {
            bVar.d.a(this.f1421a[i], this.b[i], i);
        }
    }

    private void c(@ah b bVar, int i) {
        int i2 = (i + 1) % 4;
        this.h[0] = this.f1421a[i].d();
        this.h[1] = this.f1421a[i].e();
        this.b[i].mapPoints(this.h);
        this.i[0] = this.f1421a[i2].b();
        this.i[1] = this.f1421a[i2].c();
        this.b[i2].mapPoints(this.i);
        float max = Math.max(((float) Math.hypot(this.h[0] - this.i[0], this.h[1] - this.i[1])) - 0.001f, 0.0f);
        float a2 = a(bVar.c, i);
        this.g.a(0.0f, 0.0f);
        g c = c(i, bVar.f1422a);
        c.a(max, a2, bVar.e, this.g);
        Path path = new Path();
        this.g.a(this.c[i], path);
        if (this.j && Build.VERSION.SDK_INT >= 19 && (c.f() || a(path, i) || a(path, i2))) {
            path.op(path, this.f, Path.Op.DIFFERENCE);
            this.h[0] = this.g.b();
            this.h[1] = this.g.c();
            this.c[i].mapPoints(this.h);
            this.e.moveTo(this.h[0], this.h[1]);
            this.g.a(this.c[i], this.e);
        } else {
            this.g.a(this.c[i], bVar.b);
        }
        if (bVar.d != null) {
            bVar.d.b(this.g, this.c[i], i);
        }
    }

    @am(a = 19)
    private boolean a(Path path, int i) {
        Path path2 = new Path();
        this.f1421a[i].a(this.b[i], path2);
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        path2.computeBounds(rectF, true);
        path.op(path2, Path.Op.INTERSECT);
        path.computeBounds(rectF, true);
        if (rectF.isEmpty()) {
            return rectF.width() > 1.0f && rectF.height() > 1.0f;
        }
        return true;
    }

    private float a(@ah RectF rectF, int i) {
        this.h[0] = this.f1421a[i].d;
        this.h[1] = this.f1421a[i].e;
        this.b[i].mapPoints(this.h);
        if (i == 1 || i == 3) {
            return Math.abs(rectF.centerX() - this.h[0]);
        }
        return Math.abs(rectF.centerY() - this.h[1]);
    }

    private e a(int i, @ah o oVar) {
        switch (i) {
            case 1:
                return oVar.d();
            case 2:
                return oVar.e();
            case 3:
                return oVar.b();
            default:
                return oVar.c();
        }
    }

    private d b(int i, @ah o oVar) {
        switch (i) {
            case 1:
                return oVar.h();
            case 2:
                return oVar.i();
            case 3:
                return oVar.f();
            default:
                return oVar.g();
        }
    }

    private g c(int i, @ah o oVar) {
        switch (i) {
            case 1:
                return oVar.m();
            case 2:
                return oVar.j();
            case 3:
                return oVar.k();
            default:
                return oVar.l();
        }
    }

    private void a(int i, @ah RectF rectF, @ah PointF pointF) {
        switch (i) {
            case 1:
                pointF.set(rectF.right, rectF.bottom);
                return;
            case 2:
                pointF.set(rectF.left, rectF.bottom);
                return;
            case 3:
                pointF.set(rectF.left, rectF.top);
                return;
            default:
                pointF.set(rectF.right, rectF.top);
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
        this.j = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        @ah
        public final o f1422a;

        @ah
        public final Path b;

        @ah
        public final RectF c;

        @ai
        public final a d;
        public final float e;

        b(@ah o oVar, float f, RectF rectF, @ai a aVar, Path path) {
            this.d = aVar;
            this.f1422a = oVar;
            this.e = f;
            this.c = rectF;
            this.b = path;
        }
    }
}
