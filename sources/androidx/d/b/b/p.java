package androidx.d.b.b;

import android.graphics.RectF;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.d.b.b.i;
import androidx.d.b.b.w;
import androidx.d.b.b.x;
import androidx.d.e.d;
import androidx.d.e.g;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes.dex */
public class p {

    /* renamed from: a, reason: collision with root package name */
    public static final int f619a = 0;
    public static final int b = 1;
    public static final int c = 2;
    public static final int d = 3;
    public static final int e = 4;
    public static final int f = 5;
    public static final int g = 0;
    public static final int h = 1;
    public static final int i = 2;
    public static final int j = 3;
    public static final int k = 4;
    public static final int l = 5;
    public static final int m = 6;
    private static final String u = "MotionController";
    private static final boolean v = false;
    private static final boolean w = false;
    private androidx.d.b.a.b[] C;
    private androidx.d.b.a.b D;
    private int[] E;
    private double[] F;
    private double[] G;
    private String[] H;
    private int[] I;
    private HashMap<String, x> O;
    private HashMap<String, w> P;
    private HashMap<String, i> Q;
    private n[] R;
    View n;
    int o;
    String p;
    String[] t;
    private int x = -1;
    private t y = new t();
    private t z = new t();
    private o A = new o();
    private o B = new o();
    float q = Float.NaN;
    float r = 0.0f;
    float s = 1.0f;
    private int J = 4;
    private float[] K = new float[this.J];
    private ArrayList<t> L = new ArrayList<>();
    private float[] M = new float[1];
    private ArrayList<e> N = new ArrayList<>();
    private int S = e.f606a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t a(int i2) {
        return this.L.get(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(View view) {
        a(view);
    }

    float a() {
        return this.y.r;
    }

    float b() {
        return this.y.s;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float c() {
        return this.z.r;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float d() {
        return this.z.s;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(float[] fArr, int i2) {
        int i3 = i2;
        float f2 = 1.0f;
        float f3 = 1.0f / (i3 - 1);
        w wVar = this.P == null ? null : this.P.get("translationX");
        w wVar2 = this.P == null ? null : this.P.get("translationY");
        i iVar = this.Q == null ? null : this.Q.get("translationX");
        i iVar2 = this.Q != null ? this.Q.get("translationY") : null;
        int i4 = 0;
        while (i4 < i3) {
            float f4 = i4 * f3;
            float f5 = 0.0f;
            if (this.s != f2) {
                if (f4 < this.r) {
                    f4 = 0.0f;
                }
                if (f4 > this.r && f4 < 1.0d) {
                    f4 = (f4 - this.r) * this.s;
                }
            }
            double d2 = f4;
            androidx.d.b.a.c cVar = this.y.n;
            float f6 = Float.NaN;
            Iterator<t> it = this.L.iterator();
            while (it.hasNext()) {
                t next = it.next();
                if (next.n != null) {
                    if (next.p < f4) {
                        cVar = next.n;
                        f5 = next.p;
                    } else if (Float.isNaN(f6)) {
                        f6 = next.p;
                    }
                }
            }
            if (cVar != null) {
                if (Float.isNaN(f6)) {
                    f6 = 1.0f;
                }
                d2 = (((float) cVar.a((f4 - f5) / r16)) * (f6 - f5)) + f5;
            }
            this.C[0].a(d2, this.F);
            if (this.D != null && this.F.length > 0) {
                this.D.a(d2, this.F);
            }
            int i5 = i4 * 2;
            this.y.a(this.E, this.F, fArr, i5);
            if (iVar != null) {
                fArr[i5] = fArr[i5] + iVar.a(f4);
            } else if (wVar != null) {
                fArr[i5] = fArr[i5] + wVar.a(f4);
            }
            if (iVar2 != null) {
                int i6 = i5 + 1;
                fArr[i6] = fArr[i6] + iVar2.a(f4);
            } else if (wVar2 != null) {
                int i7 = i5 + 1;
                fArr[i7] = fArr[i7] + wVar2.a(f4);
            }
            i4++;
            i3 = i2;
            f2 = 1.0f;
        }
    }

    void b(float[] fArr, int i2) {
        float f2 = 1.0f / (i2 - 1);
        if (this.P != null) {
            this.P.get("translationX");
        }
        if (this.P != null) {
            this.P.get("translationY");
        }
        if (this.Q != null) {
            this.Q.get("translationX");
        }
        if (this.Q != null) {
            this.Q.get("translationY");
        }
        for (int i3 = 0; i3 < i2; i3++) {
            float f3 = i3 * f2;
            float f4 = 0.0f;
            if (this.s != 1.0f) {
                if (f3 < this.r) {
                    f3 = 0.0f;
                }
                if (f3 > this.r && f3 < 1.0d) {
                    f3 = (f3 - this.r) * this.s;
                }
            }
            double d2 = f3;
            androidx.d.b.a.c cVar = this.y.n;
            float f5 = Float.NaN;
            Iterator<t> it = this.L.iterator();
            while (it.hasNext()) {
                t next = it.next();
                if (next.n != null) {
                    if (next.p < f3) {
                        cVar = next.n;
                        f4 = next.p;
                    } else if (Float.isNaN(f5)) {
                        f5 = next.p;
                    }
                }
            }
            if (cVar != null) {
                if (Float.isNaN(f5)) {
                    f5 = 1.0f;
                }
                d2 = (((float) cVar.a((f3 - f4) / r9)) * (f5 - f4)) + f4;
            }
            this.C[0].a(d2, this.F);
            if (this.D != null && this.F.length > 0) {
                this.D.a(d2, this.F);
            }
            this.y.b(this.E, this.F, fArr, i3 * 2);
        }
    }

    private float g() {
        float[] fArr = new float[2];
        float f2 = 1.0f / 99;
        double d2 = 0.0d;
        double d3 = 0.0d;
        float f3 = 0.0f;
        for (int i2 = 0; i2 < 100; i2++) {
            float f4 = i2 * f2;
            double d4 = f4;
            androidx.d.b.a.c cVar = this.y.n;
            float f5 = Float.NaN;
            Iterator<t> it = this.L.iterator();
            float f6 = 0.0f;
            while (it.hasNext()) {
                t next = it.next();
                if (next.n != null) {
                    if (next.p < f4) {
                        androidx.d.b.a.c cVar2 = next.n;
                        f6 = next.p;
                        cVar = cVar2;
                    } else if (Float.isNaN(f5)) {
                        f5 = next.p;
                    }
                }
            }
            if (cVar != null) {
                if (Float.isNaN(f5)) {
                    f5 = 1.0f;
                }
                d4 = (((float) cVar.a((f4 - f6) / r16)) * (f5 - f6)) + f6;
            }
            this.C[0].a(d4, this.F);
            this.y.a(this.E, this.F, fArr, 0);
            if (i2 > 0) {
                f3 = (float) (f3 + Math.hypot(d2 - fArr[1], d3 - fArr[0]));
            }
            d3 = fArr[0];
            d2 = fArr[1];
        }
        return f3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l a(int i2, int i3, float f2, float f3) {
        RectF rectF = new RectF();
        rectF.left = this.y.r;
        rectF.top = this.y.s;
        rectF.right = rectF.left + this.y.t;
        rectF.bottom = rectF.top + this.y.u;
        RectF rectF2 = new RectF();
        rectF2.left = this.z.r;
        rectF2.top = this.z.s;
        rectF2.right = rectF2.left + this.z.t;
        rectF2.bottom = rectF2.top + this.z.u;
        Iterator<e> it = this.N.iterator();
        while (it.hasNext()) {
            e next = it.next();
            if (next instanceof l) {
                l lVar = (l) next;
                if (lVar.a(i2, i3, rectF, rectF2, f2, f3)) {
                    return lVar;
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a(float[] fArr, int[] iArr) {
        if (fArr == null) {
            return 0;
        }
        double[] a2 = this.C[0].a();
        if (iArr != null) {
            Iterator<t> it = this.L.iterator();
            int i2 = 0;
            while (it.hasNext()) {
                iArr[i2] = it.next().z;
                i2++;
            }
        }
        int i3 = 0;
        for (double d2 : a2) {
            this.C[0].a(d2, this.F);
            this.y.a(this.E, this.F, fArr, i3);
            i3 += 2;
        }
        return i3 / 2;
    }

    int b(float[] fArr, int[] iArr) {
        if (fArr == null) {
            return 0;
        }
        double[] a2 = this.C[0].a();
        if (iArr != null) {
            Iterator<t> it = this.L.iterator();
            int i2 = 0;
            while (it.hasNext()) {
                iArr[i2] = it.next().z;
                i2++;
            }
        }
        int i3 = 0;
        for (double d2 : a2) {
            this.C[0].a(d2, this.F);
            this.y.b(this.E, this.F, fArr, i3);
            i3 += 2;
        }
        return i3 / 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a(String str, float[] fArr, int i2) {
        w wVar = this.P.get(str);
        if (wVar == null) {
            return -1;
        }
        for (int i3 = 0; i3 < fArr.length; i3++) {
            fArr[i3] = wVar.a(i3 / (fArr.length - 1));
        }
        return fArr.length;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(float f2, float[] fArr, int i2) {
        this.C[0].a(a(f2, (float[]) null), this.F);
        this.y.c(this.E, this.F, fArr, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(float[] fArr, int i2) {
        float f2 = 1.0f / (i2 - 1);
        for (int i3 = 0; i3 < i2; i3++) {
            this.C[0].a(a(i3 * f2, (float[]) null), this.F);
            this.y.c(this.E, this.F, fArr, i3 * 8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float a(int i2, float f2, float f3) {
        float f4 = this.z.r - this.y.r;
        float f5 = this.z.s - this.y.s;
        float f6 = this.y.r + (this.y.t / 2.0f);
        float f7 = this.y.s + (this.y.u / 2.0f);
        float hypot = (float) Math.hypot(f4, f5);
        if (hypot < 1.0E-7d) {
            return Float.NaN;
        }
        float f8 = f2 - f6;
        float f9 = f3 - f7;
        if (((float) Math.hypot(f8, f9)) == 0.0f) {
            return 0.0f;
        }
        float f10 = (f8 * f4) + (f9 * f5);
        switch (i2) {
            case 0:
                return f10 / hypot;
            case 1:
                return (float) Math.sqrt((hypot * hypot) - (f10 * f10));
            case 2:
                return f8 / f4;
            case 3:
                return f9 / f4;
            case 4:
                return f8 / f5;
            case 5:
                return f9 / f5;
            default:
                return 0.0f;
        }
    }

    private void a(t tVar) {
        if (Collections.binarySearch(this.L, tVar) == 0) {
            Log.e(u, " KeyPath positon \"" + tVar.q + "\" outside of range");
        }
        this.L.add((-r0) - 1, tVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(ArrayList<e> arrayList) {
        this.N.addAll(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(e eVar) {
        this.N.add(eVar);
    }

    public void b(int i2) {
        this.S = i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v2 */
    public void a(int i2, int i3, float f2, long j2) {
        ArrayList arrayList;
        double[] dArr;
        x a2;
        androidx.d.e.b bVar;
        w b2;
        androidx.d.e.b bVar2;
        new HashSet();
        HashSet<String> hashSet = new HashSet<>();
        HashSet<String> hashSet2 = new HashSet<>();
        HashSet<String> hashSet3 = new HashSet<>();
        HashMap<String, Integer> hashMap = new HashMap<>();
        if (this.S != e.f606a) {
            this.y.x = this.S;
        }
        this.A.a(this.B, hashSet2);
        double[][] dArr2 = null;
        if (this.N != null) {
            Iterator<e> it = this.N.iterator();
            arrayList = null;
            while (it.hasNext()) {
                e next = it.next();
                if (next instanceof k) {
                    k kVar = (k) next;
                    a(new t(i2, i3, kVar, this.y, this.z));
                    if (kVar.O != e.f606a) {
                        this.x = kVar.O;
                    }
                } else if (next instanceof h) {
                    next.a(hashSet3);
                } else if (next instanceof m) {
                    next.a(hashSet);
                } else if (next instanceof n) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add((n) next);
                } else {
                    next.b(hashMap);
                    next.a(hashSet2);
                }
            }
        } else {
            arrayList = null;
        }
        if (arrayList != null) {
            this.R = (n[]) arrayList.toArray(new n[0]);
        }
        if (!hashSet2.isEmpty()) {
            this.P = new HashMap<>();
            Iterator<String> it2 = hashSet2.iterator();
            while (it2.hasNext()) {
                String next2 = it2.next();
                if (next2.startsWith("CUSTOM,")) {
                    SparseArray sparseArray = new SparseArray();
                    String str = next2.split(",")[1];
                    Iterator<e> it3 = this.N.iterator();
                    while (it3.hasNext()) {
                        e next3 = it3.next();
                        if (next3.f != null && (bVar2 = next3.f.get(str)) != null) {
                            sparseArray.append(next3.b, bVar2);
                        }
                    }
                    b2 = w.a(next2, (SparseArray<androidx.d.e.b>) sparseArray);
                } else {
                    b2 = w.b(next2);
                }
                if (b2 != null) {
                    b2.a(next2);
                    this.P.put(next2, b2);
                }
            }
            if (this.N != null) {
                Iterator<e> it4 = this.N.iterator();
                while (it4.hasNext()) {
                    e next4 = it4.next();
                    if (next4 instanceof f) {
                        next4.a(this.P);
                    }
                }
            }
            this.A.a(this.P, 0);
            this.B.a(this.P, 100);
            for (String str2 : this.P.keySet()) {
                this.P.get(str2).a(hashMap.containsKey(str2) ? hashMap.get(str2).intValue() : 0);
            }
        }
        if (!hashSet.isEmpty()) {
            if (this.O == null) {
                this.O = new HashMap<>();
            }
            Iterator<String> it5 = hashSet.iterator();
            while (it5.hasNext()) {
                String next5 = it5.next();
                if (!this.O.containsKey(next5)) {
                    if (next5.startsWith("CUSTOM,")) {
                        SparseArray sparseArray2 = new SparseArray();
                        String str3 = next5.split(",")[1];
                        Iterator<e> it6 = this.N.iterator();
                        while (it6.hasNext()) {
                            e next6 = it6.next();
                            if (next6.f != null && (bVar = next6.f.get(str3)) != null) {
                                sparseArray2.append(next6.b, bVar);
                            }
                        }
                        a2 = x.a(next5, (SparseArray<androidx.d.e.b>) sparseArray2);
                    } else {
                        a2 = x.a(next5, j2);
                    }
                    if (a2 != null) {
                        a2.a(next5);
                        this.O.put(next5, a2);
                    }
                }
            }
            if (this.N != null) {
                Iterator<e> it7 = this.N.iterator();
                while (it7.hasNext()) {
                    e next7 = it7.next();
                    if (next7 instanceof m) {
                        ((m) next7).c(this.O);
                    }
                }
            }
            for (String str4 : this.O.keySet()) {
                this.O.get(str4).a(hashMap.containsKey(str4) ? hashMap.get(str4).intValue() : 0);
            }
        }
        t[] tVarArr = new t[this.L.size() + 2];
        tVarArr[0] = this.y;
        tVarArr[tVarArr.length - 1] = this.z;
        if (this.L.size() > 0 && this.x == -1) {
            this.x = 0;
        }
        Iterator<t> it8 = this.L.iterator();
        int i4 = 1;
        while (it8.hasNext()) {
            tVarArr[i4] = it8.next();
            i4++;
        }
        HashSet hashSet4 = new HashSet();
        for (String str5 : this.z.y.keySet()) {
            if (this.y.y.containsKey(str5)) {
                if (!hashSet2.contains("CUSTOM," + str5)) {
                    hashSet4.add(str5);
                }
            }
        }
        this.H = (String[]) hashSet4.toArray(new String[0]);
        this.I = new int[this.H.length];
        for (int i5 = 0; i5 < this.H.length; i5++) {
            String str6 = this.H[i5];
            this.I[i5] = 0;
            int i6 = 0;
            while (true) {
                if (i6 >= tVarArr.length) {
                    break;
                }
                if (tVarArr[i6].y.containsKey(str6)) {
                    int[] iArr = this.I;
                    iArr[i5] = iArr[i5] + tVarArr[i6].y.get(str6).b();
                    break;
                }
                i6++;
            }
        }
        boolean z = tVarArr[0].x != e.f606a;
        boolean[] zArr = new boolean[18 + this.H.length];
        for (int i7 = 1; i7 < tVarArr.length; i7++) {
            tVarArr[i7].a(tVarArr[i7 - 1], zArr, this.H, z);
        }
        int i8 = 0;
        for (int i9 = 1; i9 < zArr.length; i9++) {
            if (zArr[i9]) {
                i8++;
            }
        }
        this.E = new int[i8];
        this.F = new double[this.E.length];
        this.G = new double[this.E.length];
        int i10 = 0;
        for (int i11 = 1; i11 < zArr.length; i11++) {
            if (zArr[i11]) {
                this.E[i10] = i11;
                i10++;
            }
        }
        double[][] dArr3 = (double[][]) Array.newInstance((Class<?>) double.class, tVarArr.length, this.E.length);
        double[] dArr4 = new double[tVarArr.length];
        for (int i12 = 0; i12 < tVarArr.length; i12++) {
            tVarArr[i12].a(dArr3[i12], this.E);
            dArr4[i12] = tVarArr[i12].p;
        }
        for (int i13 = 0; i13 < this.E.length; i13++) {
            if (this.E[i13] < t.m.length) {
                String str7 = t.m[this.E[i13]] + " [";
                for (int i14 = 0; i14 < tVarArr.length; i14++) {
                    str7 = str7 + dArr3[i14][i13];
                }
            }
        }
        this.C = new androidx.d.b.a.b[this.H.length + 1];
        int i15 = 0;
        while (i15 < this.H.length) {
            String str8 = this.H[i15];
            int i16 = 0;
            double[] dArr5 = dArr2;
            double[][] dArr6 = dArr2;
            int i17 = 0;
            while (i17 < tVarArr.length) {
                dArr5 = dArr5;
                if (tVarArr[i17].a(str8)) {
                    if (dArr6 == null) {
                        double[] dArr7 = new double[tVarArr.length];
                        dArr6 = (double[][]) Array.newInstance((Class<?>) double.class, tVarArr.length, tVarArr[i17].b(str8));
                        dArr5 = dArr7;
                    }
                    dArr = dArr4;
                    dArr5[i16] = tVarArr[i17].p;
                    tVarArr[i17].a(str8, dArr6[i16], 0);
                    i16++;
                } else {
                    dArr = dArr4;
                }
                i17++;
                dArr4 = dArr;
                dArr5 = dArr5;
            }
            i15++;
            this.C[i15] = androidx.d.b.a.b.a(this.x, Arrays.copyOf(dArr5, i16), (double[][]) Arrays.copyOf(dArr6, i16));
            dArr4 = dArr4;
            dArr2 = null;
        }
        this.C[0] = androidx.d.b.a.b.a(this.x, dArr4, dArr3);
        if (tVarArr[0].x != e.f606a) {
            int length = tVarArr.length;
            int[] iArr2 = new int[length];
            double[] dArr8 = new double[length];
            double[][] dArr9 = (double[][]) Array.newInstance((Class<?>) double.class, length, 2);
            for (int i18 = 0; i18 < length; i18++) {
                iArr2[i18] = tVarArr[i18].x;
                dArr8[i18] = tVarArr[i18].p;
                dArr9[i18][0] = tVarArr[i18].r;
                dArr9[i18][1] = tVarArr[i18].s;
            }
            this.D = androidx.d.b.a.b.a(iArr2, dArr8, dArr9);
        }
        float f3 = Float.NaN;
        this.Q = new HashMap<>();
        if (this.N != null) {
            Iterator<String> it9 = hashSet3.iterator();
            while (it9.hasNext()) {
                String next8 = it9.next();
                i b3 = i.b(next8);
                if (b3 != null) {
                    if (b3.a() && Float.isNaN(f3)) {
                        f3 = g();
                    }
                    b3.a(next8);
                    this.Q.put(next8, b3);
                }
            }
            Iterator<e> it10 = this.N.iterator();
            while (it10.hasNext()) {
                e next9 = it10.next();
                if (next9 instanceof h) {
                    ((h) next9).c(this.Q);
                }
            }
            Iterator<i> it11 = this.Q.values().iterator();
            while (it11.hasNext()) {
                it11.next().c(f3);
            }
        }
    }

    public String toString() {
        return " start: x: " + this.y.r + " y: " + this.y.s + " end: x: " + this.z.r + " y: " + this.z.s;
    }

    private void b(t tVar) {
        tVar.a((int) this.n.getX(), (int) this.n.getY(), this.n.getWidth(), this.n.getHeight());
    }

    public void a(View view) {
        this.n = view;
        this.o = view.getId();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof d.a) {
            this.p = ((d.a) layoutParams).d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(View view) {
        this.y.p = 0.0f;
        this.y.q = 0.0f;
        this.y.a(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        this.A.b(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(androidx.d.c.b.e eVar, androidx.d.e.g gVar) {
        this.y.p = 0.0f;
        this.y.q = 0.0f;
        b(this.y);
        this.y.a(eVar.G(), eVar.H(), eVar.I(), eVar.L());
        g.a a2 = gVar.a(this.o);
        this.y.a(a2);
        this.q = a2.c.f;
        this.A.a(eVar, gVar, this.o);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(androidx.d.c.b.e eVar, androidx.d.e.g gVar) {
        this.z.p = 1.0f;
        this.z.q = 1.0f;
        b(this.z);
        this.z.a(eVar.G(), eVar.H(), eVar.I(), eVar.L());
        this.z.a(gVar.a(this.o));
        this.B.a(eVar, gVar, this.o);
    }

    private float a(float f2, float[] fArr) {
        float f3 = 0.0f;
        if (fArr != null) {
            fArr[0] = 1.0f;
        } else if (this.s != 1.0d) {
            if (f2 < this.r) {
                f2 = 0.0f;
            }
            if (f2 > this.r && f2 < 1.0d) {
                f2 = (f2 - this.r) * this.s;
            }
        }
        androidx.d.b.a.c cVar = this.y.n;
        float f4 = Float.NaN;
        Iterator<t> it = this.L.iterator();
        while (it.hasNext()) {
            t next = it.next();
            if (next.n != null) {
                if (next.p < f2) {
                    cVar = next.n;
                    f3 = next.p;
                } else if (Float.isNaN(f4)) {
                    f4 = next.p;
                }
            }
        }
        if (cVar == null) {
            return f2;
        }
        float f5 = (Float.isNaN(f4) ? 1.0f : f4) - f3;
        double d2 = (f2 - f3) / f5;
        float a2 = f3 + (((float) cVar.a(d2)) * f5);
        if (fArr != null) {
            fArr[0] = (float) cVar.b(d2);
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(View view, float f2, long j2, g gVar) {
        x.d dVar;
        boolean z;
        double d2;
        float a2 = a(f2, (float[]) null);
        if (this.P != null) {
            Iterator<w> it = this.P.values().iterator();
            while (it.hasNext()) {
                it.next().a(view, a2);
            }
        }
        if (this.O != null) {
            dVar = null;
            boolean z2 = false;
            for (x xVar : this.O.values()) {
                if (xVar instanceof x.d) {
                    dVar = (x.d) xVar;
                } else {
                    z2 |= xVar.a(view, a2, j2, gVar);
                }
            }
            z = z2;
        } else {
            dVar = null;
            z = false;
        }
        if (this.C != null) {
            double d3 = a2;
            this.C[0].a(d3, this.F);
            this.C[0].b(d3, this.G);
            if (this.D != null && this.F.length > 0) {
                this.D.a(d3, this.F);
                this.D.b(d3, this.G);
            }
            this.y.a(view, this.E, this.F, this.G, (double[]) null);
            if (this.P != null) {
                for (w wVar : this.P.values()) {
                    if (wVar instanceof w.d) {
                        d2 = d3;
                        ((w.d) wVar).a(view, a2, this.G[0], this.G[1]);
                    } else {
                        d2 = d3;
                    }
                    d3 = d2;
                }
            }
            double d4 = d3;
            if (dVar != null) {
                z = dVar.a(view, gVar, a2, j2, this.G[0], this.G[1]) | z;
            }
            for (int i2 = 1; i2 < this.C.length; i2++) {
                this.C[i2].a(d4, this.K);
                this.y.y.get(this.H[i2 - 1]).a(view, this.K);
            }
            if (this.A.c == 0) {
                if (a2 <= 0.0f) {
                    view.setVisibility(this.A.d);
                } else if (a2 >= 1.0f) {
                    view.setVisibility(this.B.d);
                } else if (this.B.d != this.A.d) {
                    view.setVisibility(0);
                }
            }
            if (this.R != null) {
                for (int i3 = 0; i3 < this.R.length; i3++) {
                    this.R[i3].a(a2, view);
                }
            }
        } else {
            float f3 = this.y.r + ((this.z.r - this.y.r) * a2);
            float f4 = this.y.s + ((this.z.s - this.y.s) * a2);
            float f5 = f3 + 0.5f;
            int i4 = (int) f5;
            float f6 = f4 + 0.5f;
            int i5 = (int) f6;
            int i6 = (int) (f5 + this.y.t + ((this.z.t - this.y.t) * a2));
            int i7 = (int) (f6 + this.y.u + ((this.z.u - this.y.u) * a2));
            int i8 = i6 - i4;
            int i9 = i7 - i5;
            if (this.z.t != this.y.t || this.z.u != this.y.u) {
                view.measure(View.MeasureSpec.makeMeasureSpec(i8, androidx.d.c.b.a.b.b), View.MeasureSpec.makeMeasureSpec(i9, androidx.d.c.b.a.b.b));
            }
            view.layout(i4, i5, i6, i7);
        }
        if (this.Q != null) {
            for (i iVar : this.Q.values()) {
                if (iVar instanceof i.g) {
                    ((i.g) iVar).a(view, a2, this.G[0], this.G[1]);
                } else {
                    iVar.a(view, a2);
                }
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(float f2, float f3, float f4, float[] fArr) {
        float a2 = a(f2, this.M);
        if (this.C != null) {
            double d2 = a2;
            this.C[0].b(d2, this.G);
            this.C[0].a(d2, this.F);
            float f5 = this.M[0];
            for (int i2 = 0; i2 < this.G.length; i2++) {
                double[] dArr = this.G;
                dArr[i2] = dArr[i2] * f5;
            }
            if (this.D != null) {
                if (this.F.length > 0) {
                    this.D.a(d2, this.F);
                    this.D.b(d2, this.G);
                    this.y.a(f3, f4, fArr, this.E, this.G, this.F);
                    return;
                }
                return;
            }
            this.y.a(f3, f4, fArr, this.E, this.G, this.F);
            return;
        }
        float f6 = this.z.r - this.y.r;
        float f7 = this.z.s - this.y.s;
        float f8 = (this.z.t - this.y.t) + f6;
        float f9 = (this.z.u - this.y.u) + f7;
        fArr[0] = (f6 * (1.0f - f3)) + (f8 * f3);
        fArr[1] = (f7 * (1.0f - f4)) + (f9 * f4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(float f2, int i2, int i3, float f3, float f4, float[] fArr) {
        float a2 = a(f2, this.M);
        w wVar = this.P == null ? null : this.P.get("translationX");
        w wVar2 = this.P == null ? null : this.P.get("translationY");
        w wVar3 = this.P == null ? null : this.P.get("rotation");
        w wVar4 = this.P == null ? null : this.P.get("scaleX");
        w wVar5 = this.P == null ? null : this.P.get("scaleY");
        i iVar = this.Q == null ? null : this.Q.get("translationX");
        i iVar2 = this.Q == null ? null : this.Q.get("translationY");
        i iVar3 = this.Q == null ? null : this.Q.get("rotation");
        i iVar4 = this.Q == null ? null : this.Q.get("scaleX");
        i iVar5 = this.Q != null ? this.Q.get("scaleY") : null;
        androidx.d.b.a.i iVar6 = new androidx.d.b.a.i();
        iVar6.a();
        iVar6.a(wVar3, a2);
        iVar6.a(wVar, wVar2, a2);
        iVar6.b(wVar4, wVar5, a2);
        iVar6.a(iVar3, a2);
        iVar6.a(iVar, iVar2, a2);
        iVar6.b(iVar4, iVar5, a2);
        i iVar7 = iVar5;
        if (this.D != null) {
            if (this.F.length > 0) {
                double d2 = a2;
                this.D.a(d2, this.F);
                this.D.b(d2, this.G);
                this.y.a(f3, f4, fArr, this.E, this.G, this.F);
            }
            iVar6.a(f3, f4, i2, i3, fArr);
            return;
        }
        if (this.C != null) {
            double a3 = a(a2, this.M);
            this.C[0].b(a3, this.G);
            this.C[0].a(a3, this.F);
            float f5 = this.M[0];
            for (int i4 = 0; i4 < this.G.length; i4++) {
                double[] dArr = this.G;
                dArr[i4] = dArr[i4] * f5;
            }
            this.y.a(f3, f4, fArr, this.E, this.G, this.F);
            iVar6.a(f3, f4, i2, i3, fArr);
            return;
        }
        i iVar8 = iVar4;
        float f6 = this.z.r - this.y.r;
        i iVar9 = iVar;
        float f7 = this.z.s - this.y.s;
        i iVar10 = iVar2;
        float f8 = (this.z.t - this.y.t) + f6;
        float f9 = (this.z.u - this.y.u) + f7;
        fArr[0] = (f6 * (1.0f - f3)) + (f8 * f3);
        fArr[1] = (f7 * (1.0f - f4)) + (f9 * f4);
        iVar6.a();
        iVar6.a(wVar3, a2);
        iVar6.a(wVar, wVar2, a2);
        iVar6.b(wVar4, wVar5, a2);
        iVar6.a(iVar3, a2);
        iVar6.a(iVar9, iVar10, a2);
        iVar6.b(iVar8, iVar7, a2);
        iVar6.a(f3, f4, i2, i3, fArr);
    }

    public int e() {
        int i2 = this.y.o;
        Iterator<t> it = this.L.iterator();
        while (it.hasNext()) {
            i2 = Math.max(i2, it.next().o);
        }
        return Math.max(i2, this.z.o);
    }

    public void c(int i2) {
        this.y.o = i2;
    }

    String f() {
        return this.n.getContext().getResources().getResourceEntryName(this.n.getId());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(View view, l lVar, float f2, float f3, String[] strArr, float[] fArr) {
        RectF rectF = new RectF();
        rectF.left = this.y.r;
        rectF.top = this.y.s;
        rectF.right = rectF.left + this.y.t;
        rectF.bottom = rectF.top + this.y.u;
        RectF rectF2 = new RectF();
        rectF2.left = this.z.r;
        rectF2.top = this.z.s;
        rectF2.right = rectF2.left + this.z.t;
        rectF2.bottom = rectF2.top + this.z.u;
        lVar.a(view, rectF, rectF2, f2, f3, strArr, fArr);
    }

    public int a(int[] iArr, float[] fArr) {
        Iterator<e> it = this.N.iterator();
        int i2 = 0;
        int i3 = 0;
        while (it.hasNext()) {
            e next = it.next();
            iArr[i2] = next.b + (next.e * 1000);
            this.C[0].a(next.b / 100.0f, this.F);
            this.y.a(this.E, this.F, fArr, i3);
            i3 += 2;
            i2++;
        }
        return i2;
    }

    public int a(int i2, int[] iArr) {
        float[] fArr = new float[2];
        Iterator<e> it = this.N.iterator();
        int i3 = 0;
        int i4 = 0;
        while (it.hasNext()) {
            e next = it.next();
            if (next.e == i2 || i2 != -1) {
                iArr[i4] = 0;
                int i5 = i4 + 1;
                iArr[i5] = next.e;
                int i6 = i5 + 1;
                iArr[i6] = next.b;
                this.C[0].a(next.b / 100.0f, this.F);
                this.y.a(this.E, this.F, fArr, 0);
                int i7 = i6 + 1;
                iArr[i7] = Float.floatToIntBits(fArr[0]);
                int i8 = i7 + 1;
                iArr[i8] = Float.floatToIntBits(fArr[1]);
                if (next instanceof k) {
                    k kVar = (k) next;
                    int i9 = i8 + 1;
                    iArr[i9] = kVar.L;
                    int i10 = i9 + 1;
                    iArr[i10] = Float.floatToIntBits(kVar.E);
                    i8 = i10 + 1;
                    iArr[i8] = Float.floatToIntBits(kVar.F);
                }
                int i11 = i8 + 1;
                iArr[i4] = i11 - i4;
                i3++;
                i4 = i11;
            }
        }
        return i3;
    }
}
