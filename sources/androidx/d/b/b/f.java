package androidx.d.b.b;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.d.b.b.w;
import androidx.d.e.m;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes.dex */
public class f extends e {
    private static final String A = "KeyAttribute";
    static final String y = "KeyAttribute";
    public static final int z = 1;
    private String B;
    private int C = -1;
    private boolean D = false;
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
    private float P = Float.NaN;
    private float Q = Float.NaN;
    private float R = Float.NaN;

    public f() {
        this.e = 1;
        this.f = new HashMap<>();
    }

    @Override // androidx.d.b.b.e
    public void a(Context context, AttributeSet attributeSet) {
        a.a(this, context.obtainStyledAttributes(attributeSet, m.C0052m.KeyAttribute));
    }

    int a() {
        return this.C;
    }

    @Override // androidx.d.b.b.e
    public void a(HashSet<String> hashSet) {
        if (!Float.isNaN(this.E)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.F)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.G)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.H)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.I)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.J)) {
            hashSet.add("transformPivotX");
        }
        if (!Float.isNaN(this.K)) {
            hashSet.add("transformPivotY");
        }
        if (!Float.isNaN(this.O)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.P)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.Q)) {
            hashSet.add("translationZ");
        }
        if (!Float.isNaN(this.L)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.M)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.N)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.R)) {
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
        if (!Float.isNaN(this.E)) {
            hashMap.put("alpha", Integer.valueOf(this.C));
        }
        if (!Float.isNaN(this.F)) {
            hashMap.put("elevation", Integer.valueOf(this.C));
        }
        if (!Float.isNaN(this.G)) {
            hashMap.put("rotation", Integer.valueOf(this.C));
        }
        if (!Float.isNaN(this.H)) {
            hashMap.put("rotationX", Integer.valueOf(this.C));
        }
        if (!Float.isNaN(this.I)) {
            hashMap.put("rotationY", Integer.valueOf(this.C));
        }
        if (!Float.isNaN(this.J)) {
            hashMap.put("transformPivotX", Integer.valueOf(this.C));
        }
        if (!Float.isNaN(this.K)) {
            hashMap.put("transformPivotY", Integer.valueOf(this.C));
        }
        if (!Float.isNaN(this.O)) {
            hashMap.put("translationX", Integer.valueOf(this.C));
        }
        if (!Float.isNaN(this.P)) {
            hashMap.put("translationY", Integer.valueOf(this.C));
        }
        if (!Float.isNaN(this.Q)) {
            hashMap.put("translationZ", Integer.valueOf(this.C));
        }
        if (!Float.isNaN(this.L)) {
            hashMap.put("transitionPathRotate", Integer.valueOf(this.C));
        }
        if (!Float.isNaN(this.M)) {
            hashMap.put("scaleX", Integer.valueOf(this.C));
        }
        if (!Float.isNaN(this.N)) {
            hashMap.put("scaleY", Integer.valueOf(this.C));
        }
        if (!Float.isNaN(this.R)) {
            hashMap.put(androidx.core.app.p.al, Integer.valueOf(this.C));
        }
        if (this.f.size() > 0) {
            Iterator<String> it = this.f.keySet().iterator();
            while (it.hasNext()) {
                hashMap.put("CUSTOM," + it.next(), Integer.valueOf(this.C));
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:119:0x0066, code lost:
    
        if (r1.equals("elevation") != false) goto L56;
     */
    @Override // androidx.d.b.b.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(HashMap<String, w> hashMap) {
        Iterator<String> it = hashMap.keySet().iterator();
        while (it.hasNext()) {
            String next = it.next();
            w wVar = hashMap.get(next);
            char c = 1;
            if (next.startsWith("CUSTOM")) {
                androidx.d.e.b bVar = this.f.get(next.substring("CUSTOM".length() + 1));
                if (bVar != null) {
                    ((w.b) wVar).a(this.b, bVar);
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
                            c = '\n';
                            break;
                        }
                        break;
                    case -1225497656:
                        if (next.equals("translationY")) {
                            c = 11;
                            break;
                        }
                        break;
                    case -1225497655:
                        if (next.equals("translationZ")) {
                            c = '\f';
                            break;
                        }
                        break;
                    case -1001078227:
                        if (next.equals(androidx.core.app.p.al)) {
                            c = '\r';
                            break;
                        }
                        break;
                    case -908189618:
                        if (next.equals("scaleX")) {
                            c = '\b';
                            break;
                        }
                        break;
                    case -908189617:
                        if (next.equals("scaleY")) {
                            c = '\t';
                            break;
                        }
                        break;
                    case -760884510:
                        if (next.equals("transformPivotX")) {
                            c = 5;
                            break;
                        }
                        break;
                    case -760884509:
                        if (next.equals("transformPivotY")) {
                            c = 6;
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
                            c = 7;
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
                        if (!Float.isNaN(this.E)) {
                            wVar.a(this.b, this.E);
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (!Float.isNaN(this.F)) {
                            wVar.a(this.b, this.F);
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (!Float.isNaN(this.G)) {
                            wVar.a(this.b, this.G);
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (!Float.isNaN(this.H)) {
                            wVar.a(this.b, this.H);
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (!Float.isNaN(this.I)) {
                            wVar.a(this.b, this.I);
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (!Float.isNaN(this.H)) {
                            wVar.a(this.b, this.J);
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (!Float.isNaN(this.I)) {
                            wVar.a(this.b, this.K);
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (!Float.isNaN(this.L)) {
                            wVar.a(this.b, this.L);
                            break;
                        } else {
                            break;
                        }
                    case '\b':
                        if (!Float.isNaN(this.M)) {
                            wVar.a(this.b, this.M);
                            break;
                        } else {
                            break;
                        }
                    case '\t':
                        if (!Float.isNaN(this.N)) {
                            wVar.a(this.b, this.N);
                            break;
                        } else {
                            break;
                        }
                    case '\n':
                        if (!Float.isNaN(this.O)) {
                            wVar.a(this.b, this.O);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (!Float.isNaN(this.P)) {
                            wVar.a(this.b, this.P);
                            break;
                        } else {
                            break;
                        }
                    case '\f':
                        if (!Float.isNaN(this.Q)) {
                            wVar.a(this.b, this.Q);
                            break;
                        } else {
                            break;
                        }
                    case '\r':
                        if (!Float.isNaN(this.R)) {
                            wVar.a(this.b, this.R);
                            break;
                        } else {
                            break;
                        }
                    default:
                        Log.v("KeyAttributes", "UNKNOWN addValues \"" + next + "\"");
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
            case -1913008125:
                if (str.equals("motionProgress")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -1812823328:
                if (str.equals("transitionEasing")) {
                    c = 11;
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
                    c = 14;
                    break;
                }
                c = 65535;
                break;
            case -1225497656:
                if (str.equals("translationY")) {
                    c = 15;
                    break;
                }
                c = 65535;
                break;
            case -987906986:
                if (str.equals("pivotX")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case -987906985:
                if (str.equals("pivotY")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case -908189618:
                if (str.equals("scaleX")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case -908189617:
                if (str.equals("scaleY")) {
                    c = '\n';
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
                    c = '\r';
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
                    c = 16;
                    break;
                }
                c = 65535;
                break;
            case 1941332754:
                if (str.equals("visibility")) {
                    c = '\f';
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
                this.E = a(obj);
                return;
            case 1:
                this.C = b(obj);
                return;
            case 2:
                this.F = a(obj);
                return;
            case 3:
                this.R = a(obj);
                return;
            case 4:
                this.G = a(obj);
                return;
            case 5:
                this.H = a(obj);
                return;
            case 6:
                this.I = a(obj);
                return;
            case 7:
                this.J = a(obj);
                return;
            case '\b':
                this.K = a(obj);
                return;
            case '\t':
                this.M = a(obj);
                return;
            case '\n':
                this.N = a(obj);
                return;
            case 11:
                this.B = obj.toString();
                return;
            case '\f':
                this.D = c(obj);
                return;
            case '\r':
                this.L = a(obj);
                return;
            case 14:
                this.O = a(obj);
                return;
            case 15:
                this.P = a(obj);
                return;
            case 16:
                this.Q = a(obj);
                return;
            default:
                return;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class a {

        /* renamed from: a, reason: collision with root package name */
        private static final int f607a = 1;
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
        private static SparseIntArray s = new SparseIntArray();

        private a() {
        }

        static {
            s.append(m.C0052m.KeyAttribute_android_alpha, 1);
            s.append(m.C0052m.KeyAttribute_android_elevation, 2);
            s.append(m.C0052m.KeyAttribute_android_rotation, 4);
            s.append(m.C0052m.KeyAttribute_android_rotationX, 5);
            s.append(m.C0052m.KeyAttribute_android_rotationY, 6);
            s.append(m.C0052m.KeyAttribute_android_transformPivotX, 19);
            s.append(m.C0052m.KeyAttribute_android_transformPivotY, 20);
            s.append(m.C0052m.KeyAttribute_android_scaleX, 7);
            s.append(m.C0052m.KeyAttribute_transitionPathRotate, 8);
            s.append(m.C0052m.KeyAttribute_transitionEasing, 9);
            s.append(m.C0052m.KeyAttribute_motionTarget, 10);
            s.append(m.C0052m.KeyAttribute_framePosition, 12);
            s.append(m.C0052m.KeyAttribute_curveFit, 13);
            s.append(m.C0052m.KeyAttribute_android_scaleY, 14);
            s.append(m.C0052m.KeyAttribute_android_translationX, 15);
            s.append(m.C0052m.KeyAttribute_android_translationY, 16);
            s.append(m.C0052m.KeyAttribute_android_translationZ, 17);
            s.append(m.C0052m.KeyAttribute_motionProgress, 18);
        }

        public static void a(f fVar, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = typedArray.getIndex(i2);
                switch (s.get(index)) {
                    case 1:
                        fVar.E = typedArray.getFloat(index, fVar.E);
                        break;
                    case 2:
                        fVar.F = typedArray.getDimension(index, fVar.F);
                        break;
                    case 3:
                    case 11:
                    default:
                        Log.e("KeyAttribute", "unused attribute 0x" + Integer.toHexString(index) + "   " + s.get(index));
                        break;
                    case 4:
                        fVar.G = typedArray.getFloat(index, fVar.G);
                        break;
                    case 5:
                        fVar.H = typedArray.getFloat(index, fVar.H);
                        break;
                    case 6:
                        fVar.I = typedArray.getFloat(index, fVar.I);
                        break;
                    case 7:
                        fVar.M = typedArray.getFloat(index, fVar.M);
                        break;
                    case 8:
                        fVar.L = typedArray.getFloat(index, fVar.L);
                        break;
                    case 9:
                        fVar.B = typedArray.getString(index);
                        break;
                    case 10:
                        if (s.h) {
                            fVar.c = typedArray.getResourceId(index, fVar.c);
                            if (fVar.c == -1) {
                                fVar.d = typedArray.getString(index);
                                break;
                            } else {
                                break;
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            fVar.d = typedArray.getString(index);
                            break;
                        } else {
                            fVar.c = typedArray.getResourceId(index, fVar.c);
                            break;
                        }
                    case 12:
                        fVar.b = typedArray.getInt(index, fVar.b);
                        break;
                    case 13:
                        fVar.C = typedArray.getInteger(index, fVar.C);
                        break;
                    case 14:
                        fVar.N = typedArray.getFloat(index, fVar.N);
                        break;
                    case 15:
                        fVar.O = typedArray.getDimension(index, fVar.O);
                        break;
                    case 16:
                        fVar.P = typedArray.getDimension(index, fVar.P);
                        break;
                    case 17:
                        if (Build.VERSION.SDK_INT >= 21) {
                            fVar.Q = typedArray.getDimension(index, fVar.Q);
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        fVar.R = typedArray.getFloat(index, fVar.R);
                        break;
                    case 19:
                        fVar.J = typedArray.getDimension(index, fVar.J);
                        break;
                    case 20:
                        fVar.K = typedArray.getDimension(index, fVar.K);
                        break;
                }
            }
        }
    }
}
