package androidx.d.c.b;

import androidx.appcompat.widget.ActivityChooserView;
import androidx.d.c.b.a.p;
import androidx.d.c.b.d;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes.dex */
public class e {
    public static final int A = 8;
    public static final int B = 0;
    public static final int C = 1;
    public static final int D = 2;

    /* renamed from: a, reason: collision with root package name */
    private static final boolean f681a = false;
    public static final int ab = 0;
    public static final int ac = 1;
    public static final int ad = 2;
    public static final int ae = 3;
    public static final int af = 4;
    static final int ai = 0;
    static final int aj = 1;
    public static float az = 0.5f;
    private static final boolean b = false;
    private static final int ba = -2;
    protected static final int f = 1;
    protected static final int g = 2;
    public static final int p = 0;
    public static final int q = 1;
    public static final int r = 2;
    public static final int s = 3;
    public static final int t = 4;
    public static final int u = -1;
    public static final int v = 0;
    public static final int w = 1;
    public static final int x = 2;
    public static final int y = 0;
    public static final int z = 4;
    public int E;
    public int F;
    public int G;
    public int H;
    public int[] I;
    public int J;
    public int K;
    public float L;
    public int M;
    public int N;
    public float O;
    public boolean P;
    public boolean Q;
    int R;
    float S;
    public d T;
    public d U;
    public d V;
    public d W;
    public d X;
    d Y;
    d Z;
    float aA;
    float aB;
    int aC;
    int aD;
    int aE;
    int aF;
    boolean aG;
    boolean aH;
    boolean aI;
    boolean aJ;
    boolean aK;
    boolean aL;
    boolean aM;
    int aN;
    int aO;
    boolean aP;
    boolean aQ;
    public float[] aR;
    protected e[] aS;
    protected e[] aT;
    e aU;
    e aV;
    public int aW;
    public int aX;
    private boolean aY;
    private boolean aZ;
    public d aa;
    public d[] ag;
    protected ArrayList<d> ah;
    public a[] ak;
    public e al;
    int am;
    int an;
    public float ao;
    protected int ap;
    protected int aq;
    protected int ar;
    int as;
    int at;
    protected int au;
    protected int av;
    int aw;
    protected int ax;
    protected int ay;
    private int[] bb;
    private float bc;
    private boolean bd;
    private boolean be;
    private boolean bf;
    private int bg;
    private int bh;
    private boolean[] bi;
    private Object bj;
    private int bk;
    private int bl;
    private String bm;
    private String bn;
    private boolean c;
    private boolean d;
    private boolean e;
    public boolean h;
    public p[] i;
    public androidx.d.c.b.a.c j;
    public androidx.d.c.b.a.c k;
    public androidx.d.c.b.a.l l;
    public androidx.d.c.b.a.n m;
    public boolean[] n;
    boolean o;

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum a {
        FIXED,
        WRAP_CONTENT,
        MATCH_CONSTRAINT,
        MATCH_PARENT
    }

    public p c(int i) {
        if (i == 0) {
            return this.l;
        }
        if (i == 1) {
            return this.m;
        }
        return null;
    }

    public void a(int i, int i2, int i3, int i4, int i5, int i6) {
        a(i, i2, i3, i4);
        u(i5);
        if (i6 == 0) {
            this.aY = true;
            this.aZ = false;
        } else if (i6 == 1) {
            this.aY = false;
            this.aZ = true;
        } else if (i6 == 2) {
            this.aY = true;
            this.aZ = true;
        } else {
            this.aY = false;
            this.aZ = false;
        }
    }

    public void d(int i) {
        this.T.a(i);
        this.aq = i;
    }

    public void e(int i) {
        this.U.a(i);
        this.ar = i;
    }

    public void a(int i, int i2) {
        this.T.a(i);
        this.V.a(i2);
        this.aq = i;
        this.am = i2 - i;
        this.aY = true;
    }

    public void b(int i, int i2) {
        this.U.a(i);
        this.W.a(i2);
        this.ar = i;
        this.an = i2 - i;
        if (this.bd) {
            this.X.a(i + this.aw);
        }
        this.aZ = true;
    }

    public void f(int i) {
        if (this.bd) {
            int i2 = i - this.aw;
            int i3 = this.an + i2;
            this.ar = i2;
            this.U.a(i2);
            this.W.a(i3);
            this.X.a(i);
            this.aZ = true;
        }
    }

    public boolean d() {
        return this.aY || (this.T.f() && this.V.f());
    }

    public boolean e() {
        return this.aZ || (this.U.f() && this.W.f());
    }

    public void d_() {
        this.aY = false;
        this.aZ = false;
        int size = this.ah.size();
        for (int i = 0; i < size; i++) {
            this.ah.get(i).e();
        }
    }

    public void k() {
        this.c = true;
    }

    public boolean l() {
        int size = this.ah.size();
        for (int i = 0; i < size; i++) {
            if (this.ah.get(i).b()) {
                return true;
            }
        }
        return false;
    }

    public boolean g(int i) {
        if (i == 0) {
            return (this.T.c != null ? 1 : 0) + (this.V.c != null ? 1 : 0) < 2;
        }
        return ((this.U.c != null ? 1 : 0) + (this.W.c != null ? 1 : 0)) + (this.X.c != null ? 1 : 0) < 2;
    }

    public boolean m() {
        return this.bf;
    }

    public void b(boolean z2) {
        this.bf = z2;
    }

    public int n() {
        return this.bb[1];
    }

    public int o() {
        return this.bb[0];
    }

    public void h(int i) {
        this.bb[0] = i;
    }

    public void i(int i) {
        this.bb[1] = i;
    }

    public boolean p() {
        return this.G == 0 && this.ao == 0.0f && this.J == 0 && this.K == 0 && this.ak[0] == a.MATCH_CONSTRAINT;
    }

    public boolean q() {
        return this.H == 0 && this.ao == 0.0f && this.M == 0 && this.N == 0 && this.ak[1] == a.MATCH_CONSTRAINT;
    }

    public void c(boolean z2) {
        this.bd = z2;
    }

    public boolean r() {
        return this.bd;
    }

    public boolean s() {
        return this.be;
    }

