package androidx.d.b.a;

import android.util.Log;
import java.util.Arrays;

/* loaded from: /home/user/work/dex/classes.dex */
public class c {
    private static final String d = "cubic(0.4, 0.0, 0.2, 1)";
    private static final String e = "cubic(0.4, 0.05, 0.8, 0.7)";
    private static final String f = "cubic(0.0, 0.0, 0.2, 0.95)";
    private static final String g = "cubic(1, 1, 0, 0)";
    String b = "identity";

    /* renamed from: a, reason: collision with root package name */
    static c f596a = new c();
    private static final String j = "standard";
    private static final String i = "accelerate";
    private static final String h = "decelerate";
    private static final String k = "linear";
    public static String[] c = {j, i, h, k};

    public double a(double d2) {
        return d2;
    }

    public double b(double d2) {
        return 1.0d;
    }

    public static c a(String str) {
        if (str == null) {
            return null;
        }
        if (str.startsWith("cubic")) {
            return new a(str);
        }
        char c2 = 65535;
        int hashCode = str.hashCode();
        if (hashCode != -1354466595) {
            if (hashCode != -1263948740) {
                if (hashCode != -1102672091) {
                    if (hashCode == 1312628413 && str.equals(j)) {
                        c2 = 0;
                    }
                } else if (str.equals(k)) {
                    c2 = 3;
                }
            } else if (str.equals(h)) {
                c2 = 2;
            }
        } else if (str.equals(i)) {
            c2 = 1;
        }
        switch (c2) {
            case 0:
                return new a(d);
            case 1:
                return new a(e);
            case 2:
                return new a(f);
            case 3:
                return new a(g);
            default:
                Log.e("ConstraintSet", "transitionEasing syntax error syntax:transitionEasing=\"cubic(1.0,0.5,0.0,0.6)\" or " + Arrays.toString(c));
                return f596a;
        }
    }

    public String toString() {
        return this.b;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    static class a extends c {
        private static double h = 0.01d;
        private static double i = 1.0E-4d;
        double d;
        double e;
        double f;
        double g;

        a(String str) {
            this.b = str;
            int indexOf = str.indexOf(40);
            int indexOf2 = str.indexOf(44, indexOf);
            this.d = Double.parseDouble(str.substring(indexOf + 1, indexOf2).trim());
            int i2 = indexOf2 + 1;
            int indexOf3 = str.indexOf(44, i2);
            this.e = Double.parseDouble(str.substring(i2, indexOf3).trim());
            int i3 = indexOf3 + 1;
            int indexOf4 = str.indexOf(44, i3);
            this.f = Double.parseDouble(str.substring(i3, indexOf4).trim());
            int i4 = indexOf4 + 1;
            this.g = Double.parseDouble(str.substring(i4, str.indexOf(41, i4)).trim());
        }

        public a(double d, double d2, double d3, double d4) {
            a(d, d2, d3, d4);
        }

        void a(double d, double d2, double d3, double d4) {
            this.d = d;
            this.e = d2;
            this.f = d3;
            this.g = d4;
        }

        private double c(double d) {
            double d2 = 1.0d - d;
            double d3 = 3.0d * d2;
            return (this.d * d2 * d3 * d) + (this.f * d3 * d * d) + (d * d * d);
        }

        private double d(double d) {
            double d2 = 1.0d - d;
            double d3 = 3.0d * d2;
            return (this.e * d2 * d3 * d) + (this.g * d3 * d * d) + (d * d * d);
        }

        private double e(double d) {
            double d2 = 1.0d - d;
            return (d2 * 3.0d * d2 * this.d) + (d2 * 6.0d * d * (this.f - this.d)) + (3.0d * d * d * (1.0d - this.f));
        }

        private double f(double d) {
            double d2 = 1.0d - d;
            return (d2 * 3.0d * d2 * this.e) + (d2 * 6.0d * d * (this.g - this.e)) + (3.0d * d * d * (1.0d - this.g));
        }

        @Override // androidx.d.b.a.c
        public double b(double d) {
            double d2 = 0.5d;
            double d3 = 0.5d;
            while (d2 > i) {
                d2 *= 0.5d;
                d3 = c(d3) < d ? d3 + d2 : d3 - d2;
            }
            double d4 = d3 - d2;
            double d5 = d3 + d2;
            return (d(d5) - d(d4)) / (c(d5) - c(d4));
        }

        @Override // androidx.d.b.a.c
        public double a(double d) {
            if (d <= 0.0d) {
                return 0.0d;
            }
            if (d >= 1.0d) {
                return 1.0d;
            }
            double d2 = 0.5d;
            double d3 = 0.5d;
            while (d2 > h) {
                d2 *= 0.5d;
                d3 = c(d3) < d ? d3 + d2 : d3 - d2;
            }
            double d4 = d3 - d2;
            double c = c(d4);
            double d5 = d3 + d2;
            double c2 = c(d5);
            double d6 = d(d4);
            return (((d(d5) - d6) * (d - c)) / (c2 - c)) + d6;
        }
    }
}
