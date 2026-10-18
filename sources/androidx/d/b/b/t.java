package androidx.d.b.b;

import android.view.View;
import androidx.annotation.ah;
import androidx.d.e.b;
import androidx.d.e.g;
import java.util.Arrays;
import java.util.LinkedHashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public class t implements Comparable<t> {

    /* renamed from: a, reason: collision with root package name */
    public static final String f630a = "MotionPaths";
    public static final boolean b = false;
    public static final boolean c = false;
    static final int d = 0;
    static final int e = 1;
    static final int f = 2;
    static final int g = 3;
    static final int h = 4;
    static final int i = 5;
    static final int j = 1;
    static final int k = 2;
    static final int l = 3;
    static String[] m = {"position", "x", "y", "width", "height", "pathRotate"};
    double[] A;
    double[] B;
    androidx.d.b.a.c n;
    int o;
    float p;
    float q;
    float r;
    float s;
    float t;
    float u;
    float v;
    float w;
    int x;
    LinkedHashMap<String, androidx.d.e.b> y;
    int z;

    private static final float a(float f2, float f3, float f4, float f5, float f6, float f7) {
        return (((f6 - f4) * f3) - ((f7 - f5) * f2)) + f4;
    }

    private static final float b(float f2, float f3, float f4, float f5, float f6, float f7) {
        return ((f6 - f4) * f2) + ((f7 - f5) * f3) + f5;
    }

    public t() {
        this.o = 0;
        this.v = Float.NaN;
        this.w = Float.NaN;
        this.x = e.f606a;
        this.y = new LinkedHashMap<>();
        this.z = 0;
        this.A = new double[18];
        this.B = new double[18];
    }

    void a(k kVar, t tVar, t tVar2) {
        float f2 = kVar.b / 100.0f;
        this.p = f2;
        this.o = kVar.B;
        float f3 = Float.isNaN(kVar.C) ? f2 : kVar.C;
        float f4 = Float.isNaN(kVar.D) ? f2 : kVar.D;
        float f5 = tVar2.t - tVar.t;
        float f6 = tVar2.u - tVar.u;
        this.q = this.p;
        float f7 = tVar.r + (tVar.t / 2.0f);
        float f8 = tVar.s + (tVar.u / 2.0f);
        float f9 = (tVar2.r + (tVar2.t / 2.0f)) - f7;
        float f10 = (tVar2.s + (tVar2.u / 2.0f)) - f8;
        float f11 = (f5 * f3) / 2.0f;
        this.r = (int) ((tVar.r + (f9 * f2)) - f11);
        float f12 = (f6 * f4) / 2.0f;
        this.s = (int) ((tVar.s + (f10 * f2)) - f12);
        this.t = (int) (tVar.t + r3);
        this.u = (int) (tVar.u + r4);
        float f13 = Float.isNaN(kVar.E) ? f2 : kVar.E;
        float f14 = Float.isNaN(kVar.H) ? 0.0f : kVar.H;
        if (!Float.isNaN(kVar.F)) {
            f2 = kVar.F;
        }
        float f15 = Float.isNaN(kVar.G) ? 0.0f : kVar.G;
        this.z = 2;
        this.r = (int) (((tVar.r + (f13 * f9)) + (f15 * f10)) - f11);
        this.s = (int) (((tVar.s + (f9 * f14)) + (f10 * f2)) - f12);
        this.n = androidx.d.b.a.c.a(kVar.z);
        this.x = kVar.A;
    }

    public t(int i2, int i3, k kVar, t tVar, t tVar2) {
        this.o = 0;
        this.v = Float.NaN;
        this.w = Float.NaN;
        this.x = e.f606a;
        this.y = new LinkedHashMap<>();
        this.z = 0;
        this.A = new double[18];
        this.B = new double[18];
        switch (kVar.L) {
            case 1:
                b(kVar, tVar, tVar2);
                return;
            case 2:
                a(i2, i3, kVar, tVar, tVar2);
                return;
            default:
                a(kVar, tVar, tVar2);
                return;
        }
    }

    void a(int i2, int i3, k kVar, t tVar, t tVar2) {
        float f2 = kVar.b / 100.0f;
        this.p = f2;
        this.o = kVar.B;
        float f3 = Float.isNaN(kVar.C) ? f2 : kVar.C;
        float f4 = Float.isNaN(kVar.D) ? f2 : kVar.D;
        float f5 = tVar2.t - tVar.t;
        float f6 = tVar2.u - tVar.u;
        this.q = this.p;
        float f7 = tVar.r + (tVar.t / 2.0f);
        float f8 = tVar.s + (tVar.u / 2.0f);
        float f9 = tVar2.r + (tVar2.t / 2.0f);
        float f10 = (tVar2.s + (tVar2.u / 2.0f)) - f8;
        float f11 = f5 * f3;
        this.r = (int) ((tVar.r + ((f9 - f7) * f2)) - (f11 / 2.0f));
        float f12 = f6 * f4;
        this.s = (int) ((tVar.s + (f10 * f2)) - (f12 / 2.0f));
        this.t = (int) (tVar.t + f11);
        this.u = (int) (tVar.u + f12);
        this.z = 3;
        if (!Float.isNaN(kVar.E)) {
            this.r = (int) (kVar.E * ((int) (i2 - this.t)));
        }
        if (!Float.isNaN(kVar.F)) {
            this.s = (int) (kVar.F * ((int) (i3 - this.u)));
        }
        this.n = androidx.d.b.a.c.a(kVar.z);
        this.x = kVar.A;
    }

    void b(k kVar, t tVar, t tVar2) {
        float f2 = kVar.b / 100.0f;
        this.p = f2;
        this.o = kVar.B;
        float f3 = Float.isNaN(kVar.C) ? f2 : kVar.C;
        float f4 = Float.isNaN(kVar.D) ? f2 : kVar.D;
        float f5 = tVar2.t - tVar.t;
        float f6 = tVar2.u - tVar.u;
        this.q = this.p;
        if (!Float.isNaN(kVar.E)) {
            f2 = kVar.E;
        }
        float f7 = tVar.r + (tVar.t / 2.0f);
        float f8 = tVar.s + (tVar.u / 2.0f);
        float f9 = (tVar2.r + (tVar2.t / 2.0f)) - f7;
        float f10 = (tVar2.s + (tVar2.u / 2.0f)) - f8;
        float f11 = f9 * f2;
        float f12 = (f5 * f3) / 2.0f;
        this.r = (int) ((tVar.r + f11) - f12);
        float f13 = f2 * f10;
        float f14 = (f6 * f4) / 2.0f;
        this.s = (int) ((tVar.s + f13) - f14);
        this.t = (int) (tVar.t + r3);
        this.u = (int) (tVar.u + r4);
        float f15 = Float.isNaN(kVar.F) ? 0.0f : kVar.F;
        this.z = 1;
        this.r = (int) ((tVar.r + f11) - f12);
        this.s = (int) ((tVar.s + f13) - f14);
        this.r += (-f10) * f15;
        this.s += f9 * f15;
        this.n = androidx.d.b.a.c.a(kVar.z);
        this.x = kVar.A;
    }

    private boolean a(float f2, float f3) {
        return (Float.isNaN(f2) || Float.isNaN(f3)) ? Float.isNaN(f2) != Float.isNaN(f3) : Math.abs(f2 - f3) > 1.0E-6f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(t tVar, boolean[] zArr, String[] strArr, boolean z) {
        zArr[0] = zArr[0] | a(this.q, tVar.q);
        zArr[1] = zArr[1] | a(this.r, tVar.r) | z;
        zArr[2] = z | a(this.s, tVar.s) | zArr[2];
        zArr[3] = zArr[3] | a(this.t, tVar.t);
        zArr[4] = a(this.u, tVar.u) | zArr[4];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int[] iArr, double[] dArr, float[] fArr, int i2) {
        float f2 = this.r;
        float f3 = this.s;
        float f4 = this.t;
        float f5 = this.u;
        for (int i3 = 0; i3 < iArr.length; i3++) {
            float f6 = (float) dArr[i3];
            switch (iArr[i3]) {
                case 1:
                    f2 = f6;
                    break;
                case 2:
                    f3 = f6;
                    break;
                case 3:
                    f4 = f6;
                    break;
                case 4:
                    f5 = f6;
                    break;
            }
        }
        fArr[i2] = f2 + (f4 / 2.0f) + 0.0f;
        fArr[i2 + 1] = f3 + (f5 / 2.0f) + 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(int[] iArr, double[] dArr, float[] fArr, int i2) {
        float f2 = this.r;
        float f3 = this.s;
        float f4 = this.t;
        float f5 = this.u;
        for (int i3 = 0; i3 < iArr.length; i3++) {
            float f6 = (float) dArr[i3];
            switch (iArr[i3]) {
                case 3:
                    f4 = f6;
                    break;
                case 4:
                    f5 = f6;
                    break;
            }
        }
        fArr[i2] = f4;
        fArr[i2 + 1] = f5;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(View view, int[] iArr, double[] dArr, double[] dArr2, double[] dArr3) {
        float f2 = this.r;
        float f3 = this.s;
        float f4 = this.t;
        float f5 = this.u;
        if (iArr.length != 0 && this.A.length <= iArr[iArr.length - 1]) {
            int i2 = iArr[iArr.length - 1] + 1;
            this.A = new double[i2];
            this.B = new double[i2];
        }
        Arrays.fill(this.A, Double.NaN);
        for (int i3 = 0; i3 < iArr.length; i3++) {
            this.A[iArr[i3]] = dArr[i3];
            this.B[iArr[i3]] = dArr2[i3];
        }
        float f6 = f2;
        float f7 = f3;
        float f8 = f4;
        float f9 = f5;
        float f10 = Float.NaN;
        float f11 = 0.0f;
        float f12 = 0.0f;
        float f13 = 0.0f;
        float f14 = 0.0f;
        for (int i4 = 0; i4 < this.A.length; i4++) {
            if (!Double.isNaN(this.A[i4]) || (dArr3 != null && dArr3[i4] != 0.0d)) {
                double d2 = dArr3 != null ? dArr3[i4] : 0.0d;
                if (!Double.isNaN(this.A[i4])) {
                    d2 = this.A[i4] + d2;
                }
                float f15 = (float) d2;
                float f16 = (float) this.B[i4];
                switch (i4) {
                    case 1:
                        f11 = f16;
                        f6 = f15;
                        break;
                    case 2:
                        f13 = f16;
                        f7 = f15;
                        break;
                    case 3:
                        f12 = f16;
                        f8 = f15;
                        break;
                    case 4:
                        f14 = f16;
                        f9 = f15;
                        break;
                    case 5:
                        f10 = f15;
                        break;
                }
            }
        }
        if (Float.isNaN(f10)) {
            if (!Float.isNaN(Float.NaN)) {
                view.setRotation(Float.NaN);
            }
        } else {
            view.setRotation((float) ((Float.isNaN(Float.NaN) ? 0.0f : Float.NaN) + f10 + Math.toDegrees(Math.atan2(f13 + (f14 / 2.0f), f11 + (f12 / 2.0f)))));
        }
        float f17 = f6 + 0.5f;
        int i5 = (int) f17;
        float f18 = f7 + 0.5f;
        int i6 = (int) f18;
        int i7 = (int) (f17 + f8);
        int i8 = (int) (f18 + f9);
        int i9 = i7 - i5;
        int i10 = i8 - i6;
        if ((i9 == view.getMeasuredWidth() && i10 == view.getMeasuredHeight()) ? false : true) {
            view.measure(View.MeasureSpec.makeMeasureSpec(i9, androidx.d.c.b.a.b.b), View.MeasureSpec.makeMeasureSpec(i10, androidx.d.c.b.a.b.b));
        }
        view.layout(i5, i6, i7, i8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(int[] iArr, double[] dArr, float[] fArr, int i2) {
        float f2 = this.r;
        float f3 = this.s;
        float f4 = this.t;
        float f5 = this.u;
        for (int i3 = 0; i3 < iArr.length; i3++) {
            float f6 = (float) dArr[i3];
            switch (iArr[i3]) {
                case 1:
                    f2 = f6;
                    break;
                case 2:
                    f3 = f6;
                    break;
                case 3:
                    f4 = f6;
                    break;
                case 4:
                    f5 = f6;
                    break;
            }
        }
        float f7 = f4 + f2;
        float f8 = f5 + f3;
        Float.isNaN(Float.NaN);
        Float.isNaN(Float.NaN);
        int i4 = i2 + 1;
        fArr[i2] = f2 + 0.0f;
        int i5 = i4 + 1;
        fArr[i4] = f3 + 0.0f;
        int i6 = i5 + 1;
        fArr[i5] = f7 + 0.0f;
        int i7 = i6 + 1;
        fArr[i6] = f3 + 0.0f;
        int i8 = i7 + 1;
        fArr[i7] = f7 + 0.0f;
        int i9 = i8 + 1;
        fArr[i8] = f8 + 0.0f;
        fArr[i9] = f2 + 0.0f;
        fArr[i9 + 1] = f8 + 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(float f2, float f3, float[] fArr, int[] iArr, double[] dArr, double[] dArr2) {
        float f4 = 0.0f;
        float f5 = 0.0f;
        float f6 = 0.0f;
        float f7 = 0.0f;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            float f8 = (float) dArr[i2];
            double d2 = dArr2[i2];
            switch (iArr[i2]) {
                case 1:
                    f4 = f8;
                    break;
                case 2:
                    f6 = f8;
                    break;
                case 3:
                    f5 = f8;
                    break;
                case 4:
                    f7 = f8;
                    break;
            }
        }
        float f9 = f4 - ((0.0f * f5) / 2.0f);
        float f10 = f6 - ((0.0f * f7) / 2.0f);
        fArr[0] = (f9 * (1.0f - f2)) + (((f5 * 1.0f) + f9) * f2) + 0.0f;
        fArr[1] = (f10 * (1.0f - f3)) + (((f7 * 1.0f) + f10) * f3) + 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(double[] dArr, int[] iArr) {
        float[] fArr = {this.q, this.r, this.s, this.t, this.u, this.v};
        int i2 = 0;
        for (int i3 = 0; i3 < iArr.length; i3++) {
            if (iArr[i3] < fArr.length) {
                dArr[i2] = fArr[iArr[i3]];
                i2++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(String str) {
        return this.y.containsKey(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b(String str) {
        return this.y.get(str).b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a(String str, double[] dArr, int i2) {
        androidx.d.e.b bVar = this.y.get(str);
        if (bVar.b() == 1) {
            dArr[i2] = bVar.c();
            return 1;
        }
        int b2 = bVar.b();
        bVar.a(new float[b2]);
        int i3 = 0;
        while (i3 < b2) {
            dArr[i2] = r0[i3];
            i3++;
            i2++;
        }
        return b2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(float f2, float f3, float f4, float f5) {
        this.r = f2;
        this.s = f3;
        this.t = f4;
        this.u = f5;
    }

    @Override // java.lang.Comparable
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(@ah t tVar) {
        return Float.compare(this.q, tVar.q);
    }

    public void a(g.a aVar) {
        this.n = androidx.d.b.a.c.a(aVar.c.c);
        this.x = aVar.c.d;
        this.v = aVar.c.g;
        this.o = aVar.c.e;
        this.w = aVar.b.e;
        for (String str : aVar.f.keySet()) {
            androidx.d.e.b bVar = aVar.f.get(str);
            if (bVar.a() != b.a.STRING_TYPE) {
                this.y.put(str, bVar);
            }
        }
    }
}
