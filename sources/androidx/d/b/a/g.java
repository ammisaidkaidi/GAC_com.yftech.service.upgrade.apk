package androidx.d.b.a;

import java.util.Arrays;

/* loaded from: /home/user/work/dex/classes.dex */
public class g {

    /* renamed from: a, reason: collision with root package name */
    public static String f601a = "Oscillator";
    public static final int e = 0;
    public static final int f = 1;
    public static final int g = 2;
    public static final int h = 3;
    public static final int i = 4;
    public static final int j = 5;
    public static final int k = 6;
    double[] d;
    int l;
    float[] b = new float[0];
    double[] c = new double[0];
    double m = 6.283185307179586d;
    private boolean n = false;

    public String toString() {
        return "pos =" + Arrays.toString(this.c) + " period=" + Arrays.toString(this.b);
    }

    public void a(int i2) {
        this.l = i2;
    }

    public void a(double d, float f2) {
        int length = this.b.length + 1;
        int binarySearch = Arrays.binarySearch(this.c, d);
        if (binarySearch < 0) {
            binarySearch = (-binarySearch) - 1;
        }
        this.c = Arrays.copyOf(this.c, length);
        this.b = Arrays.copyOf(this.b, length);
        this.d = new double[length];
        System.arraycopy(this.c, binarySearch, this.c, binarySearch + 1, (length - binarySearch) - 1);
        this.c[binarySearch] = d;
        this.b[binarySearch] = f2;
        this.n = false;
    }

    public void a() {
        double d = 0.0d;
        for (int i2 = 0; i2 < this.b.length; i2++) {
            d += this.b[i2];
        }
        double d2 = 0.0d;
        for (int i3 = 1; i3 < this.b.length; i3++) {
            d2 += (this.c[i3] - this.c[i3 - 1]) * ((this.b[r12] + this.b[i3]) / 2.0f);
        }
        for (int i4 = 0; i4 < this.b.length; i4++) {
            this.b[i4] = (float) (r10[i4] * (d / d2));
        }
        this.d[0] = 0.0d;
        for (int i5 = 1; i5 < this.b.length; i5++) {
            int i6 = i5 - 1;
            this.d[i5] = this.d[i6] + ((this.c[i5] - this.c[i6]) * ((this.b[i6] + this.b[i5]) / 2.0f));
        }
        this.n = true;
    }

    double a(double d) {
        if (d < 0.0d) {
            d = 0.0d;
        } else if (d > 1.0d) {
            d = 1.0d;
        }
        int binarySearch = Arrays.binarySearch(this.c, d);
        if (binarySearch > 0) {
            return 1.0d;
        }
        if (binarySearch == 0) {
            return 0.0d;
        }
        int i2 = (-binarySearch) - 1;
        int i3 = i2 - 1;
        double d2 = (this.b[i2] - this.b[i3]) / (this.c[i2] - this.c[i3]);
        return this.d[i3] + ((this.b[i3] - (this.c[i3] * d2)) * (d - this.c[i3])) + ((d2 * ((d * d) - (this.c[i3] * this.c[i3]))) / 2.0d);
    }

    public double b(double d) {
        switch (this.l) {
            case 1:
                return Math.signum(0.5d - (a(d) % 1.0d));
            case 2:
                return 1.0d - Math.abs((((a(d) * 4.0d) + 1.0d) % 4.0d) - 2.0d);
            case 3:
                return (((a(d) * 2.0d) + 1.0d) % 2.0d) - 1.0d;
            case 4:
                return 1.0d - (((a(d) * 2.0d) + 1.0d) % 2.0d);
            case 5:
                return Math.cos(this.m * a(d));
            case 6:
                double abs = 1.0d - Math.abs(((a(d) * 4.0d) % 4.0d) - 2.0d);
                return 1.0d - (abs * abs);
            default:
                return Math.sin(this.m * a(d));
        }
    }

    double c(double d) {
        if (d <= 0.0d) {
            d = 1.0E-5d;
        } else if (d >= 1.0d) {
            d = 0.999999d;
        }
        int binarySearch = Arrays.binarySearch(this.c, d);
        if (binarySearch > 0 || binarySearch == 0) {
            return 0.0d;
        }
        int i2 = (-binarySearch) - 1;
        int i3 = i2 - 1;
        double d2 = (this.b[i2] - this.b[i3]) / (this.c[i2] - this.c[i3]);
        return (d * d2) + (this.b[i3] - (d2 * this.c[i3]));
    }

    public double d(double d) {
        switch (this.l) {
            case 1:
                return 0.0d;
            case 2:
                return c(d) * 4.0d * Math.signum((((a(d) * 4.0d) + 3.0d) % 4.0d) - 2.0d);
            case 3:
                return c(d) * 2.0d;
            case 4:
                return (-c(d)) * 2.0d;
            case 5:
                return (-this.m) * c(d) * Math.sin(this.m * a(d));
            case 6:
                return c(d) * 4.0d * ((((a(d) * 4.0d) + 2.0d) % 4.0d) - 2.0d);
            default:
                return this.m * c(d) * Math.cos(this.m * a(d));
        }
    }
}
