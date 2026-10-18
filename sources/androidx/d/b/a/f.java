package androidx.d.b.a;

import java.lang.reflect.Array;

/* loaded from: /home/user/work/dex/classes.dex */
public class f extends b {

    /* renamed from: a, reason: collision with root package name */
    private static final String f600a = "MonotonicCurveFit";
    private double[] b;
    private double[][] c;
    private double[][] d;

    private static double a(double d, double d2, double d3, double d4, double d5, double d6) {
        double d7 = d2 * d2;
        double d8 = d7 * d2;
        double d9 = 3.0d * d7;
        double d10 = d * d6;
        double d11 = ((((((-2.0d) * d8) * d4) + (d9 * d4)) + ((d8 * 2.0d) * d3)) - (d9 * d3)) + d3 + (d10 * d8);
        double d12 = d * d5;
        return (((d11 + (d8 * d12)) - (d10 * d7)) - (((d * 2.0d) * d5) * d7)) + (d12 * d2);
    }

    private static double b(double d, double d2, double d3, double d4, double d5, double d6) {
        double d7 = d2 * d2;
        double d8 = d2 * 6.0d;
        double d9 = 3.0d * d;
        return ((((((((((-6.0d) * d7) * d4) + (d8 * d4)) + ((6.0d * d7) * d3)) - (d8 * d3)) + ((d9 * d6) * d7)) + ((d9 * d5) * d7)) - (((2.0d * d) * d6) * d2)) - (((4.0d * d) * d5) * d2)) + (d * d5);
    }

    public f(double[] dArr, double[][] dArr2) {
        int length = dArr.length;
        int length2 = dArr2[0].length;
        int i = length - 1;
        double[][] dArr3 = (double[][]) Array.newInstance((Class<?>) double.class, i, length2);
        double[][] dArr4 = (double[][]) Array.newInstance((Class<?>) double.class, length, length2);
        for (int i2 = 0; i2 < length2; i2++) {
            int i3 = 0;
            while (i3 < i) {
                int i4 = i3 + 1;
                dArr3[i3][i2] = (dArr2[i4][i2] - dArr2[i3][i2]) / (dArr[i4] - dArr[i3]);
                if (i3 == 0) {
                    dArr4[i3][i2] = dArr3[i3][i2];
                } else {
                    dArr4[i3][i2] = (dArr3[i3 - 1][i2] + dArr3[i3][i2]) * 0.5d;
                }
                i3 = i4;
            }
            dArr4[i][i2] = dArr3[length - 2][i2];
        }
        for (int i5 = 0; i5 < i; i5++) {
            for (int i6 = 0; i6 < length2; i6++) {
                if (dArr3[i5][i6] == 0.0d) {
                    dArr4[i5][i6] = 0.0d;
                    dArr4[i5 + 1][i6] = 0.0d;
                } else {
                    double d = dArr4[i5][i6] / dArr3[i5][i6];
                    int i7 = i5 + 1;
                    double d2 = dArr4[i7][i6] / dArr3[i5][i6];
                    double hypot = Math.hypot(d, d2);
                    if (hypot > 9.0d) {
                        double d3 = 3.0d / hypot;
                        dArr4[i5][i6] = d * d3 * dArr3[i5][i6];
                        dArr4[i7][i6] = d3 * d2 * dArr3[i5][i6];
                    }
                }
            }
        }
        this.b = dArr;
        this.c = dArr2;
        this.d = dArr4;
    }

    @Override // androidx.d.b.a.b
    public void a(double d, double[] dArr) {
        int length = this.b.length;
        int i = 0;
        int length2 = this.c[0].length;
        if (d <= this.b[0]) {
            for (int i2 = 0; i2 < length2; i2++) {
                dArr[i2] = this.c[0][i2];
            }
            return;
        }
        int i3 = length - 1;
        if (d >= this.b[i3]) {
            while (i < length2) {
                dArr[i] = this.c[i3][i];
                i++;
            }
            return;
        }
        int i4 = 0;
        while (i4 < i3) {
            if (d == this.b[i4]) {
                for (int i5 = 0; i5 < length2; i5++) {
                    dArr[i5] = this.c[i4][i5];
                }
            }
            int i6 = i4 + 1;
            if (d < this.b[i6]) {
                double d2 = this.b[i6] - this.b[i4];
                double d3 = (d - this.b[i4]) / d2;
                while (i < length2) {
                    dArr[i] = a(d2, d3, this.c[i4][i], this.c[i6][i], this.d[i4][i], this.d[i6][i]);
                    i++;
                }
                return;
            }
            i4 = i6;
        }
    }

