package androidx.d.b.b;

import android.os.Build;
import android.util.Log;
import android.view.View;
import androidx.d.b.b.w;
import androidx.d.e.b;
import androidx.d.e.g;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public class o implements Comparable<o> {

    /* renamed from: a, reason: collision with root package name */
    public static final String f618a = "MotionPaths";
    public static final boolean b = false;
    static final int f = 1;
    static final int g = 2;
    static String[] h = {"position", "x", "y", "width", "height", "pathRotate"};
    private float A;
    private float B;
    private float C;
    private float D;
    private float E;
    int d;
    private androidx.d.b.a.c y;
    private float m = 1.0f;
    int c = 0;
    private boolean n = false;
    private float o = 0.0f;
    private float p = 0.0f;
    private float q = 0.0f;
    public float e = 0.0f;
    private float r = 1.0f;
    private float s = 1.0f;
    private float t = Float.NaN;
    private float u = Float.NaN;
    private float v = 0.0f;
    private float w = 0.0f;
    private float x = 0.0f;
    private int z = 0;
    private float F = Float.NaN;
    private float G = Float.NaN;
    LinkedHashMap<String, androidx.d.e.b> i = new LinkedHashMap<>();
    int j = 0;
    double[] k = new double[18];
    double[] l = new double[18];

    private boolean a(float f2, float f3) {
        return (Float.isNaN(f2) || Float.isNaN(f3)) ? Float.isNaN(f2) != Float.isNaN(f3) : Math.abs(f2 - f3) > 1.0E-6f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(o oVar, HashSet<String> hashSet) {
        if (a(this.m, oVar.m)) {
            hashSet.add("alpha");
        }
        if (a(this.o, oVar.o)) {
            hashSet.add("elevation");
        }
        if (this.d != oVar.d && this.c == 0 && (this.d == 0 || oVar.d == 0)) {
            hashSet.add("alpha");
        }
        if (a(this.p, oVar.p)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.F) || !Float.isNaN(oVar.F)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.G) || !Float.isNaN(oVar.G)) {
            hashSet.add(androidx.core.app.p.al);
        }
        if (a(this.q, oVar.q)) {
            hashSet.add("rotationX");
        }
        if (a(this.e, oVar.e)) {
            hashSet.add("rotationY");
        }
        if (a(this.t, oVar.t)) {
            hashSet.add("transformPivotX");
        }
        if (a(this.u, oVar.u)) {
            hashSet.add("transformPivotY");
        }
        if (a(this.r, oVar.r)) {
            hashSet.add("scaleX");
        }
        if (a(this.s, oVar.s)) {
            hashSet.add("scaleY");
        }
        if (a(this.v, oVar.v)) {
            hashSet.add("translationX");
        }
        if (a(this.w, oVar.w)) {
            hashSet.add("translationY");
        }
        if (a(this.x, oVar.x)) {
            hashSet.add("translationZ");
        }
    }

    void a(o oVar, boolean[] zArr, String[] strArr) {
        zArr[0] = zArr[0] | a(this.A, oVar.A);
        zArr[1] = zArr[1] | a(this.B, oVar.B);
        zArr[2] = zArr[2] | a(this.C, oVar.C);
        zArr[3] = zArr[3] | a(this.D, oVar.D);
        zArr[4] = a(this.E, oVar.E) | zArr[4];
    }

    void a(double[] dArr, int[] iArr) {
        float[] fArr = {this.A, this.B, this.C, this.D, this.E, this.m, this.o, this.p, this.q, this.e, this.r, this.s, this.t, this.u, this.v, this.w, this.x, this.F};
        int i = 0;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            if (iArr[i2] < fArr.length) {
                dArr[i] = fArr[iArr[i2]];
                i++;
            }
        }
    }

    boolean a(String str) {
        return this.i.containsKey(str);
    }

    int b(String str) {
        return this.i.get(str).b();
    }

    int a(String str, double[] dArr, int i) {
        androidx.d.e.b bVar = this.i.get(str);
        if (bVar.b() == 1) {
            dArr[i] = bVar.c();
            return 1;
        }
        int b2 = bVar.b();
        bVar.a(new float[b2]);
        int i2 = 0;
        while (i2 < b2) {
            dArr[i] = r0[i2];
            i2++;
            i++;
        }
        return b2;
    }

    void a(float f2, float f3, float f4, float f5) {
        this.B = f2;
        this.C = f3;
        this.D = f4;
        this.E = f5;
    }

    @Override // java.lang.Comparable
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(o oVar) {
        return Float.compare(this.A, oVar.A);
    }

    public void a(View view) {
        this.d = view.getVisibility();
        this.m = view.getVisibility() != 0 ? 0.0f : view.getAlpha();
        this.n = false;
        if (Build.VERSION.SDK_INT >= 21) {
            this.o = view.getElevation();
        }
        this.p = view.getRotation();
        this.q = view.getRotationX();
        this.e = view.getRotationY();
        this.r = view.getScaleX();
        this.s = view.getScaleY();
        this.t = view.getPivotX();
        this.u = view.getPivotY();
        this.v = view.getTranslationX();
        this.w = view.getTranslationY();
        if (Build.VERSION.SDK_INT >= 21) {
            this.x = view.getTranslationZ();
        }
    }

    public void a(g.a aVar) {
        this.c = aVar.b.c;
        this.d = aVar.b.b;
        this.m = (aVar.b.b == 0 || this.c != 0) ? aVar.b.d : 0.0f;
        this.n = aVar.e.l;
        this.o = aVar.e.m;
        this.p = aVar.e.b;
        this.q = aVar.e.c;
        this.e = aVar.e.d;
        this.r = aVar.e.e;
        this.s = aVar.e.f;
        this.t = aVar.e.g;
        this.u = aVar.e.h;
        this.v = aVar.e.i;
        this.w = aVar.e.j;
        this.x = aVar.e.k;
        this.y = androidx.d.b.a.c.a(aVar.c.c);
        this.F = aVar.c.g;
        this.z = aVar.c.e;
        this.G = aVar.b.e;
        for (String str : aVar.f.keySet()) {
            androidx.d.e.b bVar = aVar.f.get(str);
            if (bVar.a() != b.a.STRING_TYPE) {
                this.i.put(str, bVar);
            }
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0020. Please report as an issue. */
    public void a(HashMap<String, w> hashMap, int i) {
        for (String str : hashMap.keySet()) {
            w wVar = hashMap.get(str);
            char c = 65535;
            switch (str.hashCode()) {
                case -1249320806:
                    if (str.equals("rotationX")) {
                        c = 3;
                        break;
                    }
                    break;
                case -1249320805:
                    if (str.equals("rotationY")) {
                        c = 4;
                        break;
                    }
                    break;
                case -1225497657:
                    if (str.equals("translationX")) {
                        c = 11;
                        break;
                    }
                    break;
                case -1225497656:
                    if (str.equals("translationY")) {
                        c = '\f';
                        break;
                    }
                    break;
                case -1225497655:
                    if (str.equals("translationZ")) {
                        c = '\r';
                        break;
                    }
                    break;
                case -1001078227:
                    if (str.equals(androidx.core.app.p.al)) {
                        c = '\b';
                        break;
                    }
                    break;
                case -908189618:
                    if (str.equals("scaleX")) {
                        c = '\t';
                        break;
                    }
                    break;
                case -908189617:
                    if (str.equals("scaleY")) {
                        c = '\n';
                        break;
                    }
                    break;
                case -760884510:
                    if (str.equals("transformPivotX")) {
                        c = 5;
                        break;
                    }
                    break;
                case -760884509:
                    if (str.equals("transformPivotY")) {
                        c = 6;
                        break;
                    }
                    break;
                case -40300674:
                    if (str.equals("rotation")) {
                        c = 2;
                        break;
                    }
                    break;
                case -4379043:
                    if (str.equals("elevation")) {
                        c = 1;
                        break;
                    }
                    break;
                case 37232917:
                    if (str.equals("transitionPathRotate")) {
                        c = 7;
                        break;
                    }
                    break;
                case 92909918:
                    if (str.equals("alpha")) {
                        c = 0;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    wVar.a(i, Float.isNaN(this.m) ? 1.0f : this.m);
                    break;
                case 1:
                    wVar.a(i, Float.isNaN(this.o) ? 0.0f : this.o);
                    break;
                case 2:
                    wVar.a(i, Float.isNaN(this.p) ? 0.0f : this.p);
                    break;
                case 3:
                    wVar.a(i, Float.isNaN(this.q) ? 0.0f : this.q);
                    break;
                case 4:
                    wVar.a(i, Float.isNaN(this.e) ? 0.0f : this.e);
                    break;
                case 5:
                    wVar.a(i, Float.isNaN(this.t) ? 0.0f : this.t);
                    break;
                case 6:
                    wVar.a(i, Float.isNaN(this.u) ? 0.0f : this.u);
                    break;
                case 7:
                    wVar.a(i, Float.isNaN(this.F) ? 0.0f : this.F);
                    break;
                case '\b':
                    wVar.a(i, Float.isNaN(this.G) ? 0.0f : this.G);
                    break;
                case '\t':
                    wVar.a(i, Float.isNaN(this.r) ? 1.0f : this.r);
                    break;
                case '\n':
                    wVar.a(i, Float.isNaN(this.s) ? 1.0f : this.s);
                    break;
                case 11:
                    wVar.a(i, Float.isNaN(this.v) ? 0.0f : this.v);
                    break;
                case '\f':
                    wVar.a(i, Float.isNaN(this.w) ? 0.0f : this.w);
                    break;
                case '\r':
                    wVar.a(i, Float.isNaN(this.x) ? 0.0f : this.x);
                    break;
                default:
                    if (!str.startsWith("CUSTOM")) {
                        Log.e("MotionPaths", "UNKNOWN spline " + str);
                        break;
                    } else {
                        String str2 = str.split(",")[1];
                        if (!this.i.containsKey(str2)) {
                            Log.e("MotionPaths", "UNKNOWN customName " + str2);
                            break;
                        } else {
                            androidx.d.e.b bVar = this.i.get(str2);
                            if (wVar instanceof w.b) {
                                ((w.b) wVar).a(i, bVar);
                                break;
                            } else {
                                Log.e("MotionPaths", str + " splineSet not a CustomSet frame = " + i + ", value" + bVar.c() + wVar);
                                break;
                            }
                        }
                    }
            }
        }
    }

    public void b(View view) {
        a(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        a(view);
    }

    public void a(androidx.d.c.b.e eVar, androidx.d.e.g gVar, int i) {
        a(eVar.G(), eVar.H(), eVar.I(), eVar.L());
        a(gVar.a(i));
    }
}
