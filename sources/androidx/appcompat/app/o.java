package androidx.appcompat.app;

/* loaded from: /home/user/work/dex/classes.dex */
class o {

    /* renamed from: a, reason: collision with root package name */
    public static final int f89a = 0;
    public static final int b = 1;
    private static o f = null;
    private static final float g = 0.017453292f;
    private static final float h = 9.0E-4f;
    private static final float i = -0.10471976f;
    private static final float j = 0.0334196f;
    private static final float k = 3.49066E-4f;
    private static final float l = 5.236E-6f;
    private static final float m = 0.4092797f;
    private static final long n = 946728000000L;
    public long c;
    public long d;
    public int e;

    o() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static o a() {
        if (f == null) {
            f = new o();
        }
        return f;
    }

    public void a(long j2, double d, double d2) {
        double d3 = (0.01720197f * (((float) (j2 - n)) / 8.64E7f)) + 6.24006f;
        double sin = (Math.sin(d3) * 0.03341960161924362d) + d3 + (Math.sin(2.0f * r5) * 3.4906598739326E-4d) + (Math.sin(r5 * 3.0f) * 5.236000106378924E-6d) + 1.796593063d + 3.141592653589793d;
        double round = ((float) Math.round((r4 - h) - r10)) + h + ((-d2) / 360.0d) + (Math.sin(d3) * 0.0053d) + (Math.sin(2.0d * sin) * (-0.0069d));
        double asin = Math.asin(Math.sin(sin) * Math.sin(0.4092797040939331d));
        double d4 = 0.01745329238474369d * d;
        double sin2 = (Math.sin(-0.10471975803375244d) - (Math.sin(d4) * Math.sin(asin))) / (Math.cos(d4) * Math.cos(asin));
        if (sin2 >= 1.0d) {
            this.e = 1;
            this.c = -1L;
            this.d = -1L;
        } else {
            if (sin2 <= -1.0d) {
                this.e = 0;
                this.c = -1L;
                this.d = -1L;
                return;
            }
            double acos = (float) (Math.acos(sin2) / 6.283185307179586d);
            this.c = Math.round((round + acos) * 8.64E7d) + n;
            this.d = Math.round((round - acos) * 8.64E7d) + n;
            if (this.d < j2 && this.c > j2) {
                this.e = 0;
            } else {
                this.e = 1;
            }
        }
    }
}
