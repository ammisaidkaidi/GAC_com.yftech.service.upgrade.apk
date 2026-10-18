package androidx.d.e;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Color;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.d.b.b.u;
import androidx.d.e.b;
import androidx.d.e.d;
import androidx.d.e.h;
import androidx.d.e.m;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: /home/user/work/dex/classes.dex */
public class g {
    private static final String A = "XML parser error must be within a Constraint ";
    private static final boolean E = false;
    private static final int G = 1;
    private static final int J = 1;
    private static final int K = 2;
    private static final int L = 3;
    private static final int M = 4;
    private static final int N = 5;
    private static final int O = 6;
    private static final int P = 7;
    private static final int Q = 8;
    private static final int R = 9;
    private static final int S = 10;
    private static final int T = 11;
    private static final int U = 12;
    private static final int V = 13;
    private static final int W = 14;
    private static final int X = 15;
    private static final int Y = 16;
    private static final int Z = 17;

    /* renamed from: a, reason: collision with root package name */
    public static final int f725a = -1;
    private static final int aA = 44;
    private static final int aB = 45;
    private static final int aC = 46;
    private static final int aD = 47;
    private static final int aE = 48;
    private static final int aF = 49;
    private static final int aG = 50;
    private static final int aH = 51;
    private static final int aI = 52;
    private static final int aJ = 53;
    private static final int aK = 54;
    private static final int aL = 55;
    private static final int aM = 56;
    private static final int aN = 57;
    private static final int aO = 58;
    private static final int aP = 59;
    private static final int aQ = 60;
    private static final int aR = 61;
    private static final int aS = 62;
    private static final int aT = 63;
    private static final int aU = 64;
    private static final int aV = 65;
    private static final int aW = 66;
    private static final int aX = 67;
    private static final int aY = 68;
    private static final int aZ = 69;
    private static final int aa = 18;
    private static final int ab = 19;
    private static final int ac = 20;
    private static final int ad = 21;
    private static final int ae = 22;
    private static final int af = 23;
    private static final int ag = 24;
    private static final int ah = 25;
    private static final int ai = 26;
    private static final int aj = 27;
    private static final int ak = 28;
    private static final int al = 29;
    private static final int am = 30;
    private static final int an = 31;
    private static final int ao = 32;
    private static final int ap = 33;
    private static final int aq = 34;
    private static final int ar = 35;
    private static final int as = 36;
    private static final int at = 37;
    private static final int au = 38;
    private static final int av = 39;
    private static final int aw = 40;
    private static final int ax = 41;
    private static final int ay = 42;
    private static final int az = 43;
    public static final int b = 0;
    private static final int ba = 70;
    private static final int bb = 71;
    private static final int bc = 72;
    private static final int bd = 73;
    private static final int be = 74;
    private static final int bf = 75;
    private static final int bg = 76;
    private static final int bh = 77;
    private static final int bi = 78;
    private static final int bj = 79;
    private static final int bk = 80;
    private static final int bl = 81;
    private static final int bm = 82;
    public static final int c = -2;
    public static final int d = 1;
    public static final int e = 0;
    public static final int f = 0;
    public static final int g = 0;
    public static final int h = 1;
    public static final int i = 0;
    public static final int j = 1;
    public static final int k = 0;
    public static final int l = 4;
    public static final int m = 8;
    public static final int n = 1;
    public static final int o = 2;
    public static final int p = 3;
    public static final int q = 4;
    public static final int r = 5;
    public static final int s = 6;
    public static final int t = 7;
    public static final int u = 0;
    public static final int v = 1;
    public static final int w = 0;
    public static final int x = 1;
    public static final int y = 2;
    private static final String z = "ConstraintSet";
    private boolean B;
    private HashMap<String, androidx.d.e.b> C = new HashMap<>();
    private boolean D = true;
    private HashMap<Integer, a> H = new HashMap<>();
    private static final int[] F = {0, 4, 8};
    private static SparseIntArray I = new SparseIntArray();

    private String m(int i2) {
        switch (i2) {
            case 1:
                return "left";
            case 2:
                return "right";
            case 3:
                return "top";
            case 4:
                return "bottom";
            case 5:
                return "baseline";
            case 6:
                return "start";
            case 7:
                return "end";
            default:
                return "undefined";
        }
    }

    static {
        I.append(m.C0052m.Constraint_layout_constraintLeft_toLeftOf, 25);
        I.append(m.C0052m.Constraint_layout_constraintLeft_toRightOf, 26);
        I.append(m.C0052m.Constraint_layout_constraintRight_toLeftOf, 29);
        I.append(m.C0052m.Constraint_layout_constraintRight_toRightOf, 30);
        I.append(m.C0052m.Constraint_layout_constraintTop_toTopOf, 36);
        I.append(m.C0052m.Constraint_layout_constraintTop_toBottomOf, 35);
        I.append(m.C0052m.Constraint_layout_constraintBottom_toTopOf, 4);
        I.append(m.C0052m.Constraint_layout_constraintBottom_toBottomOf, 3);
        I.append(m.C0052m.Constraint_layout_constraintBaseline_toBaselineOf, 1);
        I.append(m.C0052m.Constraint_layout_editor_absoluteX, 6);
        I.append(m.C0052m.Constraint_layout_editor_absoluteY, 7);
        I.append(m.C0052m.Constraint_layout_constraintGuide_begin, 17);
        I.append(m.C0052m.Constraint_layout_constraintGuide_end, 18);
        I.append(m.C0052m.Constraint_layout_constraintGuide_percent, 19);
        I.append(m.C0052m.Constraint_android_orientation, 27);
        I.append(m.C0052m.Constraint_layout_constraintStart_toEndOf, 32);
        I.append(m.C0052m.Constraint_layout_constraintStart_toStartOf, 33);
        I.append(m.C0052m.Constraint_layout_constraintEnd_toStartOf, 10);
        I.append(m.C0052m.Constraint_layout_constraintEnd_toEndOf, 9);
        I.append(m.C0052m.Constraint_layout_goneMarginLeft, 13);
        I.append(m.C0052m.Constraint_layout_goneMarginTop, 16);
        I.append(m.C0052m.Constraint_layout_goneMarginRight, 14);
        I.append(m.C0052m.Constraint_layout_goneMarginBottom, 11);
        I.append(m.C0052m.Constraint_layout_goneMarginStart, 15);
        I.append(m.C0052m.Constraint_layout_goneMarginEnd, 12);
        I.append(m.C0052m.Constraint_layout_constraintVertical_weight, 40);
        I.append(m.C0052m.Constraint_layout_constraintHorizontal_weight, 39);
        I.append(m.C0052m.Constraint_layout_constraintHorizontal_chainStyle, 41);
        I.append(m.C0052m.Constraint_layout_constraintVertical_chainStyle, 42);
        I.append(m.C0052m.Constraint_layout_constraintHorizontal_bias, 20);
        I.append(m.C0052m.Constraint_layout_constraintVertical_bias, 37);
        I.append(m.C0052m.Constraint_layout_constraintDimensionRatio, 5);
        I.append(m.C0052m.Constraint_layout_constraintLeft_creator, 82);
        I.append(m.C0052m.Constraint_layout_constraintTop_creator, 82);
        I.append(m.C0052m.Constraint_layout_constraintRight_creator, 82);
        I.append(m.C0052m.Constraint_layout_constraintBottom_creator, 82);
        I.append(m.C0052m.Constraint_layout_constraintBaseline_creator, 82);
        I.append(m.C0052m.Constraint_android_layout_marginLeft, 24);
        I.append(m.C0052m.Constraint_android_layout_marginRight, 28);
        I.append(m.C0052m.Constraint_android_layout_marginStart, 31);
        I.append(m.C0052m.Constraint_android_layout_marginEnd, 8);
        I.append(m.C0052m.Constraint_android_layout_marginTop, 34);
        I.append(m.C0052m.Constraint_android_layout_marginBottom, 2);
        I.append(m.C0052m.Constraint_android_layout_width, 23);
        I.append(m.C0052m.Constraint_android_layout_height, 21);
        I.append(m.C0052m.Constraint_android_visibility, 22);
        I.append(m.C0052m.Constraint_android_alpha, 43);
        I.append(m.C0052m.Constraint_android_elevation, 44);
        I.append(m.C0052m.Constraint_android_rotationX, 45);
        I.append(m.C0052m.Constraint_android_rotationY, 46);
        I.append(m.C0052m.Constraint_android_rotation, 60);
        I.append(m.C0052m.Constraint_android_scaleX, 47);
        I.append(m.C0052m.Constraint_android_scaleY, 48);
        I.append(m.C0052m.Constraint_android_transformPivotX, 49);
        I.append(m.C0052m.Constraint_android_transformPivotY, 50);
        I.append(m.C0052m.Constraint_android_translationX, 51);
        I.append(m.C0052m.Constraint_android_translationY, 52);
        I.append(m.C0052m.Constraint_android_translationZ, 53);
        I.append(m.C0052m.Constraint_layout_constraintWidth_default, 54);
        I.append(m.C0052m.Constraint_layout_constraintHeight_default, 55);
        I.append(m.C0052m.Constraint_layout_constraintWidth_max, 56);
        I.append(m.C0052m.Constraint_layout_constraintHeight_max, 57);
        I.append(m.C0052m.Constraint_layout_constraintWidth_min, 58);
        I.append(m.C0052m.Constraint_layout_constraintHeight_min, 59);
        I.append(m.C0052m.Constraint_layout_constraintCircle, 61);
        I.append(m.C0052m.Constraint_layout_constraintCircleRadius, 62);
        I.append(m.C0052m.Constraint_layout_constraintCircleAngle, 63);
        I.append(m.C0052m.Constraint_animate_relativeTo, 64);
        I.append(m.C0052m.Constraint_transitionEasing, 65);
        I.append(m.C0052m.Constraint_drawPath, 66);
        I.append(m.C0052m.Constraint_transitionPathRotate, 67);
        I.append(m.C0052m.Constraint_motionStagger, 79);
        I.append(m.C0052m.Constraint_android_id, 38);
        I.append(m.C0052m.Constraint_motionProgress, 68);
        I.append(m.C0052m.Constraint_layout_constraintWidth_percent, 69);
        I.append(m.C0052m.Constraint_layout_constraintHeight_percent, 70);
        I.append(m.C0052m.Constraint_chainUseRtl, 71);
        I.append(m.C0052m.Constraint_barrierDirection, 72);
        I.append(m.C0052m.Constraint_barrierMargin, 73);
        I.append(m.C0052m.Constraint_constraint_referenced_ids, 74);
        I.append(m.C0052m.Constraint_barrierAllowsGoneWidgets, 75);
        I.append(m.C0052m.Constraint_pathMotionArc, 76);
        I.append(m.C0052m.Constraint_layout_constraintTag, 77);
        I.append(m.C0052m.Constraint_visibilityMode, 78);
        I.append(m.C0052m.Constraint_layout_constrainedWidth, 80);
        I.append(m.C0052m.Constraint_layout_constrainedHeight, 81);
    }

    public HashMap<String, androidx.d.e.b> a() {
        return this.C;
    }

    public a a(int i2) {
        return l(i2);
    }

    public void a(g gVar) {
        for (Integer num : gVar.H.keySet()) {
            int intValue = num.intValue();
            a aVar = gVar.H.get(num);
            if (!this.H.containsKey(Integer.valueOf(intValue))) {
                this.H.put(Integer.valueOf(intValue), new a());
            }
            a aVar2 = this.H.get(Integer.valueOf(intValue));
            if (!aVar2.d.b) {
                aVar2.d.a(aVar.d);
            }
            if (!aVar2.b.f729a) {
                aVar2.b.a(aVar.b);
            }
            if (!aVar2.e.f730a) {
                aVar2.e.a(aVar.e);
            }
            if (!aVar2.c.f728a) {
                aVar2.c.a(aVar.c);
            }
            for (String str : aVar.f.keySet()) {
                if (!aVar2.f.containsKey(str)) {
                    aVar2.f.put(str, aVar.f.get(str));
                }
            }
        }
    }

