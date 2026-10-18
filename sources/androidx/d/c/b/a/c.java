package androidx.d.c.b.a;

import androidx.d.c.b.e;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes.dex */
public class c extends p {

    /* renamed from: a, reason: collision with root package name */
    ArrayList<p> f661a;
    private int b;

    public c(androidx.d.c.b.e eVar, int i) {
        super(eVar);
        this.f661a = new ArrayList<>();
        this.h = i;
        j();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ChainRun ");
        sb.append(this.h == 0 ? "horizontal : " : "vertical : ");
        String sb2 = sb.toString();
        Iterator<p> it = this.f661a.iterator();
        while (it.hasNext()) {
            String str = sb2 + "<";
            sb2 = (str + it.next()) + "> ";
        }
        return sb2;
    }

    @Override // androidx.d.c.b.a.p
    boolean a() {
        int size = this.f661a.size();
        for (int i = 0; i < size; i++) {
            if (!this.f661a.get(i).a()) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.d.c.b.a.p
    public long b() {
        int size = this.f661a.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            j = j + r4.j.f + this.f661a.get(i).b() + r4.k.f;
        }
        return j;
    }

    private void j() {
        androidx.d.c.b.e eVar;
        androidx.d.c.b.e eVar2 = this.d;
        androidx.d.c.b.e z = eVar2.z(this.h);
        while (true) {
            androidx.d.c.b.e eVar3 = z;
            eVar = eVar2;
            eVar2 = eVar3;
            if (eVar2 == null) {
                break;
            } else {
                z = eVar2.z(this.h);
            }
        }
        this.d = eVar;
        this.f661a.add(eVar.c(this.h));
        androidx.d.c.b.e A = eVar.A(this.h);
        while (A != null) {
            this.f661a.add(A.c(this.h));
            A = A.A(this.h);
        }
        Iterator<p> it = this.f661a.iterator();
        while (it.hasNext()) {
            p next = it.next();
            if (this.h == 0) {
                next.d.j = this;
            } else if (this.h == 1) {
                next.d.k = this;
            }
        }
        if ((this.h == 0 && ((androidx.d.c.b.f) this.d.A()).as()) && this.f661a.size() > 1) {
            this.d = this.f661a.get(this.f661a.size() - 1).d;
        }
        this.b = this.h == 0 ? this.d.af() : this.d.ag();
    }

    @Override // androidx.d.c.b.a.p
    void c() {
        this.e = null;
        Iterator<p> it = this.f661a.iterator();
        while (it.hasNext()) {
            it.next().c();
        }
    }

    @Override // androidx.d.c.b.a.p
    void d() {
        this.j.j = false;
        this.k.j = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:296:0x0410, code lost:
    
        r2 = r2 - r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00d0, code lost:
    
        if (r2.g.j != false) goto L57;
     */
    @Override // androidx.d.c.b.a.p, androidx.d.c.b.a.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(d dVar) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        float f;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        float f2;
        int i11;
        int min;
        if (this.j.j && this.k.j) {
            androidx.d.c.b.e A = this.d.A();
            boolean as = (A == null || !(A instanceof androidx.d.c.b.f)) ? false : ((androidx.d.c.b.f) A).as();
            int i12 = this.k.g - this.j.g;
            int size = this.f661a.size();
            int i13 = 0;
            while (true) {
                i = -1;
                i2 = 8;
                if (i13 >= size) {
                    i13 = -1;
                    break;
                } else if (this.f661a.get(i13).d.E() != 8) {
                    break;
                } else {
                    i13++;
                }
            }
            int i14 = size - 1;
            int i15 = i14;
            while (true) {
                if (i15 < 0) {
                    break;
                }
                if (this.f661a.get(i15).d.E() != 8) {
                    i = i15;
                    break;
                }
                i15--;
            }
            int i16 = 0;
            while (i16 < 2) {
                int i17 = 0;
                i4 = 0;
                i5 = 0;
                int i18 = 0;
                f = 0.0f;
                while (i17 < size) {
                    p pVar = this.f661a.get(i17);
                    if (pVar.d.E() != i2) {
                        i5++;
                        if (i17 > 0 && i17 >= i13) {
                            i4 += pVar.j.f;
                        }
                        int i19 = pVar.g.g;
                        boolean z = pVar.f != e.a.MATCH_CONSTRAINT;
                        if (z) {
                            if (this.h == 0 && !pVar.d.l.g.j) {
                                return;
                            }
                            if (this.h == 1 && !pVar.d.m.g.j) {
                                return;
                            }
                        } else {
                            if (pVar.c == 1 && i16 == 0) {
                                i19 = pVar.g.m;
                                i18++;
                            }
                            z = true;
                        }
                        if (z) {
                            i4 += i19;
                        } else {
                            i18++;
                            float f3 = pVar.d.aR[this.h];
                            if (f3 >= 0.0f) {
                                f += f3;
                            }
                        }
                        if (i17 < i14 && i17 < i) {
                            i4 += -pVar.k.f;
                        }
                    }
                    i17++;
                    i2 = 8;
                }
                if (i4 < i12 || i18 == 0) {
                    i3 = i18;
                    break;
                } else {
                    i16++;
                    i2 = 8;
                }
            }
            i3 = 0;
            i4 = 0;
            i5 = 0;
            f = 0.0f;
            int i20 = this.j.g;
            if (as) {
                i20 = this.k.g;
            }
            if (i4 > i12) {
                i20 = as ? i20 + ((int) (((i4 - i12) / 2.0f) + 0.5f)) : i20 - ((int) (((i4 - i12) / 2.0f) + 0.5f));
            }
            if (i3 > 0) {
                float f4 = i12 - i4;
                int i21 = (int) ((f4 / i3) + 0.5f);
                int i22 = 0;
                int i23 = 0;
                while (i22 < size) {
                    p pVar2 = this.f661a.get(i22);
                    int i24 = i21;
                    if (pVar2.d.E() == 8 || pVar2.f != e.a.MATCH_CONSTRAINT || pVar2.g.j) {
                        i10 = i20;
                        f2 = f4;
                        i11 = i4;
                    } else {
                        int i25 = f > 0.0f ? (int) (((pVar2.d.aR[this.h] * f4) / f) + 0.5f) : i24;
                        if (this.h == 0) {
                            int i26 = pVar2.d.K;
                            f2 = f4;
                            i11 = i4;
                            i10 = i20;
                            min = Math.max(pVar2.d.J, pVar2.c == 1 ? Math.min(i25, pVar2.g.m) : i25);
                            if (i26 > 0) {
                                min = Math.min(i26, min);
                            }
                            if (min != i25) {
                                i23++;
                                i25 = min;
                            }
                            pVar2.g.a(i25);
                        } else {
                            i10 = i20;
                            f2 = f4;
                            i11 = i4;
                            int i27 = pVar2.d.N;
                            int max = Math.max(pVar2.d.M, pVar2.c == 1 ? Math.min(i25, pVar2.g.m) : i25);
                            min = i27 > 0 ? Math.min(i27, max) : max;
                            if (min != i25) {
                                i23++;
                                i25 = min;
                            }
                            pVar2.g.a(i25);
                        }
                    }
                    i22++;
                    i21 = i24;
                    f4 = f2;
                    i4 = i11;
                    i20 = i10;
                }
                i6 = i20;
                int i28 = i4;
                if (i23 > 0) {
                    i3 -= i23;
                    int i29 = 0;
                    for (int i30 = 0; i30 < size; i30++) {
                        p pVar3 = this.f661a.get(i30);
                        if (pVar3.d.E() != 8) {
                            if (i30 > 0 && i30 >= i13) {
                                i29 += pVar3.j.f;
                            }
                            i29 += pVar3.g.g;
                            if (i30 < i14 && i30 < i) {
                                i29 += -pVar3.k.f;
                            }
                        }
                    }
                    i4 = i29;
                } else {
                    i4 = i28;
                }
                i8 = 2;
                if (this.b == 2 && i23 == 0) {
                    i7 = 0;
                    this.b = 0;
                } else {
                    i7 = 0;
                }
            } else {
                i6 = i20;
                i7 = 0;
                i8 = 2;
            }
            if (i4 > i12) {
                this.b = i8;
            }
            if (i5 > 0 && i3 == 0 && i13 == i) {
                this.b = i8;
            }
            if (this.b == 1) {
                if (i5 > 1) {
                    i9 = (i12 - i4) / (i5 - 1);
                } else {
                    i9 = i5 == 1 ? (i12 - i4) / 2 : i7;
                }
                if (i3 > 0) {
                    i9 = i7;
                }
                int i31 = i6;
                while (i7 < size) {
                    p pVar4 = this.f661a.get(as ? size - (i7 + 1) : i7);
                    if (pVar4.d.E() == 8) {
                        pVar4.j.a(i31);
                        pVar4.k.a(i31);
                    } else {
                        if (i7 > 0) {
                            i31 = as ? i31 - i9 : i31 + i9;
                        }
                        if (i7 > 0 && i7 >= i13) {
                            if (as) {
                                i31 -= pVar4.j.f;
                            } else {
                                i31 += pVar4.j.f;
                            }
                        }
                        if (as) {
                            pVar4.k.a(i31);
                        } else {
                            pVar4.j.a(i31);
                        }
                        int i32 = pVar4.g.g;
                        if (pVar4.f == e.a.MATCH_CONSTRAINT && pVar4.c == 1) {
                            i32 = pVar4.g.m;
                        }
                        i31 = as ? i31 - i32 : i31 + i32;
                        if (as) {
                            pVar4.j.a(i31);
                        } else {
                            pVar4.k.a(i31);
                        }
                        pVar4.i = true;
                        if (i7 < i14 && i7 < i) {
                            if (as) {
                                i31 -= -pVar4.k.f;
                            } else {
                                i31 += -pVar4.k.f;
                            }
                        }
                    }
                    i7++;
                }
                return;
            }
            if (this.b == 0) {
                int i33 = (i12 - i4) / (i5 + 1);
                if (i3 > 0) {
                    i33 = i7;
                }
                int i34 = i6;
                while (i7 < size) {
                    p pVar5 = this.f661a.get(as ? size - (i7 + 1) : i7);
                    if (pVar5.d.E() == 8) {
                        pVar5.j.a(i34);
                        pVar5.k.a(i34);
                    } else {
                        int i35 = as ? i34 - i33 : i34 + i33;
                        if (i7 > 0 && i7 >= i13) {
                            if (as) {
                                i35 -= pVar5.j.f;
                            } else {
                                i35 += pVar5.j.f;
                            }
                        }
                        if (as) {
                            pVar5.k.a(i35);
                        } else {
                            pVar5.j.a(i35);
                        }
                        int i36 = pVar5.g.g;
                        if (pVar5.f == e.a.MATCH_CONSTRAINT && pVar5.c == 1) {
                            i36 = Math.min(i36, pVar5.g.m);
                        }
                        i34 = as ? i35 - i36 : i35 + i36;
                        if (as) {
                            pVar5.j.a(i34);
                        } else {
                            pVar5.k.a(i34);
                        }
                        if (i7 < i14 && i7 < i) {
                            if (as) {
                                i34 -= -pVar5.k.f;
                            } else {
                                i34 += -pVar5.k.f;
                            }
                        }
                    }
                    i7++;
                }
                return;
            }
            if (this.b == 2) {
                float W = this.h == 0 ? this.d.W() : this.d.X();
                if (as) {
                    W = 1.0f - W;
                }
                int i37 = (int) (((i12 - i4) * W) + 0.5f);
                if (i37 < 0 || i3 > 0) {
                    i37 = i7;
                }
                int i38 = as ? i6 - i37 : i6 + i37;
                while (i7 < size) {
                    p pVar6 = this.f661a.get(as ? size - (i7 + 1) : i7);
                    if (pVar6.d.E() == 8) {
                        pVar6.j.a(i38);
                        pVar6.k.a(i38);
                    } else {
                        if (i7 > 0 && i7 >= i13) {
                            if (as) {
                                i38 -= pVar6.j.f;
                            } else {
                                i38 += pVar6.j.f;
                            }
                        }
                        if (as) {
                            pVar6.k.a(i38);
                        } else {
                            pVar6.j.a(i38);
                        }
                        int i39 = pVar6.g.g;
                        if (pVar6.f == e.a.MATCH_CONSTRAINT && pVar6.c == 1) {
                            i39 = pVar6.g.m;
                        }
                        i38 += i39;
                        if (as) {
                            pVar6.j.a(i38);
                        } else {
                            pVar6.k.a(i38);
                        }
                        if (i7 < i14 && i7 < i) {
                            if (as) {
                                i38 -= -pVar6.k.f;
                            } else {
                                i38 += -pVar6.k.f;
                            }
                        }
                    }
                    i7++;
                }
            }
        }
    }

    @Override // androidx.d.c.b.a.p
    public void e() {
        for (int i = 0; i < this.f661a.size(); i++) {
            this.f661a.get(i).e();
        }
    }

    private androidx.d.c.b.e k() {
        for (int i = 0; i < this.f661a.size(); i++) {
            p pVar = this.f661a.get(i);
            if (pVar.d.E() != 8) {
                return pVar.d;
            }
        }
        return null;
    }

    private androidx.d.c.b.e l() {
        for (int size = this.f661a.size() - 1; size >= 0; size--) {
            p pVar = this.f661a.get(size);
            if (pVar.d.E() != 8) {
                return pVar.d;
            }
        }
        return null;
    }

    @Override // androidx.d.c.b.a.p
    void f() {
        Iterator<p> it = this.f661a.iterator();
        while (it.hasNext()) {
            it.next().f();
        }
        int size = this.f661a.size();
        if (size < 1) {
            return;
        }
        androidx.d.c.b.e eVar = this.f661a.get(0).d;
        androidx.d.c.b.e eVar2 = this.f661a.get(size - 1).d;
        if (this.h == 0) {
            androidx.d.c.b.d dVar = eVar.T;
            androidx.d.c.b.d dVar2 = eVar2.V;
            f a2 = a(dVar, 0);
            int j = dVar.j();
            androidx.d.c.b.e k = k();
            if (k != null) {
                j = k.T.j();
            }
            if (a2 != null) {
                a(this.j, a2, j);
            }
            f a3 = a(dVar2, 0);
            int j2 = dVar2.j();
            androidx.d.c.b.e l = l();
            if (l != null) {
                j2 = l.V.j();
            }
            if (a3 != null) {
                a(this.k, a3, -j2);
            }
        } else {
            androidx.d.c.b.d dVar3 = eVar.U;
            androidx.d.c.b.d dVar4 = eVar2.W;
            f a4 = a(dVar3, 1);
            int j3 = dVar3.j();
            androidx.d.c.b.e k2 = k();
            if (k2 != null) {
                j3 = k2.U.j();
            }
            if (a4 != null) {
                a(this.j, a4, j3);
            }
            f a5 = a(dVar4, 1);
            int j4 = dVar4.j();
            androidx.d.c.b.e l2 = l();
            if (l2 != null) {
                j4 = l2.W.j();
            }
            if (a5 != null) {
                a(this.k, a5, -j4);
            }
        }
        this.j.f663a = this;
        this.k.f663a = this;
    }
}
