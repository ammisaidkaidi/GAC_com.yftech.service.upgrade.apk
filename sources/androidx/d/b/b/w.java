package androidx.d.b.b;

import android.os.Build;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.DecimalFormat;
import java.util.Arrays;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class w {
    private static final String d = "SplineSet";

    /* renamed from: a, reason: collision with root package name */
    protected androidx.d.b.a.b f635a;
    protected int[] b = new int[10];
    protected float[] c = new float[10];
    private int e;
    private String f;

    public abstract void a(View view, float f2);

    public String toString() {
        String str = this.f;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (int i2 = 0; i2 < this.e; i2++) {
            str = str + "[" + this.b[i2] + " , " + decimalFormat.format(this.c[i2]) + "] ";
        }
        return str;
    }

    public void a(String str) {
        this.f = str;
    }

    public float a(float f2) {
        return (float) this.f635a.a(f2, 0);
    }

    public float b(float f2) {
        return (float) this.f635a.b(f2, 0);
    }

    public androidx.d.b.a.b a() {
        return this.f635a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static w a(String str, SparseArray<androidx.d.e.b> sparseArray) {
        return new b(str, sparseArray);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static w b(String str) {
        char c2;
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
                    c2 = '\f';
                    break;
                }
                c2 = 65535;
                break;
            case -1225497656:
                if (str.equals("translationY")) {
                    c2 = '\r';
                    break;
                }
                c2 = 65535;
                break;
            case -1225497655:
                if (str.equals("translationZ")) {
                    c2 = 14;
                    break;
                }
                c2 = 65535;
                break;
            case -1001078227:
                if (str.equals(androidx.core.app.p.al)) {
                    c2 = 15;
                    break;
                }
                c2 = 65535;
                break;
            case -908189618:
                if (str.equals("scaleX")) {
                    c2 = '\b';
                    break;
                }
                c2 = 65535;
                break;
            case -908189617:
                if (str.equals("scaleY")) {
                    c2 = '\t';
                    break;
                }
                c2 = 65535;
                break;
            case -797520672:
                if (str.equals("waveVariesBy")) {
                    c2 = 11;
                    break;
                }
                c2 = 65535;
                break;
            case -760884510:
                if (str.equals("transformPivotX")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case -760884509:
                if (str.equals("transformPivotY")) {
                    c2 = 6;
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
                    c2 = 7;
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
            case 156108012:
                if (str.equals("waveOffset")) {
                    c2 = '\n';
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
                return new a();
            case 1:
                return new c();
            case 2:
                return new h();
            case 3:
                return new i();
            case 4:
                return new j();
            case 5:
                return new e();
            case 6:
                return new f();
            case 7:
                return new d();
            case '\b':
                return new k();
            case '\t':
                return new l();
            case '\n':
                return new a();
            case 11:
                return new a();
            case '\f':
                return new n();
            case '\r':
                return new o();
            case 14:
                return new p();
            case 15:
                return new g();
            default:
                return null;
        }
    }

    public void a(int i2, float f2) {
        if (this.b.length < this.e + 1) {
            this.b = Arrays.copyOf(this.b, this.b.length * 2);
            this.c = Arrays.copyOf(this.c, this.c.length * 2);
        }
        this.b[this.e] = i2;
        this.c[this.e] = f2;
        this.e++;
    }

    public void a(int i2) {
        if (this.e == 0) {
            return;
        }
        m.a(this.b, this.c, 0, this.e - 1);
        int i3 = 1;
        for (int i4 = 1; i4 < this.e; i4++) {
            if (this.b[i4 - 1] != this.b[i4]) {
                i3++;
            }
        }
        double[] dArr = new double[i3];
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) double.class, i3, 1);
        int i5 = 0;
        for (int i6 = 0; i6 < this.e; i6++) {
            if (i6 <= 0 || this.b[i6] != this.b[i6 - 1]) {
                dArr[i5] = this.b[i6] * 0.01d;
                dArr2[i5][0] = this.c[i6];
                i5++;
            }
        }
        this.f635a = androidx.d.b.a.b.a(i2, dArr, dArr2);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    static class c extends w {
        c() {
        }

        @Override // androidx.d.b.b.w
        public void a(View view, float f) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setElevation(a(f));
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    static class a extends w {
        a() {
        }

        @Override // androidx.d.b.b.w
        public void a(View view, float f) {
            view.setAlpha(a(f));
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    static class h extends w {
        h() {
        }

        @Override // androidx.d.b.b.w
        public void a(View view, float f) {
            view.setRotation(a(f));
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    static class i extends w {
        i() {
        }

        @Override // androidx.d.b.b.w
        public void a(View view, float f) {
            view.setRotationX(a(f));
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    static class j extends w {
        j() {
        }

        @Override // androidx.d.b.b.w
        public void a(View view, float f) {
            view.setRotationY(a(f));
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    static class e extends w {
        e() {
        }

        @Override // androidx.d.b.b.w
        public void a(View view, float f) {
            view.setPivotX(a(f));
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    static class f extends w {
        f() {
        }

        @Override // androidx.d.b.b.w
        public void a(View view, float f) {
            view.setPivotY(a(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class d extends w {
        @Override // androidx.d.b.b.w
        public void a(View view, float f) {
        }

        d() {
        }

        public void a(View view, float f, double d, double d2) {
            view.setRotation(a(f) + ((float) Math.toDegrees(Math.atan2(d2, d))));
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    static class k extends w {
        k() {
        }

        @Override // androidx.d.b.b.w
        public void a(View view, float f) {
            view.setScaleX(a(f));
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    static class l extends w {
        l() {
        }

        @Override // androidx.d.b.b.w
        public void a(View view, float f) {
            view.setScaleY(a(f));
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    static class n extends w {
        n() {
        }

        @Override // androidx.d.b.b.w
        public void a(View view, float f) {
            view.setTranslationX(a(f));
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    static class o extends w {
        o() {
        }

        @Override // androidx.d.b.b.w
        public void a(View view, float f) {
            view.setTranslationY(a(f));
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    static class p extends w {
        p() {
        }

        @Override // androidx.d.b.b.w
        public void a(View view, float f) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setTranslationZ(a(f));
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    static class b extends w {
        String d;
        SparseArray<androidx.d.e.b> e;
        float[] f;

        public b(String str, SparseArray<androidx.d.e.b> sparseArray) {
            this.d = str.split(",")[1];
            this.e = sparseArray;
        }

        @Override // androidx.d.b.b.w
        public void a(int i) {
            int size = this.e.size();
            int b = this.e.valueAt(0).b();
            double[] dArr = new double[size];
            this.f = new float[b];
            double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) double.class, size, b);
            for (int i2 = 0; i2 < size; i2++) {
                int keyAt = this.e.keyAt(i2);
                androidx.d.e.b valueAt = this.e.valueAt(i2);
                dArr[i2] = keyAt * 0.01d;
                valueAt.a(this.f);
                for (int i3 = 0; i3 < this.f.length; i3++) {
                    dArr2[i2][i3] = this.f[i3];
                }
            }
            this.f635a = androidx.d.b.a.b.a(i, dArr, dArr2);
        }

        @Override // androidx.d.b.b.w
        public void a(int i, float f) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute)");
        }

        public void a(int i, androidx.d.e.b bVar) {
            this.e.append(i, bVar);
        }

        @Override // androidx.d.b.b.w
        public void a(View view, float f) {
            this.f635a.a(f, this.f);
            this.e.valueAt(0).a(view, this.f);
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    static class g extends w {
        boolean d = false;

        g() {
        }

        @Override // androidx.d.b.b.w
        public void a(View view, float f) {
            if (view instanceof s) {
                ((s) view).setProgress(a(f));
                return;
            }
            if (this.d) {
                return;
            }
            Method method = null;
            try {
                method = view.getClass().getMethod("setProgress", Float.TYPE);
            } catch (NoSuchMethodException unused) {
                this.d = true;
            }
            if (method != null) {
                try {
                    method.invoke(view, Float.valueOf(a(f)));
                } catch (IllegalAccessException e) {
                    Log.e(w.d, "unable to setProgress", e);
                } catch (InvocationTargetException e2) {
                    Log.e(w.d, "unable to setProgress", e2);
                }
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class m {
        private m() {
        }

        static void a(int[] iArr, float[] fArr, int i, int i2) {
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

        private static int b(int[] iArr, float[] fArr, int i, int i2) {
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

        private static void c(int[] iArr, float[] fArr, int i, int i2) {
            int i3 = iArr[i];
            iArr[i] = iArr[i2];
            iArr[i2] = i3;
            float f = fArr[i];
            fArr[i] = fArr[i2];
            fArr[i2] = f;
        }
    }
}
