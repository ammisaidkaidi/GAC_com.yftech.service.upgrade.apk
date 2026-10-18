package androidx.d.c.b;

import androidx.d.c.b.e;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

/* loaded from: /home/user/work/dex/classes.dex */
public class g extends m {

    /* renamed from: a, reason: collision with root package name */
    public static final int f685a = 0;
    public static final int aY = 2;
    public static final int aZ = 3;
    public static final int b = 1;
    public static final int ba = 0;
    public static final int bb = 1;
    public static final int bc = 2;
    public static final int c = 2;
    public static final int d = 0;
    public static final int e = 1;
    private e[] bE;
    private int bh = -1;
    private int bi = -1;
    private int bj = -1;
    private int bk = -1;
    private int bl = -1;
    private int bm = -1;
    private float bn = 0.5f;
    private float bo = 0.5f;
    private float bp = 0.5f;
    private float bq = 0.5f;
    private float br = 0.5f;
    private float bs = 0.5f;
    private int bt = 0;
    private int bu = 0;
    private int bv = 2;
    private int bw = 2;
    private int bx = 0;
    private int by = -1;
    private int bz = 0;
    private ArrayList<a> bA = new ArrayList<>();
    private e[] bB = null;
    private e[] bC = null;
    private int[] bD = null;
    private int bF = 0;

    @Override // androidx.d.c.b.j, androidx.d.c.b.e
    public void a(e eVar, HashMap<e, e> hashMap) {
        super.a(eVar, hashMap);
        g gVar = (g) eVar;
        this.bh = gVar.bh;
        this.bi = gVar.bi;
        this.bj = gVar.bj;
        this.bk = gVar.bk;
        this.bl = gVar.bl;
        this.bm = gVar.bm;
        this.bn = gVar.bn;
        this.bo = gVar.bo;
        this.bp = gVar.bp;
        this.bq = gVar.bq;
        this.br = gVar.br;
        this.bs = gVar.bs;
        this.bt = gVar.bt;
        this.bu = gVar.bu;
        this.bv = gVar.bv;
        this.bw = gVar.bw;
        this.bx = gVar.bx;
        this.by = gVar.by;
        this.bz = gVar.bz;
    }

    public void a(int i) {
        this.bz = i;
    }

    public void b(int i) {
        this.bj = i;
    }

    public void B(int i) {
        this.bk = i;
    }

    public void C(int i) {
        this.bl = i;
    }

    public void D(int i) {
        this.bm = i;
    }

    public void E(int i) {
        this.bh = i;
    }

    public void F(int i) {
        this.bi = i;
    }

    public void e(float f) {
        this.bn = f;
    }

    public void f(float f) {
        this.bo = f;
    }

    public void g(float f) {
        this.bp = f;
    }

    public void h(float f) {
        this.bq = f;
    }

    public void i(float f) {
        this.br = f;
    }

    public void j(float f) {
        this.bs = f;
    }

    public void G(int i) {
        this.bv = i;
    }

    public void H(int i) {
        this.bw = i;
    }

    public void I(int i) {
        this.bx = i;
    }

    public void J(int i) {
        this.bt = i;
    }

    public void K(int i) {
        this.bu = i;
    }

