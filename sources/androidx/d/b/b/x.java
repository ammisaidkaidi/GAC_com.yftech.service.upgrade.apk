package androidx.d.b.b;

import android.os.Build;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.DecimalFormat;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class x {
    private static final String h = "SplineSet";
    private static final int l = 0;
    private static final int m = 1;
    private static final int n = 2;
    private static float o = 6.2831855f;

    /* renamed from: a, reason: collision with root package name */
    protected androidx.d.b.a.b f636a;
    long f;
    private int i;
    private String j;
    protected int b = 0;
    protected int[] c = new int[10];
    protected float[][] d = (float[][]) Array.newInstance((Class<?>) float.class, 10, 3);
    private float[] k = new float[3];
    protected boolean e = false;
    float g = Float.NaN;

    public abstract boolean a(View view, float f2, long j2, androidx.d.b.b.g gVar);

    public String toString() {
        String str = this.j;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (int i2 = 0; i2 < this.i; i2++) {
            str = str + "[" + this.c[i2] + " , " + decimalFormat.format(this.d[i2]) + "] ";
        }
        return str;
    }

    public void a(String str) {
        this.j = str;
    }

    public float a(float f2, long j2, View view, androidx.d.b.b.g gVar) {
        this.f636a.a(f2, this.k);
        float f3 = this.k[1];
        if (f3 == 0.0f) {
            this.e = false;
            return this.k[2];
        }
        if (Float.isNaN(this.g)) {
            this.g = gVar.a(view, this.j, 0);
            if (Float.isNaN(this.g)) {
                this.g = 0.0f;
            }
        }
        this.g = (float) ((this.g + (((j2 - this.f) * 1.0E-9d) * f3)) % 1.0d);
        gVar.a(view, this.j, 0, this.g);
        this.f = j2;
        float f4 = this.k[0];
        float a2 = (a(this.g) * f4) + this.k[2];
        this.e = (f4 == 0.0f && f3 == 0.0f) ? false : true;
        return a2;
    }

    protected float a(float f2) {
        switch (this.b) {
            case 1:
                return Math.signum(f2 * o);
            case 2:
                return 1.0f - Math.abs(f2);
            case 3:
                return (((f2 * 2.0f) + 1.0f) % 2.0f) - 1.0f;
            case 4:
                return 1.0f - (((f2 * 2.0f) + 1.0f) % 2.0f);
            case 5:
                return (float) Math.cos(f2 * o);
            case 6:
                float abs = 1.0f - Math.abs(((f2 * 4.0f) % 4.0f) - 2.0f);
                return 1.0f - (abs * abs);
            default:
                return (float) Math.sin(f2 * o);
        }
    }

    public androidx.d.b.a.b a() {
        return this.f636a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static x a(String str, SparseArray<androidx.d.e.b> sparseArray) {
        return new b(str, sparseArray);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0088. Please report as an issue. */
    public static x a(String str, long j2) {
        char c2;
        x aVar;
        switch (str.hashCode()) {
            case -1249320806:
                if (str.equals("rotationX")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case -1249320805:
                if (str.equals("rotationY")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case -1225497657:
                if (str.equals("translationX")) {
                    c2 = '\b';
                    break;
                }
                c2 = 65535;
                break;
            case -1225497656:
                if (str.equals("translationY")) {
                    c2 = '\t';
                    break;
                }
                c2 = 65535;
                break;
            case -1225497655:
                if (str.equals("translationZ")) {
                    c2 = '\n';
                    break;
                }
                c2 = 65535;
                break;
            case -1001078227:
                if (str.equals(androidx.core.app.p.al)) {
                    c2 = 11;
                    break;
                }
                c2 = 65535;
                break;
            case -908189618:
                if (str.equals("scaleX")) {
                    c2 = 6;
                    break;
                }
                c2 = 65535;
                break;
            case -908189617:
                if (str.equals("scaleY")) {
                    c2 = 7;
                    break;
                }
                c2 = 65535;
                break;
            case -40300674:
                if (str.equals("rotation")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case -4379043:
                if (str.equals("elevation")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 37232917:
                if (str.equals("transitionPathRotate")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case 92909918:
                if (str.equals("alpha")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        switch (c2) {
            case 0:
                aVar = new a();
                aVar.a(j2);
                return aVar;
            case 1:
                aVar = new c();
                aVar.a(j2);
                return aVar;
            case 2:
                aVar = new f();
                aVar.a(j2);
                return aVar;
            case 3:
                aVar = new g();
                aVar.a(j2);
                return aVar;
            case 4:
                aVar = new h();
                aVar.a(j2);
                return aVar;
            case 5:
                aVar = new d();
                aVar.a(j2);
                return aVar;
            case 6:
                aVar = new i();
                aVar.a(j2);
                return aVar;
            case 7:
                aVar = new j();
                aVar.a(j2);
                return aVar;
            case '\b':
                aVar = new l();
                aVar.a(j2);
                return aVar;
            case '\t':
                aVar = new m();
                aVar.a(j2);
                return aVar;
            case '\n':
                aVar = new n();
                aVar.a(j2);
                return aVar;
            case 11:
                aVar = new e();
                aVar.a(j2);
                return aVar;
            default:
                return null;
        }
    }

    protected void a(long j2) {
        this.f = j2;
    }

    public void a(int i2, float f2, float f3, int i3, float f4) {
        this.c[this.i] = i2;
        this.d[this.i][0] = f2;
        this.d[this.i][1] = f3;
        this.d[this.i][2] = f4;
        this.b = Math.max(this.b, i3);
        this.i++;
    }

    public void a(int i2) {
        if (this.i == 0) {
            Log.e(h, "Error no points added to " + this.j);
            return;
        }
        k.a(this.c, this.d, 0, this.i - 1);
        int i3 = 0;
        for (int i4 = 1; i4 < this.c.length; i4++) {
            if (this.c[i4] != this.c[i4 - 1]) {
                i3++;
            }
        }
        if (i3 == 0) {
            i3 = 1;
        }
        double[] dArr = new double[i3];
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) double.class, i3, 3);
        int i5 = 0;
        for (int i6 = 0; i6 < this.i; i6++) {
            if (i6 <= 0 || this.c[i6] != this.c[i6 - 1]) {
                dArr[i5] = this.c[i6] * 0.01d;
                dArr2[i5][0] = this.d[i6][0];
                dArr2[i5][1] = this.d[i6][1];
                dArr2[i5][2] = this.d[i6][2];
                i5++;
            }
        }
        this.f636a = androidx.d.b.a.b.a(i2, dArr, dArr2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class c extends x {
        c() {
        }

        @Override // androidx.d.b.b.x
        public boolean a(View view, float f, long j, androidx.d.b.b.g gVar) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setElevation(a(f, j, view, gVar));
            }
            return this.e;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a extends x {
        a() {
        }

        @Override // androidx.d.b.b.x
        public boolean a(View view, float f, long j, androidx.d.b.b.g gVar) {
            view.setAlpha(a(f, j, view, gVar));
            return this.e;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class f extends x {
        f() {
        }

        @Override // androidx.d.b.b.x
        public boolean a(View view, float f, long j, androidx.d.b.b.g gVar) {
            view.setRotation(a(f, j, view, gVar));
            return this.e;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class g extends x {
        g() {
        }

        @Override // androidx.d.b.b.x
        public boolean a(View view, float f, long j, androidx.d.b.b.g gVar) {
            view.setRotationX(a(f, j, view, gVar));
            return this.e;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class h extends x {
        h() {
        }

        @Override // androidx.d.b.b.x
        public boolean a(View view, float f, long j, androidx.d.b.b.g gVar) {
            view.setRotationY(a(f, j, view, gVar));
            return this.e;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class d extends x {
        d() {
        }

        @Override // androidx.d.b.b.x
        public boolean a(View view, float f, long j, androidx.d.b.b.g gVar) {
            return this.e;
        }

        public boolean a(View view, androidx.d.b.b.g gVar, float f, long j, double d, double d2) {
            view.setRotation(a(f, j, view, gVar) + ((float) Math.toDegrees(Math.atan2(d2, d))));
            return this.e;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class i extends x {
        i() {
        }

        @Override // androidx.d.b.b.x
        public boolean a(View view, float f, long j, androidx.d.b.b.g gVar) {
            view.setScaleX(a(f, j, view, gVar));
            return this.e;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class j extends x {
        j() {
        }

        @Override // androidx.d.b.b.x
        public boolean a(View view, float f, long j, androidx.d.b.b.g gVar) {
            view.setScaleY(a(f, j, view, gVar));
            return this.e;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class l extends x {
        l() {
        }

        @Override // androidx.d.b.b.x
        public boolean a(View view, float f, long j, androidx.d.b.b.g gVar) {
            view.setTranslationX(a(f, j, view, gVar));
            return this.e;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class m extends x {
        m() {
        }

        @Override // androidx.d.b.b.x
        public boolean a(View view, float f, long j, androidx.d.b.b.g gVar) {
            view.setTranslationY(a(f, j, view, gVar));
            return this.e;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class n extends x {
        n() {
        }

        @Override // androidx.d.b.b.x
        public boolean a(View view, float f, long j, androidx.d.b.b.g gVar) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setTranslationZ(a(f, j, view, gVar));
            }
            return this.e;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class b extends x {
        String h;
        SparseArray<androidx.d.e.b> i;
        SparseArray<float[]> j = new SparseArray<>();
        float[] k;
        float[] l;

        public b(String str, SparseArray<androidx.d.e.b> sparseArray) {
            this.h = str.split(",")[1];
            this.i = sparseArray;
        }

        @Override // androidx.d.b.b.x
        public void a(int i) {
            int size = this.i.size();
            int b = this.i.valueAt(0).b();
            double[] dArr = new double[size];
            int i2 = b + 2;
            this.k = new float[i2];
            this.l = new float[b];
            double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) double.class, size, i2);
            for (int i3 = 0; i3 < size; i3++) {
                int keyAt = this.i.keyAt(i3);
                androidx.d.e.b valueAt = this.i.valueAt(i3);
                float[] valueAt2 = this.j.valueAt(i3);
                dArr[i3] = keyAt * 0.01d;
                valueAt.a(this.k);
                for (int i4 = 0; i4 < this.k.length; i4++) {
                    dArr2[i3][i4] = this.k[i4];
                }
                dArr2[i3][b] = valueAt2[0];
                dArr2[i3][b + 1] = valueAt2[1];
            }
            this.f636a = androidx.d.b.a.b.a(i, dArr, dArr2);
        }

        @Override // androidx.d.b.b.x
        public void a(int i, float f, float f2, int i2, float f3) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute,...)");
        }

        public void a(int i, androidx.d.e.b bVar, float f, int i2, float f2) {
            this.i.append(i, bVar);
            this.j.append(i, new float[]{f, f2});
            this.b = Math.max(this.b, i2);
        }

        @Override // androidx.d.b.b.x
        public boolean a(View view, float f, long j, androidx.d.b.b.g gVar) {
            this.f636a.a(f, this.k);
            float f2 = this.k[this.k.length - 2];
            float f3 = this.k[this.k.length - 1];
            long j2 = j - this.f;
            if (Float.isNaN(this.g)) {
                this.g = gVar.a(view, this.h, 0);
                if (Float.isNaN(this.g)) {
                    this.g = 0.0f;
                }
            }
            this.g = (float) ((this.g + ((j2 * 1.0E-9d) * f2)) % 1.0d);
            this.f = j;
            float a2 = a(this.g);
            this.e = false;
            for (int i = 0; i < this.l.length; i++) {
                this.e |= ((double) this.k[i]) != 0.0d;
                this.l[i] = (this.k[i] * a2) + f3;
            }
            this.i.valueAt(0).a(view, this.l);
            if (f2 != 0.0f) {
                this.e = true;
            }
            return this.e;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class e extends x {
        boolean h = false;

        e() {
        }

        @Override // androidx.d.b.b.x
        public boolean a(View view, float f, long j, androidx.d.b.b.g gVar) {
            if (view instanceof s) {
                ((s) view).setProgress(a(f, j, view, gVar));
            } else {
                if (this.h) {
                    return false;
                }
                Method method = null;
                try {
                    method = view.getClass().getMethod("setProgress", Float.TYPE);
                } catch (NoSuchMethodException unused) {
                    this.h = true;
                }
                if (method != null) {
                    try {
                        method.invoke(view, Float.valueOf(a(f, j, view, gVar)));
                    } catch (IllegalAccessException e) {
                        Log.e(x.h, "unable to setProgress", e);
                    } catch (InvocationTargetException e2) {
                        Log.e(x.h, "unable to setProgress", e2);
                    }
                }
            }
            return this.e;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class k {
        private k() {
        }

        static void a(int[] iArr, float[][] fArr, int i, int i2) {
            int[] iArr2 = new int[iArr.length + 10];
            iArr2[0] = i2;
            iArr2[1] = i;
            int i3 = 2;
            while (i3 > 0) {
                int i4 = i3 - 1;
                int i5 = iArr2[i4];
                i3 = i4 - 1;
                int i6 = iArr2[i3];
                if (i5 < i6) {
                    int b = b(iArr, fArr, i5, i6);
                    int i7 = i3 + 1;
                    iArr2[i3] = b - 1;
                    int i8 = i7 + 1;
                    iArr2[i7] = i5;
                    int i9 = i8 + 1;
                    iArr2[i8] = i6;
                    i3 = i9 + 1;
                    iArr2[i9] = b + 1;
                }
            }
        }

        private static int b(int[] iArr, float[][] fArr, int i, int i2) {
            int i3 = iArr[i2];
            int i4 = i;
            while (i < i2) {
                if (iArr[i] <= i3) {
                    c(iArr, fArr, i4, i);
                    i4++;
                }
                i++;
            }
            c(iArr, fArr, i4, i2);
            return i4;
        }

        private static void c(int[] iArr, float[][] fArr, int i, int i2) {
            int i3 = iArr[i];
            iArr[i] = iArr[i2];
            iArr[i2] = i3;
            float[] fArr2 = fArr[i];
            fArr[i] = fArr[i2];
            fArr[i2] = fArr2;
        }
    }
}
