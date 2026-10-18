package androidx.d.c.b.a;

import androidx.d.c.b.a.f;
import androidx.d.c.b.a.p;
import androidx.d.c.b.d;
import androidx.d.c.b.e;

/* loaded from: /home/user/work/dex/classes.dex */
public class l extends p {

    /* renamed from: a, reason: collision with root package name */
    private static int[] f667a = new int[2];

    public l(androidx.d.c.b.e eVar) {
        super(eVar);
        this.j.e = f.a.LEFT;
        this.k.e = f.a.RIGHT;
        this.h = 0;
    }

    public String toString() {
        return "HorizontalRun " + this.d.F();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.d.c.b.a.p
    public void c() {
        this.e = null;
        this.j.b();
        this.k.b();
        this.g.b();
        this.i = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.d.c.b.a.p
    public void d() {
        this.i = false;
        this.j.b();
        this.j.j = false;
        this.k.b();
        this.k.j = false;
        this.g.j = false;
    }

    @Override // androidx.d.c.b.a.p
    boolean a() {
        return this.f != e.a.MATCH_CONSTRAINT || this.d.G == 0;
    }

    @Override // androidx.d.c.b.a.p
    void f() {
        androidx.d.c.b.e A;
        androidx.d.c.b.e A2;
        if (this.d.h) {
            this.g.a(this.d.I());
        }
        if (!this.g.j) {
            this.f = this.d.aj();
            if (this.f != e.a.MATCH_CONSTRAINT) {
                if (this.f == e.a.MATCH_PARENT && (((A2 = this.d.A()) != null && A2.aj() == e.a.FIXED) || A2.aj() == e.a.MATCH_PARENT)) {
                    int I = (A2.I() - this.d.T.j()) - this.d.V.j();
                    a(this.j, A2.l.j, this.d.T.j());
                    a(this.k, A2.l.k, -this.d.V.j());
                    this.g.a(I);
                    return;
                }
                if (this.f == e.a.FIXED) {
                    this.g.a(this.d.I());
                }
            }
        } else if (this.f == e.a.MATCH_PARENT && (((A = this.d.A()) != null && A.aj() == e.a.FIXED) || A.aj() == e.a.MATCH_PARENT)) {
            a(this.j, A.l.j, this.d.T.j());
            a(this.k, A.l.k, -this.d.V.j());
            return;
        }
        if (this.g.j && this.d.h) {
            if (this.d.ag[0].c != null && this.d.ag[1].c != null) {
                if (this.d.al()) {
                    this.j.f = this.d.ag[0].j();
                    this.k.f = -this.d.ag[1].j();
                    return;
                }
                f a2 = a(this.d.ag[0]);
                if (a2 != null) {
                    a(this.j, a2, this.d.ag[0].j());
                }
                f a3 = a(this.d.ag[1]);
                if (a3 != null) {
                    a(this.k, a3, -this.d.ag[1].j());
                }
                this.j.b = true;
                this.k.b = true;
                return;
            }
            if (this.d.ag[0].c != null) {
                f a4 = a(this.d.ag[0]);
                if (a4 != null) {
                    a(this.j, a4, this.d.ag[0].j());
                    a(this.k, this.j, this.g.g);
                    return;
                }
                return;
            }
            if (this.d.ag[1].c != null) {
                f a5 = a(this.d.ag[1]);
                if (a5 != null) {
                    a(this.k, a5, -this.d.ag[1].j());
                    a(this.j, this.k, -this.g.g);
                    return;
                }
                return;
            }
            if ((this.d instanceof androidx.d.c.b.i) || this.d.A() == null || this.d.a(d.a.CENTER).c != null) {
                return;
            }
            a(this.j, this.d.A().l.j, this.d.G());
            a(this.k, this.j, this.g.g);
            return;
        }
        if (this.f == e.a.MATCH_CONSTRAINT) {
            switch (this.d.G) {
                case 2:
                    androidx.d.c.b.e A3 = this.d.A();
                    if (A3 != null) {
                        g gVar = A3.m.g;
                        this.g.l.add(gVar);
                        gVar.k.add(this.g);
                        this.g.b = true;
                        this.g.k.add(this.j);
                        this.g.k.add(this.k);
                        break;
                    }
                    break;
                case 3:
                    if (this.d.H == 3) {
                        this.j.f663a = this;
                        this.k.f663a = this;
                        this.d.m.j.f663a = this;
                        this.d.m.k.f663a = this;
                        this.g.f663a = this;
                        if (this.d.an()) {
                            this.g.l.add(this.d.m.g);
                            this.d.m.g.k.add(this.g);
                            this.d.m.g.f663a = this;
                            this.g.l.add(this.d.m.j);
                            this.g.l.add(this.d.m.k);
                            this.d.m.j.k.add(this.g);
                            this.d.m.k.k.add(this.g);
                            break;
                        } else if (this.d.al()) {
                            this.d.m.g.l.add(this.g);
                            this.g.k.add(this.d.m.g);
                            break;
                        } else {
                            this.d.m.g.l.add(this.g);
                            break;
                        }
                    } else {
                        g gVar2 = this.d.m.g;
                        this.g.l.add(gVar2);
                        gVar2.k.add(this.g);
                        this.d.m.j.k.add(this.g);
                        this.d.m.k.k.add(this.g);
                        this.g.b = true;
                        this.g.k.add(this.j);
                        this.g.k.add(this.k);
                        this.j.l.add(this.g);
                        this.k.l.add(this.g);
                        break;
                    }
            }
        }
        if (this.d.ag[0].c != null && this.d.ag[1].c != null) {
            if (this.d.al()) {
                this.j.f = this.d.ag[0].j();
                this.k.f = -this.d.ag[1].j();
                return;
            }
            f a6 = a(this.d.ag[0]);
            f a7 = a(this.d.ag[1]);
            a6.b(this);
            a7.b(this);
            this.l = p.a.CENTER;
            return;
        }
        if (this.d.ag[0].c != null) {
            f a8 = a(this.d.ag[0]);
            if (a8 != null) {
                a(this.j, a8, this.d.ag[0].j());
                a(this.k, this.j, 1, this.g);
                return;
            }
            return;
        }
        if (this.d.ag[1].c != null) {
            f a9 = a(this.d.ag[1]);
            if (a9 != null) {
                a(this.k, a9, -this.d.ag[1].j());
                a(this.j, this.k, -1, this.g);
                return;
            }
            return;
        }
        if ((this.d instanceof androidx.d.c.b.i) || this.d.A() == null) {
            return;
        }
        a(this.j, this.d.A().l.j, this.d.G());
        a(this.k, this.j, 1, this.g);
    }

    private void a(int[] iArr, int i, int i2, int i3, int i4, float f, int i5) {
        int i6 = i2 - i;
        int i7 = i4 - i3;
        switch (i5) {
            case -1:
                int i8 = (int) ((i7 * f) + 0.5f);
                int i9 = (int) ((i6 / f) + 0.5f);
                if (i8 <= i6 && i7 <= i7) {
                    iArr[0] = i8;
                    iArr[1] = i7;
                    return;
                } else {
                    if (i6 > i6 || i9 > i7) {
                        return;
                    }
                    iArr[0] = i6;
                    iArr[1] = i9;
                    return;
                }
            case 0:
                iArr[0] = (int) ((i7 * f) + 0.5f);
                iArr[1] = i7;
                return;
            case 1:
                iArr[0] = i6;
                iArr[1] = (int) ((i6 * f) + 0.5f);
                return;
            default:
                return;
        }
    }

    @Override // androidx.d.c.b.a.p, androidx.d.c.b.a.d
    public void a(d dVar) {
        int ac;
        switch (this.l) {
            case START:
                b(dVar);
                break;
            case END:
                c(dVar);
                break;
            case CENTER:
                a(dVar, this.d.T, this.d.V, 0);
                return;
        }
        if (!this.g.j && this.f == e.a.MATCH_CONSTRAINT) {
            switch (this.d.G) {
                case 2:
                    androidx.d.c.b.e A = this.d.A();
                    if (A != null && A.l.g.j) {
                        this.g.a((int) ((A.l.g.g * this.d.L) + 0.5f));
                        break;
                    }
                    break;
                case 3:
                    if (this.d.H == 0 || this.d.H == 3) {
                        f fVar = this.d.m.j;
                        f fVar2 = this.d.m.k;
                        boolean z = this.d.T.c != null;
                        boolean z2 = this.d.U.c != null;
                        boolean z3 = this.d.V.c != null;
                        boolean z4 = this.d.W.c != null;
                        int ad = this.d.ad();
                        if (!z || !z2 || !z3 || !z4) {
                            if (!z || !z3) {
                                if (z2 && z4) {
                                    if (fVar.c && fVar2.c) {
                                        float ac2 = this.d.ac();
                                        int i = fVar.l.get(0).g + fVar.f;
                                        int i2 = fVar2.l.get(0).g - fVar2.f;
                                        switch (ad) {
                                            case -1:
                                            case 1:
                                                int a2 = a(i2 - i, 1);
                                                int i3 = (int) ((a2 / ac2) + 0.5f);
                                                int a3 = a(i3, 0);
                                                if (i3 != a3) {
                                                    a2 = (int) ((a3 * ac2) + 0.5f);
                                                }
                                                this.g.a(a3);
                                                this.d.m.g.a(a2);
                                                break;
                                            case 0:
                                                int a4 = a(i2 - i, 1);
                                                int i4 = (int) ((a4 * ac2) + 0.5f);
                                                int a5 = a(i4, 0);
                                                if (i4 != a5) {
                                                    a4 = (int) ((a5 / ac2) + 0.5f);
                                                }
                                                this.g.a(a5);
                                                this.d.m.g.a(a4);
                                                break;
                                        }
                                    } else {
                                        return;
                                    }
                                }
                            } else if (this.j.c && this.k.c) {
                                float ac3 = this.d.ac();
                                int i5 = this.j.l.get(0).g + this.j.f;
                                int i6 = this.k.l.get(0).g - this.k.f;
                                switch (ad) {
                                    case -1:
                                    case 0:
                                        int a6 = a(i6 - i5, 0);
                                        int i7 = (int) ((a6 * ac3) + 0.5f);
                                        int a7 = a(i7, 1);
                                        if (i7 != a7) {
                                            a6 = (int) ((a7 / ac3) + 0.5f);
                                        }
                                        this.g.a(a6);
                                        this.d.m.g.a(a7);
                                        break;
                                    case 1:
                                        int a8 = a(i6 - i5, 0);
                                        int i8 = (int) ((a8 / ac3) + 0.5f);
                                        int a9 = a(i8, 1);
                                        if (i8 != a9) {
                                            a8 = (int) ((a9 * ac3) + 0.5f);
                                        }
                                        this.g.a(a8);
                                        this.d.m.g.a(a9);
                                        break;
                                }
                            } else {
                                return;
                            }
                        } else {
                            float ac4 = this.d.ac();
                            if (fVar.j && fVar2.j) {
                                if (this.j.c && this.k.c) {
                                    a(f667a, this.j.l.get(0).g + this.j.f, this.k.l.get(0).g - this.k.f, fVar.g + fVar.f, fVar2.g - fVar2.f, ac4, ad);
                                    this.g.a(f667a[0]);
                                    this.d.m.g.a(f667a[1]);
                                    return;
                                }
                                return;
                            }
                            if (this.j.j && this.k.j) {
                                if (!fVar.c || !fVar2.c) {
                                    return;
                                }
                                a(f667a, this.j.g + this.j.f, this.k.g - this.k.f, fVar.l.get(0).g + fVar.f, fVar2.l.get(0).g - fVar2.f, ac4, ad);
                                this.g.a(f667a[0]);
                                this.d.m.g.a(f667a[1]);
                            }
                            if (this.j.c && this.k.c && fVar.c && fVar2.c) {
                                a(f667a, this.j.l.get(0).g + this.j.f, this.k.l.get(0).g - this.k.f, fVar.l.get(0).g + fVar.f, fVar2.l.get(0).g - fVar2.f, ac4, ad);
                                this.g.a(f667a[0]);
                                this.d.m.g.a(f667a[1]);
                                break;
                            } else {
                                return;
                            }
                        }
                    } else {
                        switch (this.d.ad()) {
                            case -1:
                                ac = (int) ((this.d.m.g.g * this.d.ac()) + 0.5f);
                                break;
                            case 0:
                                ac = (int) ((this.d.m.g.g / this.d.ac()) + 0.5f);
                                break;
                            case 1:
                                ac = (int) ((this.d.m.g.g * this.d.ac()) + 0.5f);
                                break;
                            default:
                                ac = 0;
                                break;
                        }
                        this.g.a(ac);
                        break;
                    }
                    break;
            }
        }
        if (this.j.c && this.k.c) {
            if (this.j.j && this.k.j && this.g.j) {
                return;
            }
            if (!this.g.j && this.f == e.a.MATCH_CONSTRAINT && this.d.G == 0 && !this.d.al()) {
                f fVar3 = this.j.l.get(0);
                f fVar4 = this.k.l.get(0);
                int i9 = fVar3.g + this.j.f;
                int i10 = fVar4.g + this.k.f;
                this.j.a(i9);
                this.k.a(i10);
                this.g.a(i10 - i9);
                return;
            }
            if (!this.g.j && this.f == e.a.MATCH_CONSTRAINT && this.c == 1 && this.j.l.size() > 0 && this.k.l.size() > 0) {
                int min = Math.min((this.k.l.get(0).g + this.k.f) - (this.j.l.get(0).g + this.j.f), this.g.m);
                int i11 = this.d.K;
                int max = Math.max(this.d.J, min);
                if (i11 > 0) {
                    max = Math.min(i11, max);
                }
                this.g.a(max);
            }
            if (this.g.j) {
                f fVar5 = this.j.l.get(0);
                f fVar6 = this.k.l.get(0);
                int i12 = fVar5.g + this.j.f;
                int i13 = fVar6.g + this.k.f;
                float W = this.d.W();
                if (fVar5 == fVar6) {
                    i12 = fVar5.g;
                    i13 = fVar6.g;
                    W = 0.5f;
                }
                this.j.a((int) (i12 + 0.5f + (((i13 - i12) - this.g.g) * W)));
                this.k.a(this.j.g + this.g.g);
            }
        }
    }

    @Override // androidx.d.c.b.a.p
    public void e() {
        if (this.j.j) {
            this.d.n(this.j.g);
        }
    }
}
