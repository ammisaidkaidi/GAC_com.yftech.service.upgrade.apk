package androidx.d.b.b;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.d.e.b;
import androidx.d.e.m;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes.dex */
public class h extends e {
    private static final String A = "KeyCycle";
    static final String y = "KeyCycle";
    public static final int z = 4;
    private String B = null;
    private int C = 0;
    private int D = -1;
    private float E = Float.NaN;
    private float F = 0.0f;
    private float G = Float.NaN;
    private int H = -1;
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
    private float S = Float.NaN;

    public h() {
        this.e = 4;
        this.f = new HashMap<>();
    }

    @Override // androidx.d.b.b.e
    public void a(Context context, AttributeSet attributeSet) {
        a.b(this, context.obtainStyledAttributes(attributeSet, m.C0052m.KeyCycle));
    }

    @Override // androidx.d.b.b.e
    public void a(HashSet<String> hashSet) {
        if (!Float.isNaN(this.I)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.J)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.K)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.M)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.N)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.O)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.P)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.L)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.Q)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.R)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.S)) {
            hashSet.add("translationZ");
        }
        if (this.f.size() > 0) {
            Iterator<String> it = this.f.keySet().iterator();
            while (it.hasNext()) {
                hashSet.add("CUSTOM," + it.next());
            }
        }
    }

    public void c(HashMap<String, i> hashMap) {
        for (String str : hashMap.keySet()) {
            if (str.startsWith("CUSTOM")) {
                androidx.d.e.b bVar = this.f.get(str.substring("CUSTOM".length() + 1));
                if (bVar != null && bVar.a() == b.a.FLOAT_TYPE) {
                    hashMap.get(str).a(this.b, this.D, this.H, this.E, this.F, bVar.c(), bVar);
                }
            } else {
                float b = b(str);
                if (!Float.isNaN(b)) {
                    hashMap.get(str).a(this.b, this.D, this.H, this.E, this.F, b);
                }
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public float b(String str) {
        char c;
        switch (str.hashCode()) {
            case -1249320806:
                if (str.equals("rotationX")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -1249320805:
                if (str.equals("rotationY")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case -1225497657:
                if (str.equals("translationX")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case -1225497656:
                if (str.equals("translationY")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case -1225497655:
                if (str.equals("translationZ")) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case -1001078227:
                if (str.equals(androidx.core.app.p.al)) {
                    c = '\f';
                    break;
                }
                c = 65535;
                break;
            case -908189618:
                if (str.equals("scaleX")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case -908189617:
                if (str.equals("scaleY")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case -40300674:
                if (str.equals("rotation")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -4379043:
                if (str.equals("elevation")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 37232917:
                if (str.equals("transitionPathRotate")) {
                    c = 5;
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
            case 156108012:
                if (str.equals("waveOffset")) {
                    c = 11;
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
                return this.I;
            case 1:
                return this.J;
            case 2:
                return this.K;
            case 3:
                return this.M;
            case 4:
                return this.N;
            case 5:
                return this.L;
            case 6:
                return this.O;
            case 7:
                return this.P;
            case '\b':
                return this.Q;
            case '\t':
                return this.R;
            case '\n':
                return this.S;
            case 11:
                return this.F;
            case '\f':
                return this.G;
            default:
                Log.v("KeyCycle", "WARNING! KeyCycle UNKNOWN  " + str);
                return Float.NaN;
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x003f. Please report as an issue. */
    @Override // androidx.d.b.b.e
    public void a(HashMap<String, w> hashMap) {
        c.a("KeyCycle", "add " + hashMap.size() + " values", 2);
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
                        c = '\b';
                        break;
                    }
                    break;
                case -1225497656:
                    if (str.equals("translationY")) {
                        c = '\t';
                        break;
                    }
                    break;
                case -1225497655:
                    if (str.equals("translationZ")) {
                        c = '\n';
                        break;
                    }
                    break;
                case -1001078227:
                    if (str.equals(androidx.core.app.p.al)) {
                        c = '\f';
                        break;
                    }
                    break;
                case -908189618:
                    if (str.equals("scaleX")) {
                        c = 6;
                        break;
                    }
                    break;
                case -908189617:
                    if (str.equals("scaleY")) {
                        c = 7;
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
                        c = 5;
                        break;
                    }
                    break;
                case 92909918:
                    if (str.equals("alpha")) {
                        c = 0;
                        break;
                    }
                    break;
                case 156108012:
                    if (str.equals("waveOffset")) {
                        c = 11;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    wVar.a(this.b, this.I);
                    break;
                case 1:
                    wVar.a(this.b, this.J);
                    break;
                case 2:
                    wVar.a(this.b, this.K);
                    break;
                case 3:
                    wVar.a(this.b, this.M);
                    break;
                case 4:
                    wVar.a(this.b, this.N);
                    break;
                case 5:
                    wVar.a(this.b, this.L);
                    break;
                case 6:
                    wVar.a(this.b, this.O);
                    break;
                case 7:
                    wVar.a(this.b, this.P);
                    break;
                case '\b':
                    wVar.a(this.b, this.Q);
                    break;
                case '\t':
                    wVar.a(this.b, this.R);
                    break;
                case '\n':
                    wVar.a(this.b, this.S);
                    break;
                case 11:
                    wVar.a(this.b, this.F);
                    break;
                case '\f':
                    wVar.a(this.b, this.G);
                    break;
                default:
                    Log.v("KeyCycle", "WARNING KeyCycle UNKNOWN  " + str);
                    break;
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class a {

        /* renamed from: a, reason: collision with root package name */
        private static final int f609a = 1;
        private static final int b = 2;
        private static final int c = 3;
        private static final int d = 4;
        private static final int e = 5;
        private static final int f = 6;
        private static final int g = 7;
        private static final int h = 8;
        private static final int i = 9;
        private static final int j = 10;
        private static final int k = 11;
        private static final int l = 12;
        private static final int m = 13;
        private static final int n = 14;
        private static final int o = 15;
        private static final int p = 16;
        private static final int q = 17;
        private static final int r = 18;
        private static final int s = 19;
        private static final int t = 20;
        private static SparseIntArray u = new SparseIntArray();

        private a() {
        }

        static {
            u.append(m.C0052m.KeyCycle_motionTarget, 1);
            u.append(m.C0052m.KeyCycle_framePosition, 2);
            u.append(m.C0052m.KeyCycle_transitionEasing, 3);
            u.append(m.C0052m.KeyCycle_curveFit, 4);
            u.append(m.C0052m.KeyCycle_waveShape, 5);
            u.append(m.C0052m.KeyCycle_wavePeriod, 6);
            u.append(m.C0052m.KeyCycle_waveOffset, 7);
            u.append(m.C0052m.KeyCycle_waveVariesBy, 8);
            u.append(m.C0052m.KeyCycle_android_alpha, 9);
            u.append(m.C0052m.KeyCycle_android_elevation, 10);
            u.append(m.C0052m.KeyCycle_android_rotation, 11);
            u.append(m.C0052m.KeyCycle_android_rotationX, 12);
            u.append(m.C0052m.KeyCycle_android_rotationY, 13);
            u.append(m.C0052m.KeyCycle_transitionPathRotate, 14);
            u.append(m.C0052m.KeyCycle_android_scaleX, 15);
            u.append(m.C0052m.KeyCycle_android_scaleY, 16);
            u.append(m.C0052m.KeyCycle_android_translationX, 17);
            u.append(m.C0052m.KeyCycle_android_translationY, 18);
            u.append(m.C0052m.KeyCycle_android_translationZ, 19);
            u.append(m.C0052m.KeyCycle_motionProgress, 20);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void b(h hVar, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = typedArray.getIndex(i2);
                switch (u.get(index)) {
                    case 1:
                        if (s.h) {
                            hVar.c = typedArray.getResourceId(index, hVar.c);
                            if (hVar.c == -1) {
                                hVar.d = typedArray.getString(index);
                                break;
                            } else {
                                break;
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            hVar.d = typedArray.getString(index);
                            break;
                        } else {
                            hVar.c = typedArray.getResourceId(index, hVar.c);
                            break;
                        }
                    case 2:
                        hVar.b = typedArray.getInt(index, hVar.b);
                        break;
                    case 3:
                        hVar.B = typedArray.getString(index);
                        break;
                    case 4:
                        hVar.C = typedArray.getInteger(index, hVar.C);
                        break;
                    case 5:
                        hVar.D = typedArray.getInt(index, hVar.D);
                        break;
                    case 6:
                        hVar.E = typedArray.getFloat(index, hVar.E);
                        break;
                    case 7:
                        if (typedArray.peekValue(index).type == 5) {
                            hVar.F = typedArray.getDimension(index, hVar.F);
                            break;
                        } else {
                            hVar.F = typedArray.getFloat(index, hVar.F);
                            break;
                        }
                    case 8:
                        hVar.H = typedArray.getInt(index, hVar.H);
                        break;
                    case 9:
                        hVar.I = typedArray.getFloat(index, hVar.I);
                        break;
                    case 10:
                        hVar.J = typedArray.getDimension(index, hVar.J);
                        break;
                    case 11:
                        hVar.K = typedArray.getFloat(index, hVar.K);
                        break;
                    case 12:
                        hVar.M = typedArray.getFloat(index, hVar.M);
                        break;
                    case 13:
                        hVar.N = typedArray.getFloat(index, hVar.N);
                        break;
                    case 14:
                        hVar.L = typedArray.getFloat(index, hVar.L);
                        break;
                    case 15:
                        hVar.O = typedArray.getFloat(index, hVar.O);
                        break;
                    case 16:
                        hVar.P = typedArray.getFloat(index, hVar.P);
                        break;
                    case 17:
                        hVar.Q = typedArray.getDimension(index, hVar.Q);
                        break;
                    case 18:
                        hVar.R = typedArray.getDimension(index, hVar.R);
                        break;
                    case 19:
                        if (Build.VERSION.SDK_INT >= 21) {
                            hVar.S = typedArray.getDimension(index, hVar.S);
                            break;
                        } else {
                            break;
                        }
                    case 20:
                        hVar.G = typedArray.getFloat(index, hVar.G);
                        break;
                    default:
                        Log.e("KeyCycle", "unused attribute 0x" + Integer.toHexString(index) + "   " + u.get(index));
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
            case 156108012:
                if (str.equals("waveOffset")) {
                    c = 15;
                    break;
                }
                c = 65535;
                break;
            case 184161818:
                if (str.equals("wavePeriod")) {
                    c = 14;
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
                this.I = a(obj);
                return;
            case 1:
                this.C = b(obj);
                return;
            case 2:
                this.J = a(obj);
                return;
            case 3:
                this.G = a(obj);
                return;
            case 4:
                this.K = a(obj);
                return;
            case 5:
                this.M = a(obj);
                return;
            case 6:
                this.N = a(obj);
                return;
            case 7:
                this.O = a(obj);
                return;
            case '\b':
                this.P = a(obj);
                return;
            case '\t':
                this.B = obj.toString();
                return;
            case '\n':
                this.L = a(obj);
                return;
            case 11:
                this.Q = a(obj);
                return;
            case '\f':
                this.R = a(obj);
                return;
            case '\r':
                this.S = a(obj);
                return;
            case 14:
                this.E = a(obj);
                return;
            case 15:
                this.F = a(obj);
                return;
            default:
                return;
        }
    }
}