    public void a(androidx.d.e.d dVar) {
        int childCount = dVar.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = dVar.getChildAt(i2);
            d.a aVar = (d.a) childAt.getLayoutParams();
            int id = childAt.getId();
            if (this.D && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.H.containsKey(Integer.valueOf(id))) {
                this.H.put(Integer.valueOf(id), new a());
            }
            a aVar2 = this.H.get(Integer.valueOf(id));
            if (!aVar2.d.b) {
                aVar2.a(id, aVar);
                if (childAt instanceof androidx.d.e.c) {
                    aVar2.d.af = ((androidx.d.e.c) childAt).getReferencedIds();
                    if (childAt instanceof androidx.d.e.a) {
                        androidx.d.e.a aVar3 = (androidx.d.e.a) childAt;
                        aVar2.d.ak = aVar3.a();
                        aVar2.d.ac = aVar3.getType();
                        aVar2.d.ad = aVar3.getMargin();
                    }
                }
                aVar2.d.b = true;
            }
            if (!aVar2.b.f729a) {
                aVar2.b.b = childAt.getVisibility();
                aVar2.b.d = childAt.getAlpha();
                aVar2.b.f729a = true;
            }
            if (Build.VERSION.SDK_INT >= 17 && !aVar2.e.f730a) {
                aVar2.e.f730a = true;
                aVar2.e.b = childAt.getRotation();
                aVar2.e.c = childAt.getRotationX();
                aVar2.e.d = childAt.getRotationY();
                aVar2.e.e = childAt.getScaleX();
                aVar2.e.f = childAt.getScaleY();
                float pivotX = childAt.getPivotX();
                float pivotY = childAt.getPivotY();
                if (pivotX != 0.0d || pivotY != 0.0d) {
                    aVar2.e.g = pivotX;
                    aVar2.e.h = pivotY;
                }
                aVar2.e.i = childAt.getTranslationX();
                aVar2.e.j = childAt.getTranslationY();
                if (Build.VERSION.SDK_INT >= 21) {
                    aVar2.e.k = childAt.getTranslationZ();
                    if (aVar2.e.l) {
                        aVar2.e.m = childAt.getElevation();
                    }
                }
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class b {
        private static final int aA = 15;
        private static final int aB = 16;
        private static final int aC = 17;
        private static final int aD = 18;
        private static final int aE = 19;
        private static final int aF = 20;
        private static final int aG = 21;
        private static final int aH = 22;
        private static final int aI = 23;
        private static final int aJ = 24;
        private static final int aK = 25;
        private static final int aL = 26;
        private static final int aM = 27;
        private static final int aN = 28;
        private static final int aO = 29;
        private static final int aP = 30;
        private static final int aQ = 31;
        private static final int aR = 32;
        private static final int aS = 33;
        private static final int aT = 34;
        private static final int aU = 35;
        private static final int aV = 36;
        private static final int aW = 37;
        private static final int aX = 38;
        private static final int aY = 39;
        private static final int aZ = 40;
        private static SparseIntArray al = new SparseIntArray();
        private static final int am = 1;
        private static final int an = 2;
        private static final int ao = 3;
        private static final int ap = 4;
        private static final int aq = 5;
        private static final int ar = 6;
        private static final int as = 7;
        private static final int at = 8;
        private static final int au = 9;
        private static final int av = 10;
        private static final int aw = 11;
        private static final int ax = 12;
        private static final int ay = 13;
        private static final int az = 14;
        private static final int ba = 61;
        private static final int bb = 62;
        private static final int bc = 63;
        private static final int bd = 69;
        private static final int be = 70;
        private static final int bf = 71;
        private static final int bg = 72;
        private static final int bh = 73;
        private static final int bi = 74;
        private static final int bj = 75;
        private static final int bk = 76;
        public static final int e = -1;
        public int[] af;
        public String ag;
        public String ah;
        public int c;
        public int d;

        /* renamed from: a, reason: collision with root package name */
        public boolean f727a = false;
        public boolean b = false;
        public int f = -1;
        public int g = -1;
        public float h = -1.0f;
        public int i = -1;
        public int j = -1;
        public int k = -1;
        public int l = -1;
        public int m = -1;
        public int n = -1;
        public int o = -1;
        public int p = -1;
        public int q = -1;
        public int r = -1;
        public int s = -1;
        public int t = -1;
        public int u = -1;
        public float v = 0.5f;
        public float w = 0.5f;
        public String x = null;
        public int y = -1;
        public int z = 0;
        public float A = 0.0f;
        public int B = -1;
        public int C = -1;
        public int D = -1;
        public int E = -1;
        public int F = -1;
        public int G = -1;
        public int H = -1;
        public int I = -1;
        public int J = -1;
        public int K = -1;
        public int L = -1;
        public int M = -1;
        public int N = -1;
        public int O = -1;
        public int P = -1;
        public float Q = -1.0f;
        public float R = -1.0f;
        public int S = 0;
        public int T = 0;
        public int U = 0;
        public int V = 0;
        public int W = -1;
        public int X = -1;
        public int Y = -1;
        public int Z = -1;
        public float aa = 1.0f;
        public float ab = 1.0f;
        public int ac = -1;
        public int ad = 0;
        public int ae = -1;
        public boolean ai = false;
        public boolean aj = false;
        public boolean ak = true;

        public void a(b bVar) {
            this.f727a = bVar.f727a;
            this.c = bVar.c;
            this.b = bVar.b;
            this.d = bVar.d;
            this.f = bVar.f;
            this.g = bVar.g;
            this.h = bVar.h;
            this.i = bVar.i;
            this.j = bVar.j;
            this.k = bVar.k;
            this.l = bVar.l;
            this.m = bVar.m;
            this.n = bVar.n;
            this.o = bVar.o;
            this.p = bVar.p;
            this.q = bVar.q;
            this.r = bVar.r;
            this.s = bVar.s;
            this.t = bVar.t;
            this.u = bVar.u;
            this.v = bVar.v;
            this.w = bVar.w;
            this.x = bVar.x;
            this.y = bVar.y;
            this.z = bVar.z;
            this.A = bVar.A;
            this.B = bVar.B;
            this.C = bVar.C;
            this.D = bVar.D;
            this.E = bVar.E;
            this.F = bVar.F;
            this.G = bVar.G;
            this.H = bVar.H;
            this.I = bVar.I;
            this.J = bVar.J;
            this.K = bVar.K;
            this.L = bVar.L;
            this.M = bVar.M;
            this.N = bVar.N;
            this.O = bVar.O;
            this.P = bVar.P;
            this.Q = bVar.Q;
            this.R = bVar.R;
            this.S = bVar.S;
            this.T = bVar.T;
            this.U = bVar.U;
            this.V = bVar.V;
            this.W = bVar.W;
            this.X = bVar.X;
            this.Y = bVar.Y;
            this.Z = bVar.Z;
            this.aa = bVar.aa;
            this.ab = bVar.ab;
            this.ac = bVar.ac;
            this.ad = bVar.ad;
            this.ae = bVar.ae;
            this.ah = bVar.ah;
            if (bVar.af != null) {
                this.af = Arrays.copyOf(bVar.af, bVar.af.length);
            } else {
                this.af = null;
            }
            this.ag = bVar.ag;
            this.ai = bVar.ai;
            this.aj = bVar.aj;
            this.ak = bVar.ak;
        }

        static {
            al.append(m.C0052m.Layout_layout_constraintLeft_toLeftOf, 24);
            al.append(m.C0052m.Layout_layout_constraintLeft_toRightOf, 25);
            al.append(m.C0052m.Layout_layout_constraintRight_toLeftOf, 28);
            al.append(m.C0052m.Layout_layout_constraintRight_toRightOf, 29);
            al.append(m.C0052m.Layout_layout_constraintTop_toTopOf, 35);
            al.append(m.C0052m.Layout_layout_constraintTop_toBottomOf, 34);
            al.append(m.C0052m.Layout_layout_constraintBottom_toTopOf, 4);
            al.append(m.C0052m.Layout_layout_constraintBottom_toBottomOf, 3);
            al.append(m.C0052m.Layout_layout_constraintBaseline_toBaselineOf, 1);
            al.append(m.C0052m.Layout_layout_editor_absoluteX, 6);
            al.append(m.C0052m.Layout_layout_editor_absoluteY, 7);
            al.append(m.C0052m.Layout_layout_constraintGuide_begin, 17);
            al.append(m.C0052m.Layout_layout_constraintGuide_end, 18);
            al.append(m.C0052m.Layout_layout_constraintGuide_percent, 19);
            al.append(m.C0052m.Layout_android_orientation, 26);
            al.append(m.C0052m.Layout_layout_constraintStart_toEndOf, 31);
            al.append(m.C0052m.Layout_layout_constraintStart_toStartOf, 32);
            al.append(m.C0052m.Layout_layout_constraintEnd_toStartOf, 10);
            al.append(m.C0052m.Layout_layout_constraintEnd_toEndOf, 9);
            al.append(m.C0052m.Layout_layout_goneMarginLeft, 13);
            al.append(m.C0052m.Layout_layout_goneMarginTop, 16);
            al.append(m.C0052m.Layout_layout_goneMarginRight, 14);
            al.append(m.C0052m.Layout_layout_goneMarginBottom, 11);
            al.append(m.C0052m.Layout_layout_goneMarginStart, 15);
            al.append(m.C0052m.Layout_layout_goneMarginEnd, 12);
            al.append(m.C0052m.Layout_layout_constraintVertical_weight, 38);
            al.append(m.C0052m.Layout_layout_constraintHorizontal_weight, 37);
            al.append(m.C0052m.Layout_layout_constraintHorizontal_chainStyle, 39);
            al.append(m.C0052m.Layout_layout_constraintVertical_chainStyle, 40);
            al.append(m.C0052m.Layout_layout_constraintHorizontal_bias, 20);
            al.append(m.C0052m.Layout_layout_constraintVertical_bias, 36);
            al.append(m.C0052m.Layout_layout_constraintDimensionRatio, 5);
            al.append(m.C0052m.Layout_layout_constraintLeft_creator, 76);
            al.append(m.C0052m.Layout_layout_constraintTop_creator, 76);
            al.append(m.C0052m.Layout_layout_constraintRight_creator, 76);
            al.append(m.C0052m.Layout_layout_constraintBottom_creator, 76);
            al.append(m.C0052m.Layout_layout_constraintBaseline_creator, 76);
            al.append(m.C0052m.Layout_android_layout_marginLeft, 23);
            al.append(m.C0052m.Layout_android_layout_marginRight, 27);
            al.append(m.C0052m.Layout_android_layout_marginStart, 30);
            al.append(m.C0052m.Layout_android_layout_marginEnd, 8);
            al.append(m.C0052m.Layout_android_layout_marginTop, 33);
            al.append(m.C0052m.Layout_android_layout_marginBottom, 2);
            al.append(m.C0052m.Layout_android_layout_width, 22);
            al.append(m.C0052m.Layout_android_layout_height, 21);
            al.append(m.C0052m.Layout_layout_constraintCircle, 61);
            al.append(m.C0052m.Layout_layout_constraintCircleRadius, 62);
            al.append(m.C0052m.Layout_layout_constraintCircleAngle, 63);
            al.append(m.C0052m.Layout_layout_constraintWidth_percent, 69);
            al.append(m.C0052m.Layout_layout_constraintHeight_percent, 70);
            al.append(m.C0052m.Layout_chainUseRtl, 71);
            al.append(m.C0052m.Layout_barrierDirection, 72);
            al.append(m.C0052m.Layout_barrierMargin, 73);
            al.append(m.C0052m.Layout_constraint_referenced_ids, 74);
            al.append(m.C0052m.Layout_barrierAllowsGoneWidgets, 75);
        }

        void a(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, m.C0052m.Layout);
            this.b = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                int i2 = al.get(index);
                switch (i2) {
                    case 1:
                        this.q = g.b(obtainStyledAttributes, index, this.q);
                        break;
                    case 2:
                        this.H = obtainStyledAttributes.getDimensionPixelSize(index, this.H);
                        break;
                    case 3:
                        this.p = g.b(obtainStyledAttributes, index, this.p);
                        break;
                    case 4:
                        this.o = g.b(obtainStyledAttributes, index, this.o);
                        break;
                    case 5:
                        this.x = obtainStyledAttributes.getString(index);
                        break;
                    case 6:
                        this.B = obtainStyledAttributes.getDimensionPixelOffset(index, this.B);
                        break;
                    case 7:
                        this.C = obtainStyledAttributes.getDimensionPixelOffset(index, this.C);
                        break;
                    case 8:
                        if (Build.VERSION.SDK_INT >= 17) {
                            this.I = obtainStyledAttributes.getDimensionPixelSize(index, this.I);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        this.u = g.b(obtainStyledAttributes, index, this.u);
                        break;
                    case 10:
                        this.t = g.b(obtainStyledAttributes, index, this.t);
                        break;
                    case 11:
                        this.N = obtainStyledAttributes.getDimensionPixelSize(index, this.N);
                        break;
                    case 12:
                        this.O = obtainStyledAttributes.getDimensionPixelSize(index, this.O);
                        break;
                    case 13:
                        this.K = obtainStyledAttributes.getDimensionPixelSize(index, this.K);
                        break;
                    case 14:
                        this.M = obtainStyledAttributes.getDimensionPixelSize(index, this.M);
                        break;
                    case 15:
                        this.P = obtainStyledAttributes.getDimensionPixelSize(index, this.P);
                        break;
                    case 16:
                        this.L = obtainStyledAttributes.getDimensionPixelSize(index, this.L);
                        break;
                    case 17:
                        this.f = obtainStyledAttributes.getDimensionPixelOffset(index, this.f);
                        break;
                    case 18:
                        this.g = obtainStyledAttributes.getDimensionPixelOffset(index, this.g);
                        break;
                    case 19:
                        this.h = obtainStyledAttributes.getFloat(index, this.h);
                        break;
                    case 20:
                        this.v = obtainStyledAttributes.getFloat(index, this.v);
                        break;
                    case 21:
                        this.d = obtainStyledAttributes.getLayoutDimension(index, this.d);
                        break;
                    case 22:
                        this.c = obtainStyledAttributes.getLayoutDimension(index, this.c);
                        break;
                    case 23:
                        this.E = obtainStyledAttributes.getDimensionPixelSize(index, this.E);
                        break;
                    case 24:
                        this.i = g.b(obtainStyledAttributes, index, this.i);
                        break;
                    case 25:
                        this.j = g.b(obtainStyledAttributes, index, this.j);
                        break;
                    case 26:
                        this.D = obtainStyledAttributes.getInt(index, this.D);
                        break;
                    case 27:
                        this.F = obtainStyledAttributes.getDimensionPixelSize(index, this.F);
                        break;
                    case 28:
                        this.k = g.b(obtainStyledAttributes, index, this.k);
                        break;
                    case 29:
                        this.l = g.b(obtainStyledAttributes, index, this.l);
                        break;
                    case 30:
                        if (Build.VERSION.SDK_INT >= 17) {
                            this.J = obtainStyledAttributes.getDimensionPixelSize(index, this.J);
                            break;
                        } else {
                            break;
                        }
                    case 31:
                        this.r = g.b(obtainStyledAttributes, index, this.r);
                        break;
                    case 32:
                        this.s = g.b(obtainStyledAttributes, index, this.s);
                        break;
                    case 33:
                        this.G = obtainStyledAttributes.getDimensionPixelSize(index, this.G);
                        break;
                    case 34:
                        this.n = g.b(obtainStyledAttributes, index, this.n);
                        break;
                    case 35:
                        this.m = g.b(obtainStyledAttributes, index, this.m);
                        break;
                    case 36:
                        this.w = obtainStyledAttributes.getFloat(index, this.w);
                        break;
                    case 37:
                        this.R = obtainStyledAttributes.getFloat(index, this.R);
                        break;
                    case 38:
                        this.Q = obtainStyledAttributes.getFloat(index, this.Q);
                        break;
                    case 39:
                        this.S = obtainStyledAttributes.getInt(index, this.S);
                        break;
                    case 40:
                        this.T = obtainStyledAttributes.getInt(index, this.T);
                        break;
                    default:
                        switch (i2) {
                            case 54:
                                this.U = obtainStyledAttributes.getInt(index, this.U);
                                break;
                            case 55:
                                this.V = obtainStyledAttributes.getInt(index, this.V);
                                break;
                            case 56:
                                this.W = obtainStyledAttributes.getDimensionPixelSize(index, this.W);
                                break;
                            case 57:
                                this.X = obtainStyledAttributes.getDimensionPixelSize(index, this.X);
                                break;
                            case 58:
                                this.Y = obtainStyledAttributes.getDimensionPixelSize(index, this.Y);
                                break;
                            case 59:
                                this.Z = obtainStyledAttributes.getDimensionPixelSize(index, this.Z);
                                break;
                            default:
                                switch (i2) {
                                    case 61:
                                        this.y = g.b(obtainStyledAttributes, index, this.y);
                                        break;
                                    case 62:
                                        this.z = obtainStyledAttributes.getDimensionPixelSize(index, this.z);
                                        break;
                                    case 63:
                                        this.A = obtainStyledAttributes.getFloat(index, this.A);
                                        break;
                                    default:
                                        switch (i2) {
                                            case 69:
                                                this.aa = obtainStyledAttributes.getFloat(index, 1.0f);
                                                break;
                                            case 70:
                                                this.ab = obtainStyledAttributes.getFloat(index, 1.0f);
                                                break;
                                            case 71:
                                                Log.e(g.z, "CURRENTLY UNSUPPORTED");
                                                break;
                                            case 72:
                                                this.ac = obtainStyledAttributes.getInt(index, this.ac);
                                                break;
                                            case 73:
                                                this.ad = obtainStyledAttributes.getDimensionPixelSize(index, this.ad);
                                                break;
                                            case 74:
                                                this.ag = obtainStyledAttributes.getString(index);
                                                break;
                                            case 75:
                                                this.ak = obtainStyledAttributes.getBoolean(index, this.ak);
                                                break;
                                            case 76:
                                                Log.w(g.z, "unused attribute 0x" + Integer.toHexString(index) + "   " + al.get(index));
                                                break;
                                            case 77:
                                                this.ah = obtainStyledAttributes.getString(index);
                                                break;
                                            default:
                                                switch (i2) {
                                                    case 80:
                                                        this.ai = obtainStyledAttributes.getBoolean(index, this.ai);
                                                        break;
                                                    case 81:
                                                        this.aj = obtainStyledAttributes.getBoolean(index, this.aj);
                                                        break;
                                                    default:
                                                        Log.w(g.z, "Unknown attribute 0x" + Integer.toHexString(index) + "   " + al.get(index));
                                                        break;
                                                }
                                        }
                                }
                        }
                }
            }
            obtainStyledAttributes.recycle();
        }

        public void a(u uVar, StringBuilder sb) {
            Field[] declaredFields = getClass().getDeclaredFields();
            sb.append("\n");
            for (Field field : declaredFields) {
                String name = field.getName();
                if (!Modifier.isStatic(field.getModifiers())) {
                    try {
                        Object obj = field.get(this);
                        Class<?> type = field.getType();
                        if (type == Integer.TYPE) {
                            Integer num = (Integer) obj;
                            if (num.intValue() != -1) {
                                Object f = uVar.f(num.intValue());
                                sb.append("    ");
                                sb.append(name);
                                sb.append(" = \"");
                                if (f == null) {
                                    f = num;
                                }
                                sb.append(f);
                                sb.append("\"\n");
                            }
                        } else if (type == Float.TYPE) {
                            Float f2 = (Float) obj;
                            if (f2.floatValue() != -1.0f) {
                                sb.append("    ");
                                sb.append(name);
                                sb.append(" = \"");
                                sb.append(f2);
                                sb.append("\"\n");
                            }
                        }
                    } catch (IllegalAccessException e2) {
                        e2.printStackTrace();
                    }
                }
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class e {
        private static SparseIntArray n = new SparseIntArray();
        private static final int o = 1;
        private static final int p = 2;
        private static final int q = 3;
        private static final int r = 4;
        private static final int s = 5;
        private static final int t = 6;
        private static final int u = 7;
        private static final int v = 8;
        private static final int w = 9;
        private static final int x = 10;
        private static final int y = 11;

        /* renamed from: a, reason: collision with root package name */
        public boolean f730a = false;
        public float b = 0.0f;
        public float c = 0.0f;
        public float d = 0.0f;
        public float e = 1.0f;
        public float f = 1.0f;
        public float g = Float.NaN;
        public float h = Float.NaN;
        public float i = 0.0f;
        public float j = 0.0f;
        public float k = 0.0f;
        public boolean l = false;
        public float m = 0.0f;

        public void a(e eVar) {
            this.f730a = eVar.f730a;
            this.b = eVar.b;
            this.c = eVar.c;
            this.d = eVar.d;
            this.e = eVar.e;
            this.f = eVar.f;
            this.g = eVar.g;
            this.h = eVar.h;
            this.i = eVar.i;
            this.j = eVar.j;
            this.k = eVar.k;
            this.l = eVar.l;
            this.m = eVar.m;
        }

        static {
            n.append(m.C0052m.Transform_android_rotation, 1);
            n.append(m.C0052m.Transform_android_rotationX, 2);
            n.append(m.C0052m.Transform_android_rotationY, 3);
            n.append(m.C0052m.Transform_android_scaleX, 4);
            n.append(m.C0052m.Transform_android_scaleY, 5);
            n.append(m.C0052m.Transform_android_transformPivotX, 6);
            n.append(m.C0052m.Transform_android_transformPivotY, 7);
            n.append(m.C0052m.Transform_android_translationX, 8);
            n.append(m.C0052m.Transform_android_translationY, 9);
            n.append(m.C0052m.Transform_android_translationZ, 10);
            n.append(m.C0052m.Transform_android_elevation, 11);
        }

        void a(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, m.C0052m.Transform);
            this.f730a = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                switch (n.get(index)) {
                    case 1:
                        this.b = obtainStyledAttributes.getFloat(index, this.b);
                        break;
                    case 2:
                        this.c = obtainStyledAttributes.getFloat(index, this.c);
                        break;
                    case 3:
                        this.d = obtainStyledAttributes.getFloat(index, this.d);
                        break;
                    case 4:
                        this.e = obtainStyledAttributes.getFloat(index, this.e);
                        break;
                    case 5:
                        this.f = obtainStyledAttributes.getFloat(index, this.f);
                        break;
                    case 6:
                        this.g = obtainStyledAttributes.getDimension(index, this.g);
                        break;
                    case 7:
                        this.h = obtainStyledAttributes.getDimension(index, this.h);
                        break;
                    case 8:
                        this.i = obtainStyledAttributes.getDimension(index, this.i);
                        break;
                    case 9:
                        this.j = obtainStyledAttributes.getDimension(index, this.j);
                        break;
                    case 10:
                        if (Build.VERSION.SDK_INT >= 21) {
                            this.k = obtainStyledAttributes.getDimension(index, this.k);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (Build.VERSION.SDK_INT >= 21) {
                            this.l = true;
                            this.m = obtainStyledAttributes.getDimension(index, this.m);
                            break;
                        } else {
                            break;
                        }
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class d {

        /* renamed from: a, reason: collision with root package name */
        public boolean f729a = false;
        public int b = 0;
        public int c = 0;
        public float d = 1.0f;
        public float e = Float.NaN;

        public void a(d dVar) {
            this.f729a = dVar.f729a;
            this.b = dVar.b;
            this.d = dVar.d;
            this.e = dVar.e;
            this.c = dVar.c;
        }

        void a(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, m.C0052m.PropertySet);
            this.f729a = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == m.C0052m.PropertySet_android_alpha) {
                    this.d = obtainStyledAttributes.getFloat(index, this.d);
                } else if (index == m.C0052m.PropertySet_android_visibility) {
                    this.b = obtainStyledAttributes.getInt(index, this.b);
                    this.b = g.F[this.b];
                } else if (index == m.C0052m.PropertySet_visibilityMode) {
                    this.c = obtainStyledAttributes.getInt(index, this.c);
                } else if (index == m.C0052m.PropertySet_motionProgress) {
                    this.e = obtainStyledAttributes.getFloat(index, this.e);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class c {
        private static SparseIntArray h = new SparseIntArray();
        private static final int i = 1;
        private static final int j = 2;
        private static final int k = 3;
        private static final int l = 4;
        private static final int m = 5;
        private static final int n = 6;

        /* renamed from: a, reason: collision with root package name */
        public boolean f728a = false;
        public int b = -1;
        public String c = null;
        public int d = -1;
        public int e = 0;
        public float f = Float.NaN;
        public float g = Float.NaN;

        public void a(c cVar) {
            this.f728a = cVar.f728a;
            this.b = cVar.b;
            this.c = cVar.c;
            this.d = cVar.d;
            this.e = cVar.e;
            this.g = cVar.g;
            this.f = cVar.f;
        }

        static {
            h.append(m.C0052m.Motion_motionPathRotate, 1);
            h.append(m.C0052m.Motion_pathMotionArc, 2);
            h.append(m.C0052m.Motion_transitionEasing, 3);
            h.append(m.C0052m.Motion_drawPath, 4);
            h.append(m.C0052m.Motion_animate_relativeTo, 5);
            h.append(m.C0052m.Motion_motionStagger, 6);
        }

        void a(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, m.C0052m.Motion);
            this.f728a = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                switch (h.get(index)) {
                    case 1:
                        this.g = obtainStyledAttributes.getFloat(index, this.g);
                        break;
                    case 2:
                        this.d = obtainStyledAttributes.getInt(index, this.d);
                        break;
                    case 3:
                        if (obtainStyledAttributes.peekValue(index).type == 3) {
                            this.c = obtainStyledAttributes.getString(index);
                            break;
                        } else {
                            this.c = androidx.d.b.a.c.c[obtainStyledAttributes.getInteger(index, 0)];
                            break;
                        }
                    case 4:
                        this.e = obtainStyledAttributes.getInt(index, 0);
                        break;
                    case 5:
                        this.b = g.b(obtainStyledAttributes, index, this.b);
                        break;
                    case 6:
                        this.f = obtainStyledAttributes.getFloat(index, this.f);
                        break;
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        int f726a;
        public final d b = new d();
        public final c c = new c();
        public final b d = new b();
        public final e e = new e();
        public HashMap<String, androidx.d.e.b> f = new HashMap<>();

        private androidx.d.e.b a(String str, b.a aVar) {
            if (this.f.containsKey(str)) {
                androidx.d.e.b bVar = this.f.get(str);
                if (bVar.a() == aVar) {
                    return bVar;
                }
                throw new IllegalArgumentException("ConstraintAttribute is already a " + bVar.a().name());
            }
            androidx.d.e.b bVar2 = new androidx.d.e.b(str, aVar);
            this.f.put(str, bVar2);
            return bVar2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(String str, String str2) {
            a(str, b.a.STRING_TYPE).a(str2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(String str, float f) {
            a(str, b.a.FLOAT_TYPE).a(f);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(String str, int i) {
            a(str, b.a.INT_TYPE).b(i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(String str, int i) {
            a(str, b.a.COLOR_TYPE).a(i);
        }

        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public a clone() {
            a aVar = new a();
            aVar.d.a(this.d);
            aVar.c.a(this.c);
            aVar.b.a(this.b);
            aVar.e.a(this.e);
            aVar.f726a = this.f726a;
            return aVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(androidx.d.e.c cVar, int i, h.a aVar) {
            a(i, aVar);
            if (cVar instanceof androidx.d.e.a) {
                this.d.ae = 1;
                androidx.d.e.a aVar2 = (androidx.d.e.a) cVar;
                this.d.ac = aVar2.getType();
                this.d.af = aVar2.getReferencedIds();
                this.d.ad = aVar2.getMargin();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(int i, h.a aVar) {
            a(i, (d.a) aVar);
            this.b.d = aVar.aH;
            this.e.b = aVar.aK;
            this.e.c = aVar.aL;
            this.e.d = aVar.aM;
            this.e.e = aVar.aN;
            this.e.f = aVar.aO;
            this.e.g = aVar.aP;
            this.e.h = aVar.aQ;
            this.e.i = aVar.aR;
            this.e.j = aVar.aS;
            this.e.k = aVar.aT;
            this.e.m = aVar.aJ;
            this.e.l = aVar.aI;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(int i, d.a aVar) {
            this.f726a = i;
            this.d.i = aVar.v;
            this.d.j = aVar.w;
            this.d.k = aVar.x;
            this.d.l = aVar.y;
            this.d.m = aVar.z;
            this.d.n = aVar.A;
            this.d.o = aVar.B;
            this.d.p = aVar.C;
            this.d.q = aVar.D;
            this.d.r = aVar.H;
            this.d.s = aVar.I;
            this.d.t = aVar.J;
            this.d.u = aVar.K;
            this.d.v = aVar.R;
            this.d.w = aVar.S;
            this.d.x = aVar.T;
            this.d.y = aVar.E;
            this.d.z = aVar.F;
            this.d.A = aVar.G;
            this.d.B = aVar.ai;
            this.d.C = aVar.aj;
            this.d.D = aVar.ak;
            this.d.h = aVar.u;
            this.d.f = aVar.s;
            this.d.g = aVar.t;
            this.d.c = aVar.width;
            this.d.d = aVar.height;
            this.d.E = aVar.leftMargin;
            this.d.F = aVar.rightMargin;
            this.d.G = aVar.topMargin;
            this.d.H = aVar.bottomMargin;
            this.d.Q = aVar.X;
            this.d.R = aVar.W;
            this.d.T = aVar.Z;
            this.d.S = aVar.Y;
            this.d.ai = aVar.al;
            this.d.aj = aVar.am;
            this.d.U = aVar.aa;
            this.d.V = aVar.ab;
            this.d.W = aVar.ae;
            this.d.X = aVar.af;
            this.d.Y = aVar.ac;
            this.d.Z = aVar.ad;
            this.d.aa = aVar.ag;
            this.d.ab = aVar.ah;
            this.d.ah = aVar.an;
            this.d.L = aVar.M;
            this.d.N = aVar.O;
            this.d.K = aVar.L;
            this.d.M = aVar.N;
            this.d.P = aVar.P;
            this.d.O = aVar.Q;
            if (Build.VERSION.SDK_INT >= 17) {
                this.d.I = aVar.getMarginEnd();
                this.d.J = aVar.getMarginStart();
            }
        }

        public void a(d.a aVar) {
            aVar.v = this.d.i;
            aVar.w = this.d.j;
            aVar.x = this.d.k;
            aVar.y = this.d.l;
            aVar.z = this.d.m;
            aVar.A = this.d.n;
            aVar.B = this.d.o;
            aVar.C = this.d.p;
            aVar.D = this.d.q;
            aVar.H = this.d.r;
            aVar.I = this.d.s;
            aVar.J = this.d.t;
            aVar.K = this.d.u;
            aVar.leftMargin = this.d.E;
            aVar.rightMargin = this.d.F;
            aVar.topMargin = this.d.G;
            aVar.bottomMargin = this.d.H;
            aVar.P = this.d.P;
            aVar.Q = this.d.O;
            aVar.M = this.d.L;
            aVar.O = this.d.N;
            aVar.R = this.d.v;
            aVar.S = this.d.w;
            aVar.E = this.d.y;
            aVar.F = this.d.z;
            aVar.G = this.d.A;
            aVar.T = this.d.x;
            aVar.ai = this.d.B;
            aVar.aj = this.d.C;
            aVar.X = this.d.Q;
            aVar.W = this.d.R;
            aVar.Z = this.d.T;
            aVar.Y = this.d.S;
            aVar.al = this.d.ai;
            aVar.am = this.d.aj;
            aVar.aa = this.d.U;
            aVar.ab = this.d.V;
            aVar.ae = this.d.W;
            aVar.af = this.d.X;
            aVar.ac = this.d.Y;
            aVar.ad = this.d.Z;
            aVar.ag = this.d.aa;
            aVar.ah = this.d.ab;
            aVar.ak = this.d.D;
            aVar.u = this.d.h;
            aVar.s = this.d.f;
            aVar.t = this.d.g;
            aVar.width = this.d.c;
            aVar.height = this.d.d;
            if (this.d.ah != null) {
                aVar.an = this.d.ah;
            }
            if (Build.VERSION.SDK_INT >= 17) {
                aVar.setMarginStart(this.d.J);
                aVar.setMarginEnd(this.d.I);
            }
            aVar.c();
        }
    }

    public void a(Context context, int i2) {
        b((androidx.d.e.d) LayoutInflater.from(context).inflate(i2, (ViewGroup) null));
    }

    public void b(g gVar) {
        this.H.clear();
        for (Integer num : gVar.H.keySet()) {
            this.H.put(num, gVar.H.get(num).clone());
        }
    }

    public void b(androidx.d.e.d dVar) {
        int childCount = dVar.getChildCount();
        this.H.clear();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = dVar.getChildAt(i2);
            d.a aVar = (d.a) childAt.getLayoutParams();
            int id = childAt.getId();
            if (this.D && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.H.containsKey(Integer.valueOf(id))) {
                this.H.put(Integer.valueOf(id), new a());
            }
            a aVar2 = this.H.get(Integer.valueOf(id));
            aVar2.f = androidx.d.e.b.a(this.C, childAt);
            aVar2.a(id, aVar);
            aVar2.b.b = childAt.getVisibility();
            if (Build.VERSION.SDK_INT >= 17) {
                aVar2.b.d = childAt.getAlpha();
                aVar2.e.b = childAt.getRotation();
                aVar2.e.c = childAt.getRotationX();
                aVar2.e.d = childAt.getRotationY();
                aVar2.e.e = childAt.getScaleX();
                aVar2.e.f = childAt.getScaleY();
                float pivotX = childAt.getPivotX();
                float pivotY = childAt.getPivotY();
                if (pivotX != 0.0d || pivotY != 0.0d) {
                    aVar2.e.g = pivotX;
                    aVar2.e.h = pivotY;
                }
                aVar2.e.i = childAt.getTranslationX();
                aVar2.e.j = childAt.getTranslationY();
                if (Build.VERSION.SDK_INT >= 21) {
                    aVar2.e.k = childAt.getTranslationZ();
                    if (aVar2.e.l) {
                        aVar2.e.m = childAt.getElevation();
                    }
                }
            }
            if (childAt instanceof androidx.d.e.a) {
                androidx.d.e.a aVar3 = (androidx.d.e.a) childAt;
                aVar2.d.ak = aVar3.a();
                aVar2.d.af = aVar3.getReferencedIds();
                aVar2.d.ac = aVar3.getType();
                aVar2.d.ad = aVar3.getMargin();
            }
        }
    }

    public void a(h hVar) {
        int childCount = hVar.getChildCount();
        this.H.clear();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = hVar.getChildAt(i2);
            h.a aVar = (h.a) childAt.getLayoutParams();
            int id = childAt.getId();
            if (this.D && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.H.containsKey(Integer.valueOf(id))) {
                this.H.put(Integer.valueOf(id), new a());
            }
            a aVar2 = this.H.get(Integer.valueOf(id));
            if (childAt instanceof androidx.d.e.c) {
                aVar2.a((androidx.d.e.c) childAt, id, aVar);
            }
            aVar2.a(id, aVar);
        }
    }

    public void c(androidx.d.e.d dVar) {
        a(dVar, true);
        dVar.setConstraintSet(null);
        dVar.requestLayout();
    }

    public void d(androidx.d.e.d dVar) {
        a(dVar, false);
        dVar.setConstraintSet(null);
    }

    public void e(androidx.d.e.d dVar) {
        int childCount = dVar.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = dVar.getChildAt(i2);
            int id = childAt.getId();
            if (this.H.containsKey(Integer.valueOf(id))) {
                if (this.D && id == -1) {
                    throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                }
                if (this.H.containsKey(Integer.valueOf(id))) {
                    androidx.d.e.b.a(childAt, this.H.get(Integer.valueOf(id)).f);
                }
            } else {
                Log.v(z, "id unknown " + androidx.d.b.b.c.a(childAt));
            }
        }
    }

    public void a(androidx.d.e.c cVar, androidx.d.c.b.e eVar, d.a aVar, SparseArray<androidx.d.c.b.e> sparseArray) {
        int id = cVar.getId();
        if (this.H.containsKey(Integer.valueOf(id))) {
            a aVar2 = this.H.get(Integer.valueOf(id));
            if (eVar instanceof androidx.d.c.b.j) {
                cVar.a(aVar2, (androidx.d.c.b.j) eVar, aVar, sparseArray);
            }
        }
    }

    public void a(int i2, d.a aVar) {
        if (this.H.containsKey(Integer.valueOf(i2))) {
            this.H.get(Integer.valueOf(i2)).a(aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(androidx.d.e.d dVar, boolean z2) {
        int childCount = dVar.getChildCount();
        HashSet hashSet = new HashSet(this.H.keySet());
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = dVar.getChildAt(i2);
            int id = childAt.getId();
            if (this.H.containsKey(Integer.valueOf(id))) {
                if (this.D && id == -1) {
                    throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                }
                if (id != -1) {
                    if (this.H.containsKey(Integer.valueOf(id))) {
                        hashSet.remove(Integer.valueOf(id));
                        a aVar = this.H.get(Integer.valueOf(id));
                        if (childAt instanceof androidx.d.e.a) {
                            aVar.d.ae = 1;
                        }
                        if (aVar.d.ae != -1 && aVar.d.ae == 1) {
                            androidx.d.e.a aVar2 = (androidx.d.e.a) childAt;
                            aVar2.setId(id);
                            aVar2.setType(aVar.d.ac);
                            aVar2.setMargin(aVar.d.ad);
                            aVar2.setAllowsGoneWidget(aVar.d.ak);
                            if (aVar.d.af != null) {
                                aVar2.setReferencedIds(aVar.d.af);
                            } else if (aVar.d.ag != null) {
                                aVar.d.af = a(aVar2, aVar.d.ag);
                                aVar2.setReferencedIds(aVar.d.af);
                            }
                        }
                        d.a aVar3 = (d.a) childAt.getLayoutParams();
                        aVar3.c();
                        aVar.a(aVar3);
                        if (z2) {
                            androidx.d.e.b.a(childAt, aVar.f);
                        }
                        childAt.setLayoutParams(aVar3);
                        if (aVar.b.c == 0) {
                            childAt.setVisibility(aVar.b.b);
                        }
                        if (Build.VERSION.SDK_INT >= 17) {
                            childAt.setAlpha(aVar.b.d);
                            childAt.setRotation(aVar.e.b);
                            childAt.setRotationX(aVar.e.c);
                            childAt.setRotationY(aVar.e.d);
                            childAt.setScaleX(aVar.e.e);
                            childAt.setScaleY(aVar.e.f);
                            if (!Float.isNaN(aVar.e.g)) {
                                childAt.setPivotX(aVar.e.g);
                            }
                            if (!Float.isNaN(aVar.e.h)) {
                                childAt.setPivotY(aVar.e.h);
                            }
                            childAt.setTranslationX(aVar.e.i);
                            childAt.setTranslationY(aVar.e.j);
                            if (Build.VERSION.SDK_INT >= 21) {
                                childAt.setTranslationZ(aVar.e.k);
                                if (aVar.e.l) {
                                    childAt.setElevation(aVar.e.m);
                                }
                            }
                        }
                    } else {
                        Log.v(z, "WARNING NO CONSTRAINTS for view " + id);
                    }
                }
            } else {
                Log.w(z, "id unknown " + androidx.d.b.b.c.a(childAt));
            }
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            a aVar4 = this.H.get(num);
            if (aVar4.d.ae != -1 && aVar4.d.ae == 1) {
                androidx.d.e.a aVar5 = new androidx.d.e.a(dVar.getContext());
                aVar5.setId(num.intValue());
                if (aVar4.d.af != null) {
                    aVar5.setReferencedIds(aVar4.d.af);
                } else if (aVar4.d.ag != null) {
                    aVar4.d.af = a(aVar5, aVar4.d.ag);
                    aVar5.setReferencedIds(aVar4.d.af);
                }
                aVar5.setType(aVar4.d.ac);
                aVar5.setMargin(aVar4.d.ad);
                d.a generateDefaultLayoutParams = dVar.generateDefaultLayoutParams();
                aVar5.c();
                aVar4.a(generateDefaultLayoutParams);
                dVar.addView(aVar5, generateDefaultLayoutParams);
            }
            if (aVar4.d.f727a) {
                k kVar = new k(dVar.getContext());
                kVar.setId(num.intValue());
                d.a generateDefaultLayoutParams2 = dVar.generateDefaultLayoutParams();
                aVar4.a(generateDefaultLayoutParams2);
                dVar.addView(kVar, generateDefaultLayoutParams2);
            }
        }
    }

    public void a(int i2, int i3, int i4, int i5, int i6, int i7, int i8, float f2) {
        if (i5 < 0) {
            throw new IllegalArgumentException("margin must be > 0");
        }
        if (i8 < 0) {
            throw new IllegalArgumentException("margin must be > 0");
        }
        if (f2 <= 0.0f || f2 > 1.0f) {
            throw new IllegalArgumentException("bias must be between 0 and 1 inclusive");
        }
        if (i4 == 1 || i4 == 2) {
            a(i2, 1, i3, i4, i5);
            a(i2, 2, i6, i7, i8);
            this.H.get(Integer.valueOf(i2)).d.v = f2;
        } else if (i4 == 6 || i4 == 7) {
            a(i2, 6, i3, i4, i5);
            a(i2, 7, i6, i7, i8);
            this.H.get(Integer.valueOf(i2)).d.v = f2;
        } else {
            a(i2, 3, i3, i4, i5);
            a(i2, 4, i6, i7, i8);
            this.H.get(Integer.valueOf(i2)).d.w = f2;
        }
    }

    public void b(int i2, int i3, int i4, int i5, int i6, int i7, int i8, float f2) {
        a(i2, 1, i3, i4, i5);
        a(i2, 2, i6, i7, i8);
        this.H.get(Integer.valueOf(i2)).d.v = f2;
    }

    public void c(int i2, int i3, int i4, int i5, int i6, int i7, int i8, float f2) {
        a(i2, 6, i3, i4, i5);
        a(i2, 7, i6, i7, i8);
        this.H.get(Integer.valueOf(i2)).d.v = f2;
    }

    public void d(int i2, int i3, int i4, int i5, int i6, int i7, int i8, float f2) {
        a(i2, 3, i3, i4, i5);
        a(i2, 4, i6, i7, i8);
        this.H.get(Integer.valueOf(i2)).d.w = f2;
    }

    public void a(int i2, int i3, int i4, int i5, int[] iArr, float[] fArr, int i6) {
        if (iArr.length < 2) {
            throw new IllegalArgumentException("must have 2 or more widgets in a chain");
        }
        if (fArr != null && fArr.length != iArr.length) {
            throw new IllegalArgumentException("must have 2 or more widgets in a chain");
        }
        if (fArr != null) {
            l(iArr[0]).d.Q = fArr[0];
        }
        l(iArr[0]).d.T = i6;
        a(iArr[0], 3, i2, i3, 0);
        for (int i7 = 1; i7 < iArr.length; i7++) {
            int i8 = iArr[i7];
            int i9 = i7 - 1;
            a(iArr[i7], 3, iArr[i9], 4, 0);
            a(iArr[i9], 4, iArr[i7], 3, 0);
            if (fArr != null) {
                l(iArr[i7]).d.Q = fArr[i7];
            }
        }
        a(iArr[iArr.length - 1], 4, i4, i5, 0);
    }

    public void b(int i2, int i3, int i4, int i5, int[] iArr, float[] fArr, int i6) {
        a(i2, i3, i4, i5, iArr, fArr, i6, 1, 2);
    }

    public void c(int i2, int i3, int i4, int i5, int[] iArr, float[] fArr, int i6) {
        a(i2, i3, i4, i5, iArr, fArr, i6, 6, 7);
    }

    private void a(int i2, int i3, int i4, int i5, int[] iArr, float[] fArr, int i6, int i7, int i8) {
        if (iArr.length < 2) {
            throw new IllegalArgumentException("must have 2 or more widgets in a chain");
        }
        if (fArr != null && fArr.length != iArr.length) {
            throw new IllegalArgumentException("must have 2 or more widgets in a chain");
        }
        if (fArr != null) {
            l(iArr[0]).d.R = fArr[0];
        }
        l(iArr[0]).d.S = i6;
        a(iArr[0], i7, i2, i3, -1);
        for (int i9 = 1; i9 < iArr.length; i9++) {
            int i10 = iArr[i9];
            int i11 = i9 - 1;
            a(iArr[i9], i7, iArr[i11], i8, -1);
            a(iArr[i11], i8, iArr[i9], i7, -1);
            if (fArr != null) {
                l(iArr[i9]).d.R = fArr[i9];
            }
        }
        a(iArr[iArr.length - 1], i8, i4, i5, -1);
    }

    public void a(int i2, int i3, int i4, int i5, int i6) {
        if (!this.H.containsKey(Integer.valueOf(i2))) {
            this.H.put(Integer.valueOf(i2), new a());
        }
        a aVar = this.H.get(Integer.valueOf(i2));
        switch (i3) {
            case 1:
                if (i5 == 1) {
                    aVar.d.i = i4;
                    aVar.d.j = -1;
                } else if (i5 == 2) {
                    aVar.d.j = i4;
                    aVar.d.i = -1;
                } else {
                    throw new IllegalArgumentException("Left to " + m(i5) + " undefined");
                }
                aVar.d.E = i6;
                return;
            case 2:
                if (i5 == 1) {
                    aVar.d.k = i4;
                    aVar.d.l = -1;
                } else if (i5 == 2) {
                    aVar.d.l = i4;
                    aVar.d.k = -1;
                } else {
                    throw new IllegalArgumentException("right to " + m(i5) + " undefined");
                }
                aVar.d.F = i6;
                return;
            case 3:
                if (i5 == 3) {
                    aVar.d.m = i4;
                    aVar.d.n = -1;
                    aVar.d.q = -1;
                } else if (i5 == 4) {
                    aVar.d.n = i4;
                    aVar.d.m = -1;
                    aVar.d.q = -1;
                } else {
                    throw new IllegalArgumentException("right to " + m(i5) + " undefined");
                }
                aVar.d.G = i6;
                return;
            case 4:
                if (i5 == 4) {
                    aVar.d.p = i4;
                    aVar.d.o = -1;
                    aVar.d.q = -1;
                } else if (i5 == 3) {
                    aVar.d.o = i4;
                    aVar.d.p = -1;
                    aVar.d.q = -1;
                } else {
                    throw new IllegalArgumentException("right to " + m(i5) + " undefined");
                }
                aVar.d.H = i6;
                return;
            case 5:
                if (i5 == 5) {
                    aVar.d.q = i4;
                    aVar.d.p = -1;
                    aVar.d.o = -1;
                    aVar.d.m = -1;
                    aVar.d.n = -1;
                    return;
                }
                throw new IllegalArgumentException("right to " + m(i5) + " undefined");
            case 6:
                if (i5 == 6) {
                    aVar.d.s = i4;
                    aVar.d.r = -1;
                } else if (i5 == 7) {
                    aVar.d.r = i4;
                    aVar.d.s = -1;
                } else {
                    throw new IllegalArgumentException("right to " + m(i5) + " undefined");
                }
                aVar.d.J = i6;
                return;
            case 7:
                if (i5 == 7) {
                    aVar.d.u = i4;
                    aVar.d.t = -1;
                } else if (i5 == 6) {
                    aVar.d.t = i4;
                    aVar.d.u = -1;
                } else {
                    throw new IllegalArgumentException("right to " + m(i5) + " undefined");
                }
                aVar.d.I = i6;
                return;
            default:
                throw new IllegalArgumentException(m(i3) + " to " + m(i5) + " unknown");
        }
    }

    public void a(int i2, int i3, int i4, int i5) {
        if (!this.H.containsKey(Integer.valueOf(i2))) {
            this.H.put(Integer.valueOf(i2), new a());
        }
        a aVar = this.H.get(Integer.valueOf(i2));
        switch (i3) {
            case 1:
                if (i5 == 1) {
                    aVar.d.i = i4;
                    aVar.d.j = -1;
                    return;
                } else if (i5 == 2) {
                    aVar.d.j = i4;
                    aVar.d.i = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("left to " + m(i5) + " undefined");
                }
            case 2:
                if (i5 == 1) {
                    aVar.d.k = i4;
                    aVar.d.l = -1;
                    return;
                } else if (i5 == 2) {
                    aVar.d.l = i4;
                    aVar.d.k = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("right to " + m(i5) + " undefined");
                }
            case 3:
                if (i5 == 3) {
                    aVar.d.m = i4;
                    aVar.d.n = -1;
                    aVar.d.q = -1;
                    return;
                } else if (i5 == 4) {
                    aVar.d.n = i4;
                    aVar.d.m = -1;
                    aVar.d.q = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("right to " + m(i5) + " undefined");
                }
            case 4:
                if (i5 == 4) {
                    aVar.d.p = i4;
                    aVar.d.o = -1;
                    aVar.d.q = -1;
                    return;
                } else if (i5 == 3) {
                    aVar.d.o = i4;
                    aVar.d.p = -1;
                    aVar.d.q = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("right to " + m(i5) + " undefined");
                }
            case 5:
                if (i5 == 5) {
                    aVar.d.q = i4;
                    aVar.d.p = -1;
                    aVar.d.o = -1;
                    aVar.d.m = -1;
                    aVar.d.n = -1;
                    return;
                }
                throw new IllegalArgumentException("right to " + m(i5) + " undefined");
            case 6:
                if (i5 == 6) {
                    aVar.d.s = i4;
                    aVar.d.r = -1;
                    return;
                } else if (i5 == 7) {
                    aVar.d.r = i4;
                    aVar.d.s = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("right to " + m(i5) + " undefined");
                }
            case 7:
                if (i5 == 7) {
                    aVar.d.u = i4;
                    aVar.d.t = -1;
                    return;
                } else if (i5 == 6) {
                    aVar.d.t = i4;
                    aVar.d.u = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("right to " + m(i5) + " undefined");
                }
            default:
                throw new IllegalArgumentException(m(i3) + " to " + m(i5) + " unknown");
        }
    }

    public void a(int i2, int i3) {
        if (i3 == 0) {
            a(i2, 0, 1, 0, 0, 2, 0, 0.5f);
        } else {
            a(i2, i3, 2, 0, i3, 1, 0, 0.5f);
        }
    }

    public void b(int i2, int i3) {
        if (i3 == 0) {
            a(i2, 0, 6, 0, 0, 7, 0, 0.5f);
        } else {
            a(i2, i3, 7, 0, i3, 6, 0, 0.5f);
        }
    }

    public void c(int i2, int i3) {
        if (i3 == 0) {
            a(i2, 0, 3, 0, 0, 4, 0, 0.5f);
        } else {
            a(i2, i3, 4, 0, i3, 3, 0, 0.5f);
        }
    }

    public void b(int i2) {
        this.H.remove(Integer.valueOf(i2));
    }

    public void d(int i2, int i3) {
        if (this.H.containsKey(Integer.valueOf(i2))) {
            a aVar = this.H.get(Integer.valueOf(i2));
            switch (i3) {
                case 1:
                    aVar.d.j = -1;
                    aVar.d.i = -1;
                    aVar.d.E = -1;
                    aVar.d.K = -1;
                    return;
                case 2:
                    aVar.d.l = -1;
                    aVar.d.k = -1;
                    aVar.d.F = -1;
                    aVar.d.M = -1;
                    return;
                case 3:
                    aVar.d.n = -1;
                    aVar.d.m = -1;
                    aVar.d.G = -1;
                    aVar.d.L = -1;
                    return;
                case 4:
                    aVar.d.o = -1;
                    aVar.d.p = -1;
                    aVar.d.H = -1;
                    aVar.d.N = -1;
                    return;
                case 5:
                    aVar.d.q = -1;
                    return;
                case 6:
                    aVar.d.r = -1;
                    aVar.d.s = -1;
                    aVar.d.J = -1;
                    aVar.d.P = -1;
                    return;
                case 7:
                    aVar.d.t = -1;
                    aVar.d.u = -1;
                    aVar.d.I = -1;
                    aVar.d.O = -1;
                    return;
                default:
                    throw new IllegalArgumentException("unknown constraint");
            }
        }
    }

    public void a(int i2, int i3, int i4) {
        a l2 = l(i2);
        switch (i3) {
            case 1:
                l2.d.E = i4;
                return;
            case 2:
                l2.d.F = i4;
                return;
            case 3:
                l2.d.G = i4;
                return;
            case 4:
                l2.d.H = i4;
                return;
            case 5:
                throw new IllegalArgumentException("baseline does not support margins");
            case 6:
                l2.d.J = i4;
                return;
            case 7:
                l2.d.I = i4;
                return;
            default:
                throw new IllegalArgumentException("unknown constraint");
        }
    }

    public void b(int i2, int i3, int i4) {
        a l2 = l(i2);
        switch (i3) {
            case 1:
                l2.d.K = i4;
                return;
            case 2:
                l2.d.M = i4;
                return;
            case 3:
                l2.d.L = i4;
                return;
            case 4:
                l2.d.N = i4;
                return;
            case 5:
                throw new IllegalArgumentException("baseline does not support margins");
            case 6:
                l2.d.P = i4;
                return;
            case 7:
                l2.d.O = i4;
                return;
            default:
                throw new IllegalArgumentException("unknown constraint");
        }
    }

    public void a(int i2, float f2) {
        l(i2).d.v = f2;
    }

    public void b(int i2, float f2) {
        l(i2).d.w = f2;
    }

    public void a(int i2, String str) {
        l(i2).d.x = str;
    }

    public void e(int i2, int i3) {
        l(i2).b.b = i3;
    }

    public void f(int i2, int i3) {
        l(i2).b.c = i3;
    }

    public int c(int i2) {
        return l(i2).b.c;
    }

    public int d(int i2) {
        return l(i2).b.b;
    }

    public int e(int i2) {
        return l(i2).d.d;
    }

    public int f(int i2) {
        return l(i2).d.c;
    }

    public void c(int i2, float f2) {
        l(i2).b.d = f2;
    }

    public boolean g(int i2) {
        return l(i2).e.l;
    }

    public void a(int i2, boolean z2) {
        if (Build.VERSION.SDK_INT >= 21) {
            l(i2).e.l = z2;
        }
    }

    public void d(int i2, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            l(i2).e.m = f2;
            l(i2).e.l = true;
        }
    }

    public void e(int i2, float f2) {
        l(i2).e.b = f2;
    }

    public void f(int i2, float f2) {
        l(i2).e.c = f2;
    }

    public void g(int i2, float f2) {
        l(i2).e.d = f2;
    }

    public void h(int i2, float f2) {
        l(i2).e.e = f2;
    }

    public void i(int i2, float f2) {
        l(i2).e.f = f2;
    }

    public void j(int i2, float f2) {
        l(i2).e.g = f2;
    }

    public void k(int i2, float f2) {
        l(i2).e.h = f2;
    }

    public void a(int i2, float f2, float f3) {
        a l2 = l(i2);
        l2.e.h = f3;
        l2.e.g = f2;
    }

    public void l(int i2, float f2) {
        l(i2).e.i = f2;
    }

    public void m(int i2, float f2) {
        l(i2).e.j = f2;
    }

    public void b(int i2, float f2, float f3) {
        a l2 = l(i2);
        l2.e.i = f2;
        l2.e.j = f3;
    }

    public void n(int i2, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            l(i2).e.k = f2;
        }
    }

    public void g(int i2, int i3) {
        l(i2).d.B = i3;
    }

    public void h(int i2, int i3) {
        l(i2).d.C = i3;
    }

    public void i(int i2, int i3) {
        l(i2).d.d = i3;
    }

    public void j(int i2, int i3) {
        l(i2).d.c = i3;
    }

    public void a(int i2, int i3, int i4, float f2) {
        a l2 = l(i2);
        l2.d.y = i3;
        l2.d.z = i4;
        l2.d.A = f2;
    }

    public void k(int i2, int i3) {
        l(i2).d.X = i3;
    }

    public void l(int i2, int i3) {
        l(i2).d.W = i3;
    }

    public void m(int i2, int i3) {
        l(i2).d.Z = i3;
    }

    public void n(int i2, int i3) {
        l(i2).d.Y = i3;
    }

    public void o(int i2, float f2) {
        l(i2).d.aa = f2;
    }

    public void p(int i2, float f2) {
        l(i2).d.ab = f2;
    }

    public void o(int i2, int i3) {
        l(i2).d.V = i3;
    }

    public void b(int i2, boolean z2) {
        l(i2).d.ai = z2;
    }

    public void c(int i2, boolean z2) {
        l(i2).d.aj = z2;
    }

    public void p(int i2, int i3) {
        l(i2).d.U = i3;
    }

    public void q(int i2, float f2) {
        l(i2).d.R = f2;
    }

    public void r(int i2, float f2) {
        l(i2).d.Q = f2;
    }

    public void q(int i2, int i3) {
        l(i2).d.S = i3;
    }

    public void r(int i2, int i3) {
        l(i2).d.T = i3;
    }

    public void c(int i2, int i3, int i4) {
        a(i2, 1, i3, i3 == 0 ? 1 : 2, 0);
        a(i2, 2, i4, i4 == 0 ? 2 : 1, 0);
        if (i3 != 0) {
            a(i3, 2, i2, 1, 0);
        }
        if (i4 != 0) {
            a(i4, 1, i2, 2, 0);
        }
    }

    public void d(int i2, int i3, int i4) {
        a(i2, 6, i3, i3 == 0 ? 6 : 7, 0);
        a(i2, 7, i4, i4 == 0 ? 7 : 6, 0);
        if (i3 != 0) {
            a(i3, 7, i2, 6, 0);
        }
        if (i4 != 0) {
            a(i4, 6, i2, 7, 0);
        }
    }

    public void e(int i2, int i3, int i4) {
        a(i2, 3, i3, i3 == 0 ? 3 : 4, 0);
        a(i2, 4, i4, i4 == 0 ? 4 : 3, 0);
        if (i3 != 0) {
            a(i3, 4, i2, 3, 0);
        }
        if (i4 != 0) {
            a(i4, 3, i2, 4, 0);
        }
    }

    public void h(int i2) {
        if (this.H.containsKey(Integer.valueOf(i2))) {
            a aVar = this.H.get(Integer.valueOf(i2));
            int i3 = aVar.d.n;
            int i4 = aVar.d.o;
            if (i3 != -1 || i4 != -1) {
                if (i3 != -1 && i4 != -1) {
                    a(i3, 4, i4, 3, 0);
                    a(i4, 3, i3, 4, 0);
                } else if (i3 != -1 || i4 != -1) {
                    if (aVar.d.p != -1) {
                        a(i3, 4, aVar.d.p, 4, 0);
                    } else if (aVar.d.m != -1) {
                        a(i4, 3, aVar.d.m, 3, 0);
                    }
                }
            }
        }
        d(i2, 3);
        d(i2, 4);
    }

    public void i(int i2) {
        if (this.H.containsKey(Integer.valueOf(i2))) {
            a aVar = this.H.get(Integer.valueOf(i2));
            int i3 = aVar.d.j;
            int i4 = aVar.d.k;
            if (i3 != -1 || i4 != -1) {
                if (i3 != -1 && i4 != -1) {
                    a(i3, 2, i4, 1, 0);
                    a(i4, 1, i3, 2, 0);
                } else if (i3 != -1 || i4 != -1) {
                    if (aVar.d.l != -1) {
                        a(i3, 2, aVar.d.l, 2, 0);
                    } else if (aVar.d.i != -1) {
                        a(i4, 1, aVar.d.i, 1, 0);
                    }
                }
                d(i2, 1);
                d(i2, 2);
                return;
            }
            int i5 = aVar.d.r;
            int i6 = aVar.d.t;
            if (i5 != -1 || i6 != -1) {
                if (i5 != -1 && i6 != -1) {
                    a(i5, 7, i6, 6, 0);
                    a(i6, 6, i3, 7, 0);
                } else if (i3 != -1 || i6 != -1) {
                    if (aVar.d.l != -1) {
                        a(i3, 7, aVar.d.l, 7, 0);
                    } else if (aVar.d.i != -1) {
                        a(i6, 6, aVar.d.i, 6, 0);
                    }
                }
            }
            d(i2, 6);
            d(i2, 7);
        }
    }

    public void s(int i2, int i3) {
        a l2 = l(i2);
        l2.d.f727a = true;
        l2.d.D = i3;
    }

    public void a(int i2, int i3, int i4, int... iArr) {
        a l2 = l(i2);
        l2.d.ae = 1;
        l2.d.ac = i3;
        l2.d.ad = i4;
        l2.d.f727a = false;
        l2.d.af = iArr;
    }

    public void t(int i2, int i3) {
        l(i2).d.f = i3;
        l(i2).d.g = -1;
        l(i2).d.h = -1.0f;
    }

    public void u(int i2, int i3) {
        l(i2).d.g = i3;
        l(i2).d.f = -1;
        l(i2).d.h = -1.0f;
    }

    public void s(int i2, float f2) {
        l(i2).d.h = f2;
        l(i2).d.g = -1;
        l(i2).d.f = -1;
    }

    public int[] j(int i2) {
        a l2 = l(i2);
        if (l2.d.af == null) {
            return new int[0];
        }
        return Arrays.copyOf(l2.d.af, l2.d.af.length);
    }

    public void a(int i2, int... iArr) {
        l(i2).d.af = iArr;
    }

    public void v(int i2, int i3) {
        l(i2).d.ae = i3;
    }

    public void a(String str) {
        this.C.remove(str);
    }

    public void a(int i2, String str, int i3) {
        l(i2).a(str, i3);
    }

    public void b(int i2, String str, int i3) {
        l(i2).b(str, i3);
    }

    public void a(int i2, String str, float f2) {
        l(i2).a(str, f2);
    }

    public void a(int i2, String str, String str2) {
        l(i2).a(str, str2);
    }

    private void a(b.a aVar, String... strArr) {
        for (int i2 = 0; i2 < strArr.length; i2++) {
            if (this.C.containsKey(strArr[i2])) {
                androidx.d.e.b bVar = this.C.get(strArr[i2]);
                if (bVar.a() != aVar) {
                    throw new IllegalArgumentException("ConstraintAttribute is already a " + bVar.a().name());
                }
            } else {
                this.C.put(strArr[i2], new androidx.d.e.b(strArr[i2], aVar));
            }
        }
    }

    public void a(a aVar, String str) {
        String[] split = str.split(",");
        for (int i2 = 0; i2 < split.length; i2++) {
            String[] split2 = split[i2].split("=");
            if (split2.length == 2) {
                aVar.a(split2[0], Integer.decode(split2[1]).intValue());
            } else {
                Log.w(z, " Unable to parse " + split[i2]);
            }
        }
    }

    public void b(a aVar, String str) {
        String[] split = str.split(",");
        for (int i2 = 0; i2 < split.length; i2++) {
            String[] split2 = split[i2].split("=");
            if (split2.length == 2) {
                aVar.b(split2[0], Color.parseColor(split2[1]));
            } else {
                Log.w(z, " Unable to parse " + split[i2]);
            }
        }
    }

    public void c(a aVar, String str) {
        String[] split = str.split(",");
        for (int i2 = 0; i2 < split.length; i2++) {
            String[] split2 = split[i2].split("=");
            if (split2.length == 2) {
                aVar.a(split2[0], Float.parseFloat(split2[1]));
            } else {
                Log.w(z, " Unable to parse " + split[i2]);
            }
        }
    }

    public void d(a aVar, String str) {
        String[] b2 = b(str);
        for (int i2 = 0; i2 < b2.length; i2++) {
            String[] split = b2[i2].split("=");
            Log.w(z, " Unable to parse " + b2[i2]);
            aVar.a(split[0], split[1]);
        }
    }

    private static String[] b(String str) {
        char[] charArray = str.toCharArray();
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        boolean z2 = false;
        for (int i3 = 0; i3 < charArray.length; i3++) {
            if (charArray[i3] == ',' && !z2) {
                arrayList.add(new String(charArray, i2, i3 - i2));
                i2 = i3 + 1;
            } else if (charArray[i3] == '\"') {
                z2 = !z2;
            }
        }
        arrayList.add(new String(charArray, i2, charArray.length - i2));
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public void a(String... strArr) {
        a(b.a.INT_TYPE, strArr);
    }

    public void b(String... strArr) {
        a(b.a.COLOR_TYPE, strArr);
    }

    public void c(String... strArr) {
        a(b.a.FLOAT_TYPE, strArr);
    }

    public void d(String... strArr) {
        a(b.a.STRING_TYPE, strArr);
    }

    private a l(int i2) {
        if (!this.H.containsKey(Integer.valueOf(i2))) {
            this.H.put(Integer.valueOf(i2), new a());
        }
        return this.H.get(Integer.valueOf(i2));
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x003c, code lost:
    
        continue;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:7:0x0011. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void b(Context context, int i2) {
        XmlResourceParser xml = context.getResources().getXml(i2);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 0) {
                    xml.getName();
                } else {
                    switch (eventType) {
                        case 2:
                            String name = xml.getName();
                            a a2 = a(context, Xml.asAttributeSet(xml));
                            if (name.equalsIgnoreCase("Guideline")) {
                                a2.d.f727a = true;
                            }
                            this.H.put(Integer.valueOf(a2.f726a), a2);
                            break;
                    }
                }
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        } catch (XmlPullParserException e3) {
            e3.printStackTrace();
        }
    }

    public void a(Context context, XmlPullParser xmlPullParser) {
        char c2;
        try {
            int eventType = xmlPullParser.getEventType();
            a aVar = null;
            while (eventType != 1) {
                if (eventType == 0) {
                    xmlPullParser.getName();
                } else {
                    switch (eventType) {
                        case 2:
                            String name = xmlPullParser.getName();
                            switch (name.hashCode()) {
                                case -2025855158:
                                    if (name.equals("Layout")) {
                                        c2 = 5;
                                        break;
                                    }
                                    break;
                                case -1984451626:
                                    if (name.equals("Motion")) {
                                        c2 = 6;
                                        break;
                                    }
                                    break;
                                case -1269513683:
                                    if (name.equals("PropertySet")) {
                                        c2 = 3;
                                        break;
                                    }
                                    break;
                                case -1238332596:
                                    if (name.equals("Transform")) {
                                        c2 = 4;
                                        break;
                                    }
                                    break;
                                case -71750448:
                                    if (name.equals("Guideline")) {
                                        c2 = 1;
                                        break;
                                    }
                                    break;
                                case 1331510167:
                                    if (name.equals("Barrier")) {
                                        c2 = 2;
                                        break;
                                    }
                                    break;
                                case 1791837707:
                                    if (name.equals("CustomAttribute")) {
                                        c2 = 7;
                                        break;
                                    }
                                    break;
                                case 1803088381:
                                    if (name.equals("Constraint")) {
                                        c2 = 0;
                                        break;
                                    }
                                    break;
                            }
                            c2 = 65535;
                            switch (c2) {
                                case 0:
                                    aVar = a(context, Xml.asAttributeSet(xmlPullParser));
                                    break;
                                case 1:
                                    aVar = a(context, Xml.asAttributeSet(xmlPullParser));
                                    aVar.d.f727a = true;
                                    aVar.d.b = true;
                                    break;
                                case 2:
                                    aVar = a(context, Xml.asAttributeSet(xmlPullParser));
                                    aVar.d.ae = 1;
                                    break;
                                case 3:
                                    if (aVar == null) {
                                        throw new RuntimeException(A + xmlPullParser.getLineNumber());
                                    }
                                    aVar.b.a(context, Xml.asAttributeSet(xmlPullParser));
                                    break;
                                case 4:
                                    if (aVar == null) {
                                        throw new RuntimeException(A + xmlPullParser.getLineNumber());
                                    }
                                    aVar.e.a(context, Xml.asAttributeSet(xmlPullParser));
                                    break;
                                case 5:
                                    if (aVar == null) {
                                        throw new RuntimeException(A + xmlPullParser.getLineNumber());
                                    }
                                    aVar.d.a(context, Xml.asAttributeSet(xmlPullParser));
                                    break;
                                case 6:
                                    if (aVar == null) {
                                        throw new RuntimeException(A + xmlPullParser.getLineNumber());
                                    }
                                    aVar.c.a(context, Xml.asAttributeSet(xmlPullParser));
                                    break;
                                case 7:
                                    if (aVar == null) {
                                        throw new RuntimeException(A + xmlPullParser.getLineNumber());
                                    }
                                    androidx.d.e.b.a(context, xmlPullParser, aVar.f);
                                    break;
                            }
                        case 3:
                            String name2 = xmlPullParser.getName();
                            if (!z.equals(name2)) {
                                if (!name2.equalsIgnoreCase("Constraint")) {
                                    break;
                                } else {
                                    this.H.put(Integer.valueOf(aVar.f726a), aVar);
                                    aVar = null;
                                    break;
                                }
                            } else {
                                return;
                            }
                    }
                }
                eventType = xmlPullParser.next();
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        } catch (XmlPullParserException e3) {
            e3.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int b(TypedArray typedArray, int i2, int i3) {
        int resourceId = typedArray.getResourceId(i2, i3);
        return resourceId == -1 ? typedArray.getInt(i2, -1) : resourceId;
    }

    private a a(Context context, AttributeSet attributeSet) {
        a aVar = new a();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, m.C0052m.Constraint);
        a(context, aVar, obtainStyledAttributes);
        obtainStyledAttributes.recycle();
        return aVar;
    }

    private void a(Context context, a aVar, TypedArray typedArray) {
        int indexCount = typedArray.getIndexCount();
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = typedArray.getIndex(i2);
            if (index != m.C0052m.Constraint_android_id && m.C0052m.Constraint_android_layout_marginStart != index && m.C0052m.Constraint_android_layout_marginEnd != index) {
                aVar.c.f728a = true;
                aVar.d.b = true;
                aVar.b.f729a = true;
                aVar.e.f730a = true;
            }
            switch (I.get(index)) {
                case 1:
                    aVar.d.q = b(typedArray, index, aVar.d.q);
                    break;
                case 2:
                    aVar.d.H = typedArray.getDimensionPixelSize(index, aVar.d.H);
                    break;
                case 3:
                    aVar.d.p = b(typedArray, index, aVar.d.p);
                    break;
                case 4:
                    aVar.d.o = b(typedArray, index, aVar.d.o);
                    break;
                case 5:
                    aVar.d.x = typedArray.getString(index);
                    break;
                case 6:
                    aVar.d.B = typedArray.getDimensionPixelOffset(index, aVar.d.B);
                    break;
                case 7:
                    aVar.d.C = typedArray.getDimensionPixelOffset(index, aVar.d.C);
                    break;
                case 8:
                    if (Build.VERSION.SDK_INT >= 17) {
                        aVar.d.I = typedArray.getDimensionPixelSize(index, aVar.d.I);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    aVar.d.u = b(typedArray, index, aVar.d.u);
                    break;
                case 10:
                    aVar.d.t = b(typedArray, index, aVar.d.t);
                    break;
                case 11:
                    aVar.d.N = typedArray.getDimensionPixelSize(index, aVar.d.N);
                    break;
                case 12:
                    aVar.d.O = typedArray.getDimensionPixelSize(index, aVar.d.O);
                    break;
                case 13:
                    aVar.d.K = typedArray.getDimensionPixelSize(index, aVar.d.K);
                    break;
                case 14:
                    aVar.d.M = typedArray.getDimensionPixelSize(index, aVar.d.M);
                    break;
                case 15:
                    aVar.d.P = typedArray.getDimensionPixelSize(index, aVar.d.P);
                    break;
                case 16:
                    aVar.d.L = typedArray.getDimensionPixelSize(index, aVar.d.L);
                    break;
                case 17:
                    aVar.d.f = typedArray.getDimensionPixelOffset(index, aVar.d.f);
                    break;
                case 18:
                    aVar.d.g = typedArray.getDimensionPixelOffset(index, aVar.d.g);
                    break;
                case 19:
                    aVar.d.h = typedArray.getFloat(index, aVar.d.h);
                    break;
                case 20:
                    aVar.d.v = typedArray.getFloat(index, aVar.d.v);
                    break;
                case 21:
                    aVar.d.d = typedArray.getLayoutDimension(index, aVar.d.d);
                    break;
                case 22:
                    aVar.b.b = typedArray.getInt(index, aVar.b.b);
                    aVar.b.b = F[aVar.b.b];
                    break;
                case 23:
                    aVar.d.c = typedArray.getLayoutDimension(index, aVar.d.c);
                    break;
                case 24:
                    aVar.d.E = typedArray.getDimensionPixelSize(index, aVar.d.E);
                    break;
                case 25:
                    aVar.d.i = b(typedArray, index, aVar.d.i);
                    break;
                case 26:
                    aVar.d.j = b(typedArray, index, aVar.d.j);
                    break;
                case 27:
                    aVar.d.D = typedArray.getInt(index, aVar.d.D);
                    break;
                case 28:
                    aVar.d.F = typedArray.getDimensionPixelSize(index, aVar.d.F);
                    break;
                case 29:
                    aVar.d.k = b(typedArray, index, aVar.d.k);
                    break;
                case 30:
                    aVar.d.l = b(typedArray, index, aVar.d.l);
                    break;
                case 31:
                    if (Build.VERSION.SDK_INT >= 17) {
                        aVar.d.J = typedArray.getDimensionPixelSize(index, aVar.d.J);
                        break;
                    } else {
                        break;
                    }
                case 32:
                    aVar.d.r = b(typedArray, index, aVar.d.r);
                    break;
                case 33:
                    aVar.d.s = b(typedArray, index, aVar.d.s);
                    break;
                case 34:
                    aVar.d.G = typedArray.getDimensionPixelSize(index, aVar.d.G);
                    break;
                case 35:
                    aVar.d.n = b(typedArray, index, aVar.d.n);
                    break;
                case 36:
                    aVar.d.m = b(typedArray, index, aVar.d.m);
                    break;
                case 37:
                    aVar.d.w = typedArray.getFloat(index, aVar.d.w);
                    break;
                case 38:
                    aVar.f726a = typedArray.getResourceId(index, aVar.f726a);
                    break;
                case 39:
                    aVar.d.R = typedArray.getFloat(index, aVar.d.R);
                    break;
                case 40:
                    aVar.d.Q = typedArray.getFloat(index, aVar.d.Q);
                    break;
                case 41:
                    aVar.d.S = typedArray.getInt(index, aVar.d.S);
                    break;
                case 42:
                    aVar.d.T = typedArray.getInt(index, aVar.d.T);
                    break;
                case 43:
                    aVar.b.d = typedArray.getFloat(index, aVar.b.d);
                    break;
                case 44:
                    if (Build.VERSION.SDK_INT >= 21) {
                        aVar.e.l = true;
                        aVar.e.m = typedArray.getDimension(index, aVar.e.m);
                        break;
                    } else {
                        break;
                    }
                case 45:
                    aVar.e.c = typedArray.getFloat(index, aVar.e.c);
                    break;
                case 46:
                    aVar.e.d = typedArray.getFloat(index, aVar.e.d);
                    break;
                case 47:
                    aVar.e.e = typedArray.getFloat(index, aVar.e.e);
                    break;
                case 48:
                    aVar.e.f = typedArray.getFloat(index, aVar.e.f);
                    break;
                case 49:
                    aVar.e.g = typedArray.getDimension(index, aVar.e.g);
                    break;
                case 50:
                    aVar.e.h = typedArray.getDimension(index, aVar.e.h);
                    break;
                case 51:
                    aVar.e.i = typedArray.getDimension(index, aVar.e.i);
                    break;
                case 52:
                    aVar.e.j = typedArray.getDimension(index, aVar.e.j);
                    break;
                case 53:
                    if (Build.VERSION.SDK_INT >= 21) {
                        aVar.e.k = typedArray.getDimension(index, aVar.e.k);
                        break;
                    } else {
                        break;
                    }
                case 54:
                    aVar.d.U = typedArray.getInt(index, aVar.d.U);
                    break;
                case 55:
                    aVar.d.V = typedArray.getInt(index, aVar.d.V);
                    break;
                case 56:
                    aVar.d.W = typedArray.getDimensionPixelSize(index, aVar.d.W);
                    break;
                case 57:
                    aVar.d.X = typedArray.getDimensionPixelSize(index, aVar.d.X);
                    break;
                case 58:
                    aVar.d.Y = typedArray.getDimensionPixelSize(index, aVar.d.Y);
                    break;
                case 59:
                    aVar.d.Z = typedArray.getDimensionPixelSize(index, aVar.d.Z);
                    break;
                case 60:
                    aVar.e.b = typedArray.getFloat(index, aVar.e.b);
                    break;
                case 61:
                    aVar.d.y = b(typedArray, index, aVar.d.y);
                    break;
                case 62:
                    aVar.d.z = typedArray.getDimensionPixelSize(index, aVar.d.z);
                    break;
                case 63:
                    aVar.d.A = typedArray.getFloat(index, aVar.d.A);
                    break;
                case 64:
                    aVar.c.b = b(typedArray, index, aVar.c.b);
                    break;
                case 65:
                    if (typedArray.peekValue(index).type == 3) {
                        aVar.c.c = typedArray.getString(index);
                        break;
                    } else {
                        aVar.c.c = androidx.d.b.a.c.c[typedArray.getInteger(index, 0)];
                        break;
                    }
                case 66:
                    aVar.c.e = typedArray.getInt(index, 0);
                    break;
                case 67:
                    aVar.c.g = typedArray.getFloat(index, aVar.c.g);
                    break;
                case 68:
                    aVar.b.e = typedArray.getFloat(index, aVar.b.e);
                    break;
                case 69:
                    aVar.d.aa = typedArray.getFloat(index, 1.0f);
                    break;
                case 70:
                    aVar.d.ab = typedArray.getFloat(index, 1.0f);
                    break;
                case 71:
                    Log.e(z, "CURRENTLY UNSUPPORTED");
                    break;
                case 72:
                    aVar.d.ac = typedArray.getInt(index, aVar.d.ac);
                    break;
                case 73:
                    aVar.d.ad = typedArray.getDimensionPixelSize(index, aVar.d.ad);
                    break;
                case 74:
                    aVar.d.ag = typedArray.getString(index);
                    break;
                case 75:
                    aVar.d.ak = typedArray.getBoolean(index, aVar.d.ak);
                    break;
                case 76:
                    aVar.c.d = typedArray.getInt(index, aVar.c.d);
                    break;
                case 77:
                    aVar.d.ah = typedArray.getString(index);
                    break;
                case 78:
                    aVar.b.c = typedArray.getInt(index, aVar.b.c);
                    break;
                case 79:
                    aVar.c.f = typedArray.getFloat(index, aVar.c.f);
                    break;
                case 80:
                    aVar.d.ai = typedArray.getBoolean(index, aVar.d.ai);
                    break;
                case 81:
                    aVar.d.aj = typedArray.getBoolean(index, aVar.d.aj);
                    break;
                case 82:
                    Log.w(z, "unused attribute 0x" + Integer.toHexString(index) + "   " + I.get(index));
                    break;
                default:
                    Log.w(z, "Unknown attribute 0x" + Integer.toHexString(index) + "   " + I.get(index));
                    break;
            }
        }
    }

    private int[] a(View view, String str) {
        int i2;
        Object a2;
        String[] split = str.split(",");
        Context context = view.getContext();
        int[] iArr = new int[split.length];
        int i3 = 0;
        int i4 = 0;
        while (i3 < split.length) {
            String trim = split[i3].trim();
            try {
                i2 = m.g.class.getField(trim).getInt(null);
            } catch (Exception unused) {
                i2 = 0;
            }
            if (i2 == 0) {
                i2 = context.getResources().getIdentifier(trim, "id", context.getPackageName());
            }
            if (i2 == 0 && view.isInEditMode() && (view.getParent() instanceof androidx.d.e.d) && (a2 = ((androidx.d.e.d) view.getParent()).a(0, trim)) != null && (a2 instanceof Integer)) {
                i2 = ((Integer) a2).intValue();
            }
            iArr[i4] = i2;
            i3++;
            i4++;
        }
        return i4 != split.length ? Arrays.copyOf(iArr, i4) : iArr;
    }

    public a k(int i2) {
        if (this.H.containsKey(Integer.valueOf(i2))) {
            return this.H.get(Integer.valueOf(i2));
        }
        return null;
    }

    public int[] b() {
        Integer[] numArr = (Integer[]) this.H.keySet().toArray(new Integer[0]);
        int[] iArr = new int[numArr.length];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            iArr[i2] = numArr[i2].intValue();
        }
        return iArr;
    }

    public boolean c() {
        return this.D;
    }

    public void a(boolean z2) {
        this.D = z2;
    }

    public void b(boolean z2) {
        this.B = z2;
    }

    public void a(u uVar, int... iArr) {
        HashSet hashSet;
        Set<Integer> keySet = this.H.keySet();
        if (iArr.length != 0) {
            HashSet hashSet2 = new HashSet();
            for (int i2 : iArr) {
                hashSet2.add(Integer.valueOf(i2));
            }
            hashSet = hashSet2;
        } else {
            hashSet = new HashSet(keySet);
        }
        System.out.println(hashSet.size() + " constraints");
        StringBuilder sb = new StringBuilder();
        for (Integer num : (Integer[]) hashSet.toArray(new Integer[0])) {
            a aVar = this.H.get(num);
            sb.append("<Constraint id=");
            sb.append(num);
            sb.append(" \n");
            aVar.d.a(uVar, sb);
            sb.append("/>\n");
        }
        System.out.println(sb.toString());
    }
}
