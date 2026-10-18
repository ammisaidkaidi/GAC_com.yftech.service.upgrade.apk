package androidx.d.b.b;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.d.b.b.x;
import androidx.d.e.m;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes.dex */
public class m extends e {
    private static final String A = "KeyTimeCycle";
    static final String y = "KeyTimeCycle";
    public static final int z = 3;
    private String B;
    private int C = -1;
    private float D = Float.NaN;
    private float E = Float.NaN;
    private float F = Float.NaN;
    private float G = Float.NaN;
    private float H = Float.NaN;
    private float I = Float.NaN;
    private float J = Float.NaN;
    private float K = Float.NaN;
    private float L = Float.NaN;
    private float M = Float.NaN;
    private float N = Float.NaN;
    private float O = Float.NaN;
    private int P = 0;
    private float Q = Float.NaN;
    private float R = 0.0f;

    public m() {
        this.e = 3;
        this.f = new HashMap<>();
    }

    @Override // androidx.d.b.b.e
    public void a(Context context, AttributeSet attributeSet) {
        a.a(this, context.obtainStyledAttributes(attributeSet, m.C0052m.KeyTimeCycle));
    }

    @Override // androidx.d.b.b.e
    public void a(HashSet<String> hashSet) {
        if (!Float.isNaN(this.D)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.E)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.F)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.G)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.H)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.L)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.M)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.N)) {
            hashSet.add("translationZ");
        }
        if (!Float.isNaN(this.I)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.J)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.K)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.O)) {
            hashSet.add(androidx.core.app.p.al);
        }
        if (this.f.size() > 0) {
            Iterator<String> it = this.f.keySet().iterator();
            while (it.hasNext()) {
                hashSet.add("CUSTOM," + it.next());
            }
        }
    }

    @Override // androidx.d.b.b.e
    public void b(HashMap<String, Integer> hashMap) {
        if (this.C == -1) {
            return;
        }
        if (!Float.isNaN(this.D)) {
            hashMap.put("alpha", Integer.valueOf(this.C));
        }
        if (!Float.isNaN(this.E)) {
            hashMap.put("elevation", Integer.valueOf(this.C));
        }
        if (!Float.isNaN(this.F)) {
            hashMap.put("rotation", Integer.valueOf(this.C));
        }
        if (!Float.isNaN(this.G)) {
            hashMap.put("rotationX", Integer.valueOf(this.C));
        }
        if (!Float.isNaN(this.H)) {
            hashMap.put("rotationY", Integer.valueOf(this.C));
        }
        if (!Float.isNaN(this.L)) {
            hashMap.put("translationX", Integer.valueOf(this.C));
        }
        if (!Float.isNaN(this.M)) {
            hashMap.put("translationY", Integer.valueOf(this.C));
        }
        if (!Float.isNaN(this.N)) {
            hashMap.put("translationZ", Integer.valueOf(this.C));
        }
        if (!Float.isNaN(this.I)) {
            hashMap.put("transitionPathRotate", Integer.valueOf(this.C));
        }
        if (!Float.isNaN(this.J)) {
            hashMap.put("scaleX", Integer.valueOf(this.C));
        }
        if (!Float.isNaN(this.J)) {
            hashMap.put("scaleY", Integer.valueOf(this.C));
        }
        if (!Float.isNaN(this.O)) {
            hashMap.put(androidx.core.app.p.al, Integer.valueOf(this.C));
        }
        if (this.f.size() > 0) {
            Iterator<String> it = this.f.keySet().iterator();
            while (it.hasNext()) {
                hashMap.put("CUSTOM," + it.next(), Integer.valueOf(this.C));
            }
        }
    }

    @Override // androidx.d.b.b.e
    public void a(HashMap<String, w> hashMap) {
        throw new IllegalArgumentException(" KeyTimeCycles do not support SplineSet");
    }

    /* JADX WARN: Code restructure failed: missing block: B:105:0x006f, code lost:
    
        if (r1.equals("elevation") != false) goto L50;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void c(HashMap<String, x> hashMap) {
        Iterator<String> it = hashMap.keySet().iterator();
        while (it.hasNext()) {
            String next = it.next();
            x xVar = hashMap.get(next);
            char c = 1;
            if (next.startsWith("CUSTOM")) {
                androidx.d.e.b bVar = this.f.get(next.substring("CUSTOM".length() + 1));
                if (bVar != null) {
                    ((x.b) xVar).a(this.b, bVar, this.Q, this.P, this.R);
                }
            } else {
                switch (next.hashCode()) {
                    case -1249320806:
                        if (next.equals("rotationX")) {
                            c = 3;
                            break;
                        }
                        break;
                    case -1249320805:
                        if (next.equals("rotationY")) {
                            c = 4;
                            break;
                        }
                        break;
                    case -1225497657:
                        if (next.equals("translationX")) {
                            c = '\b';
                            break;
                        }
                        break;
                    case -1225497656:
                        if (next.equals("translationY")) {
                            c = '\t';
                            break;
                        }
                        break;
                    case -1225497655:
                        if (next.equals("translationZ")) {
                            c = '\n';
                            break;
                        }
                        break;
                    case -1001078227:
                        if (next.equals(androidx.core.app.p.al)) {
                            c = 11;
                            break;
                        }
                        break;
                    case -908189618:
                        if (next.equals("scaleX")) {
                            c = 6;
                            break;
                        }
                        break;
                    case -908189617:
                        if (next.equals("scaleY")) {
                            c = 7;
                            break;
                        }
                        break;
                    case -40300674:
                        if (next.equals("rotation")) {
                            c = 2;
                            break;
                        }
                        break;
                    case -4379043:
                        break;
                    case 37232917:
                        if (next.equals("transitionPathRotate")) {
                            c = 5;
                            break;
                        }
                        break;
                    case 92909918:
                        if (next.equals("alpha")) {
                            c = 0;
                            break;
                        }
                        break;
                }
                c = 65535;
                switch (c) {
                    case 0:
                        if (!Float.isNaN(this.D)) {
                            xVar.a(this.b, this.D, this.Q, this.P, this.R);
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (!Float.isNaN(this.E)) {
                            xVar.a(this.b, this.E, this.Q, this.P, this.R);
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (!Float.isNaN(this.F)) {
                            xVar.a(this.b, this.F, this.Q, this.P, this.R);
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (!Float.isNaN(this.G)) {
                            xVar.a(this.b, this.G, this.Q, this.P, this.R);
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (!Float.isNaN(this.H)) {
                            xVar.a(this.b, this.H, this.Q, this.P, this.R);
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (!Float.isNaN(this.I)) {
                            xVar.a(this.b, this.I, this.Q, this.P, this.R);
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (!Float.isNaN(this.J)) {
                            xVar.a(this.b, this.J, this.Q, this.P, this.R);
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (!Float.isNaN(this.K)) {
                            xVar.a(this.b, this.K, this.Q, this.P, this.R);
                            break;
                        } else {
                            break;
                        }
                    case '\b':
                        if (!Float.isNaN(this.L)) {
                            xVar.a(this.b, this.L, this.Q, this.P, this.R);
                            break;
                        } else {
                            break;
                        }
                    case '\t':
                        if (!Float.isNaN(this.M)) {
                            xVar.a(this.b, this.M, this.Q, this.P, this.R);
                            break;
                        } else {
                            break;
                        }
                    case '\n':
                        if (!Float.isNaN(this.N)) {
                            xVar.a(this.b, this.N, this.Q, this.P, this.R);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (!Float.isNaN(this.O)) {
                            xVar.a(this.b, this.O, this.Q, this.P, this.R);
                            break;
                        } else {
                            break;
                        }
                    default:
                        Log.e("KeyTimeCycles", "UNKNOWN addValues \"" + next + "\"");
                        break;
                }
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // androidx.d.b.b.e
    public void a(String str, Object obj) {
        char c;
        switch (str.hashCode()) {
            case -1812823328:
                if (str.equals("transitionEasing")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case -1249320806:
                if (str.equals("rotationX")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case -1249320805:
                if (str.equals("rotationY")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case -1225497657:
                if (str.equals("translationX")) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            case -1225497656:
                if (str.equals("translationY")) {
                    c = '\f';
                    break;
                }
                c = 65535;
                break;
            case -1001078227:
                if (str.equals(androidx.core.app.p.al)) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -908189618:
                if (str.equals("scaleX")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case -908189617:
                if (str.equals("scaleY")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case -40300674:
                if (str.equals("rotation")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case -4379043:
                if (str.equals("elevation")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 37232917:
                if (str.equals("transitionPathRotate")) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case 92909918:
                if (str.equals("alpha")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 579057826:
                if (str.equals("curveFit")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 1317633238:
                if (str.equals("mTranslationZ")) {
                    c = '\r';
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                this.D = a(obj);
                return;
            case 1:
                this.C = b(obj);
                return;
            case 2:
                this.E = a(obj);
                return;
            case 3:
                this.O = a(obj);
                return;
            case 4:
                this.F = a(obj);
                return;
            case 5:
                this.G = a(obj);
                return;
            case 6:
                this.H = a(obj);
                return;
            case 7:
                this.J = a(obj);
                return;
            case '\b':
                this.K = a(obj);
                return;
            case '\t':
                this.B = obj.toString();
                return;
            case '\n':
                this.I = a(obj);
                return;
            case 11:
                this.L = a(obj);
                return;
            case '\f':
                this.M = a(obj);
                return;
            case '\r':
                this.N = a(obj);
                return;
            default:
                return;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class a {

        /* renamed from: a, reason: collision with root package name */
        private static final int f616a = 1;
        private static final int b = 2;
        private static final int c = 4;
        private static final int d = 5;
        private static final int e = 6;
        private static final int f = 8;
        private static final int g = 7;
        private static final int h = 9;
        private static final int i = 10;
        private static final int j = 12;
        private static final int k = 13;
        private static final int l = 14;
        private static final int m = 15;
        private static final int n = 16;
        private static final int o = 17;
        private static final int p = 18;
        private static final int q = 19;
        private static final int r = 20;
        private static final int s = 21;
        private static SparseIntArray t = new SparseIntArray();

        private a() {
        }

        static {
            t.append(m.C0052m.KeyTimeCycle_android_alpha, 1);
            t.append(m.C0052m.KeyTimeCycle_android_elevation, 2);
            t.append(m.C0052m.KeyTimeCycle_android_rotation, 4);
            t.append(m.C0052m.KeyTimeCycle_android_rotationX, 5);
            t.append(m.C0052m.KeyTimeCycle_android_rotationY, 6);
            t.append(m.C0052m.KeyTimeCycle_android_scaleX, 7);
            t.append(m.C0052m.KeyTimeCycle_transitionPathRotate, 8);
            t.append(m.C0052m.KeyTimeCycle_transitionEasing, 9);
            t.append(m.C0052m.KeyTimeCycle_motionTarget, 10);
            t.append(m.C0052m.KeyTimeCycle_framePosition, 12);
            t.append(m.C0052m.KeyTimeCycle_curveFit, 13);
            t.append(m.C0052m.KeyTimeCycle_android_scaleY, 14);
            t.append(m.C0052m.KeyTimeCycle_android_translationX, 15);
            t.append(m.C0052m.KeyTimeCycle_android_translationY, 16);
            t.append(m.C0052m.KeyTimeCycle_android_translationZ, 17);
            t.append(m.C0052m.KeyTimeCycle_motionProgress, 18);
            t.append(m.C0052m.KeyTimeCycle_wavePeriod, 20);
            t.append(m.C0052m.KeyTimeCycle_waveOffset, 21);
            t.append(m.C0052m.KeyTimeCycle_waveShape, 19);
        }

        public static void a(m mVar, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = typedArray.getIndex(i2);
                switch (t.get(index)) {
                    case 1:
                        mVar.D = typedArray.getFloat(index, mVar.D);
                        break;
                    case 2:
                        mVar.E = typedArray.getDimension(index, mVar.E);
                        break;
                    case 3:
                    case 11:
                    default:
                        Log.e("KeyTimeCycle", "unused attribute 0x" + Integer.toHexString(index) + "   " + t.get(index));
                        break;
                    case 4:
                        mVar.F = typedArray.getFloat(index, mVar.F);
                        break;
                    case 5:
                        mVar.G = typedArray.getFloat(index, mVar.G);
                        break;
                    case 6:
                        mVar.H = typedArray.getFloat(index, mVar.H);
                        break;
                    case 7:
                        mVar.J = typedArray.getFloat(index, mVar.J);
                        break;
                    case 8:
                        mVar.I = typedArray.getFloat(index, mVar.I);
                        break;
                    case 9:
                        mVar.B = typedArray.getString(index);
                        break;
                    case 10:
                        if (s.h) {
                            mVar.c = typedArray.getResourceId(index, mVar.c);
                            if (mVar.c == -1) {
                                mVar.d = typedArray.getString(index);
                                break;
                            } else {
                                break;
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            mVar.d = typedArray.getString(index);
                            break;
                        } else {
                            mVar.c = typedArray.getResourceId(index, mVar.c);
                            break;
                        }
                    case 12:
                        mVar.b = typedArray.getInt(index, mVar.b);
                        break;
                    case 13:
                        mVar.C = typedArray.getInteger(index, mVar.C);
                        break;
                    case 14:
                        mVar.K = typedArray.getFloat(index, mVar.K);
                        break;
                    case 15:
                        mVar.L = typedArray.getDimension(index, mVar.L);
                        break;
                    case 16:
                        mVar.M = typedArray.getDimension(index, mVar.M);
                        break;
                    case 17:
                        if (Build.VERSION.SDK_INT >= 21) {
                            mVar.N = typedArray.getDimension(index, mVar.N);
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        mVar.O = typedArray.getFloat(index, mVar.O);
                        break;
                    case 19:
                        mVar.P = typedArray.getInt(index, mVar.P);
                        break;
                    case 20:
                        mVar.Q = typedArray.getFloat(index, mVar.Q);
                        break;
                    case 21:
                        if (typedArray.peekValue(index).type == 5) {
                            mVar.R = typedArray.getDimension(index, mVar.R);
                            break;
                        } else {
                            mVar.R = typedArray.getFloat(index, mVar.R);
                            break;
                        }
                }
            }
        }
    }
}
