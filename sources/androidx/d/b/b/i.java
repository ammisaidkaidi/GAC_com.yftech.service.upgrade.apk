package androidx.d.b.b;

import android.annotation.TargetApi;
import android.os.Build;
import android.util.Log;
import android.view.View;
import androidx.d.e.b;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class i {
    private static final String d = "KeyCycleOscillator";

    /* renamed from: a, reason: collision with root package name */
    protected androidx.d.e.b f610a;
    private androidx.d.b.a.b e;
    private c f;
    private String g;
    private int h = 0;
    public int b = 0;
    ArrayList<q> c = new ArrayList<>();

    public abstract void a(View view, float f2);

    public boolean a() {
        return this.b == 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class q {

        /* renamed from: a, reason: collision with root package name */
        int f613a;
        float b;
        float c;
        float d;

        public q(int i, float f, float f2, float f3) {
            this.f613a = i;
            this.b = f3;
            this.c = f2;
            this.d = f;
        }
    }

    public String toString() {
        String str = this.g;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        Iterator<q> it = this.c.iterator();
        while (it.hasNext()) {
            str = str + "[" + it.next().f613a + " , " + decimalFormat.format(r2.b) + "] ";
        }
        return str;
    }

    public void a(String str) {
        this.g = str;
    }

    public float a(float f2) {
        return (float) this.f.a(f2);
    }

    public float b(float f2) {
        return (float) this.f.b(f2);
    }

    public androidx.d.b.a.b b() {
        return this.e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static i b(String str) {
        if (str.startsWith("CUSTOM")) {
            return new b();
        }
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1249320806:
                if (str.equals("rotationX")) {
                    c2 = 3;
                    break;
                }
                break;
            case -1249320805:
                if (str.equals("rotationY")) {
                    c2 = 4;
                    break;
                }
                break;
            case -1225497657:
                if (str.equals("translationX")) {
                    c2 = '\n';
                    break;
                }
                break;
            case -1225497656:
                if (str.equals("translationY")) {
                    c2 = 11;
                    break;
                }
                break;
            case -1225497655:
                if (str.equals("translationZ")) {
                    c2 = '\f';
                    break;
                }
                break;
            case -1001078227:
                if (str.equals(androidx.core.app.p.al)) {
                    c2 = '\r';
                    break;
                }
                break;
            case -908189618:
                if (str.equals("scaleX")) {
                    c2 = 6;
                    break;
                }
                break;
            case -908189617:
                if (str.equals("scaleY")) {
                    c2 = 7;
                    break;
                }
                break;
            case -797520672:
                if (str.equals("waveVariesBy")) {
                    c2 = '\t';
                    break;
                }
                break;
            case -40300674:
                if (str.equals("rotation")) {
                    c2 = 2;
                    break;
                }
                break;
            case -4379043:
                if (str.equals("elevation")) {
                    c2 = 1;
                    break;
                }
                break;
            case 37232917:
                if (str.equals("transitionPathRotate")) {
                    c2 = 5;
                    break;
                }
                break;
            case 92909918:
                if (str.equals("alpha")) {
                    c2 = 0;
                    break;
                }
                break;
            case 156108012:
                if (str.equals("waveOffset")) {
                    c2 = '\b';
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return new a();
            case 1:
                return new d();
            case 2:
                return new C0047i();
            case 3:
                return new j();
            case 4:
                return new k();
            case 5:
                return new g();
            case 6:
                return new l();
            case 7:
                return new m();
            case '\b':
                return new a();
            case '\t':
                return new a();
            case '\n':
                return new n();
            case 11:
                return new o();
            case '\f':
                return new p();
            case '\r':
                return new h();
            default:
                return null;
        }
    }

    public void a(int i, int i2, int i3, float f2, float f3, float f4, androidx.d.e.b bVar) {
        this.c.add(new q(i, f2, f3, f4));
        if (i3 != -1) {
            this.b = i3;
        }
        this.h = i2;
        this.f610a = bVar;
    }

    public void a(int i, int i2, int i3, float f2, float f3, float f4) {
        this.c.add(new q(i, f2, f3, f4));
        if (i3 != -1) {
            this.b = i3;
        }
        this.h = i2;
    }

    @TargetApi(19)
    public void c(float f2) {
        int size = this.c.size();
        if (size == 0) {
            return;
        }
        Collections.sort(this.c, new Comparator<q>() { // from class: androidx.d.b.b.i.1
            @Override // java.util.Comparator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public int compare(q qVar, q qVar2) {
                return Integer.compare(qVar.f613a, qVar2.f613a);
            }
        });
        double[] dArr = new double[size];
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) double.class, size, 2);
        this.f = new c(this.h, this.b, size);
        Iterator<q> it = this.c.iterator();
        int i = 0;
        while (it.hasNext()) {
            q next = it.next();
            dArr[i] = next.d * 0.01d;
            dArr2[i][0] = next.b;
            dArr2[i][1] = next.c;
            this.f.a(i, next.f613a, next.d, next.c, next.b);
            i++;
        }
        this.f.c(f2);
        this.e = androidx.d.b.a.b.a(0, dArr, dArr2);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    static class d extends i {
        d() {
        }

        @Override // androidx.d.b.b.i
        public void a(View view, float f) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setElevation(a(f));
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    static class a extends i {
        a() {
        }

        @Override // androidx.d.b.b.i
        public void a(View view, float f) {
            view.setAlpha(a(f));
        }
    }

    /* renamed from: androidx.d.b.b.i$i, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    static class C0047i extends i {
        C0047i() {
        }

        @Override // androidx.d.b.b.i
        public void a(View view, float f) {
            view.setRotation(a(f));
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    static class j extends i {
        j() {
        }

        @Override // androidx.d.b.b.i
        public void a(View view, float f) {
            view.setRotationX(a(f));
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    static class k extends i {
        k() {
        }

        @Override // androidx.d.b.b.i
        public void a(View view, float f) {
            view.setRotationY(a(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class g extends i {
        @Override // androidx.d.b.b.i
        public void a(View view, float f) {
        }

        g() {
        }

        public void a(View view, float f, double d, double d2) {
            view.setRotation(a(f) + ((float) Math.toDegrees(Math.atan2(d2, d))));
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    static class l extends i {
        l() {
        }

        @Override // androidx.d.b.b.i
        public void a(View view, float f) {
            view.setScaleX(a(f));
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    static class m extends i {
        m() {
        }

        @Override // androidx.d.b.b.i
        public void a(View view, float f) {
            view.setScaleY(a(f));
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    static class n extends i {
        n() {
        }

        @Override // androidx.d.b.b.i
        public void a(View view, float f) {
            view.setTranslationX(a(f));
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    static class o extends i {
        o() {
        }

        @Override // androidx.d.b.b.i
        public void a(View view, float f) {
            view.setTranslationY(a(f));
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    static class p extends i {
        p() {
        }

        @Override // androidx.d.b.b.i
        public void a(View view, float f) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setTranslationZ(a(f));
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    static class b extends i {
        float[] d = new float[1];

        b() {
        }

        @Override // androidx.d.b.b.i
        public void a(View view, float f) {
            this.d[0] = a(f);
            this.f610a.a(view, this.d);
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    static class h extends i {
        boolean d = false;

        h() {
        }

        @Override // androidx.d.b.b.i
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
                    Log.e(i.d, "unable to setProgress", e);
                } catch (InvocationTargetException e2) {
                    Log.e(i.d, "unable to setProgress", e2);
                }
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class e {
        private e() {
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

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class f {
        private f() {
        }

        static void a(int[] iArr, float[] fArr, float[] fArr2, int i, int i2) {
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
                    int b = b(iArr, fArr, fArr2, i5, i6);
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

        private static int b(int[] iArr, float[] fArr, float[] fArr2, int i, int i2) {
            int i3 = iArr[i2];
            int i4 = i;
            while (i < i2) {
                if (iArr[i] <= i3) {
                    c(iArr, fArr, fArr2, i4, i);
                    i4++;
                }
                i++;
            }
            c(iArr, fArr, fArr2, i4, i2);
            return i4;
        }

        private static void c(int[] iArr, float[] fArr, float[] fArr2, int i, int i2) {
            int i3 = iArr[i];
            iArr[i] = iArr[i2];
            iArr[i2] = i3;
            float f = fArr[i];
            fArr[i] = fArr[i2];
            fArr[i2] = f;
            float f2 = fArr2[i];
            fArr2[i] = fArr2[i2];
            fArr2[i2] = f2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class c {

        /* renamed from: a, reason: collision with root package name */
        static final int f612a = -1;
        private static final String n = "CycleOscillator";
        float[] c;
        double[] d;
        float[] e;
        float[] f;
        float[] g;
        int h;
        androidx.d.b.a.b i;
        double[] j;
        double[] k;
        float l;
        private final int o;
        androidx.d.b.a.g b = new androidx.d.b.a.g();
        public HashMap<String, androidx.d.e.b> m = new HashMap<>();

        c(int i, int i2, int i3) {
            this.h = i;
            this.o = i2;
            this.b.a(i);
            this.c = new float[i3];
            this.d = new double[i3];
            this.e = new float[i3];
            this.f = new float[i3];
            this.g = new float[i3];
        }

        public double a(float f) {
            if (this.i != null) {
                this.i.a(f, this.j);
            } else {
                this.j[0] = this.f[0];
                this.j[1] = this.c[0];
            }
            return this.j[0] + (this.b.b(f) * this.j[1]);
        }

        public double b(float f) {
            if (this.i != null) {
                double d = f;
                this.i.b(d, this.k);
                this.i.a(d, this.j);
            } else {
                this.k[0] = 0.0d;
                this.k[1] = 0.0d;
            }
            double d2 = f;
            return this.k[0] + (this.b.b(d2) * this.k[1]) + (this.b.d(d2) * this.j[1]);
        }

        private androidx.d.e.b a(String str, b.a aVar) {
            if (this.m.containsKey(str)) {
                androidx.d.e.b bVar = this.m.get(str);
                if (bVar.a() == aVar) {
                    return bVar;
                }
                throw new IllegalArgumentException("ConstraintAttribute is already a " + bVar.a().name());
            }
            androidx.d.e.b bVar2 = new androidx.d.e.b(str, aVar);
            this.m.put(str, bVar2);
            return bVar2;
        }

        public void a(int i, int i2, float f, float f2, float f3) {
            this.d[i] = i2 / 100.0d;
            this.e[i] = f;
            this.f[i] = f2;
            this.c[i] = f3;
        }

        public void c(float f) {
            this.l = f;
            double[][] dArr = (double[][]) Array.newInstance((Class<?>) double.class, this.d.length, 2);
            this.j = new double[this.c.length + 1];
            this.k = new double[this.c.length + 1];
            if (this.d[0] > 0.0d) {
                this.b.a(0.0d, this.e[0]);
            }
            int length = this.d.length - 1;
            if (this.d[length] < 1.0d) {
                this.b.a(1.0d, this.e[length]);
            }
            for (int i = 0; i < dArr.length; i++) {
                dArr[i][0] = this.f[i];
                for (int i2 = 0; i2 < this.c.length; i2++) {
                    dArr[i2][1] = this.c[i2];
                }
                this.b.a(this.d[i], this.e[i]);
            }
            this.b.a();
            if (this.d.length > 1) {
                this.i = androidx.d.b.a.b.a(0, this.d, dArr);
            } else {
                this.i = null;
            }
        }
    }
}
