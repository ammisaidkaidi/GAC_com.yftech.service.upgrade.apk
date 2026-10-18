package androidx.d.b.a;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class b {
    public static final int f = 0;
    public static final int g = 1;
    public static final int h = 2;

    public abstract double a(double d, int i);

    public abstract void a(double d, double[] dArr);

    public abstract void a(double d, float[] fArr);

    public abstract double[] a();

    public abstract double b(double d, int i);

    public abstract void b(double d, double[] dArr);

    public static b a(int i, double[] dArr, double[][] dArr2) {
        if (dArr.length == 1) {
            i = 2;
        }
        if (i == 0) {
            return new f(dArr, dArr2);
        }
        if (i == 2) {
            return new a(dArr[0], dArr2[0]);
        }
        return new e(dArr, dArr2);
    }

    public static b a(int[] iArr, double[] dArr, double[][] dArr2) {
        return new androidx.d.b.a.a(iArr, dArr, dArr2);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    static class a extends b {

        /* renamed from: a, reason: collision with root package name */
        double f595a;
        double[] b;

        @Override // androidx.d.b.a.b
        public double b(double d, int i) {
            return 0.0d;
        }

        a(double d, double[] dArr) {
            this.f595a = d;
            this.b = dArr;
        }

        @Override // androidx.d.b.a.b
        public void a(double d, double[] dArr) {
            System.arraycopy(this.b, 0, dArr, 0, this.b.length);
        }

        @Override // androidx.d.b.a.b
        public void a(double d, float[] fArr) {
            for (int i = 0; i < this.b.length; i++) {
                fArr[i] = (float) this.b[i];
            }
        }

        @Override // androidx.d.b.a.b
        public double a(double d, int i) {
            return this.b[i];
        }

        @Override // androidx.d.b.a.b
        public void b(double d, double[] dArr) {
            for (int i = 0; i < this.b.length; i++) {
                dArr[i] = 0.0d;
            }
        }

        @Override // androidx.d.b.a.b
        public double[] a() {
            return new double[]{this.f595a};
        }
    }
}