    public void L(int i) {
        this.by = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int a(e eVar, int i) {
        if (eVar == null) {
            return 0;
        }
        if (eVar.aj() == e.a.MATCH_CONSTRAINT) {
            if (eVar.G == 0) {
                return 0;
            }
            if (eVar.G == 2) {
                int i2 = (int) (eVar.L * i);
                if (i2 != eVar.I()) {
                    eVar.e(true);
                    a(eVar, e.a.FIXED, i2, eVar.ak(), eVar.L());
                }
                return i2;
            }
            if (eVar.G == 1) {
                return eVar.I();
            }
            if (eVar.G == 3) {
                return (int) ((eVar.L() * eVar.ao) + 0.5f);
            }
        }
        return eVar.I();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int b(e eVar, int i) {
        if (eVar == null) {
            return 0;
        }
        if (eVar.ak() == e.a.MATCH_CONSTRAINT) {
            if (eVar.H == 0) {
                return 0;
            }
            if (eVar.H == 2) {
                int i2 = (int) (eVar.O * i);
                if (i2 != eVar.L()) {
                    eVar.e(true);
                    a(eVar, eVar.aj(), eVar.I(), e.a.FIXED, i2);
                }
                return i2;
            }
            if (eVar.H == 1) {
                return eVar.L();
            }
            if (eVar.H == 3) {
                return (int) ((eVar.I() * eVar.ao) + 0.5f);
            }
        }
        return eVar.L();
    }

    @Override // androidx.d.c.b.m
    public void b(int i, int i2, int i3, int i4) {
        int i5;
        int[] iArr;
        boolean z;
        if (this.be > 0 && !as()) {
            k(0, 0);
            h(false);
            return;
        }
        int f = f();
        int g = g();
        int b2 = b();
        int c2 = c();
        int[] iArr2 = new int[2];
        int i6 = (i2 - f) - g;
        if (this.bz == 1) {
            i6 = (i4 - b2) - c2;
        }
        int i7 = i6;
        if (this.bz == 0) {
            if (this.bh == -1) {
                this.bh = 0;
            }
            if (this.bi == -1) {
                this.bi = 0;
            }
        } else {
            if (this.bh == -1) {
                this.bh = 0;
            }
            if (this.bi == -1) {
                this.bi = 0;
            }
        }
        e[] eVarArr = this.bd;
        int i8 = 0;
        for (int i9 = 0; i9 < this.be; i9++) {
            if (this.bd[i9].E() == 8) {
                i8++;
            }
        }
        int i10 = this.be;
        if (i8 > 0) {
            eVarArr = new e[this.be - i8];
            i5 = 0;
            for (int i11 = 0; i11 < this.be; i11++) {
                e eVar = this.bd[i11];
                if (eVar.E() != 8) {
                    eVarArr[i5] = eVar;
                    i5++;
                }
            }
        } else {
            i5 = i10;
        }
        e[] eVarArr2 = eVarArr;
        this.bE = eVarArr2;
        this.bF = i5;
        switch (this.bx) {
            case 0:
                iArr = iArr2;
                z = true;
                b(eVarArr2, i5, this.bz, i7, iArr2);
                break;
            case 1:
                iArr = iArr2;
                z = true;
                a(eVarArr2, i5, this.bz, i7, iArr2);
                break;
            case 2:
                z = true;
                iArr = iArr2;
                c(eVarArr2, i5, this.bz, i7, iArr2);
                break;
            default:
                iArr = iArr2;
                z = true;
                break;
        }
        int i12 = iArr[0] + f + g;
        int i13 = iArr[z ? 1 : 0] + b2 + c2;
        if (i == 1073741824) {
            i12 = i2;
        } else if (i == Integer.MIN_VALUE) {
            i12 = Math.min(i12, i2);
        } else if (i != 0) {
            i12 = 0;
        }
        if (i3 == 1073741824) {
            i13 = i4;
        } else if (i3 == Integer.MIN_VALUE) {
            i13 = Math.min(i13, i4);
        } else if (i3 != 0) {
            i13 = 0;
        }
        k(i12, i13);
        p(i12);
        q(i13);
        if (this.be <= 0) {
            z = false;
        }
        h(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class a {
        private int c;
        private d e;
        private d f;
        private d g;
        private d h;
        private int i;
        private int j;
        private int k;
        private int l;
        private int r;
        private e d = null;

        /* renamed from: a, reason: collision with root package name */
        int f686a = 0;
        private int m = 0;
        private int n = 0;
        private int o = 0;
        private int p = 0;
        private int q = 0;

        public a(int i, d dVar, d dVar2, d dVar3, d dVar4, int i2) {
            this.c = 0;
            this.i = 0;
            this.j = 0;
            this.k = 0;
            this.l = 0;
            this.r = 0;
            this.c = i;
            this.e = dVar;
            this.f = dVar2;
            this.g = dVar3;
            this.h = dVar4;
            this.i = g.this.f();
            this.j = g.this.b();
            this.k = g.this.g();
            this.l = g.this.c();
            this.r = i2;
        }

        public void a(int i, d dVar, d dVar2, d dVar3, d dVar4, int i2, int i3, int i4, int i5, int i6) {
            this.c = i;
            this.e = dVar;
            this.f = dVar2;
            this.g = dVar3;
            this.h = dVar4;
            this.i = i2;
            this.j = i3;
            this.k = i4;
            this.l = i5;
            this.r = i6;
        }

        public void a() {
            this.f686a = 0;
            this.d = null;
            this.m = 0;
            this.n = 0;
            this.o = 0;
            this.p = 0;
            this.q = 0;
        }

        public void a(int i) {
            this.o = i;
        }

        public int b() {
            if (this.c == 0) {
                return this.m - g.this.bt;
            }
            return this.m;
        }

        public int c() {
            if (this.c == 1) {
                return this.n - g.this.bu;
            }
            return this.n;
        }

        public void a(e eVar) {
            if (this.c == 0) {
                int a2 = g.this.a(eVar, this.r);
                if (eVar.aj() == e.a.MATCH_CONSTRAINT) {
                    this.q++;
                    a2 = 0;
                }
                this.m += a2 + (eVar.E() != 8 ? g.this.bt : 0);
                int b = g.this.b(eVar, this.r);
                if (this.d == null || this.f686a < b) {
                    this.d = eVar;
                    this.f686a = b;
                    this.n = b;
                }
            } else {
                int a3 = g.this.a(eVar, this.r);
                int b2 = g.this.b(eVar, this.r);
                if (eVar.ak() == e.a.MATCH_CONSTRAINT) {
                    this.q++;
                    b2 = 0;
                }
                this.n += b2 + (eVar.E() != 8 ? g.this.bu : 0);
                if (this.d == null || this.f686a < a3) {
                    this.d = eVar;
                    this.f686a = a3;
                    this.m = a3;
                }
            }
            this.p++;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        public void a(boolean z, int i, boolean z2) {
            int i2;
            e eVar;
            char c;
            int i3;
            int i4 = this.p;
            for (int i5 = 0; i5 < i4 && this.o + i5 < g.this.bF; i5++) {
                e eVar2 = g.this.bE[this.o + i5];
                if (eVar2 != null) {
                    eVar2.ai();
                }
            }
            if (i4 == 0 || this.d == null) {
                return;
            }
            boolean z3 = z2 && i == 0;
            int i6 = -1;
            int i7 = -1;
            for (int i8 = 0; i8 < i4; i8++) {
                int i9 = z ? (i4 - 1) - i8 : i8;
                if (this.o + i9 >= g.this.bF) {
                    break;
                }
                if (g.this.bE[this.o + i9].E() == 0) {
                    if (i6 == -1) {
                        i6 = i8;
                    }
                    i7 = i8;
                }
            }
            if (this.c == 0) {
                e eVar3 = this.d;
                eVar3.x(g.this.bi);
                int i10 = this.j;
                if (i > 0) {
                    i10 += g.this.bu;
                }
                eVar3.U.a(this.f, i10);
                if (z2) {
                    eVar3.W.a(this.h, this.l);
                }
                if (i > 0) {
                    this.f.f678a.W.a(eVar3.U, 0);
                }
                if (g.this.bw == 3 && !eVar3.Y()) {
                    for (int i11 = 0; i11 < i4; i11++) {
                        int i12 = z ? (i4 - 1) - i11 : i11;
                        if (this.o + i12 >= g.this.bF) {
                            break;
                        }
                        eVar = g.this.bE[this.o + i12];
                        if (eVar.Y()) {
                            break;
                        }
                    }
                }
                eVar = eVar3;
                int i13 = 0;
                e eVar4 = null;
                while (i13 < i4) {
                    int i14 = z ? (i4 - 1) - i13 : i13;
                    if (this.o + i14 >= g.this.bF) {
                        return;
                    }
                    e eVar5 = g.this.bE[this.o + i14];
                    if (i13 == 0) {
                        eVar5.a(eVar5.T, this.e, this.i);
                    }
                    if (i14 == 0) {
                        int i15 = g.this.bh;
                        float f = g.this.bn;
                        if (this.o == 0) {
                            i3 = -1;
                            if (g.this.bj != -1) {
                                i15 = g.this.bj;
                                f = g.this.bp;
                                eVar5.w(i15);
                                eVar5.a(f);
                            }
                        } else {
                            i3 = -1;
                        }
                        if (z2 && g.this.bl != i3) {
                            i15 = g.this.bl;
                            f = g.this.br;
                        }
                        eVar5.w(i15);
                        eVar5.a(f);
                    }
                    if (i13 == i4 - 1) {
                        eVar5.a(eVar5.V, this.g, this.k);
                    }
                    if (eVar4 != null) {
                        eVar5.T.a(eVar4.V, g.this.bt);
                        if (i13 == i6) {
                            eVar5.T.c(this.i);
                        }
                        eVar4.V.a(eVar5.T, 0);
                        if (i13 == i7 + 1) {
                            eVar4.V.c(this.k);
                        }
                    }
                    if (eVar5 != eVar3) {
                        c = 3;
                        if (g.this.bw == 3 && eVar.Y() && eVar5 != eVar && eVar5.Y()) {
                            eVar5.X.a(eVar.X, 0);
                        } else {
                            switch (g.this.bw) {
                                case 0:
                                    eVar5.U.a(eVar3.U, 0);
                                    break;
                                case 1:
                                    eVar5.W.a(eVar3.W, 0);
                                    break;
                                default:
                                    if (z3) {
                                        eVar5.U.a(this.f, this.j);
                                        eVar5.W.a(this.h, this.l);
                                        break;
                                    } else {
                                        eVar5.U.a(eVar3.U, 0);
                                        eVar5.W.a(eVar3.W, 0);
                                        break;
                                    }
                            }
                        }
                    } else {
                        c = 3;
                    }
                    i13++;
                    eVar4 = eVar5;
                }
                return;
            }
            e eVar6 = this.d;
            eVar6.w(g.this.bh);
            int i16 = this.i;
            if (i > 0) {
                i16 += g.this.bt;
            }
            if (z) {
                eVar6.V.a(this.g, i16);
                if (z2) {
                    eVar6.T.a(this.e, this.k);
                }
                if (i > 0) {
                    this.g.f678a.T.a(eVar6.V, 0);
                }
            } else {
                eVar6.T.a(this.e, i16);
                if (z2) {
                    eVar6.V.a(this.g, this.k);
                }
                if (i > 0) {
                    this.e.f678a.V.a(eVar6.T, 0);
                }
            }
            int i17 = 0;
            e eVar7 = null;
            while (i17 < i4 && this.o + i17 < g.this.bF) {
                e eVar8 = g.this.bE[this.o + i17];
                if (i17 == 0) {
                    eVar8.a(eVar8.U, this.f, this.j);
                    int i18 = g.this.bi;
                    float f2 = g.this.bo;
                    if (this.o == 0) {
                        i2 = -1;
                        if (g.this.bk != -1) {
                            i18 = g.this.bk;
                            f2 = g.this.bq;
                            eVar8.x(i18);
                            eVar8.b(f2);
                        }
                    } else {
                        i2 = -1;
                    }
                    if (z2 && g.this.bm != i2) {
                        i18 = g.this.bm;
                        f2 = g.this.bs;
                    }
                    eVar8.x(i18);
                    eVar8.b(f2);
                }
                if (i17 == i4 - 1) {
                    eVar8.a(eVar8.W, this.h, this.l);
                }
                if (eVar7 != null) {
                    eVar8.U.a(eVar7.W, g.this.bu);
                    if (i17 == i6) {
                        eVar8.U.c(this.j);
                    }
                    eVar7.W.a(eVar8.U, 0);
                    if (i17 == i7 + 1) {
                        eVar7.W.c(this.l);
                    }
                }
                if (eVar8 != eVar6) {
                    if (z) {
                        switch (g.this.bv) {
                            case 0:
                                eVar8.V.a(eVar6.V, 0);
                                break;
                            case 1:
                                eVar8.T.a(eVar6.T, 0);
                                break;
                            case 2:
                                eVar8.T.a(eVar6.T, 0);
                                eVar8.V.a(eVar6.V, 0);
                                break;
                        }
                        i17++;
                        eVar7 = eVar8;
                    } else {
                        switch (g.this.bv) {
                            case 0:
                                eVar8.T.a(eVar6.T, 0);
                                continue;
                            case 1:
                                eVar8.V.a(eVar6.V, 0);
                                continue;
                            case 2:
                                if (z3) {
                                    eVar8.T.a(this.e, this.i);
                                    eVar8.V.a(this.g, this.k);
                                    break;
                                } else {
                                    eVar8.T.a(eVar6.T, 0);
                                    eVar8.V.a(eVar6.V, 0);
                                    break;
                                }
                        }
                    }
                }
                i17++;
                eVar7 = eVar8;
            }
        }

        public void b(int i) {
            if (this.q == 0) {
                return;
            }
            int i2 = this.p;
            int i3 = i / this.q;
            for (int i4 = 0; i4 < i2 && this.o + i4 < g.this.bF; i4++) {
                e eVar = g.this.bE[this.o + i4];
                if (this.c == 0) {
                    if (eVar != null && eVar.aj() == e.a.MATCH_CONSTRAINT && eVar.G == 0) {
                        g.this.a(eVar, e.a.FIXED, i3, eVar.ak(), eVar.L());
                    }
                } else if (eVar != null && eVar.ak() == e.a.MATCH_CONSTRAINT && eVar.H == 0) {
                    g.this.a(eVar, eVar.aj(), eVar.I(), e.a.FIXED, i3);
                }
            }
            d();
        }

        private void d() {
            this.m = 0;
            this.n = 0;
            this.d = null;
            this.f686a = 0;
            int i = this.p;
            for (int i2 = 0; i2 < i && this.o + i2 < g.this.bF; i2++) {
                e eVar = g.this.bE[this.o + i2];
                if (this.c != 0) {
                    int a2 = g.this.a(eVar, this.r);
                    int b = g.this.b(eVar, this.r);
                    int i3 = g.this.bu;
                    if (eVar.E() == 8) {
                        i3 = 0;
                    }
                    this.n += b + i3;
                    if (this.d == null || this.f686a < a2) {
                        this.d = eVar;
                        this.f686a = a2;
                        this.m = a2;
                    }
                } else {
                    int I = eVar.I();
                    int i4 = g.this.bt;
                    if (eVar.E() == 8) {
                        i4 = 0;
                    }
                    this.m += I + i4;
                    int b2 = g.this.b(eVar, this.r);
                    if (this.d == null || this.f686a < b2) {
                        this.d = eVar;
                        this.f686a = b2;
                        this.n = b2;
                    }
                }
            }
        }
    }

    private void a(e[] eVarArr, int i, int i2, int i3, int[] iArr) {
        int i4;
        int i5;
        if (i == 0) {
            return;
        }
        this.bA.clear();
        a aVar = new a(i2, this.T, this.U, this.V, this.W, i3);
        this.bA.add(aVar);
        if (i2 == 0) {
            a aVar2 = aVar;
            i4 = 0;
            int i6 = 0;
            int i7 = 0;
            while (i7 < i) {
                e eVar = eVarArr[i7];
                int a2 = a(eVar, i3);
                if (eVar.aj() == e.a.MATCH_CONSTRAINT) {
                    i4++;
                }
                int i8 = i4;
                boolean z = (i6 == i3 || (this.bt + i6) + a2 > i3) && aVar2.d != null;
                if (!z && i7 > 0 && this.by > 0 && i7 % this.by == 0) {
                    z = true;
                }
                if (z) {
                    i5 = i8;
                    a aVar3 = new a(i2, this.T, this.U, this.V, this.W, i3);
                    aVar3.a(i7);
                    this.bA.add(aVar3);
                    i6 = a2;
                    aVar2 = aVar3;
                } else {
                    i5 = i8;
                    i6 = i7 > 0 ? i6 + this.bt + a2 : a2;
                }
                aVar2.a(eVar);
                i7++;
                i4 = i5;
            }
        } else {
            a aVar4 = aVar;
            i4 = 0;
            int i9 = 0;
            int i10 = 0;
            while (i10 < i) {
                e eVar2 = eVarArr[i10];
                int b2 = b(eVar2, i3);
                if (eVar2.ak() == e.a.MATCH_CONSTRAINT) {
                    i4++;
                }
                int i11 = i4;
                boolean z2 = (i9 == i3 || (this.bu + i9) + b2 > i3) && aVar4.d != null;
                if (!z2 && i10 > 0 && this.by > 0 && i10 % this.by == 0) {
                    z2 = true;
                }
                if (z2) {
                    a aVar5 = new a(i2, this.T, this.U, this.V, this.W, i3);
                    aVar5.a(i10);
                    this.bA.add(aVar5);
                    aVar4 = aVar5;
                } else if (i10 > 0) {
                    i9 += this.bu + b2;
                    aVar4.a(eVar2);
                    i10++;
                    i4 = i11;
                }
                i9 = b2;
                aVar4.a(eVar2);
                i10++;
                i4 = i11;
            }
        }
        int size = this.bA.size();
        d dVar = this.T;
        d dVar2 = this.U;
        d dVar3 = this.V;
        d dVar4 = this.W;
        int f = f();
        int b3 = b();
        int g = g();
        int c2 = c();
        boolean z3 = aj() == e.a.WRAP_CONTENT || ak() == e.a.WRAP_CONTENT;
        if (i4 > 0 && z3) {
            for (int i12 = 0; i12 < size; i12++) {
                a aVar6 = this.bA.get(i12);
                if (i2 == 0) {
                    aVar6.b(i3 - aVar6.b());
                } else {
                    aVar6.b(i3 - aVar6.c());
                }
            }
        }
        d dVar5 = dVar4;
        int i13 = b3;
        int i14 = g;
        int i15 = c2;
        d dVar6 = dVar2;
        int i16 = f;
        int i17 = 0;
        d dVar7 = dVar3;
        d dVar8 = dVar;
        int i18 = 0;
        for (int i19 = 0; i19 < size; i19++) {
            a aVar7 = this.bA.get(i19);
            if (i2 == 0) {
                if (i19 < size - 1) {
                    dVar5 = this.bA.get(i19 + 1).d.U;
                    i15 = 0;
                } else {
                    dVar5 = this.W;
                    i15 = c();
                }
                dVar6 = aVar7.d.W;
                aVar7.a(i2, dVar8, dVar6, dVar7, dVar5, i16, i13, i14, i15, i3);
                i18 = Math.max(i18, aVar7.b());
                i17 += aVar7.c();
                if (i19 > 0) {
                    i17 += this.bu;
                }
                i13 = 0;
            } else {
                if (i19 < size - 1) {
                    dVar7 = this.bA.get(i19 + 1).d.T;
                    i14 = 0;
                } else {
                    dVar7 = this.V;
                    i14 = g();
                }
                dVar8 = aVar7.d.V;
                aVar7.a(i2, dVar8, dVar6, dVar7, dVar5, i16, i13, i14, i15, i3);
                i18 += aVar7.b();
                i17 = Math.max(i17, aVar7.c());
                if (i19 > 0) {
                    i18 += this.bt;
                }
                i16 = 0;
            }
        }
        iArr[0] = i18;
        iArr[1] = i17;
    }

    private void b(e[] eVarArr, int i, int i2, int i3, int[] iArr) {
        a aVar;
        if (i == 0) {
            return;
        }
        if (this.bA.size() == 0) {
            aVar = new a(i2, this.T, this.U, this.V, this.W, i3);
            this.bA.add(aVar);
        } else {
            a aVar2 = this.bA.get(0);
            aVar2.a();
            aVar = aVar2;
            aVar.a(i2, this.T, this.U, this.V, this.W, f(), b(), g(), c(), i3);
        }
        for (int i4 = 0; i4 < i; i4++) {
            aVar.a(eVarArr[i4]);
        }
        iArr[0] = aVar.b();
        iArr[1] = aVar.c();
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0061  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:78:0x0120 -> B:23:0x005b). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:79:0x0122 -> B:23:0x005b). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:81:0x0128 -> B:23:0x005b). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:82:0x012a -> B:23:0x005b). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void c(e[] eVarArr, int i, int i2, int i3, int[] iArr) {
        int i4;
        int i5;
        int i6;
        boolean z;
        e eVar;
        if (i2 == 0) {
            int i7 = this.by;
            if (i7 <= 0) {
                int i8 = 0;
                i5 = 0;
                for (int i9 = 0; i9 < i; i9++) {
                    if (i9 > 0) {
                        i8 += this.bt;
                    }
                    e eVar2 = eVarArr[i9];
                    if (eVar2 != null) {
                        i8 += a(eVar2, i3);
                        if (i8 > i3) {
                            break;
                        } else {
                            i5++;
                        }
                    }
                }
            } else {
                i5 = i7;
            }
            i4 = 0;
        } else {
            i4 = this.by;
            if (i4 <= 0) {
                int i10 = 0;
                int i11 = 0;
                for (int i12 = 0; i12 < i; i12++) {
                    if (i12 > 0) {
                        i10 += this.bu;
                    }
                    e eVar3 = eVarArr[i12];
                    if (eVar3 != null) {
                        i10 += b(eVar3, i3);
                        if (i10 > i3) {
                            break;
                        } else {
                            i11++;
                        }
                    }
                }
                i4 = i11;
            }
            i5 = 0;
        }
        if (this.bD == null) {
            this.bD = new int[2];
        }
        if ((i4 != 0 || i2 != 1) && (i5 != 0 || i2 != 0)) {
            i6 = i4;
            z = false;
            while (!z) {
                if (i2 == 0) {
                    i6 = (int) Math.ceil(i / i5);
                } else {
                    i5 = (int) Math.ceil(i / i6);
                }
                if (this.bC == null || this.bC.length < i5) {
                    this.bC = new e[i5];
                } else {
                    Arrays.fill(this.bC, (Object) null);
                }
                if (this.bB == null || this.bB.length < i6) {
                    this.bB = new e[i6];
                } else {
                    Arrays.fill(this.bB, (Object) null);
                }
                for (int i13 = 0; i13 < i5; i13++) {
                    for (int i14 = 0; i14 < i6; i14++) {
                        int i15 = (i14 * i5) + i13;
                        if (i2 == 1) {
                            i15 = (i13 * i6) + i14;
                        }
                        if (i15 < eVarArr.length && (eVar = eVarArr[i15]) != null) {
                            int a2 = a(eVar, i3);
                            if (this.bC[i13] == null || this.bC[i13].I() < a2) {
                                this.bC[i13] = eVar;
                            }
                            int b2 = b(eVar, i3);
                            if (this.bB[i14] == null || this.bB[i14].L() < b2) {
                                this.bB[i14] = eVar;
                            }
                        }
                    }
                }
                int i16 = 0;
                for (int i17 = 0; i17 < i5; i17++) {
                    e eVar4 = this.bC[i17];
                    if (eVar4 != null) {
                        if (i17 > 0) {
                            i16 += this.bt;
                        }
                        i16 += a(eVar4, i3);
                    }
                }
                int i18 = 0;
                for (int i19 = 0; i19 < i6; i19++) {
                    e eVar5 = this.bB[i19];
                    if (eVar5 != null) {
                        if (i19 > 0) {
                            i18 += this.bu;
                        }
                        i18 += b(eVar5, i3);
                    }
                }
                iArr[0] = i16;
                iArr[1] = i18;
                if (i2 != 0) {
                    if (i18 > i3 && i6 > 1) {
                        i6--;
                    }
                    z = true;
                } else {
                    if (i16 > i3 && i5 > 1) {
                        i5--;
                    }
                    z = true;
                }
                while (!z) {
                }
            }
            this.bD[0] = i5;
            this.bD[1] = i6;
        }
        i6 = i4;
        z = true;
        while (!z) {
        }
        this.bD[0] = i5;
        this.bD[1] = i6;
    }

    private void i(boolean z) {
        e eVar;
        if (this.bD == null || this.bC == null || this.bB == null) {
            return;
        }
        for (int i = 0; i < this.bF; i++) {
            this.bE[i].ai();
        }
        int i2 = this.bD[0];
        int i3 = this.bD[1];
        e eVar2 = null;
        for (int i4 = 0; i4 < i2; i4++) {
            e eVar3 = this.bC[z ? (i2 - i4) - 1 : i4];
            if (eVar3 != null && eVar3.E() != 8) {
                if (i4 == 0) {
                    eVar3.a(eVar3.T, this.T, f());
                    eVar3.w(this.bh);
                    eVar3.a(this.bn);
                }
                if (i4 == i2 - 1) {
                    eVar3.a(eVar3.V, this.V, g());
                }
                if (i4 > 0) {
                    eVar3.a(eVar3.T, eVar2.V, this.bt);
                    eVar2.a(eVar2.V, eVar3.T, 0);
                }
                eVar2 = eVar3;
            }
        }
        for (int i5 = 0; i5 < i3; i5++) {
            e eVar4 = this.bB[i5];
            if (eVar4 != null && eVar4.E() != 8) {
                if (i5 == 0) {
                    eVar4.a(eVar4.U, this.U, b());
                    eVar4.x(this.bi);
                    eVar4.b(this.bo);
                }
                if (i5 == i3 - 1) {
                    eVar4.a(eVar4.W, this.W, c());
                }
                if (i5 > 0) {
                    eVar4.a(eVar4.U, eVar2.W, this.bu);
                    eVar2.a(eVar2.W, eVar4.U, 0);
                }
                eVar2 = eVar4;
            }
        }
        for (int i6 = 0; i6 < i2; i6++) {
            for (int i7 = 0; i7 < i3; i7++) {
                int i8 = (i7 * i2) + i6;
                if (this.bz == 1) {
                    i8 = (i6 * i3) + i7;
                }
                if (i8 < this.bE.length && (eVar = this.bE[i8]) != null && eVar.E() != 8) {
                    e eVar5 = this.bC[i6];
                    e eVar6 = this.bB[i7];
                    if (eVar != eVar5) {
                        eVar.a(eVar.T, eVar5.T, 0);
                        eVar.a(eVar.V, eVar5.V, 0);
                    }
                    if (eVar != eVar6) {
                        eVar.a(eVar.U, eVar6.U, 0);
                        eVar.a(eVar.W, eVar6.W, 0);
                    }
                }
            }
        }
    }

    @Override // androidx.d.c.b.e
    public void a(androidx.d.c.e eVar, boolean z) {
        super.a(eVar, z);
        boolean as = A() != null ? ((f) A()).as() : false;
        switch (this.bx) {
            case 0:
                if (this.bA.size() > 0) {
                    this.bA.get(0).a(as, 0, true);
                    break;
                }
                break;
            case 1:
                int size = this.bA.size();
                int i = 0;
                while (i < size) {
                    this.bA.get(i).a(as, i, i == size + (-1));
                    i++;
                }
                break;
            case 2:
                i(as);
                break;
        }
        h(false);
    }
}
