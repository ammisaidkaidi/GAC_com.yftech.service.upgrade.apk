package androidx.d.b.a;

import java.lang.reflect.Array;

/* loaded from: /home/user/work/dex/classes.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    int f597a;
    a[][] b;
    int c;
    double[] d;
    double e;
    double[][] f;

    public d(double[][] dArr) {
        a(dArr);
    }

    public d() {
    }

    public void a(double[][] dArr) {
        this.c = dArr[0].length;
        this.f597a = dArr.length;
        this.f = (double[][]) Array.newInstance((Class<?>) double.class, this.c, this.f597a);
        this.b = new a[this.c];
        for (int i = 0; i < this.c; i++) {
            for (int i2 = 0; i2 < this.f597a; i2++) {
                this.f[i][i2] = dArr[i2][i];
            }
        }
        for (int i3 = 0; i3 < this.c; i3++) {
            this.b[i3] = a(this.f[i3].length, this.f[i3]);
        }
        this.d = new double[this.f597a - 1];
        this.e = 0.0d;
        a[] aVarArr = new a[this.c];
        for (int i4 = 0; i4 < this.d.length; i4++) {
            for (int i5 = 0; i5 < this.c; i5++) {
                aVarArr[i5] = this.b[i5][i4];
            }
            double d = this.e;
            double[] dArr2 = this.d;
            double a2 = a(aVarArr);
            dArr2[i4] = a2;
            this.e = d + a2;
        }
    }

    public void a(double d, double[] dArr) {
        double d2 = d * this.e;
        int i = 0;
        while (i < this.d.length - 1 && this.d[i] < d2) {
            d2 -= this.d[i];
            i++;
        }
        for (int i2 = 0; i2 < dArr.length; i2++) {
            dArr[i2] = this.b[i2][i].b(d2 / this.d[i]);
        }
    }

    public void b(double d, double[] dArr) {
        double d2 = d * this.e;
        int i = 0;
        while (i < this.d.length - 1 && this.d[i] < d2) {
            d2 -= this.d[i];
            i++;
        }
        for (int i2 = 0; i2 < dArr.length; i2++) {
            dArr[i2] = this.b[i2][i].a(d2 / this.d[i]);
        }
    }

    public void a(double d, float[] fArr) {
        double d2 = d * this.e;
        int i = 0;
        while (i < this.d.length - 1 && this.d[i] < d2) {
            d2 -= this.d[i];
            i++;
        }
        for (int i2 = 0; i2 < fArr.length; i2++) {
            fArr[i2] = (float) this.b[i2][i].a(d2 / this.d[i]);
        }
    }

    public double a(double d, int i) {
        double d2 = d * this.e;
        int i2 = 0;
        while (i2 < this.d.length - 1 && this.d[i2] < d2) {
            d2 -= this.d[i2];
            i2++;
        }
        return this.b[i][i2].a(d2 / this.d[i2]);
    }

    public double a(a[] aVarArr) {
        int i;
        int length = aVarArr.length;
        double[] dArr = new double[aVarArr.length];
        double d = 0.0d;
        double d2 = 0.0d;
        double d3 = 0.0d;
        while (true) {
            i = 0;
            if (d2 >= 1.0d) {
                break;
            }
            double d4 = 0.0d;
            while (i < aVarArr.length) {
                double d5 = dArr[i];
                double a2 = aVarArr[i].a(d2);
                dArr[i] = a2;
                double d6 = d5 - a2;
                d4 += d6 * d6;
                i++;
            }
            if (d2 > 0.0d) {
                d3 += Math.sqrt(d4);
            }
            d2 += 0.1d;
        }
        while (i < aVarArr.length) {
            double d7 = dArr[i];
            double a3 = aVarArr[i].a(1.0d);
            dArr[i] = a3;
            double d8 = d7 - a3;
            d += d8 * d8;
            i++;
        }
        return d3 + Math.sqrt(d);
    }

    static a[] a(int i, double[] dArr) {
        double[] dArr2 = new double[i];
        double[] dArr3 = new double[i];
        double[] dArr4 = new double[i];
        int i2 = i - 1;
        int i3 = 0;
        dArr2[0] = 0.5d;
        int i4 = 1;
        for (int i5 = 1; i5 < i2; i5++) {
            dArr2[i5] = 1.0d / (4.0d - dArr2[i5 - 1]);
        }
        int i6 = i2 - 1;
        dArr2[i2] = 1.0d / (2.0d - dArr2[i6]);
        dArr3[0] = (dArr[1] - dArr[0]) * 3.0d * dArr2[0];
        while (i4 < i2) {
            int i7 = i4 + 1;
            int i8 = i4 - 1;
            dArr3[i4] = (((dArr[i7] - dArr[i8]) * 3.0d) - dArr3[i8]) * dArr2[i4];
            i4 = i7;
        }
        dArr3[i2] = (((dArr[i2] - dArr[i6]) * 3.0d) - dArr3[i6]) * dArr2[i2];
        dArr4[i2] = dArr3[i2];
        while (i6 >= 0) {
            dArr4[i6] = dArr3[i6] - (dArr2[i6] * dArr4[i6 + 1]);
            i6--;
        }
        a[] aVarArr = new a[i2];
        while (i3 < i2) {
            int i9 = i3 + 1;
            aVarArr[i3] = new a((float) dArr[i3], dArr4[i3], (((dArr[i9] - dArr[i3]) * 3.0d) - (dArr4[i3] * 2.0d)) - dArr4[i9], ((dArr[i3] - dArr[i9]) * 2.0d) + dArr4[i3] + dArr4[i9]);
            i3 = i9;
        }
        return aVarArr;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a {
        public static final double e = 0.3333333333333333d;
        public static final double f = 0.5d;

        /* renamed from: a, reason: collision with root package name */
        double f598a;
        double b;
        double c;
        double d;

        public a(double d, double d2, double d3, double d4) {
            this.f598a = d;
            this.b = d2;
            this.c = d3;
            this.d = d4;
        }

        public double a(double d) {
            return (((((this.d * d) + this.c) * d) + this.b) * d) + this.f598a;
        }

        public double b(double d) {
            return (((this.d * 0.3333333333333333d * d) + (this.c * 0.5d)) * d) + this.b;
        }
    }
}
