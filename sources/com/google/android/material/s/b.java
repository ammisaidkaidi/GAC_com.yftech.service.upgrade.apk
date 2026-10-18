package com.google.android.material.s;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import androidx.core.graphics.e;
import androidx.core.n.af;

@ap(a = {ap.a.LIBRARY_GROUP})
/* loaded from: /home/user/work/dex/classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private static final int f1378a = 68;
    private static final int b = 20;
    private static final int c = 0;
    private static final int[] j = new int[3];
    private static final float[] k = {0.0f, 0.5f, 1.0f};
    private static final int[] l = new int[4];
    private static final float[] m = {0.0f, 0.0f, 0.5f, 1.0f};

    @ah
    private final Paint d;

    @ah
    private final Paint e;

    @ah
    private final Paint f;
    private int g;
    private int h;
    private int i;
    private final Path n;
    private Paint o;

    public b() {
        this(af.s);
    }

    public b(int i) {
        this.n = new Path();
        this.o = new Paint();
        this.d = new Paint();
        a(i);
        this.o.setColor(0);
        this.e = new Paint(4);
        this.e.setStyle(Paint.Style.FILL);
        this.f = new Paint(this.e);
    }

    public void a(int i) {
        this.g = e.c(i, 68);
        this.h = e.c(i, 20);
        this.i = e.c(i, 0);
        this.d.setColor(this.g);
    }

    public void a(@ah Canvas canvas, @ai Matrix matrix, @ah RectF rectF, int i) {
        rectF.bottom += i;
        rectF.offset(0.0f, -i);
        j[0] = this.i;
        j[1] = this.h;
        j[2] = this.g;
        this.f.setShader(new LinearGradient(rectF.left, rectF.top, rectF.left, rectF.bottom, j, k, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix);
        canvas.drawRect(rectF, this.f);
        canvas.restore();
    }

    public void a(@ah Canvas canvas, @ai Matrix matrix, @ah RectF rectF, int i, float f, float f2) {
        boolean z = f2 < 0.0f;
        Path path = this.n;
        if (z) {
            l[0] = 0;
            l[1] = this.i;
            l[2] = this.h;
            l[3] = this.g;
        } else {
            path.rewind();
            path.moveTo(rectF.centerX(), rectF.centerY());
            path.arcTo(rectF, f, f2);
            path.close();
            float f3 = -i;
            rectF.inset(f3, f3);
            l[0] = 0;
            l[1] = this.g;
            l[2] = this.h;
            l[3] = this.i;
        }
        float width = rectF.width() / 2.0f;
        if (width <= 0.0f) {
            return;
        }
        float f4 = 1.0f - (i / width);
        m[1] = f4;
        m[2] = ((1.0f - f4) / 2.0f) + f4;
        this.e.setShader(new RadialGradient(rectF.centerX(), rectF.centerY(), width, l, m, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix);
        if (!z) {
            canvas.clipPath(path, Region.Op.DIFFERENCE);
            canvas.drawPath(path, this.o);
        }
        canvas.drawArc(rectF, f, f2, true, this.e);
        canvas.restore();
    }

    @ah
    public Paint a() {
        return this.d;
    }
}
