package androidx.d.b.a;

import android.util.Log;
import androidx.d.b.b.r;

/* loaded from: /home/user/work/dex/classes.dex */
public class h extends r {

    /* renamed from: a, reason: collision with root package name */
    private float f602a;
    private float b;
    private float c;
    private float d;
    private float e;
    private float f;
    private float g;
    private float h;
    private float i;
    private int j;
    private String k;
    private boolean l = false;
    private float m;
    private float n;

    public void a(String str, String str2, float f) {
        Log.v(str, str2 + " ===== " + this.k);
        StringBuilder sb = new StringBuilder();
        sb.append(str2);
        sb.append(this.l ? "backwards" : "forward ");
        sb.append(" time = ");
        sb.append(f);
        sb.append("  stages ");
        sb.append(this.j);
        Log.v(str, sb.toString());
        Log.v(str, str2 + " dur " + this.d + " vel " + this.f602a + " pos " + this.g);
        if (this.j > 1) {
            Log.v(str, str2 + " dur " + this.e + " vel " + this.b + " pos " + this.h);
        }
        if (this.j > 2) {
            Log.v(str, str2 + " dur " + this.f + " vel " + this.c + " pos " + this.i);
        }
        if (f <= this.d) {
            Log.v(str, str2 + "stage 0");
            return;
        }
        if (this.j == 1) {
            Log.v(str, str2 + "end stage 0");
            return;
        }
        float f2 = f - this.d;
        if (f2 < this.e) {
            Log.v(str, str2 + " stage 1");
            return;
        }
        if (this.j == 2) {
            Log.v(str, str2 + "end stage 1");
            return;
        }
        if (f2 - this.e < this.f) {
            Log.v(str, str2 + " stage 2");
            return;
        }
        Log.v(str, str2 + " end stage 2");
    }

    public float a(float f) {
        if (f <= this.d) {
            return this.f602a + (((this.b - this.f602a) * f) / this.d);
        }
        if (this.j == 1) {
            return 0.0f;
        }
        float f2 = f - this.d;
        if (f2 < this.e) {
            return this.b + (((this.c - this.b) * f2) / this.e);
        }
        if (this.j == 2) {
            return this.h;
        }
        float f3 = f2 - this.e;
        if (f3 < this.f) {
            return this.c - ((this.c * f3) / this.f);
        }
        return this.i;
    }

    private float b(float f) {
        if (f <= this.d) {
            return (this.f602a * f) + ((((this.b - this.f602a) * f) * f) / (this.d * 2.0f));
        }
        if (this.j == 1) {
            return this.g;
        }
        float f2 = f - this.d;
        if (f2 < this.e) {
            return this.g + (this.b * f2) + ((((this.c - this.b) * f2) * f2) / (this.e * 2.0f));
        }
        if (this.j == 2) {
            return this.h;
        }
        float f3 = f2 - this.e;
        if (f3 < this.f) {
            return (this.h + (this.c * f3)) - (((this.c * f3) * f3) / (this.f * 2.0f));
        }
        return this.i;
    }

    public void a(float f, float f2, float f3, float f4, float f5, float f6) {
        this.m = f;
        this.l = f > f2;
        if (this.l) {
            a(-f3, f - f2, f5, f6, f4);
        } else {
            a(f3, f2 - f, f5, f6, f4);
        }
    }

    @Override // androidx.d.b.b.r, android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        float b = b(f);
        this.n = f;
        return this.l ? this.m - b : this.m + b;
    }

    @Override // androidx.d.b.b.r
    public float a() {
        return this.l ? -a(this.n) : a(this.n);
    }

    private void a(float f, float f2, float f3, float f4, float f5) {
        if (f == 0.0f) {
            f = 1.0E-4f;
        }
        this.f602a = f;
        float f6 = f / f3;
        float f7 = (f6 * f) / 2.0f;
        if (f < 0.0f) {
            float sqrt = (float) Math.sqrt((f2 - ((((-f) / f3) * f) / 2.0f)) * f3);
            if (sqrt < f4) {
                this.k = "backward accelerate, decelerate";
                this.j = 2;
                this.f602a = f;
                this.b = sqrt;
                this.c = 0.0f;
                this.d = (sqrt - f) / f3;
                this.e = sqrt / f3;
                this.g = ((f + sqrt) * this.d) / 2.0f;
                this.h = f2;
                this.i = f2;
                return;
            }
            this.k = "backward accelerate cruse decelerate";
            this.j = 3;
            this.f602a = f;
            this.b = f4;
            this.c = f4;
            this.d = (f4 - f) / f3;
            this.f = f4 / f3;
            float f8 = ((f + f4) * this.d) / 2.0f;
            float f9 = (this.f * f4) / 2.0f;
            this.e = ((f2 - f8) - f9) / f4;
            this.g = f8;
            this.h = f2 - f9;
            this.i = f2;
            return;
        }
        if (f7 >= f2) {
            this.k = "hard stop";
            this.j = 1;
            this.f602a = f;
            this.b = 0.0f;
            this.g = f2;
            this.d = (2.0f * f2) / f;
            return;
        }
        float f10 = f2 - f7;
        float f11 = f10 / f;
        if (f11 + f6 < f5) {
            this.k = "cruse decelerate";
            this.j = 2;
            this.f602a = f;
            this.b = f;
            this.c = 0.0f;
            this.g = f10;
            this.h = f2;
            this.d = f11;
            this.e = f6;
            return;
        }
        float sqrt2 = (float) Math.sqrt((f3 * f2) + ((f * f) / 2.0f));
        float f12 = (sqrt2 - f) / f3;
        this.d = f12;
        float f13 = sqrt2 / f3;
        this.e = f13;
        if (sqrt2 < f4) {
            this.k = "accelerate decelerate";
            this.j = 2;
            this.f602a = f;
            this.b = sqrt2;
            this.c = 0.0f;
            this.d = f12;
            this.e = f13;
            this.g = ((f + sqrt2) * this.d) / 2.0f;
            this.h = f2;
            return;
        }
        this.k = "accelerate cruse decelerate";
        this.j = 3;
        this.f602a = f;
        this.b = f4;
        this.c = f4;
        this.d = (f4 - f) / f3;
        this.f = f4 / f3;
        float f14 = ((f + f4) * this.d) / 2.0f;
        float f15 = (this.f * f4) / 2.0f;
        this.e = ((f2 - f14) - f15) / f4;
        this.g = f14;
        this.h = f2 - f15;
        this.i = f2;
    }
}