    public void d(boolean z2) {
        this.be = z2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(int i, boolean z2) {
        this.bi[i] = z2;
    }

    public void e(boolean z2) {
        this.c = z2;
    }

    public boolean t() {
        return this.c && this.bl != 8;
    }

    public int u() {
        return this.bg;
    }

    public int v() {
        return this.bh;
    }

    public void c(int i, int i2) {
        this.bg = i;
        this.bh = i2;
        e(false);
    }

    public void w() {
        this.T.l();
        this.U.l();
        this.V.l();
        this.W.l();
        this.X.l();
        this.Y.l();
        this.Z.l();
        this.aa.l();
        this.al = null;
        this.bc = 0.0f;
        this.am = 0;
        this.an = 0;
        this.ao = 0.0f;
        this.ap = -1;
        this.aq = 0;
        this.ar = 0;
        this.au = 0;
        this.av = 0;
        this.aw = 0;
        this.ax = 0;
        this.ay = 0;
        this.aA = az;
        this.aB = az;
        this.ak[0] = a.FIXED;
        this.ak[1] = a.FIXED;
        this.bj = null;
        this.bk = 0;
        this.bl = 0;
        this.bn = null;
        this.aK = false;
        this.aL = false;
        this.aN = 0;
        this.aO = 0;
        this.aP = false;
        this.aQ = false;
        this.aR[0] = -1.0f;
        this.aR[1] = -1.0f;
        this.E = -1;
        this.F = -1;
        this.bb[0] = Integer.MAX_VALUE;
        this.bb[1] = Integer.MAX_VALUE;
        this.G = 0;
        this.H = 0;
        this.L = 1.0f;
        this.O = 1.0f;
        this.K = ActivityChooserView.a.f166a;
        this.N = ActivityChooserView.a.f166a;
        this.J = 0;
        this.M = 0;
        this.o = false;
        this.R = -1;
        this.S = 1.0f;
        this.aM = false;
        this.n[0] = true;
        this.n[1] = true;
        this.bf = false;
        this.bi[0] = false;
        this.bi[1] = false;
        this.c = true;
    }

    public boolean j(int i) {
        return this.ak[i] == a.MATCH_CONSTRAINT && this.ak[i == 0 ? (char) 1 : (char) 0] == a.MATCH_CONSTRAINT;
    }

    public boolean x() {
        return this.ak[0] == a.MATCH_CONSTRAINT && this.ak[1] == a.MATCH_CONSTRAINT;
    }

    public e() {
        this.h = false;
        this.i = new p[2];
        this.l = null;
        this.m = null;
        this.n = new boolean[]{true, true};
        this.o = false;
        this.c = true;
        this.d = false;
        this.e = true;
        this.aY = false;
        this.aZ = false;
        this.E = -1;
        this.F = -1;
        this.G = 0;
        this.H = 0;
        this.I = new int[2];
        this.J = 0;
        this.K = 0;
        this.L = 1.0f;
        this.M = 0;
        this.N = 0;
        this.O = 1.0f;
        this.R = -1;
        this.S = 1.0f;
        this.bb = new int[]{ActivityChooserView.a.f166a, ActivityChooserView.a.f166a};
        this.bc = 0.0f;
        this.bd = false;
        this.bf = false;
        this.bg = 0;
        this.bh = 0;
        this.T = new d(this, d.a.LEFT);
        this.U = new d(this, d.a.TOP);
        this.V = new d(this, d.a.RIGHT);
        this.W = new d(this, d.a.BOTTOM);
        this.X = new d(this, d.a.BASELINE);
        this.Y = new d(this, d.a.CENTER_X);
        this.Z = new d(this, d.a.CENTER_Y);
        this.aa = new d(this, d.a.CENTER);
        this.ag = new d[]{this.T, this.V, this.U, this.W, this.X, this.aa};
        this.ah = new ArrayList<>();
        this.bi = new boolean[2];
        this.ak = new a[]{a.FIXED, a.FIXED};
        this.al = null;
        this.am = 0;
        this.an = 0;
        this.ao = 0.0f;
        this.ap = -1;
        this.aq = 0;
        this.ar = 0;
        this.as = 0;
        this.at = 0;
        this.au = 0;
        this.av = 0;
        this.aw = 0;
        this.aA = az;
        this.aB = az;
        this.bk = 0;
        this.bl = 0;
        this.bm = null;
        this.bn = null;
        this.aM = false;
        this.aN = 0;
        this.aO = 0;
        this.aR = new float[]{-1.0f, -1.0f};
        this.aS = new e[]{null, null};
        this.aT = new e[]{null, null};
        this.aU = null;
        this.aV = null;
        this.aW = -1;
        this.aX = -1;
        b();
    }

    public e(String str) {
        this.h = false;
        this.i = new p[2];
        this.l = null;
        this.m = null;
        this.n = new boolean[]{true, true};
        this.o = false;
        this.c = true;
        this.d = false;
        this.e = true;
        this.aY = false;
        this.aZ = false;
        this.E = -1;
        this.F = -1;
        this.G = 0;
        this.H = 0;
        this.I = new int[2];
        this.J = 0;
        this.K = 0;
        this.L = 1.0f;
        this.M = 0;
        this.N = 0;
        this.O = 1.0f;
        this.R = -1;
        this.S = 1.0f;
        this.bb = new int[]{ActivityChooserView.a.f166a, ActivityChooserView.a.f166a};
        this.bc = 0.0f;
        this.bd = false;
        this.bf = false;
        this.bg = 0;
        this.bh = 0;
        this.T = new d(this, d.a.LEFT);
        this.U = new d(this, d.a.TOP);
        this.V = new d(this, d.a.RIGHT);
        this.W = new d(this, d.a.BOTTOM);
        this.X = new d(this, d.a.BASELINE);
        this.Y = new d(this, d.a.CENTER_X);
        this.Z = new d(this, d.a.CENTER_Y);
        this.aa = new d(this, d.a.CENTER);
        this.ag = new d[]{this.T, this.V, this.U, this.W, this.X, this.aa};
        this.ah = new ArrayList<>();
        this.bi = new boolean[2];
        this.ak = new a[]{a.FIXED, a.FIXED};
        this.al = null;
        this.am = 0;
        this.an = 0;
        this.ao = 0.0f;
        this.ap = -1;
        this.aq = 0;
        this.ar = 0;
        this.as = 0;
        this.at = 0;
        this.au = 0;
        this.av = 0;
        this.aw = 0;
        this.aA = az;
        this.aB = az;
        this.bk = 0;
        this.bl = 0;
        this.bm = null;
        this.bn = null;
        this.aM = false;
        this.aN = 0;
        this.aO = 0;
        this.aR = new float[]{-1.0f, -1.0f};
        this.aS = new e[]{null, null};
        this.aT = new e[]{null, null};
        this.aU = null;
        this.aV = null;
        this.aW = -1;
        this.aX = -1;
        b();
        b(str);
    }

    public e(int i, int i2, int i3, int i4) {
        this.h = false;
        this.i = new p[2];
        this.l = null;
        this.m = null;
        this.n = new boolean[]{true, true};
        this.o = false;
        this.c = true;
        this.d = false;
        this.e = true;
        this.aY = false;
        this.aZ = false;
        this.E = -1;
        this.F = -1;
        this.G = 0;
        this.H = 0;
        this.I = new int[2];
        this.J = 0;
        this.K = 0;
        this.L = 1.0f;
        this.M = 0;
        this.N = 0;
        this.O = 1.0f;
        this.R = -1;
        this.S = 1.0f;
        this.bb = new int[]{ActivityChooserView.a.f166a, ActivityChooserView.a.f166a};
        this.bc = 0.0f;
        this.bd = false;
        this.bf = false;
        this.bg = 0;
        this.bh = 0;
        this.T = new d(this, d.a.LEFT);
        this.U = new d(this, d.a.TOP);
        this.V = new d(this, d.a.RIGHT);
        this.W = new d(this, d.a.BOTTOM);
        this.X = new d(this, d.a.BASELINE);
        this.Y = new d(this, d.a.CENTER_X);
        this.Z = new d(this, d.a.CENTER_Y);
        this.aa = new d(this, d.a.CENTER);
        this.ag = new d[]{this.T, this.V, this.U, this.W, this.X, this.aa};
        this.ah = new ArrayList<>();
        this.bi = new boolean[2];
        this.ak = new a[]{a.FIXED, a.FIXED};
        this.al = null;
        this.am = 0;
        this.an = 0;
        this.ao = 0.0f;
        this.ap = -1;
        this.aq = 0;
        this.ar = 0;
        this.as = 0;
        this.at = 0;
        this.au = 0;
        this.av = 0;
        this.aw = 0;
        this.aA = az;
        this.aB = az;
        this.bk = 0;
        this.bl = 0;
        this.bm = null;
        this.bn = null;
        this.aM = false;
        this.aN = 0;
        this.aO = 0;
        this.aR = new float[]{-1.0f, -1.0f};
        this.aS = new e[]{null, null};
        this.aT = new e[]{null, null};
        this.aU = null;
        this.aV = null;
        this.aW = -1;
        this.aX = -1;
        this.aq = i;
        this.ar = i2;
        this.am = i3;
        this.an = i4;
        b();
    }

    public e(String str, int i, int i2, int i3, int i4) {
        this(i, i2, i3, i4);
        b(str);
    }

    public e(int i, int i2) {
        this(0, 0, i, i2);
    }

    public void y() {
        if (this.l == null) {
            this.l = new androidx.d.c.b.a.l(this);
        }
        if (this.m == null) {
            this.m = new androidx.d.c.b.a.n(this);
        }
    }

    public e(String str, int i, int i2) {
        this(i, i2);
        b(str);
    }

    public void a(androidx.d.c.c cVar) {
        this.T.a(cVar);
        this.U.a(cVar);
        this.V.a(cVar);
        this.W.a(cVar);
        this.X.a(cVar);
        this.aa.a(cVar);
        this.Y.a(cVar);
        this.Z.a(cVar);
    }

    private void b() {
        this.ah.add(this.T);
        this.ah.add(this.U);
        this.ah.add(this.V);
        this.ah.add(this.W);
        this.ah.add(this.Y);
        this.ah.add(this.Z);
        this.ah.add(this.aa);
        this.ah.add(this.X);
    }

    public boolean z() {
        return this.al == null;
    }

    public e A() {
        return this.al;
    }

    public void a_(e eVar) {
        this.al = eVar;
    }

    public void f(boolean z2) {
        this.P = z2;
    }

    public boolean B() {
        return this.P;
    }

    public void g(boolean z2) {
        this.Q = z2;
    }

    public boolean C() {
        return this.Q;
    }

    public void a(e eVar, float f2, int i) {
        a(d.a.CENTER, eVar, d.a.CENTER, i, 0);
        this.bc = f2;
    }

    public String D() {
        return this.bn;
    }

    public void a(String str) {
        this.bn = str;
    }

    public void k(int i) {
        this.bl = i;
    }

    public int E() {
        return this.bl;
    }

    public String F() {
        return this.bm;
    }

    public void b(String str) {
        this.bm = str;
    }

    public void a(androidx.d.c.e eVar, String str) {
        this.bm = str;
        androidx.d.c.i a2 = eVar.a(this.T);
        androidx.d.c.i a3 = eVar.a(this.U);
        androidx.d.c.i a4 = eVar.a(this.V);
        androidx.d.c.i a5 = eVar.a(this.W);
        a2.a(str + ".left");
        a3.a(str + ".top");
        a4.a(str + ".right");
        a5.a(str + ".bottom");
        eVar.a(this.X).a(str + ".baseline");
    }

    public void a(androidx.d.c.e eVar) {
        eVar.a(this.T);
        eVar.a(this.U);
        eVar.a(this.V);
        eVar.a(this.W);
        if (this.aw > 0) {
            eVar.a(this.X);
        }
    }

    public String toString() {
        String str;
        String str2;
        StringBuilder sb = new StringBuilder();
        if (this.bn != null) {
            str = "type: " + this.bn + " ";
        } else {
            str = com.yftech.service.upgrade.a.d;
        }
        sb.append(str);
        if (this.bm != null) {
            str2 = "id: " + this.bm + " ";
        } else {
            str2 = com.yftech.service.upgrade.a.d;
        }
        sb.append(str2);
        sb.append("(");
        sb.append(this.aq);
        sb.append(", ");
        sb.append(this.ar);
        sb.append(") - (");
        sb.append(this.am);
        sb.append(" x ");
        sb.append(this.an);
        sb.append(")");
        return sb.toString();
    }

    public int G() {
        if (this.al != null && (this.al instanceof f)) {
            return ((f) this.al).aZ + this.aq;
        }
        return this.aq;
    }

    public int H() {
        if (this.al != null && (this.al instanceof f)) {
            return ((f) this.al).ba + this.ar;
        }
        return this.ar;
    }

    public int I() {
        if (this.bl == 8) {
            return 0;
        }
        return this.am;
    }

    public int J() {
        int i;
        int i2 = this.am;
        if (this.ak[0] != a.MATCH_CONSTRAINT) {
            return i2;
        }
        if (this.G == 1) {
            i = Math.max(this.J, i2);
        } else if (this.J > 0) {
            i = this.J;
            this.am = i;
        } else {
            i = 0;
        }
        return (this.K <= 0 || this.K >= i) ? i : this.K;
    }

    public int K() {
        int i;
        int i2 = this.an;
        if (this.ak[1] != a.MATCH_CONSTRAINT) {
            return i2;
        }
        if (this.H == 1) {
            i = Math.max(this.M, i2);
        } else if (this.M > 0) {
            i = this.M;
            this.an = i;
        } else {
            i = 0;
        }
        return (this.N <= 0 || this.N >= i) ? i : this.N;
    }

    public int L() {
        if (this.bl == 8) {
            return 0;
        }
        return this.an;
    }

    public int l(int i) {
        if (i == 0) {
            return I();
        }
        if (i == 1) {
            return L();
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int M() {
        return this.aq + this.au;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int N() {
        return this.ar + this.av;
    }

    public int O() {
        return this.ax;
    }

    public int P() {
        return this.ay;
    }

    public int Q() {
        return G();
    }

    public int R() {
        return H();
    }

    public int S() {
        return G() + this.am;
    }

    public int T() {
        return H() + this.an;
    }

    public int U() {
        int i = this.T != null ? 0 + this.T.d : 0;
        return this.V != null ? i + this.V.d : i;
    }

    public int V() {
        int i = this.T != null ? 0 + this.U.d : 0;
        return this.V != null ? i + this.W.d : i;
    }

    public float W() {
        return this.aA;
    }

    public float X() {
        return this.aB;
    }

    public float m(int i) {
        if (i == 0) {
            return this.aA;
        }
        if (i == 1) {
            return this.aB;
        }
        return -1.0f;
    }

    public boolean Y() {
        return this.bd;
    }

    public int Z() {
        return this.aw;
    }

    public Object aa() {
        return this.bj;
    }

    public ArrayList<d> ab() {
        return this.ah;
    }

    public void n(int i) {
        this.aq = i;
    }

    public void o(int i) {
        this.ar = i;
    }

    public void d(int i, int i2) {
        this.aq = i;
        this.ar = i2;
    }

    public void e(int i, int i2) {
        this.au = i;
        this.av = i2;
    }

    public void a(d.a aVar, int i) {
        switch (aVar) {
            case LEFT:
                this.T.e = i;
                return;
            case TOP:
                this.U.e = i;
                return;
            case RIGHT:
                this.V.e = i;
                return;
            case BOTTOM:
                this.W.e = i;
                return;
            default:
                return;
        }
    }

    public void p(int i) {
        this.am = i;
        if (this.am < this.ax) {
            this.am = this.ax;
        }
    }

    public void q(int i) {
        this.an = i;
        if (this.an < this.ay) {
            this.an = this.ay;
        }
    }

    public void f(int i, int i2) {
        if (i2 == 0) {
            p(i);
        } else if (i2 == 1) {
            q(i);
        }
    }

    public void a(int i, int i2, int i3, float f2) {
        this.G = i;
        this.J = i2;
        if (i3 == Integer.MAX_VALUE) {
            i3 = 0;
        }
        this.K = i3;
        this.L = f2;
        if (f2 <= 0.0f || f2 >= 1.0f || this.G != 0) {
            return;
        }
        this.G = 2;
    }

    public void b(int i, int i2, int i3, float f2) {
        this.H = i;
        this.M = i2;
        if (i3 == Integer.MAX_VALUE) {
            i3 = 0;
        }
        this.N = i3;
        this.O = f2;
        if (f2 <= 0.0f || f2 >= 1.0f || this.H != 0) {
            return;
        }
        this.H = 2;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0084 -> B:31:0x0085). Please report as a decompilation issue!!! */
    public void c(String str) {
        float f2;
        int i = 0;
        if (str == null || str.length() == 0) {
            this.ao = 0.0f;
            return;
        }
        int i2 = -1;
        int length = str.length();
        int indexOf = str.indexOf(44);
        int i3 = 0;
        if (indexOf > 0 && indexOf < length - 1) {
            String substring = str.substring(0, indexOf);
            if (substring.equalsIgnoreCase("W")) {
                i2 = 0;
            } else if (substring.equalsIgnoreCase("H")) {
                i2 = 1;
            }
            i3 = indexOf + 1;
        }
        int indexOf2 = str.indexOf(58);
        if (indexOf2 >= 0 && indexOf2 < length - 1) {
            String substring2 = str.substring(i3, indexOf2);
            String substring3 = str.substring(indexOf2 + 1);
            if (substring2.length() > 0 && substring3.length() > 0) {
                float parseFloat = Float.parseFloat(substring2);
                float parseFloat2 = Float.parseFloat(substring3);
                if (parseFloat > 0.0f && parseFloat2 > 0.0f) {
                    if (i2 == 1) {
                        f2 = Math.abs(parseFloat2 / parseFloat);
                    } else {
                        f2 = Math.abs(parseFloat / parseFloat2);
                    }
                }
            }
            f2 = i;
        } else {
            String substring4 = str.substring(i3);
            if (substring4.length() > 0) {
                f2 = Float.parseFloat(substring4);
            }
            f2 = i;
        }
        i = (f2 > i ? 1 : (f2 == i ? 0 : -1));
        if (i > 0) {
            this.ao = f2;
            this.ap = i2;
        }
    }

    public void a(float f2, int i) {
        this.ao = f2;
        this.ap = i;
    }

    public float ac() {
        return this.ao;
    }

    public int ad() {
        return this.ap;
    }

    public void a(float f2) {
        this.aA = f2;
    }

    public void b(float f2) {
        this.aB = f2;
    }

    public void r(int i) {
        if (i < 0) {
            this.ax = 0;
        } else {
            this.ax = i;
        }
    }

    public void s(int i) {
        if (i < 0) {
            this.ay = 0;
        } else {
            this.ay = i;
        }
    }

    public void g(int i, int i2) {
        this.am = i;
        if (this.am < this.ax) {
            this.am = this.ax;
        }
        this.an = i2;
        if (this.an < this.ay) {
            this.an = this.ay;
        }
    }

    public void a(int i, int i2, int i3, int i4) {
        int i5 = i3 - i;
        int i6 = i4 - i2;
        this.aq = i;
        this.ar = i2;
        if (this.bl == 8) {
            this.am = 0;
            this.an = 0;
            return;
        }
        if (this.ak[0] == a.FIXED && i5 < this.am) {
            i5 = this.am;
        }
        if (this.ak[1] == a.FIXED && i6 < this.an) {
            i6 = this.an;
        }
        this.am = i5;
        this.an = i6;
        if (this.an < this.ay) {
            this.an = this.ay;
        }
        if (this.am < this.ax) {
            this.am = this.ax;
        }
    }

    public void a(int i, int i2, int i3) {
        if (i3 == 0) {
            h(i, i2);
        } else if (i3 == 1) {
            i(i, i2);
        }
    }

    public void h(int i, int i2) {
        this.aq = i;
        this.am = i2 - i;
        if (this.am < this.ax) {
            this.am = this.ax;
        }
    }

    public void i(int i, int i2) {
        this.ar = i;
        this.an = i2 - i;
        if (this.an < this.ay) {
            this.an = this.ay;
        }
    }

    int t(int i) {
        if (i == 0) {
            return this.as;
        }
        if (i == 1) {
            return this.at;
        }
        return 0;
    }

    void j(int i, int i2) {
        if (i2 == 0) {
            this.as = i;
        } else if (i2 == 1) {
            this.at = i;
        }
    }

    public void u(int i) {
        this.aw = i;
        this.bd = i > 0;
    }

    public void a(Object obj) {
        this.bj = obj;
    }

    public void v(int i) {
        if (i >= 0) {
            this.bk = i;
        } else {
            this.bk = 0;
        }
    }

    public int ae() {
        return this.bk;
    }

    public void c(float f2) {
        this.aR[0] = f2;
    }

    public void d(float f2) {
        this.aR[1] = f2;
    }

    public void w(int i) {
        this.aN = i;
    }

    public int af() {
        return this.aN;
    }

    public void x(int i) {
        this.aO = i;
    }

    public int ag() {
        return this.aO;
    }

    public boolean a() {
        return this.bl != 8;
    }

    public void a(d.a aVar, e eVar, d.a aVar2, int i, int i2) {
        a(aVar).a(eVar.a(aVar2), i, i2, true);
    }

    public void a(d dVar, d dVar2, int i) {
        if (dVar.h() == this) {
            a(dVar.i(), dVar2.h(), dVar2.i(), i);
        }
    }

    public void a(d.a aVar, e eVar, d.a aVar2) {
        a(aVar, eVar, aVar2, 0);
    }

    public void a(d.a aVar, e eVar, d.a aVar2, int i) {
        boolean z2;
        if (aVar == d.a.CENTER) {
            if (aVar2 == d.a.CENTER) {
                d a2 = a(d.a.LEFT);
                d a3 = a(d.a.RIGHT);
                d a4 = a(d.a.TOP);
                d a5 = a(d.a.BOTTOM);
                boolean z3 = true;
                if ((a2 == null || !a2.m()) && (a3 == null || !a3.m())) {
                    a(d.a.LEFT, eVar, d.a.LEFT, 0);
                    a(d.a.RIGHT, eVar, d.a.RIGHT, 0);
                    z2 = true;
                } else {
                    z2 = false;
                }
                if ((a4 == null || !a4.m()) && (a5 == null || !a5.m())) {
                    a(d.a.TOP, eVar, d.a.TOP, 0);
                    a(d.a.BOTTOM, eVar, d.a.BOTTOM, 0);
                } else {
                    z3 = false;
                }
                if (z2 && z3) {
                    a(d.a.CENTER).a(eVar.a(d.a.CENTER), 0);
                    return;
                } else if (z2) {
                    a(d.a.CENTER_X).a(eVar.a(d.a.CENTER_X), 0);
                    return;
                } else {
                    if (z3) {
                        a(d.a.CENTER_Y).a(eVar.a(d.a.CENTER_Y), 0);
                        return;
                    }
                    return;
                }
            }
            if (aVar2 == d.a.LEFT || aVar2 == d.a.RIGHT) {
                a(d.a.LEFT, eVar, aVar2, 0);
                a(d.a.RIGHT, eVar, aVar2, 0);
                a(d.a.CENTER).a(eVar.a(aVar2), 0);
                return;
            } else {
                if (aVar2 == d.a.TOP || aVar2 == d.a.BOTTOM) {
                    a(d.a.TOP, eVar, aVar2, 0);
                    a(d.a.BOTTOM, eVar, aVar2, 0);
                    a(d.a.CENTER).a(eVar.a(aVar2), 0);
                    return;
                }
                return;
            }
        }
        if (aVar == d.a.CENTER_X && (aVar2 == d.a.LEFT || aVar2 == d.a.RIGHT)) {
            d a6 = a(d.a.LEFT);
            d a7 = eVar.a(aVar2);
            d a8 = a(d.a.RIGHT);
            a6.a(a7, 0);
            a8.a(a7, 0);
            a(d.a.CENTER_X).a(a7, 0);
            return;
        }
        if (aVar == d.a.CENTER_Y && (aVar2 == d.a.TOP || aVar2 == d.a.BOTTOM)) {
            d a9 = eVar.a(aVar2);
            a(d.a.TOP).a(a9, 0);
            a(d.a.BOTTOM).a(a9, 0);
            a(d.a.CENTER_Y).a(a9, 0);
            return;
        }
        if (aVar == d.a.CENTER_X && aVar2 == d.a.CENTER_X) {
            a(d.a.LEFT).a(eVar.a(d.a.LEFT), 0);
            a(d.a.RIGHT).a(eVar.a(d.a.RIGHT), 0);
            a(d.a.CENTER_X).a(eVar.a(aVar2), 0);
            return;
        }
        if (aVar == d.a.CENTER_Y && aVar2 == d.a.CENTER_Y) {
            a(d.a.TOP).a(eVar.a(d.a.TOP), 0);
            a(d.a.BOTTOM).a(eVar.a(d.a.BOTTOM), 0);
            a(d.a.CENTER_Y).a(eVar.a(aVar2), 0);
            return;
        }
        d a10 = a(aVar);
        d a11 = eVar.a(aVar2);
        if (a10.a(a11)) {
            if (aVar == d.a.BASELINE) {
                d a12 = a(d.a.TOP);
                d a13 = a(d.a.BOTTOM);
                if (a12 != null) {
                    a12.l();
                }
                if (a13 != null) {
                    a13.l();
                }
                i = 0;
            } else if (aVar == d.a.TOP || aVar == d.a.BOTTOM) {
                d a14 = a(d.a.BASELINE);
                if (a14 != null) {
                    a14.l();
                }
                d a15 = a(d.a.CENTER);
                if (a15.k() != a11) {
                    a15.l();
                }
                d p2 = a(aVar).p();
                d a16 = a(d.a.CENTER_Y);
                if (a16.m()) {
                    p2.l();
                    a16.l();
                }
            } else if (aVar == d.a.LEFT || aVar == d.a.RIGHT) {
                d a17 = a(d.a.CENTER);
                if (a17.k() != a11) {
                    a17.l();
                }
                d p3 = a(aVar).p();
                d a18 = a(d.a.CENTER_X);
                if (a18.m()) {
                    p3.l();
                    a18.l();
                }
            }
            a10.a(a11, i);
        }
    }

    public void ah() {
        ai();
        b(az);
        a(az);
    }

    public void a(d dVar) {
        if (A() != null && (A() instanceof f) && ((f) A()).au()) {
            return;
        }
        d a2 = a(d.a.LEFT);
        d a3 = a(d.a.RIGHT);
        d a4 = a(d.a.TOP);
        d a5 = a(d.a.BOTTOM);
        d a6 = a(d.a.CENTER);
        d a7 = a(d.a.CENTER_X);
        d a8 = a(d.a.CENTER_Y);
        if (dVar == a6) {
            if (a2.m() && a3.m() && a2.k() == a3.k()) {
                a2.l();
                a3.l();
            }
            if (a4.m() && a5.m() && a4.k() == a5.k()) {
                a4.l();
                a5.l();
            }
            this.aA = 0.5f;
            this.aB = 0.5f;
        } else if (dVar == a7) {
            if (a2.m() && a3.m() && a2.k().h() == a3.k().h()) {
                a2.l();
                a3.l();
            }
            this.aA = 0.5f;
        } else if (dVar == a8) {
            if (a4.m() && a5.m() && a4.k().h() == a5.k().h()) {
                a4.l();
                a5.l();
            }
            this.aB = 0.5f;
        } else if (dVar == a2 || dVar == a3) {
            if (a2.m() && a2.k() == a3.k()) {
                a6.l();
            }
        } else if ((dVar == a4 || dVar == a5) && a4.m() && a4.k() == a5.k()) {
            a6.l();
        }
        dVar.l();
    }

    public void ai() {
        e A2 = A();
        if (A2 != null && (A2 instanceof f) && ((f) A()).au()) {
            return;
        }
        int size = this.ah.size();
        for (int i = 0; i < size; i++) {
            this.ah.get(i).l();
        }
    }

    public d a(d.a aVar) {
        switch (aVar) {
            case LEFT:
                return this.T;
            case TOP:
                return this.U;
            case RIGHT:
                return this.V;
            case BOTTOM:
                return this.W;
            case BASELINE:
                return this.X;
            case CENTER:
                return this.aa;
            case CENTER_X:
                return this.Y;
            case CENTER_Y:
                return this.Z;
            case NONE:
                return null;
            default:
                throw new AssertionError(aVar.name());
        }
    }

    public a aj() {
        return this.ak[0];
    }

    public a ak() {
        return this.ak[1];
    }

    public a y(int i) {
        if (i == 0) {
            return aj();
        }
        if (i == 1) {
            return ak();
        }
        return null;
    }

    public void a(a aVar) {
        this.ak[0] = aVar;
    }

    public void b(a aVar) {
        this.ak[1] = aVar;
    }

    public boolean al() {
        if (this.T.c == null || this.T.c.c != this.T) {
            return this.V.c != null && this.V.c.c == this.V;
        }
        return true;
    }

    public e z(int i) {
        if (i == 0) {
            if (this.T.c == null || this.T.c.c != this.T) {
                return null;
            }
            return this.T.c.f678a;
        }
        if (i == 1 && this.U.c != null && this.U.c.c == this.U) {
            return this.U.c.f678a;
        }
        return null;
    }

    public e A(int i) {
        if (i == 0) {
            if (this.V.c == null || this.V.c.c != this.V) {
                return null;
            }
            return this.V.c.f678a;
        }
        if (i == 1 && this.W.c != null && this.W.c.c == this.W) {
            return this.W.c.f678a;
        }
        return null;
    }

    public e am() {
        if (!al()) {
            return null;
        }
        e eVar = this;
        e eVar2 = null;
        while (eVar2 == null && eVar != null) {
            d a2 = eVar.a(d.a.LEFT);
            d k = a2 == null ? null : a2.k();
            e h = k == null ? null : k.h();
            if (h == A()) {
                return eVar;
            }
            d k2 = h == null ? null : h.a(d.a.RIGHT).k();
            if (k2 == null || k2.h() == eVar) {
                eVar = h;
            } else {
                eVar2 = eVar;
            }
        }
        return eVar2;
    }

    public boolean an() {
        if (this.U.c == null || this.U.c.c != this.U) {
            return this.W.c != null && this.W.c.c == this.W;
        }
        return true;
    }

    public e ao() {
        if (!an()) {
            return null;
        }
        e eVar = this;
        e eVar2 = null;
        while (eVar2 == null && eVar != null) {
            d a2 = eVar.a(d.a.TOP);
            d k = a2 == null ? null : a2.k();
            e h = k == null ? null : k.h();
            if (h == A()) {
                return eVar;
            }
            d k2 = h == null ? null : h.a(d.a.BOTTOM).k();
            if (k2 == null || k2.h() == eVar) {
                eVar = h;
            } else {
                eVar2 = eVar;
            }
        }
        return eVar2;
    }

    private boolean a(int i) {
        int i2 = i * 2;
        if (this.ag[i2].c != null && this.ag[i2].c.c != this.ag[i2]) {
            int i3 = i2 + 1;
            if (this.ag[i3].c != null && this.ag[i3].c.c == this.ag[i3]) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:132:0x0333, code lost:
    
        if (r52.R == (-1)) goto L191;
     */
    /* JADX WARN: Removed duplicated region for block: B:129:0x032c  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x033f  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0356  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0361  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x037f  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x03d6  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x03e7  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x0418  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0483  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0505  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0508  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x059d  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x05e3  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x0618  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x060e  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x05a0  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x04f1  */
    /* JADX WARN: Removed duplicated region for block: B:251:0x041b  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x03f2  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x03e1  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x0364  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x033a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(androidx.d.c.e eVar, boolean z2) {
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        int i;
        int i2;
        int i3;
        int i4;
        boolean z7;
        int i5;
        boolean z8;
        boolean z9;
        int i6;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        androidx.d.c.i iVar;
        androidx.d.c.i iVar2;
        androidx.d.c.i iVar3;
        androidx.d.c.i iVar4;
        androidx.d.c.i iVar5;
        androidx.d.c.i iVar6;
        androidx.d.c.i iVar7;
        androidx.d.c.i iVar8;
        int i7;
        int i8;
        int i9;
        androidx.d.c.e eVar2;
        e eVar3;
        int i10;
        androidx.d.c.i iVar9;
        androidx.d.c.i iVar10;
        e eVar4;
        boolean z15;
        boolean al;
        boolean an;
        androidx.d.c.i a2 = eVar.a(this.T);
        androidx.d.c.i a3 = eVar.a(this.V);
        androidx.d.c.i a4 = eVar.a(this.U);
        androidx.d.c.i a5 = eVar.a(this.W);
        androidx.d.c.i a6 = eVar.a(this.X);
        if (this.al != null) {
            z4 = this.al != null && this.al.ak[0] == a.WRAP_CONTENT;
            z3 = this.al != null && this.al.ak[1] == a.WRAP_CONTENT;
        } else {
            z3 = false;
            z4 = false;
        }
        if (this.bl != 8 || l() || this.bi[0] || this.bi[1]) {
            if (this.aY || this.aZ) {
                if (this.aY) {
                    eVar.a(a2, this.aq);
                    eVar.a(a3, this.aq + this.am);
                    if (z4 && this.al != null) {
                        if (this.e) {
                            f fVar = (f) this.al;
                            fVar.b(this.T);
                            fVar.e(this.V);
                        } else {
                            eVar.a(eVar.a(this.al.V), a3, 0, 5);
                        }
                    }
                }
                if (this.aZ) {
                    eVar.a(a4, this.ar);
                    eVar.a(a5, this.ar + this.an);
                    if (this.X.b()) {
                        eVar.a(a6, this.ar + this.aw);
                    }
                    if (z3 && this.al != null) {
                        if (this.e) {
                            f fVar2 = (f) this.al;
                            fVar2.b(this.U);
                            fVar2.d(this.W);
                        } else {
                            eVar.a(eVar.a(this.al.W), a5, 0, 5);
                        }
                    }
                }
                if (this.aY && this.aZ) {
                    this.aY = false;
                    this.aZ = false;
                    return;
                }
            }
            if (androidx.d.c.e.r != null) {
                androidx.d.c.e.r.K++;
            }
            if (z2 && this.l != null && this.m != null && this.l.j.j && this.l.k.j && this.m.j.j && this.m.k.j) {
                if (androidx.d.c.e.r != null) {
                    androidx.d.c.e.r.w++;
                }
                eVar.a(a2, this.l.j.g);
                eVar.a(a3, this.l.k.g);
                eVar.a(a4, this.m.j.g);
                eVar.a(a5, this.m.k.g);
                eVar.a(a6, this.m.f670a.g);
                if (this.al != null) {
                    if (z4 && this.n[0] && !al()) {
                        eVar.a(eVar.a(this.al.V), a3, 0, 8);
                    }
                    if (z3 && this.n[1] && !an()) {
                        eVar.a(eVar.a(this.al.W), a5, 0, 8);
                    }
                }
                this.aY = false;
                this.aZ = false;
                return;
            }
            if (androidx.d.c.e.r != null) {
                androidx.d.c.e.r.x++;
            }
            if (this.al != null) {
                if (a(0)) {
                    ((f) this.al).a(this, 0);
                    al = true;
                } else {
                    al = al();
                }
                if (a(1)) {
                    ((f) this.al).a(this, 1);
                    an = true;
                } else {
                    an = an();
                }
                if (!al && z4 && this.bl != 8 && this.T.c == null && this.V.c == null) {
                    eVar.a(eVar.a(this.al.V), a3, 0, 1);
                }
                if (!an && z3 && this.bl != 8 && this.U.c == null && this.W.c == null && this.X == null) {
                    eVar.a(eVar.a(this.al.W), a5, 0, 1);
                }
                z5 = al;
                z6 = an;
            } else {
                z5 = false;
                z6 = false;
            }
            int i11 = this.am;
            if (i11 < this.ax) {
                i11 = this.ax;
            }
            int i12 = this.an;
            if (i12 < this.ay) {
                i12 = this.ay;
            }
            boolean z16 = this.ak[0] != a.MATCH_CONSTRAINT;
            boolean z17 = this.ak[1] != a.MATCH_CONSTRAINT;
            this.R = this.ap;
            this.S = this.ao;
            int i13 = this.G;
            int i14 = this.H;
            int i15 = i11;
            if (this.ao > 0.0f && this.bl != 8) {
                int i16 = i12;
                if (this.ak[0] == a.MATCH_CONSTRAINT && i13 == 0) {
                    i13 = 3;
                }
                if (this.ak[1] == a.MATCH_CONSTRAINT && i14 == 0) {
                    i14 = 3;
                }
                if (this.ak[0] == a.MATCH_CONSTRAINT && this.ak[1] == a.MATCH_CONSTRAINT && i13 == 3 && i14 == 3) {
                    a(z4, z3, z16, z17);
                } else {
                    if (this.ak[0] == a.MATCH_CONSTRAINT && i13 == 3) {
                        this.R = 0;
                        i = (int) (this.S * this.an);
                        if (this.ak[1] != a.MATCH_CONSTRAINT) {
                            i3 = 4;
                            i2 = i16;
                        } else {
                            i3 = i13;
                            i2 = i16;
                            i4 = i14;
                            z7 = true;
                        }
                    } else if (this.ak[1] == a.MATCH_CONSTRAINT && i14 == 3) {
                        this.R = 1;
                        if (this.ap == -1) {
                            this.S = 1.0f / this.S;
                        }
                        int i17 = (int) (this.S * this.am);
                        if (this.ak[0] != a.MATCH_CONSTRAINT) {
                            i2 = i17;
                            i4 = 4;
                            i = i15;
                            z7 = false;
                        } else {
                            i2 = i17;
                            i4 = i14;
                            i = i15;
                            z7 = true;
                        }
                        i3 = i13;
                    }
                    this.I[0] = i3;
                    this.I[1] = i4;
                    this.o = z7;
                    if (z7) {
                        if (this.R != 0) {
                            i5 = -1;
                        } else {
                            i5 = -1;
                        }
                        z8 = true;
                        boolean z18 = !z7 && (this.R == 1 || this.R == i5);
                        z9 = this.ak[0] != a.WRAP_CONTENT && (this instanceof f);
                        i6 = !z9 ? 0 : i;
                        z10 = !this.aa.m();
                        z11 = this.bi[0];
                        boolean z19 = this.bi[1];
                        if (this.E != 2 && !this.aY) {
                            if (z2 || this.l == null || !this.l.j.j || !this.l.k.j) {
                                androidx.d.c.i a7 = this.al == null ? eVar.a(this.al.V) : null;
                                z12 = z3;
                                z13 = z4;
                                z14 = z7;
                                iVar = a6;
                                iVar2 = a5;
                                iVar3 = a4;
                                iVar4 = a3;
                                iVar5 = a2;
                                a(eVar, true, z4, z3, this.n[0], this.al == null ? eVar.a(this.al.T) : null, a7, this.ak[0], z9, this.T, this.V, this.aq, i6, this.ax, this.bb[0], this.aA, z8, this.ak[1] != a.MATCH_CONSTRAINT, z5, z6, z11, i3, i4, this.J, this.K, this.L, z10);
                                if (z2) {
                                    iVar6 = iVar;
                                    iVar7 = iVar2;
                                    iVar8 = iVar3;
                                    i7 = 8;
                                    i8 = 0;
                                    i9 = 1;
                                    eVar2 = eVar;
                                    eVar3 = this;
                                } else {
                                    eVar3 = this;
                                    if (eVar3.m != null && eVar3.m.j.j && eVar3.m.k.j) {
                                        iVar8 = iVar3;
                                        eVar2 = eVar;
                                        eVar2.a(iVar8, eVar3.m.j.g);
                                        iVar7 = iVar2;
                                        eVar2.a(iVar7, eVar3.m.k.g);
                                        iVar6 = iVar;
                                        eVar2.a(iVar6, eVar3.m.f670a.g);
                                        if (eVar3.al == null || z6 || !z12) {
                                            i7 = 8;
                                            i8 = 0;
                                            i9 = 1;
                                        } else {
                                            i9 = 1;
                                            if (eVar3.n[1]) {
                                                i7 = 8;
                                                i8 = 0;
                                                eVar2.a(eVar2.a(eVar3.al.W), iVar7, 0, 8);
                                            } else {
                                                i7 = 8;
                                                i8 = 0;
                                            }
                                        }
                                        i10 = i8;
                                        if (eVar3.F == 2) {
                                            i10 = i8;
                                        }
                                        if (i10 != 0 || eVar3.aZ) {
                                            iVar9 = iVar7;
                                            iVar10 = iVar8;
                                        } else {
                                            boolean z20 = (eVar3.ak[i9] == a.WRAP_CONTENT && (eVar3 instanceof f)) ? i9 : i8;
                                            if (z20) {
                                                i2 = i8;
                                            }
                                            androidx.d.c.i a8 = eVar3.al != null ? eVar2.a(eVar3.al.W) : null;
                                            androidx.d.c.i a9 = eVar3.al != null ? eVar2.a(eVar3.al.U) : null;
                                            if (eVar3.aw > 0 || eVar3.bl == i7) {
                                                if (eVar3.X.c != null) {
                                                    eVar2.c(iVar6, iVar8, Z(), i7);
                                                    eVar2.c(iVar6, eVar2.a(eVar3.X.c), i8, i7);
                                                    if (z12) {
                                                        eVar2.a(a8, eVar2.a(eVar3.W), i8, 5);
                                                    }
                                                    z15 = i8;
                                                    iVar9 = iVar7;
                                                    iVar10 = iVar8;
                                                    a(eVar, false, z12, z13, eVar3.n[i9], a9, a8, eVar3.ak[i9], z20, eVar3.U, eVar3.W, eVar3.ar, i2, eVar3.ay, eVar3.bb[i9], eVar3.aB, z18, eVar3.ak[i8] != a.MATCH_CONSTRAINT, z6, z5, z19, i4, i3, eVar3.M, eVar3.N, eVar3.O, z15);
                                                } else if (eVar3.bl == i7) {
                                                    eVar2.c(iVar6, iVar8, i8, i7);
                                                } else {
                                                    eVar2.c(iVar6, iVar8, Z(), i7);
                                                }
                                            }
                                            z15 = z10;
                                            iVar9 = iVar7;
                                            iVar10 = iVar8;
                                            a(eVar, false, z12, z13, eVar3.n[i9], a9, a8, eVar3.ak[i9], z20, eVar3.U, eVar3.W, eVar3.ar, i2, eVar3.ay, eVar3.bb[i9], eVar3.aB, z18, eVar3.ak[i8] != a.MATCH_CONSTRAINT, z6, z5, z19, i4, i3, eVar3.M, eVar3.N, eVar3.O, z15);
                                        }
                                        if (z14) {
                                            eVar4 = this;
                                            if (eVar4.R == 1) {
                                                eVar.a(iVar9, iVar10, iVar4, iVar5, eVar4.S, 8);
                                            } else {
                                                eVar.a(iVar4, iVar5, iVar9, iVar10, eVar4.S, 8);
                                            }
                                        } else {
                                            eVar4 = this;
                                        }
                                        if (eVar4.aa.m()) {
                                            eVar.a(eVar4, eVar4.aa.k().h(), (float) Math.toRadians(eVar4.bc + 90.0f), eVar4.aa.j());
                                        }
                                        eVar4.aY = false;
                                        eVar4.aZ = false;
                                    }
                                    iVar6 = iVar;
                                    iVar7 = iVar2;
                                    iVar8 = iVar3;
                                    i7 = 8;
                                    i8 = 0;
                                    i9 = 1;
                                    eVar2 = eVar;
                                }
                                i10 = i9;
                                if (eVar3.F == 2) {
                                }
                                if (i10 != 0) {
                                }
                                iVar9 = iVar7;
                                iVar10 = iVar8;
                                if (z14) {
                                }
                                if (eVar4.aa.m()) {
                                }
                                eVar4.aY = false;
                                eVar4.aZ = false;
                            }
                            if (z2) {
                                eVar.a(a2, this.l.j.g);
                                eVar.a(a3, this.l.k.g);
                                if (this.al != null && z4 && this.n[0] && !al()) {
                                    eVar.a(eVar.a(this.al.V), a3, 0, 8);
                                }
                            }
                        }
                        z12 = z3;
                        z13 = z4;
                        z14 = z7;
                        iVar = a6;
                        iVar2 = a5;
                        iVar3 = a4;
                        iVar4 = a3;
                        iVar5 = a2;
                        if (z2) {
                        }
                        i10 = i9;
                        if (eVar3.F == 2) {
                        }
                        if (i10 != 0) {
                        }
                        iVar9 = iVar7;
                        iVar10 = iVar8;
                        if (z14) {
                        }
                        if (eVar4.aa.m()) {
                        }
                        eVar4.aY = false;
                        eVar4.aZ = false;
                    }
                    i5 = -1;
                    z8 = false;
                    if (z7) {
                    }
                    if (this.ak[0] != a.WRAP_CONTENT) {
                    }
                    if (!z9) {
                    }
                    z10 = !this.aa.m();
                    z11 = this.bi[0];
                    boolean z192 = this.bi[1];
                    if (this.E != 2) {
                        if (z2) {
                        }
                        if (this.al == null) {
                        }
                        if (this.al == null) {
                        }
                        z12 = z3;
                        z13 = z4;
                        z14 = z7;
                        iVar = a6;
                        iVar2 = a5;
                        iVar3 = a4;
                        iVar4 = a3;
                        iVar5 = a2;
                        a(eVar, true, z4, z3, this.n[0], this.al == null ? eVar.a(this.al.T) : null, a7, this.ak[0], z9, this.T, this.V, this.aq, i6, this.ax, this.bb[0], this.aA, z8, this.ak[1] != a.MATCH_CONSTRAINT, z5, z6, z11, i3, i4, this.J, this.K, this.L, z10);
                        if (z2) {
                        }
                        i10 = i9;
                        if (eVar3.F == 2) {
                        }
                        if (i10 != 0) {
                        }
                        iVar9 = iVar7;
                        iVar10 = iVar8;
                        if (z14) {
                        }
                        if (eVar4.aa.m()) {
                        }
                        eVar4.aY = false;
                        eVar4.aZ = false;
                    }
                    z12 = z3;
                    z13 = z4;
                    z14 = z7;
                    iVar = a6;
                    iVar2 = a5;
                    iVar3 = a4;
                    iVar4 = a3;
                    iVar5 = a2;
                    if (z2) {
                    }
                    i10 = i9;
                    if (eVar3.F == 2) {
                    }
                    if (i10 != 0) {
                    }
                    iVar9 = iVar7;
                    iVar10 = iVar8;
                    if (z14) {
                    }
                    if (eVar4.aa.m()) {
                    }
                    eVar4.aY = false;
                    eVar4.aZ = false;
                }
                i = i15;
                i2 = i16;
                i3 = i13;
                i4 = i14;
                z7 = true;
                this.I[0] = i3;
                this.I[1] = i4;
                this.o = z7;
                if (z7) {
                }
                z8 = false;
                if (z7) {
                }
                if (this.ak[0] != a.WRAP_CONTENT) {
                }
                if (!z9) {
                }
                z10 = !this.aa.m();
                z11 = this.bi[0];
                boolean z1922 = this.bi[1];
                if (this.E != 2) {
                }
                z12 = z3;
                z13 = z4;
                z14 = z7;
                iVar = a6;
                iVar2 = a5;
                iVar3 = a4;
                iVar4 = a3;
                iVar5 = a2;
                if (z2) {
                }
                i10 = i9;
                if (eVar3.F == 2) {
                }
                if (i10 != 0) {
                }
                iVar9 = iVar7;
                iVar10 = iVar8;
                if (z14) {
                }
                if (eVar4.aa.m()) {
                }
                eVar4.aY = false;
                eVar4.aZ = false;
            }
            i = i15;
            i2 = i12;
            i3 = i13;
            i4 = i14;
            z7 = false;
            this.I[0] = i3;
            this.I[1] = i4;
            this.o = z7;
            if (z7) {
            }
            z8 = false;
            if (z7) {
            }
            if (this.ak[0] != a.WRAP_CONTENT) {
            }
            if (!z9) {
            }
            z10 = !this.aa.m();
            z11 = this.bi[0];
            boolean z19222 = this.bi[1];
            if (this.E != 2) {
            }
            z12 = z3;
            z13 = z4;
            z14 = z7;
            iVar = a6;
            iVar2 = a5;
            iVar3 = a4;
            iVar4 = a3;
            iVar5 = a2;
            if (z2) {
            }
            i10 = i9;
            if (eVar3.F == 2) {
            }
            if (i10 != 0) {
            }
            iVar9 = iVar7;
            iVar10 = iVar8;
            if (z14) {
            }
            if (eVar4.aa.m()) {
            }
            eVar4.aY = false;
            eVar4.aZ = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean ap() {
        return (this instanceof m) || (this instanceof h);
    }

    public void a(boolean z2, boolean z3, boolean z4, boolean z5) {
        if (this.R == -1) {
            if (z4 && !z5) {
                this.R = 0;
            } else if (!z4 && z5) {
                this.R = 1;
                if (this.ap == -1) {
                    this.S = 1.0f / this.S;
                }
            }
        }
        if (this.R == 0 && (!this.U.m() || !this.W.m())) {
            this.R = 1;
        } else if (this.R == 1 && (!this.T.m() || !this.V.m())) {
            this.R = 0;
        }
        if (this.R == -1 && (!this.U.m() || !this.W.m() || !this.T.m() || !this.V.m())) {
            if (this.U.m() && this.W.m()) {
                this.R = 0;
            } else if (this.T.m() && this.V.m()) {
                this.S = 1.0f / this.S;
                this.R = 1;
            }
        }
        if (this.R == -1) {
            if (this.J > 0 && this.M == 0) {
                this.R = 0;
            } else {
                if (this.J != 0 || this.M <= 0) {
                    return;
                }
                this.S = 1.0f / this.S;
                this.R = 1;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:140:0x03c7  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0430  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0481  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x04d2  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x0461  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x040c  */
    /* JADX WARN: Removed duplicated region for block: B:247:0x02f9  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x02fd  */
    /* JADX WARN: Removed duplicated region for block: B:288:0x0531  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x04fe A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:95:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void a(androidx.d.c.e eVar, boolean z2, boolean z3, boolean z4, boolean z5, androidx.d.c.i iVar, androidx.d.c.i iVar2, a aVar, boolean z6, d dVar, d dVar2, int i, int i2, int i3, int i4, float f2, boolean z7, boolean z8, boolean z9, boolean z10, boolean z11, int i5, int i6, int i7, int i8, float f3, boolean z12) {
        androidx.d.c.i iVar3;
        boolean z13;
        int i9;
        boolean z14;
        int i10;
        int i11;
        int i12;
        int i13;
        e eVar2;
        int i14;
        boolean z15;
        boolean z16;
        androidx.d.c.i a2;
        androidx.d.c.i iVar4;
        androidx.d.c.i iVar5;
        androidx.d.c.i iVar6;
        androidx.d.c.i iVar7;
        androidx.d.c.i iVar8;
        int i15;
        char c;
        int i16;
        androidx.d.c.i iVar9;
        boolean z17;
        int i17;
        androidx.d.c.i iVar10;
        androidx.d.c.i iVar11;
        boolean z18;
        boolean z19;
        int i18;
        int i19;
        boolean z20;
        androidx.d.c.i iVar12;
        int i20;
        int i21;
        boolean z21;
        e eVar3;
        e eVar4;
        androidx.d.c.i iVar13;
        androidx.d.c.i iVar14;
        androidx.d.c.i iVar15;
        androidx.d.c.i iVar16;
        int i22;
        int i23;
        boolean z22;
        boolean z23;
        int i24;
        boolean z24;
        androidx.d.c.i iVar17;
        androidx.d.c.i iVar18;
        androidx.d.c.i iVar19;
        androidx.d.c.i iVar20;
        int i25;
        int i26;
        e eVar5;
        int i27;
        boolean z25;
        int i28;
        int i29;
        boolean z26;
        boolean z27;
        boolean z28;
        androidx.d.c.i iVar21;
        int i30;
        int i31;
        int i32 = i7;
        int i33 = i8;
        androidx.d.c.i a3 = eVar.a(dVar);
        androidx.d.c.i a4 = eVar.a(dVar2);
        androidx.d.c.i a5 = eVar.a(dVar.k());
        androidx.d.c.i a6 = eVar.a(dVar2.k());
        if (androidx.d.c.e.a() != null) {
            iVar3 = a6;
            androidx.d.c.e.a().H++;
        } else {
            iVar3 = a6;
        }
        boolean m = dVar.m();
        boolean m2 = dVar2.m();
        boolean m3 = this.aa.m();
        int i34 = m ? 1 : 0;
        if (m2) {
            i34++;
        }
        if (m3) {
            i34++;
        }
        int i35 = i34;
        int i36 = z7 ? 3 : i5;
        switch (aVar) {
            case MATCH_CONSTRAINT:
                if (i36 != 4) {
                    z13 = true;
                    break;
                }
            case FIXED:
            case WRAP_CONTENT:
            case MATCH_PARENT:
            default:
                z13 = false;
                break;
        }
        if (this.bl == 8) {
            i9 = 0;
            z13 = false;
        } else {
            i9 = i2;
        }
        if (z12) {
            if (!m && !m2 && !m3) {
                eVar.a(a3, i);
            } else if (m && !m2) {
                z14 = m3;
                i10 = 8;
                eVar.c(a3, a5, dVar.j(), 8);
            }
            z14 = m3;
            i10 = 8;
        } else {
            z14 = m3;
            i10 = 8;
        }
        if (z13) {
            i11 = i35;
            if (i11 == 2 || z7 || !(i36 == 1 || i36 == 0)) {
                if (i32 == -2) {
                    i32 = i9;
                }
                if (i33 == -2) {
                    i33 = i9;
                }
                if (i9 > 0 && i36 != 1) {
                    i9 = 0;
                }
                if (i32 > 0) {
                    eVar.a(a4, a3, i32, 8);
                    i9 = Math.max(i9, i32);
                }
                if (i33 > 0) {
                    if ((z3 && i36 == 1) ? false : true) {
                        i12 = 8;
                        eVar.b(a4, a3, i33, 8);
                    } else {
                        i12 = 8;
                    }
                    i9 = Math.min(i9, i33);
                } else {
                    i12 = 8;
                }
                if (i36 == 1) {
                    if (z3) {
                        eVar.c(a4, a3, i9, i12);
                        i13 = 4;
                    } else {
                        i13 = 4;
                        if (z9) {
                            eVar.c(a4, a3, i9, 5);
                            eVar.b(a4, a3, i9, i12);
                        } else {
                            eVar.c(a4, a3, i9, 5);
                            eVar.b(a4, a3, i9, i12);
                        }
                    }
                    i14 = i32;
                    z15 = z13;
                    eVar2 = this;
                } else {
                    i13 = 4;
                    if (i36 == 2) {
                        if (dVar.i() == d.a.TOP || dVar.i() == d.a.BOTTOM) {
                            eVar2 = this;
                            androidx.d.c.i a7 = eVar.a(eVar2.al.a(d.a.TOP));
                            a2 = eVar.a(eVar2.al.a(d.a.BOTTOM));
                            iVar4 = a7;
                        } else {
                            eVar2 = this;
                            androidx.d.c.i a8 = eVar.a(eVar2.al.a(d.a.LEFT));
                            a2 = eVar.a(eVar2.al.a(d.a.RIGHT));
                            iVar4 = a8;
                        }
                        eVar.a(eVar.c().a(a4, a3, a2, iVar4, f3));
                        z16 = z5;
                        i14 = i32;
                        z15 = false;
                    } else {
                        eVar2 = this;
                        i14 = i32;
                        z15 = z13;
                        z16 = true;
                    }
                }
            } else {
                int max = Math.max(i32, i9);
                if (i33 > 0) {
                    max = Math.min(i33, max);
                }
                eVar.c(a4, a3, max, 8);
                z16 = z5;
                i14 = i32;
                eVar2 = this;
                z15 = false;
                i13 = 4;
            }
            if (z12) {
                iVar5 = a3;
                iVar6 = a4;
                iVar7 = iVar;
                iVar8 = iVar2;
                i15 = 8;
                c = 1;
                i16 = 2;
            } else if (z9) {
                iVar5 = a3;
                iVar6 = a4;
                iVar7 = iVar;
                iVar8 = iVar2;
                i15 = 8;
                i16 = 2;
                c = 1;
            } else {
                if ((m || m2 || z14) && (!m || m2)) {
                    if (m || !m2) {
                        iVar9 = iVar3;
                        if (m && m2) {
                            e eVar6 = dVar.c.f678a;
                            e eVar7 = dVar2.c.f678a;
                            e A2 = A();
                            int i37 = 6;
                            if (!z15) {
                                z17 = true;
                                i17 = 8;
                                if (a5.o && iVar9.o) {
                                    eVar.a(a3, a5, dVar.j(), f2, iVar9, a4, dVar2.j(), 8);
                                    if (z3 && z16) {
                                        if (dVar2.c != null) {
                                            i20 = dVar2.j();
                                            iVar12 = a4;
                                        } else {
                                            iVar12 = a4;
                                            i20 = 0;
                                        }
                                        if (iVar9 != iVar2) {
                                            eVar.a(iVar2, iVar12, i20, 5);
                                            return;
                                        }
                                        return;
                                    }
                                    return;
                                }
                                iVar10 = a4;
                                iVar11 = iVar2;
                                z18 = true;
                                z19 = true;
                                i18 = 6;
                                i19 = i13;
                                z20 = false;
                            } else {
                                if (i36 == 0) {
                                    if (i33 != 0 || i14 != 0) {
                                        z26 = true;
                                        z27 = false;
                                        z28 = true;
                                        i21 = 5;
                                        i19 = 5;
                                    } else if (a5.o && iVar9.o) {
                                        eVar.c(a3, a5, dVar.j(), 8);
                                        eVar.c(a4, iVar9, -dVar2.j(), 8);
                                        return;
                                    } else {
                                        i21 = 8;
                                        i19 = 8;
                                        z26 = false;
                                        z27 = true;
                                        z28 = false;
                                    }
                                    if ((eVar6 instanceof androidx.d.c.b.a) || (eVar7 instanceof androidx.d.c.b.a)) {
                                        iVar10 = a4;
                                        z18 = z26;
                                        z19 = z28;
                                        i19 = i13;
                                    } else {
                                        iVar10 = a4;
                                        z18 = z26;
                                        z19 = z28;
                                    }
                                    z17 = true;
                                    iVar11 = iVar2;
                                    i17 = 8;
                                    z20 = z27;
                                    i18 = 6;
                                } else {
                                    i17 = 8;
                                    if (i36 == 1) {
                                        iVar10 = a4;
                                        i18 = 6;
                                        i21 = 8;
                                        i19 = i13;
                                        z18 = true;
                                        z17 = true;
                                        iVar11 = iVar2;
                                        z20 = false;
                                    } else if (i36 != 3) {
                                        z17 = true;
                                        iVar10 = a4;
                                        i18 = 6;
                                        i19 = i13;
                                        z18 = false;
                                        iVar11 = iVar2;
                                        z20 = false;
                                        i21 = 5;
                                        z19 = false;
                                    } else if (eVar2.R == -1) {
                                        if (!z10) {
                                            iVar10 = a4;
                                            i18 = 8;
                                            i21 = 8;
                                        } else if (z3) {
                                            iVar10 = a4;
                                            i21 = 8;
                                            z18 = true;
                                            z17 = true;
                                            iVar11 = iVar2;
                                            i18 = 5;
                                            z20 = true;
                                            i19 = 5;
                                        } else {
                                            iVar10 = a4;
                                            i21 = 8;
                                            i18 = i13;
                                        }
                                        z18 = true;
                                        z17 = true;
                                        iVar11 = iVar2;
                                        z20 = true;
                                        i19 = 5;
                                    } else {
                                        if (z7) {
                                            if (i6 != 2) {
                                                z17 = true;
                                                if (i6 != 1) {
                                                    z25 = false;
                                                    if (z25) {
                                                        i29 = 8;
                                                        i28 = 5;
                                                    } else {
                                                        i28 = i13;
                                                        i29 = 5;
                                                    }
                                                    i21 = i29;
                                                    i19 = i28;
                                                    z18 = z17;
                                                    z20 = z18;
                                                    z19 = z20;
                                                    iVar10 = a4;
                                                    i18 = 6;
                                                }
                                            } else {
                                                z17 = true;
                                            }
                                            z25 = z17;
                                            if (z25) {
                                            }
                                            i21 = i29;
                                            i19 = i28;
                                            z18 = z17;
                                            z20 = z18;
                                            z19 = z20;
                                            iVar10 = a4;
                                            i18 = 6;
                                        } else {
                                            z17 = true;
                                            if (i33 > 0) {
                                                z18 = true;
                                                z20 = true;
                                                z19 = true;
                                                iVar10 = a4;
                                                i18 = 6;
                                                iVar11 = iVar2;
                                                i21 = 5;
                                                i19 = 5;
                                            } else {
                                                if (i33 != 0 || i14 != 0) {
                                                    z18 = true;
                                                    z20 = true;
                                                    z19 = true;
                                                    iVar10 = a4;
                                                    i18 = 6;
                                                    i19 = i13;
                                                } else if (z10) {
                                                    i21 = (eVar6 == A2 || eVar7 == A2) ? 5 : i13;
                                                    z18 = true;
                                                    z20 = true;
                                                    z19 = true;
                                                    iVar10 = a4;
                                                    i18 = 6;
                                                    i19 = i13;
                                                } else {
                                                    z18 = true;
                                                    z20 = true;
                                                    z19 = true;
                                                    iVar10 = a4;
                                                    i18 = 6;
                                                    i19 = 8;
                                                }
                                                iVar11 = iVar2;
                                            }
                                        }
                                        iVar11 = iVar2;
                                    }
                                    z19 = true;
                                }
                                if (z19 || a5 != iVar9 || eVar6 == A2) {
                                    z21 = z17;
                                } else {
                                    z21 = false;
                                    z19 = false;
                                }
                                if (z18) {
                                    eVar3 = eVar7;
                                    eVar4 = A2;
                                    iVar13 = a5;
                                    iVar14 = iVar10;
                                    iVar15 = iVar9;
                                    iVar16 = a3;
                                    i22 = i17;
                                    i23 = i3;
                                    z22 = z17;
                                    z23 = z21;
                                    i24 = i21;
                                    z24 = z3;
                                } else {
                                    if (z15 || z8 || z10 || a5 != iVar || iVar9 != iVar11) {
                                        z23 = z21;
                                        i24 = i21;
                                        z24 = z3;
                                    } else {
                                        i18 = i17;
                                        i24 = i18;
                                        z24 = false;
                                        z23 = false;
                                    }
                                    eVar3 = eVar7;
                                    i22 = i17;
                                    z22 = z17;
                                    iVar13 = a5;
                                    iVar14 = iVar10;
                                    iVar15 = iVar9;
                                    iVar16 = a3;
                                    eVar4 = A2;
                                    i23 = i3;
                                    eVar.a(a3, a5, dVar.j(), f2, iVar9, iVar14, dVar2.j(), i18);
                                }
                                if (eVar2.bl == i22 || dVar2.b()) {
                                    if (z19) {
                                        iVar17 = iVar13;
                                        iVar18 = iVar14;
                                        iVar19 = iVar15;
                                        iVar20 = iVar16;
                                    } else {
                                        if (z24) {
                                            iVar17 = iVar13;
                                            iVar19 = iVar15;
                                            if (iVar17 != iVar19 && !z15 && ((eVar6 instanceof androidx.d.c.b.a) || (eVar3 instanceof androidx.d.c.b.a))) {
                                                i27 = 6;
                                                iVar20 = iVar16;
                                                eVar.a(iVar20, iVar17, dVar.j(), i27);
                                                iVar18 = iVar14;
                                                eVar.b(iVar18, iVar19, -dVar2.j(), i27);
                                                i24 = i27;
                                            }
                                        } else {
                                            iVar17 = iVar13;
                                            iVar19 = iVar15;
                                        }
                                        i27 = i24;
                                        iVar20 = iVar16;
                                        eVar.a(iVar20, iVar17, dVar.j(), i27);
                                        iVar18 = iVar14;
                                        eVar.b(iVar18, iVar19, -dVar2.j(), i27);
                                        i24 = i27;
                                    }
                                    if (z24 || !z11 || (eVar6 instanceof androidx.d.c.b.a) || (eVar3 instanceof androidx.d.c.b.a)) {
                                        i25 = i19;
                                        i26 = i24;
                                        z22 = z23;
                                    } else {
                                        i25 = 6;
                                        i26 = 6;
                                    }
                                    if (z22) {
                                        if (!z20 || (z10 && !z4)) {
                                            eVar5 = eVar4;
                                        } else {
                                            eVar5 = eVar4;
                                            if (eVar6 != eVar5 && eVar3 != eVar5) {
                                                i37 = i25;
                                            }
                                            if ((eVar6 instanceof h) || (eVar3 instanceof h)) {
                                                i37 = 5;
                                            }
                                            if ((eVar6 instanceof androidx.d.c.b.a) || (eVar3 instanceof androidx.d.c.b.a)) {
                                                i37 = 5;
                                            }
                                            i25 = Math.max(z10 ? 5 : i37, i25);
                                        }
                                        if (z24) {
                                            i25 = Math.min(i26, i25);
                                            if (z7 && !z10 && (eVar6 == eVar5 || eVar3 == eVar5)) {
                                                i25 = i13;
                                            }
                                        }
                                        eVar.c(iVar20, iVar17, dVar.j(), i25);
                                        eVar.c(iVar18, iVar19, -dVar2.j(), i25);
                                    }
                                    if (z24) {
                                        int j = iVar == iVar17 ? dVar.j() : 0;
                                        if (iVar17 != iVar) {
                                            eVar.a(iVar20, iVar, j, 5);
                                        }
                                    }
                                    if (z24 && z15 && i23 == 0 && i14 == 0) {
                                        if (!z15 && i36 == 3) {
                                            eVar.a(iVar18, iVar20, 0, i22);
                                        } else {
                                            eVar.a(iVar18, iVar20, 0, 5);
                                        }
                                    }
                                    if (z24 && z16) {
                                        if (dVar2.c != null) {
                                            i30 = dVar2.j();
                                            iVar21 = iVar2;
                                        } else {
                                            iVar21 = iVar2;
                                            i30 = 0;
                                        }
                                        if (iVar19 != iVar21) {
                                            if (eVar2.d && iVar18.o && eVar2.al != null) {
                                                f fVar = (f) eVar2.al;
                                                if (z2) {
                                                    fVar.e(dVar2);
                                                    return;
                                                } else {
                                                    fVar.d(dVar2);
                                                    return;
                                                }
                                            }
                                            eVar.a(iVar21, iVar18, i30, 5);
                                            return;
                                        }
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            i21 = 5;
                            if (z19) {
                            }
                            z21 = z17;
                            if (z18) {
                            }
                            if (eVar2.bl == i22) {
                            }
                            if (z19) {
                            }
                            if (z24) {
                            }
                            i25 = i19;
                            i26 = i24;
                            z22 = z23;
                            if (z22) {
                            }
                            if (z24) {
                            }
                            if (z24) {
                                if (!z15) {
                                }
                                eVar.a(iVar18, iVar20, 0, 5);
                            }
                            if (z24) {
                                return;
                            } else {
                                return;
                            }
                        }
                    } else {
                        iVar9 = iVar3;
                        eVar.c(a4, iVar9, -dVar2.j(), 8);
                        if (z3) {
                            if (eVar2.d && a3.o && eVar2.al != null) {
                                f fVar2 = (f) eVar2.al;
                                if (z2) {
                                    fVar2.c(dVar);
                                } else {
                                    fVar2.b(dVar);
                                }
                            } else {
                                eVar.a(a3, iVar, 0, 5);
                            }
                        }
                    }
                    iVar19 = iVar9;
                    iVar18 = a4;
                } else {
                    iVar18 = a4;
                    iVar19 = iVar3;
                }
                z24 = z3;
                if (z24) {
                }
            }
            if (i11 >= i16 && z3 && z16) {
                eVar.a(iVar5, iVar7, 0, i15);
                char c2 = (z2 || eVar2.X.c == null) ? c : (char) 0;
                if (z2 || eVar2.X.c == null) {
                    c = c2;
                } else {
                    e eVar8 = eVar2.X.c.f678a;
                    if (eVar8.ao == 0.0f || eVar8.ak[0] != a.MATCH_CONSTRAINT || eVar8.ak[c] != a.MATCH_CONSTRAINT) {
                        c = 0;
                    }
                }
                if (c != 0) {
                    eVar.a(iVar8, iVar6, 0, i15);
                    return;
                }
                return;
            }
            return;
        }
        if (z6) {
            eVar.c(a4, a3, 0, 3);
            if (i3 > 0) {
                i31 = 8;
                eVar.a(a4, a3, i3, 8);
            } else {
                i31 = 8;
            }
            if (i4 < Integer.MAX_VALUE) {
                eVar.b(a4, a3, i4, i31);
            }
        } else {
            eVar.c(a4, a3, i9, i10);
        }
        i14 = i32;
        z15 = z13;
        i11 = i35;
        eVar2 = this;
        i13 = 4;
        z16 = z5;
        if (z12) {
        }
        if (i11 >= i16) {
        }
    }

    public void b(androidx.d.c.e eVar, boolean z2) {
        int b2 = eVar.b(this.T);
        int b3 = eVar.b(this.U);
        int b4 = eVar.b(this.V);
        int b5 = eVar.b(this.W);
        if (z2 && this.l != null && this.l.j.j && this.l.k.j) {
            b2 = this.l.j.g;
            b4 = this.l.k.g;
        }
        if (z2 && this.m != null && this.m.j.j && this.m.k.j) {
            b3 = this.m.j.g;
            b5 = this.m.k.g;
        }
        int i = b5 - b3;
        if (b4 - b2 < 0 || i < 0 || b2 == Integer.MIN_VALUE || b2 == Integer.MAX_VALUE || b3 == Integer.MIN_VALUE || b3 == Integer.MAX_VALUE || b4 == Integer.MIN_VALUE || b4 == Integer.MAX_VALUE || b5 == Integer.MIN_VALUE || b5 == Integer.MAX_VALUE) {
            b5 = 0;
            b2 = 0;
            b3 = 0;
            b4 = 0;
        }
        a(b2, b3, b4, b5);
    }

    public void a(e eVar, HashMap<e, e> hashMap) {
        this.E = eVar.E;
        this.F = eVar.F;
        this.G = eVar.G;
        this.H = eVar.H;
        this.I[0] = eVar.I[0];
        this.I[1] = eVar.I[1];
        this.J = eVar.J;
        this.K = eVar.K;
        this.M = eVar.M;
        this.N = eVar.N;
        this.O = eVar.O;
        this.P = eVar.P;
        this.Q = eVar.Q;
        this.R = eVar.R;
        this.S = eVar.S;
        this.bb = Arrays.copyOf(eVar.bb, eVar.bb.length);
        this.bc = eVar.bc;
        this.bd = eVar.bd;
        this.be = eVar.be;
        this.T.l();
        this.U.l();
        this.V.l();
        this.W.l();
        this.X.l();
        this.Y.l();
        this.Z.l();
        this.aa.l();
        this.ak = (a[]) Arrays.copyOf(this.ak, 2);
        this.al = this.al == null ? null : hashMap.get(eVar.al);
        this.am = eVar.am;
        this.an = eVar.an;
        this.ao = eVar.ao;
        this.ap = eVar.ap;
        this.aq = eVar.aq;
        this.ar = eVar.ar;
        this.as = eVar.as;
        this.at = eVar.at;
        this.au = eVar.au;
        this.av = eVar.av;
        this.aw = eVar.aw;
        this.ax = eVar.ax;
        this.ay = eVar.ay;
        this.aA = eVar.aA;
        this.aB = eVar.aB;
        this.bj = eVar.bj;
        this.bk = eVar.bk;
        this.bl = eVar.bl;
        this.bm = eVar.bm;
        this.bn = eVar.bn;
        this.aC = eVar.aC;
        this.aD = eVar.aD;
        this.aE = eVar.aE;
        this.aF = eVar.aF;
        this.aG = eVar.aG;
        this.aH = eVar.aH;
        this.aI = eVar.aI;
        this.aJ = eVar.aJ;
        this.aK = eVar.aK;
        this.aL = eVar.aL;
        this.aN = eVar.aN;
        this.aO = eVar.aO;
        this.aP = eVar.aP;
        this.aQ = eVar.aQ;
        this.aR[0] = eVar.aR[0];
        this.aR[1] = eVar.aR[1];
        this.aS[0] = eVar.aS[0];
        this.aS[1] = eVar.aS[1];
        this.aT[0] = eVar.aT[0];
        this.aT[1] = eVar.aT[1];
        this.aU = eVar.aU == null ? null : hashMap.get(eVar.aU);
        this.aV = eVar.aV != null ? hashMap.get(eVar.aV) : null;
    }

    public void a(boolean z2, boolean z3) {
        boolean i = z2 & this.l.i();
        boolean i2 = z3 & this.m.i();
        int i3 = this.l.j.g;
        int i4 = this.m.j.g;
        int i5 = this.l.k.g;
        int i6 = this.m.k.g;
        int i7 = i6 - i4;
        if (i5 - i3 < 0 || i7 < 0 || i3 == Integer.MIN_VALUE || i3 == Integer.MAX_VALUE || i4 == Integer.MIN_VALUE || i4 == Integer.MAX_VALUE || i5 == Integer.MIN_VALUE || i5 == Integer.MAX_VALUE || i6 == Integer.MIN_VALUE || i6 == Integer.MAX_VALUE) {
            i3 = 0;
            i4 = 0;
            i5 = 0;
            i6 = 0;
        }
        int i8 = i5 - i3;
        int i9 = i6 - i4;
        if (i) {
            this.aq = i3;
        }
        if (i2) {
            this.ar = i4;
        }
        if (this.bl == 8) {
            this.am = 0;
            this.an = 0;
            return;
        }
        if (i) {
            if (this.ak[0] == a.FIXED && i8 < this.am) {
                i8 = this.am;
            }
            this.am = i8;
            if (this.am < this.ax) {
                this.am = this.ax;
            }
        }
        if (i2) {
            if (this.ak[1] == a.FIXED && i9 < this.an) {
                i9 = this.an;
            }
            this.an = i9;
            if (this.an < this.ay) {
                this.an = this.ay;
            }
        }
    }

    public void a(f fVar, androidx.d.c.e eVar, HashSet<e> hashSet, int i, boolean z2) {
        if (z2) {
            if (!hashSet.contains(this)) {
                return;
            }
            k.a(fVar, eVar, this);
            hashSet.remove(this);
            a(eVar, fVar.b(64));
        }
        if (i == 0) {
            HashSet<d> a2 = this.T.a();
            if (a2 != null) {
                Iterator<d> it = a2.iterator();
                while (it.hasNext()) {
                    it.next().f678a.a(fVar, eVar, hashSet, i, true);
                }
            }
            HashSet<d> a3 = this.V.a();
            if (a3 != null) {
                Iterator<d> it2 = a3.iterator();
                while (it2.hasNext()) {
                    it2.next().f678a.a(fVar, eVar, hashSet, i, true);
                }
                return;
            }
            return;
        }
        HashSet<d> a4 = this.U.a();
        if (a4 != null) {
            Iterator<d> it3 = a4.iterator();
            while (it3.hasNext()) {
                it3.next().f678a.a(fVar, eVar, hashSet, i, true);
            }
        }
        HashSet<d> a5 = this.W.a();
        if (a5 != null) {
            Iterator<d> it4 = a5.iterator();
            while (it4.hasNext()) {
                it4.next().f678a.a(fVar, eVar, hashSet, i, true);
            }
        }
        HashSet<d> a6 = this.X.a();
        if (a6 != null) {
            Iterator<d> it5 = a6.iterator();
            while (it5.hasNext()) {
                it5.next().f678a.a(fVar, eVar, hashSet, i, true);
            }
        }
    }
}
