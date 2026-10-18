package androidx.d.c.b.a;

import androidx.d.c.b.d;
import androidx.d.c.b.e;
import java.util.ArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    public static final int f659a = 0;
    public static final int b = 1073741824;
    public static final int c = Integer.MIN_VALUE;
    public static final int d = -1;
    public static final int e = -2;
    public static final int f = -3;
    private static final boolean g = false;
    private static final int h = 30;
    private final ArrayList<androidx.d.c.b.e> i = new ArrayList<>();
    private a j = new a();
    private androidx.d.c.b.f k;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public static int f660a = 0;
        public static int b = 1;
        public static int c = 2;
        public e.a d;
        public e.a e;
        public int f;
        public int g;
        public int h;
        public int i;
        public int j;
        public boolean k;
        public boolean l;
        public int m;
    }

    /* renamed from: androidx.d.c.b.a.b$b, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface InterfaceC0050b {
        void a();

        void a(androidx.d.c.b.e eVar, a aVar);
    }

    public void a(androidx.d.c.b.f fVar) {
        this.i.clear();
        int size = fVar.bq.size();
        for (int i = 0; i < size; i++) {
            androidx.d.c.b.e eVar = fVar.bq.get(i);
            if (eVar.aj() == e.a.MATCH_CONSTRAINT || eVar.ak() == e.a.MATCH_CONSTRAINT) {
                this.i.add(eVar);
            }
        }
        fVar.b();
    }

    public b(androidx.d.c.b.f fVar) {
        this.k = fVar;
    }

    private void b(androidx.d.c.b.f fVar) {
        int size = fVar.bq.size();
        boolean b2 = fVar.b(64);
        InterfaceC0050b h2 = fVar.h();
        for (int i = 0; i < size; i++) {
            androidx.d.c.b.e eVar = fVar.bq.get(i);
            if (!(eVar instanceof androidx.d.c.b.h) && !(eVar instanceof androidx.d.c.b.a) && !eVar.m() && (!b2 || eVar.l == null || eVar.m == null || !eVar.l.g.j || !eVar.m.g.j)) {
                e.a y = eVar.y(0);
                e.a y2 = eVar.y(1);
                boolean z = y == e.a.MATCH_CONSTRAINT && eVar.G != 1 && y2 == e.a.MATCH_CONSTRAINT && eVar.H != 1;
                if (!z && fVar.b(1) && !(eVar instanceof androidx.d.c.b.m)) {
                    if (y == e.a.MATCH_CONSTRAINT && eVar.G == 0 && y2 != e.a.MATCH_CONSTRAINT && !eVar.al()) {
                        z = true;
                    }
                    if (y2 == e.a.MATCH_CONSTRAINT && eVar.H == 0 && y != e.a.MATCH_CONSTRAINT && !eVar.al()) {
                        z = true;
                    }
                    if ((y == e.a.MATCH_CONSTRAINT || y2 == e.a.MATCH_CONSTRAINT) && eVar.ao > 0.0f) {
                        z = true;
                    }
                }
                if (!z) {
                    a(h2, eVar, a.f660a);
                    if (fVar.e != null) {
                        fVar.e.c++;
                    }
                }
            }
        }
        h2.a();
    }

    private void a(androidx.d.c.b.f fVar, String str, int i, int i2) {
        int O = fVar.O();
        int P = fVar.P();
        fVar.r(0);
        fVar.s(0);
        fVar.p(i);
        fVar.q(i2);
        fVar.r(O);
        fVar.s(P);
        this.k.at();
    }

    public long a(androidx.d.c.b.f fVar, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        boolean z;
        int i10;
        int i11;
        int i12;
        int i13;
        boolean z2;
        boolean z3;
        boolean z4;
        int i14;
        InterfaceC0050b interfaceC0050b;
        int i15;
        int i16;
        boolean z5;
        int i17;
        InterfaceC0050b h2 = fVar.h();
        int size = fVar.bq.size();
        int I = fVar.I();
        int L = fVar.L();
        boolean a2 = androidx.d.c.b.k.a(i, 128);
        boolean z6 = a2 || androidx.d.c.b.k.a(i, 64);
        if (z6) {
            for (int i18 = 0; i18 < size; i18++) {
                androidx.d.c.b.e eVar = fVar.bq.get(i18);
                boolean z7 = (eVar.aj() == e.a.MATCH_CONSTRAINT) && (eVar.ak() == e.a.MATCH_CONSTRAINT) && eVar.ac() > 0.0f;
                if ((eVar.al() && z7) || ((eVar.an() && z7) || (eVar instanceof androidx.d.c.b.m) || eVar.al() || eVar.an())) {
                    z6 = false;
                    break;
                }
            }
        }
        if (z6 && androidx.d.c.e.r != null) {
            androidx.d.c.e.r.e++;
        }
        boolean z8 = z6 & ((i4 == 1073741824 && i6 == 1073741824) || a2);
        int i19 = 2;
        if (z8) {
            int min = Math.min(fVar.o(), i5);
            int min2 = Math.min(fVar.n(), i7);
            if (i4 == 1073741824 && fVar.I() != min) {
                fVar.p(min);
                fVar.b();
            }
            if (i6 == 1073741824 && fVar.L() != min2) {
                fVar.q(min2);
                fVar.b();
            }
            if (i4 == 1073741824 && i6 == 1073741824) {
                z = fVar.a(a2);
                i10 = 2;
            } else {
                boolean h3 = fVar.h(a2);
                if (i4 == 1073741824) {
                    h3 &= fVar.a(a2, 0);
                    i10 = 1;
                } else {
                    i10 = 0;
                }
                if (i6 == 1073741824) {
                    z = fVar.a(a2, 1) & h3;
                    i10++;
                } else {
                    z = h3;
                }
            }
            if (z) {
                fVar.a(i4 == 1073741824, i6 == 1073741824);
            }
        } else {
            z = false;
            i10 = 0;
        }
        if (z && i10 == 2) {
            return 0L;
        }
        int i20 = fVar.i();
        if (size > 0) {
            b(fVar);
        }
        a(fVar);
        int size2 = this.i.size();
        if (size > 0) {
            a(fVar, "First pass", I, L);
        }
        if (size2 > 0) {
            boolean z9 = fVar.aj() == e.a.WRAP_CONTENT;
            boolean z10 = fVar.ak() == e.a.WRAP_CONTENT;
            int max = Math.max(fVar.I(), this.k.O());
            int max2 = Math.max(fVar.L(), this.k.P());
            int i21 = 0;
            boolean z11 = false;
            while (i21 < size2) {
                androidx.d.c.b.e eVar2 = this.i.get(i21);
                if (eVar2 instanceof androidx.d.c.b.m) {
                    int I2 = eVar2.I();
                    i15 = i20;
                    int L2 = eVar2.L();
                    i16 = I;
                    boolean a3 = a(h2, eVar2, a.b) | z11;
                    if (fVar.e != null) {
                        z5 = a3;
                        i17 = L;
                        fVar.e.d++;
                    } else {
                        z5 = a3;
                        i17 = L;
                    }
                    int I3 = eVar2.I();
                    int L3 = eVar2.L();
                    if (I3 != I2) {
                        eVar2.p(I3);
                        if (z9 && eVar2.S() > max) {
                            max = Math.max(max, eVar2.S() + eVar2.a(d.a.RIGHT).j());
                        }
                        z5 = true;
                    }
                    if (L3 != L2) {
                        eVar2.q(L3);
                        if (z10 && eVar2.T() > max2) {
                            max2 = Math.max(max2, eVar2.T() + eVar2.a(d.a.BOTTOM).j());
                        }
                        z5 = true;
                    }
                    z11 = z5 | ((androidx.d.c.b.m) eVar2).h();
                } else {
                    i15 = i20;
                    i16 = I;
                    i17 = L;
                }
                i21++;
                i20 = i15;
                I = i16;
                L = i17;
                i19 = 2;
            }
            int i22 = i20;
            int i23 = I;
            int i24 = L;
            int i25 = i19;
            int i26 = 0;
            while (true) {
                if (i26 >= i25) {
                    i12 = i23;
                    i13 = i24;
                    z2 = z11;
                    break;
                }
                z2 = z11;
                int i27 = 0;
                while (i27 < size2) {
                    androidx.d.c.b.e eVar3 = this.i.get(i27);
                    if (((eVar3 instanceof androidx.d.c.b.i) && !(eVar3 instanceof androidx.d.c.b.m)) || (eVar3 instanceof androidx.d.c.b.h) || eVar3.E() == 8 || ((z8 && eVar3.l.g.j && eVar3.m.g.j) || (eVar3 instanceof androidx.d.c.b.m))) {
                        z4 = z8;
                        i14 = size2;
                        interfaceC0050b = h2;
                    } else {
                        int I4 = eVar3.I();
                        int L4 = eVar3.L();
                        int Z = eVar3.Z();
                        int i28 = a.b;
                        z4 = z8;
                        if (i26 == 1) {
                            i28 = a.c;
                        }
                        z2 |= a(h2, eVar3, i28);
                        if (fVar.e != null) {
                            i14 = size2;
                            interfaceC0050b = h2;
                            fVar.e.d++;
                        } else {
                            i14 = size2;
                            interfaceC0050b = h2;
                        }
                        int I5 = eVar3.I();
                        int L5 = eVar3.L();
                        if (I5 != I4) {
                            eVar3.p(I5);
                            if (z9 && eVar3.S() > max) {
                                max = Math.max(max, eVar3.S() + eVar3.a(d.a.RIGHT).j());
                            }
                            z2 = true;
                        }
                        if (L5 != L4) {
                            eVar3.q(L5);
                            if (z10 && eVar3.T() > max2) {
                                max2 = Math.max(max2, eVar3.T() + eVar3.a(d.a.BOTTOM).j());
                            }
                            z2 = true;
                        }
                        if (eVar3.Y() && Z != eVar3.Z()) {
                            z2 = true;
                        }
                    }
                    i27++;
                    z8 = z4;
                    h2 = interfaceC0050b;
                    size2 = i14;
                }
                boolean z12 = z8;
                int i29 = size2;
                InterfaceC0050b interfaceC0050b2 = h2;
                if (!z2) {
                    i12 = i23;
                    i13 = i24;
                    break;
                }
                a(fVar, "intermediate pass", i23, i24);
                i26++;
                z8 = z12;
                h2 = interfaceC0050b2;
                size2 = i29;
                i25 = 2;
                z11 = false;
            }
            if (z2) {
                a(fVar, "2nd pass", i12, i13);
                if (fVar.I() < max) {
                    fVar.p(max);
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (fVar.L() < max2) {
                    fVar.q(max2);
                    z3 = true;
                }
                if (z3) {
                    a(fVar, "3rd pass", i12, i13);
                }
            }
            i11 = i22;
        } else {
            i11 = i20;
        }
        fVar.a(i11);
        return 0L;
    }

    private boolean a(InterfaceC0050b interfaceC0050b, androidx.d.c.b.e eVar, int i) {
        this.j.d = eVar.aj();
        this.j.e = eVar.ak();
        this.j.f = eVar.I();
        this.j.g = eVar.L();
        this.j.l = false;
        this.j.m = i;
        boolean z = this.j.d == e.a.MATCH_CONSTRAINT;
        boolean z2 = this.j.e == e.a.MATCH_CONSTRAINT;
        boolean z3 = z && eVar.ao > 0.0f;
        boolean z4 = z2 && eVar.ao > 0.0f;
        if (z3 && eVar.I[0] == 4) {
            this.j.d = e.a.FIXED;
        }
        if (z4 && eVar.I[1] == 4) {
            this.j.e = e.a.FIXED;
        }
        interfaceC0050b.a(eVar, this.j);
        eVar.p(this.j.h);
        eVar.q(this.j.i);
        eVar.c(this.j.k);
        eVar.u(this.j.j);
        this.j.m = a.f660a;
        return this.j.l;
    }
}
