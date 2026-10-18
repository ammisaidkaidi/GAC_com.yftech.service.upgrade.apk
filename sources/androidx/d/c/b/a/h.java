package androidx.d.c.b.a;

import androidx.d.c.b.a.b;
import androidx.d.c.b.d;
import androidx.d.c.b.e;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    private static final boolean f665a = false;
    private static final boolean b = false;
    private static b.a c = new b.a();

    public static void a(androidx.d.c.b.f fVar, b.InterfaceC0050b interfaceC0050b) {
        e.a aj = fVar.aj();
        e.a ak = fVar.ak();
        fVar.d_();
        ArrayList<androidx.d.c.b.e> ay = fVar.ay();
        int size = ay.size();
        for (int i = 0; i < size; i++) {
            ay.get(i).d_();
        }
        boolean as = fVar.as();
        if (aj == e.a.FIXED) {
            fVar.a(0, fVar.I());
        } else {
            fVar.d(0);
        }
        boolean z = false;
        boolean z2 = false;
        for (int i2 = 0; i2 < size; i2++) {
            androidx.d.c.b.e eVar = ay.get(i2);
            if (eVar instanceof androidx.d.c.b.h) {
                androidx.d.c.b.h hVar = (androidx.d.c.b.h) eVar;
                if (hVar.f() == 1) {
                    if (hVar.h() != -1) {
                        hVar.E(hVar.h());
                    } else if (hVar.i() != -1 && fVar.d()) {
                        hVar.E(fVar.I() - hVar.i());
                    } else if (fVar.d()) {
                        hVar.E((int) ((hVar.g() * fVar.I()) + 0.5f));
                    }
                    z = true;
                }
            } else if ((eVar instanceof androidx.d.c.b.a) && ((androidx.d.c.b.a) eVar).h() == 0) {
                z2 = true;
            }
        }
        if (z) {
            for (int i3 = 0; i3 < size; i3++) {
                androidx.d.c.b.e eVar2 = ay.get(i3);
                if (eVar2 instanceof androidx.d.c.b.h) {
                    androidx.d.c.b.h hVar2 = (androidx.d.c.b.h) eVar2;
                    if (hVar2.f() == 1) {
                        a(hVar2, interfaceC0050b, as);
                    }
                }
            }
        }
        a(fVar, interfaceC0050b, as);
        if (z2) {
            for (int i4 = 0; i4 < size; i4++) {
                androidx.d.c.b.e eVar3 = ay.get(i4);
                if (eVar3 instanceof androidx.d.c.b.a) {
                    androidx.d.c.b.a aVar = (androidx.d.c.b.a) eVar3;
                    if (aVar.h() == 0) {
                        a(aVar, interfaceC0050b, 0, as);
                    }
                }
            }
        }
        if (ak == e.a.FIXED) {
            fVar.b(0, fVar.L());
        } else {
            fVar.e(0);
        }
        boolean z3 = false;
        boolean z4 = false;
        for (int i5 = 0; i5 < size; i5++) {
            androidx.d.c.b.e eVar4 = ay.get(i5);
            if (eVar4 instanceof androidx.d.c.b.h) {
                androidx.d.c.b.h hVar3 = (androidx.d.c.b.h) eVar4;
                if (hVar3.f() == 0) {
                    if (hVar3.h() != -1) {
                        hVar3.E(hVar3.h());
                    } else if (hVar3.i() != -1 && fVar.e()) {
                        hVar3.E(fVar.L() - hVar3.i());
                    } else if (fVar.e()) {
                        hVar3.E((int) ((hVar3.g() * fVar.L()) + 0.5f));
                    }
                    z3 = true;
                }
            } else if ((eVar4 instanceof androidx.d.c.b.a) && ((androidx.d.c.b.a) eVar4).h() == 1) {
                z4 = true;
            }
        }
        if (z3) {
            for (int i6 = 0; i6 < size; i6++) {
                androidx.d.c.b.e eVar5 = ay.get(i6);
                if (eVar5 instanceof androidx.d.c.b.h) {
                    androidx.d.c.b.h hVar4 = (androidx.d.c.b.h) eVar5;
                    if (hVar4.f() == 0) {
                        a(hVar4, interfaceC0050b);
                    }
                }
            }
        }
        a((androidx.d.c.b.e) fVar, interfaceC0050b);
        if (z4) {
            for (int i7 = 0; i7 < size; i7++) {
                androidx.d.c.b.e eVar6 = ay.get(i7);
                if (eVar6 instanceof androidx.d.c.b.a) {
                    androidx.d.c.b.a aVar2 = (androidx.d.c.b.a) eVar6;
                    if (aVar2.h() == 1) {
                        a(aVar2, interfaceC0050b, 1, as);
                    }
                }
            }
        }
        for (int i8 = 0; i8 < size; i8++) {
            androidx.d.c.b.e eVar7 = ay.get(i8);
            if (eVar7.t() && a(eVar7)) {
                androidx.d.c.b.f.a(eVar7, interfaceC0050b, c, b.a.f660a);
                a(eVar7, interfaceC0050b, as);
                a(eVar7, interfaceC0050b);
            }
        }
    }

    private static void a(androidx.d.c.b.a aVar, b.InterfaceC0050b interfaceC0050b, int i, boolean z) {
        if (aVar.i()) {
            if (i == 0) {
                a(aVar, interfaceC0050b, z);
            } else {
                a(aVar, interfaceC0050b);
            }
        }
    }

    private static void a(androidx.d.c.b.e eVar, b.InterfaceC0050b interfaceC0050b, boolean z) {
        if (!(eVar instanceof androidx.d.c.b.f) && eVar.t() && a(eVar)) {
            androidx.d.c.b.f.a(eVar, interfaceC0050b, new b.a(), b.a.f660a);
        }
        androidx.d.c.b.d a2 = eVar.a(d.a.LEFT);
        androidx.d.c.b.d a3 = eVar.a(d.a.RIGHT);
        int d = a2.d();
        int d2 = a3.d();
        if (a2.a() != null && a2.f()) {
            Iterator<androidx.d.c.b.d> it = a2.a().iterator();
            while (it.hasNext()) {
                androidx.d.c.b.d next = it.next();
                androidx.d.c.b.e eVar2 = next.f678a;
                boolean a4 = a(eVar2);
                if (eVar2.t() && a4) {
                    androidx.d.c.b.f.a(eVar2, interfaceC0050b, new b.a(), b.a.f660a);
                }
                if (eVar2.aj() != e.a.MATCH_CONSTRAINT || a4) {
                    if (!eVar2.t()) {
                        if (next == eVar2.T && eVar2.V.c == null) {
                            int j = eVar2.T.j() + d;
                            eVar2.a(j, eVar2.I() + j);
                            a(eVar2, interfaceC0050b, z);
                        } else if (next == eVar2.V && eVar2.T.c == null) {
                            int j2 = d - eVar2.V.j();
                            eVar2.a(j2 - eVar2.I(), j2);
                            a(eVar2, interfaceC0050b, z);
                        } else if (next == eVar2.T && eVar2.V.c != null && eVar2.V.c.f() && !eVar2.al()) {
                            a(interfaceC0050b, eVar2, z);
                        }
                    }
                } else if (eVar2.aj() == e.a.MATCH_CONSTRAINT && eVar2.K >= 0 && eVar2.J >= 0 && (eVar2.E() == 8 || (eVar2.G == 0 && eVar2.ac() == 0.0f))) {
                    if (!eVar2.al() && !eVar2.m()) {
                        if (((next == eVar2.T && eVar2.V.c != null && eVar2.V.c.f()) || (next == eVar2.V && eVar2.T.c != null && eVar2.T.c.f())) && !eVar2.al()) {
                            a(eVar, interfaceC0050b, eVar2, z);
                        }
                    }
                }
            }
        }
        if ((eVar instanceof androidx.d.c.b.h) || a3.a() == null || !a3.f()) {
            return;
        }
        Iterator<androidx.d.c.b.d> it2 = a3.a().iterator();
        while (it2.hasNext()) {
            androidx.d.c.b.d next2 = it2.next();
            androidx.d.c.b.e eVar3 = next2.f678a;
            boolean a5 = a(eVar3);
            if (eVar3.t() && a5) {
                androidx.d.c.b.f.a(eVar3, interfaceC0050b, new b.a(), b.a.f660a);
            }
            boolean z2 = (next2 == eVar3.T && eVar3.V.c != null && eVar3.V.c.f()) || (next2 == eVar3.V && eVar3.T.c != null && eVar3.T.c.f());
            if (eVar3.aj() != e.a.MATCH_CONSTRAINT || a5) {
                if (!eVar3.t()) {
                    if (next2 == eVar3.T && eVar3.V.c == null) {
                        int j3 = eVar3.T.j() + d2;
                        eVar3.a(j3, eVar3.I() + j3);
                        a(eVar3, interfaceC0050b, z);
                    } else if (next2 == eVar3.V && eVar3.T.c == null) {
                        int j4 = d2 - eVar3.V.j();
                        eVar3.a(j4 - eVar3.I(), j4);
                        a(eVar3, interfaceC0050b, z);
                    } else if (z2 && !eVar3.al()) {
                        a(interfaceC0050b, eVar3, z);
                    }
                }
            } else if (eVar3.aj() == e.a.MATCH_CONSTRAINT && eVar3.K >= 0 && eVar3.J >= 0 && (eVar3.E() == 8 || (eVar3.G == 0 && eVar3.ac() == 0.0f))) {
                if (!eVar3.al() && !eVar3.m() && z2 && !eVar3.al()) {
                    a(eVar, interfaceC0050b, eVar3, z);
                }
            }
        }
    }

    private static void a(androidx.d.c.b.e eVar, b.InterfaceC0050b interfaceC0050b) {
        if (!(eVar instanceof androidx.d.c.b.f) && eVar.t() && a(eVar)) {
            androidx.d.c.b.f.a(eVar, interfaceC0050b, new b.a(), b.a.f660a);
        }
        androidx.d.c.b.d a2 = eVar.a(d.a.TOP);
        androidx.d.c.b.d a3 = eVar.a(d.a.BOTTOM);
        int d = a2.d();
        int d2 = a3.d();
        if (a2.a() != null && a2.f()) {
            Iterator<androidx.d.c.b.d> it = a2.a().iterator();
            while (it.hasNext()) {
                androidx.d.c.b.d next = it.next();
                androidx.d.c.b.e eVar2 = next.f678a;
                boolean a4 = a(eVar2);
                if (eVar2.t() && a4) {
                    androidx.d.c.b.f.a(eVar2, interfaceC0050b, new b.a(), b.a.f660a);
                }
                if (eVar2.ak() != e.a.MATCH_CONSTRAINT || a4) {
                    if (!eVar2.t()) {
                        if (next == eVar2.U && eVar2.W.c == null) {
                            int j = eVar2.U.j() + d;
                            eVar2.b(j, eVar2.L() + j);
                            a(eVar2, interfaceC0050b);
                        } else if (next == eVar2.W && eVar2.W.c == null) {
                            int j2 = d - eVar2.W.j();
                            eVar2.b(j2 - eVar2.L(), j2);
                            a(eVar2, interfaceC0050b);
                        } else if (next == eVar2.U && eVar2.W.c != null && eVar2.W.c.f()) {
                            a(interfaceC0050b, eVar2);
                        }
                    }
                } else if (eVar2.ak() == e.a.MATCH_CONSTRAINT && eVar2.N >= 0 && eVar2.M >= 0 && (eVar2.E() == 8 || (eVar2.H == 0 && eVar2.ac() == 0.0f))) {
                    if (!eVar2.an() && !eVar2.m()) {
                        if (((next == eVar2.U && eVar2.W.c != null && eVar2.W.c.f()) || (next == eVar2.W && eVar2.U.c != null && eVar2.U.c.f())) && !eVar2.an()) {
                            a(eVar, interfaceC0050b, eVar2);
                        }
                    }
                }
            }
        }
        if (eVar instanceof androidx.d.c.b.h) {
            return;
        }
        if (a3.a() != null && a3.f()) {
            Iterator<androidx.d.c.b.d> it2 = a3.a().iterator();
            while (it2.hasNext()) {
                androidx.d.c.b.d next2 = it2.next();
                androidx.d.c.b.e eVar3 = next2.f678a;
                boolean a5 = a(eVar3);
                if (eVar3.t() && a5) {
                    androidx.d.c.b.f.a(eVar3, interfaceC0050b, new b.a(), b.a.f660a);
                }
                boolean z = (next2 == eVar3.U && eVar3.W.c != null && eVar3.W.c.f()) || (next2 == eVar3.W && eVar3.U.c != null && eVar3.U.c.f());
                if (eVar3.ak() != e.a.MATCH_CONSTRAINT || a5) {
                    if (!eVar3.t()) {
                        if (next2 == eVar3.U && eVar3.W.c == null) {
                            int j3 = eVar3.U.j() + d2;
                            eVar3.b(j3, eVar3.L() + j3);
                            a(eVar3, interfaceC0050b);
                        } else if (next2 == eVar3.W && eVar3.U.c == null) {
                            int j4 = d2 - eVar3.W.j();
                            eVar3.b(j4 - eVar3.L(), j4);
                            a(eVar3, interfaceC0050b);
                        } else if (z && !eVar3.an()) {
                            a(interfaceC0050b, eVar3);
                        }
                    }
                } else if (eVar3.ak() == e.a.MATCH_CONSTRAINT && eVar3.N >= 0 && eVar3.M >= 0 && (eVar3.E() == 8 || (eVar3.H == 0 && eVar3.ac() == 0.0f))) {
                    if (!eVar3.an() && !eVar3.m() && z && !eVar3.an()) {
                        a(eVar, interfaceC0050b, eVar3);
                    }
                }
            }
        }
        androidx.d.c.b.d a6 = eVar.a(d.a.BASELINE);
        if (a6.a() == null || !a6.f()) {
            return;
        }
        int d3 = a6.d();
        Iterator<androidx.d.c.b.d> it3 = a6.a().iterator();
        while (it3.hasNext()) {
            androidx.d.c.b.d next3 = it3.next();
            androidx.d.c.b.e eVar4 = next3.f678a;
            boolean a7 = a(eVar4);
            if (eVar4.t() && a7) {
                androidx.d.c.b.f.a(eVar4, interfaceC0050b, new b.a(), b.a.f660a);
            }
            if (eVar4.ak() != e.a.MATCH_CONSTRAINT || a7) {
                if (!eVar4.t() && next3 == eVar4.X) {
                    eVar4.f(d3);
                    a(eVar4, interfaceC0050b);
                }
            }
        }
    }

    private static void a(b.InterfaceC0050b interfaceC0050b, androidx.d.c.b.e eVar, boolean z) {
        float W = eVar.W();
        int d = eVar.T.c.d();
        int d2 = eVar.V.c.d();
        int j = eVar.T.j() + d;
        int j2 = d2 - eVar.V.j();
        if (d == d2) {
            W = 0.5f;
        } else {
            d = j;
            d2 = j2;
        }
        int I = eVar.I();
        int i = (d2 - d) - I;
        if (d > d2) {
            i = (d - d2) - I;
        }
        int i2 = ((int) ((W * i) + 0.5f)) + d;
        int i3 = i2 + I;
        if (d > d2) {
            i3 = i2 - I;
        }
        eVar.a(i2, i3);
        a(eVar, interfaceC0050b, z);
    }

    private static void a(b.InterfaceC0050b interfaceC0050b, androidx.d.c.b.e eVar) {
        float X = eVar.X();
        int d = eVar.U.c.d();
        int d2 = eVar.W.c.d();
        int j = eVar.U.j() + d;
        int j2 = d2 - eVar.W.j();
        if (d == d2) {
            X = 0.5f;
        } else {
            d = j;
            d2 = j2;
        }
        int L = eVar.L();
        int i = (d2 - d) - L;
        if (d > d2) {
            i = (d - d2) - L;
        }
        int i2 = (int) ((X * i) + 0.5f);
        int i3 = d + i2;
        int i4 = i3 + L;
        if (d > d2) {
            i3 = d - i2;
            i4 = i3 - L;
        }
        eVar.b(i3, i4);
        a(eVar, interfaceC0050b);
    }

    private static void a(androidx.d.c.b.e eVar, b.InterfaceC0050b interfaceC0050b, androidx.d.c.b.e eVar2, boolean z) {
        int I;
        float W = eVar2.W();
        int d = eVar2.T.c.d() + eVar2.T.j();
        int d2 = eVar2.V.c.d() - eVar2.V.j();
        if (d2 >= d) {
            int I2 = eVar2.I();
            if (eVar2.E() != 8) {
                if (eVar2.G == 2) {
                    if (eVar instanceof androidx.d.c.b.f) {
                        I = eVar.I();
                    } else {
                        I = eVar.A().I();
                    }
                    I2 = (int) (eVar2.W() * 0.5f * I);
                } else if (eVar2.G == 0) {
                    I2 = d2 - d;
                }
                I2 = Math.max(eVar2.J, I2);
                if (eVar2.K > 0) {
                    I2 = Math.min(eVar2.K, I2);
                }
            }
            int i = d + ((int) ((W * ((d2 - d) - I2)) + 0.5f));
            eVar2.a(i, I2 + i);
            a(eVar2, interfaceC0050b, z);
        }
    }

    private static void a(androidx.d.c.b.e eVar, b.InterfaceC0050b interfaceC0050b, androidx.d.c.b.e eVar2) {
        int L;
        float X = eVar2.X();
        int d = eVar2.U.c.d() + eVar2.U.j();
        int d2 = eVar2.W.c.d() - eVar2.W.j();
        if (d2 >= d) {
            int L2 = eVar2.L();
            if (eVar2.E() != 8) {
                if (eVar2.H == 2) {
                    if (eVar instanceof androidx.d.c.b.f) {
                        L = eVar.L();
                    } else {
                        L = eVar.A().L();
                    }
                    L2 = (int) (X * 0.5f * L);
                } else if (eVar2.H == 0) {
                    L2 = d2 - d;
                }
                L2 = Math.max(eVar2.M, L2);
                if (eVar2.N > 0) {
                    L2 = Math.min(eVar2.N, L2);
                }
            }
            int i = d + ((int) ((X * ((d2 - d) - L2)) + 0.5f));
            eVar2.b(i, L2 + i);
            a(eVar2, interfaceC0050b);
        }
    }

    private static boolean a(androidx.d.c.b.e eVar) {
        e.a aj = eVar.aj();
        e.a ak = eVar.ak();
        androidx.d.c.b.f fVar = eVar.A() != null ? (androidx.d.c.b.f) eVar.A() : null;
        if (fVar != null) {
            fVar.aj();
            e.a aVar = e.a.FIXED;
        }
        if (fVar != null) {
            fVar.ak();
            e.a aVar2 = e.a.FIXED;
        }
        boolean z = aj == e.a.FIXED || aj == e.a.WRAP_CONTENT || (aj == e.a.MATCH_CONSTRAINT && eVar.G == 0 && eVar.ao == 0.0f && eVar.g(0)) || eVar.d();
        boolean z2 = ak == e.a.FIXED || ak == e.a.WRAP_CONTENT || (ak == e.a.MATCH_CONSTRAINT && eVar.H == 0 && eVar.ao == 0.0f && eVar.g(1)) || eVar.e();
        if (eVar.ao <= 0.0f || !(z || z2)) {
            return z && z2;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:94:0x01e7, code lost:
    
        if (r7.ag[r25].c.f678a == r3) goto L107;
     */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x015a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean a(androidx.d.c.b.f fVar, androidx.d.c.e eVar, int i, int i2, androidx.d.c.b.c cVar, boolean z, boolean z2, boolean z3) {
        int i3;
        int L;
        androidx.d.c.b.e eVar2;
        float X;
        int L2;
        if (z3) {
            return false;
        }
        if (i == 0) {
            if (!fVar.d()) {
                return false;
            }
        } else if (!fVar.e()) {
            return false;
        }
        boolean as = fVar.as();
        androidx.d.c.b.e a2 = cVar.a();
        androidx.d.c.b.e c2 = cVar.c();
        androidx.d.c.b.e b2 = cVar.b();
        androidx.d.c.b.e d = cVar.d();
        androidx.d.c.b.e e = cVar.e();
        androidx.d.c.b.d dVar = a2.ag[i2];
        int i4 = i2 + 1;
        androidx.d.c.b.d dVar2 = c2.ag[i4];
        if (dVar.c == null || dVar2.c == null) {
            return false;
        }
        if (!dVar.c.f() || !dVar2.c.f()) {
            return false;
        }
        if (b2 == null || d == null) {
            return false;
        }
        int d2 = dVar.c.d() + b2.ag[i2].j();
        int d3 = dVar2.c.d() - d.ag[i4].j();
        int i5 = d3 - d2;
        if (i5 <= 0) {
            return false;
        }
        b.a aVar = new b.a();
        boolean z4 = false;
        int i6 = 0;
        int i7 = 0;
        androidx.d.c.b.e eVar3 = a2;
        int i8 = 0;
        while (true) {
            androidx.d.c.b.e eVar4 = null;
            if (!z4) {
                androidx.d.c.b.d dVar3 = eVar3.ag[i2];
                if (!a(eVar3)) {
                    return false;
                }
                boolean z5 = z4;
                if (eVar3.ak[i] == e.a.MATCH_CONSTRAINT) {
                    return false;
                }
                if (eVar3.t()) {
                    androidx.d.c.b.f.a(eVar3, fVar.h(), aVar, b.a.f660a);
                }
                int j = i7 + eVar3.ag[i2].j();
                if (i == 0) {
                    L2 = j + eVar3.I();
                } else {
                    L2 = j + eVar3.L();
                }
                i7 = L2 + eVar3.ag[i4].j();
                i6++;
                if (eVar3.E() != 8) {
                    i8++;
                }
                androidx.d.c.b.d dVar4 = eVar3.ag[i4].c;
                if (dVar4 != null) {
                    androidx.d.c.b.e eVar5 = dVar4.f678a;
                    if (eVar5.ag[i2].c != null && eVar5.ag[i2].c.f678a == eVar3) {
                        eVar4 = eVar5;
                    }
                }
                if (eVar4 != null) {
                    eVar3 = eVar4;
                    z4 = z5;
                } else {
                    z4 = true;
                }
            } else {
                if (i8 == 0 || i8 != i6 || i5 < i7) {
                    return false;
                }
                int i9 = i5 - i7;
                if (z) {
                    i9 /= i8 + 1;
                } else if (z2 && i8 > 2) {
                    i3 = 1;
                    i9 = (i9 / i8) - 1;
                    if (i8 != i3) {
                        if (i == 0) {
                            X = e.W();
                        } else {
                            X = e.X();
                        }
                        int i10 = (int) (d2 + 0.5f + (i9 * X));
                        if (i == 0) {
                            b2.a(i10, b2.I() + i10);
                        } else {
                            b2.b(i10, b2.L() + i10);
                        }
                        a(b2, fVar.h(), as);
                        return true;
                    }
                    if (!z) {
                        if (!z2) {
                            return true;
                        }
                        if (i8 != 2) {
                            return false;
                        }
                        if (i == 0) {
                            b2.a(d2, b2.I() + d2);
                            d.a(d3 - d.I(), d3);
                            a(b2, fVar.h(), as);
                            a(d, fVar.h(), as);
                            return true;
                        }
                        b2.b(d2, b2.L() + d2);
                        d.b(d3 - d.L(), d3);
                        a(b2, fVar.h());
                        a(d, fVar.h());
                        return true;
                    }
                    int i11 = d2 + i9;
                    androidx.d.c.b.e eVar6 = a2;
                    boolean z6 = false;
                    while (!z6) {
                        androidx.d.c.b.d dVar5 = eVar6.ag[i2];
                        if (eVar6.E() != 8) {
                            int j2 = i11 + eVar6.ag[i2].j();
                            if (i == 0) {
                                eVar6.a(j2, eVar6.I() + j2);
                                a(eVar6, fVar.h(), as);
                                L = j2 + eVar6.I();
                            } else {
                                eVar6.b(j2, eVar6.L() + j2);
                                a(eVar6, fVar.h());
                                L = j2 + eVar6.L();
                            }
                            i11 = L + eVar6.ag[i4].j() + i9;
                        } else if (i == 0) {
                            eVar6.a(i11, i11);
                            a(eVar6, fVar.h(), as);
                        } else {
                            eVar6.b(i11, i11);
                            a(eVar6, fVar.h());
                        }
                        eVar6.a(eVar, false);
                        androidx.d.c.b.d dVar6 = eVar6.ag[i4].c;
                        if (dVar6 != null) {
                            eVar2 = dVar6.f678a;
                            if (eVar2.ag[i2].c != null) {
                            }
                        }
                        eVar2 = null;
                        if (eVar2 != null) {
                            eVar6 = eVar2;
                        } else {
                            z6 = true;
                        }
                    }
                    return true;
                }
                i3 = 1;
                if (i8 != i3) {
                }
            }
        }
    }
}