    @Override // androidx.d.b.a.b
    public void a(double d, float[] fArr) {
        int length = this.b.length;
        int i = 0;
        int length2 = this.c[0].length;
        if (d <= this.b[0]) {
            for (int i2 = 0; i2 < length2; i2++) {
                fArr[i2] = (float) this.c[0][i2];
            }
            return;
        }
        int i3 = length - 1;
        if (d >= this.b[i3]) {
            while (i < length2) {
                fArr[i] = (float) this.c[i3][i];
                i++;
            }
            return;
        }
        int i4 = 0;
        while (i4 < i3) {
            if (d == this.b[i4]) {
                for (int i5 = 0; i5 < length2; i5++) {
                    fArr[i5] = (float) this.c[i4][i5];
                }
            }
            int i6 = i4 + 1;
            if (d < this.b[i6]) {
                double d2 = this.b[i6] - this.b[i4];
                double d3 = (d - this.b[i4]) / d2;
                while (i < length2) {
                    fArr[i] = (float) a(d2, d3, this.c[i4][i], this.c[i6][i], this.d[i4][i], this.d[i6][i]);
                    i++;
                }
                return;
            }
            i4 = i6;
        }
    }

    @Override // androidx.d.b.a.b
    public double a(double d, int i) {
        int length = this.b.length;
        int i2 = 0;
        if (d <= this.b[0]) {
            return this.c[0][i];
        }
        int i3 = length - 1;
        if (d >= this.b[i3]) {
            return this.c[i3][i];
        }
        while (i2 < i3) {
            if (d == this.b[i2]) {
                return this.c[i2][i];
            }
            int i4 = i2 + 1;
            if (d < this.b[i4]) {
                double d2 = this.b[i4] - this.b[i2];
                return a(d2, (d - this.b[i2]) / d2, this.c[i2][i], this.c[i4][i], this.d[i2][i], this.d[i4][i]);
            }
            i2 = i4;
        }
        return 0.0d;
    }

    @Override // androidx.d.b.a.b
    public void b(double d, double[] dArr) {
        double d2;
        int length = this.b.length;
        int length2 = this.c[0].length;
        if (d <= this.b[0]) {
            d2 = this.b[0];
        } else {
            int i = length - 1;
            d2 = d >= this.b[i] ? this.b[i] : d;
        }
        int i2 = 0;
        while (i2 < length - 1) {
            int i3 = i2 + 1;
            if (d2 <= this.b[i3]) {
                double d3 = this.b[i3] - this.b[i2];
                double d4 = (d2 - this.b[i2]) / d3;
                for (int i4 = 0; i4 < length2; i4++) {
                    dArr[i4] = b(d3, d4, this.c[i2][i4], this.c[i3][i4], this.d[i2][i4], this.d[i3][i4]) / d3;
                }
                return;
            }
            i2 = i3;
        }
    }

    @Override // androidx.d.b.a.b
    public double b(double d, int i) {
        double d2;
        int length = this.b.length;
        int i2 = 0;
        if (d < this.b[0]) {
            d2 = this.b[0];
        } else {
            int i3 = length - 1;
            d2 = d >= this.b[i3] ? this.b[i3] : d;
        }
        while (i2 < length - 1) {
            int i4 = i2 + 1;
            if (d2 <= this.b[i4]) {
                double d3 = this.b[i4] - this.b[i2];
                return b(d3, (d2 - this.b[i2]) / d3, this.c[i2][i], this.c[i4][i], this.d[i2][i], this.d[i4][i]) / d3;
            }
            i2 = i4;
        }
        return 0.0d;
    }

    @Override // androidx.d.b.a.b
    public double[] a() {
        return this.b;
    }
}
