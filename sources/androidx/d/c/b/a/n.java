package androidx.d.c.b.a;

import androidx.d.c.b.a.f;
import androidx.d.c.b.a.p;
import androidx.d.c.b.d;
import androidx.d.c.b.e;

/* loaded from: /home/user/work/dex/classes.dex */
public class n extends p {

    /* renamed from: a, reason: collision with root package name */
    public f f670a;
    g b;

    public n(androidx.d.c.b.e eVar) {
        super(eVar);
        this.f670a = new f(this);
        this.b = null;
        this.j.e = f.a.TOP;
        this.k.e = f.a.BOTTOM;
        this.f670a.e = f.a.BASELINE;
        this.h = 1;
    }

    public String toString() {
        return "VerticalRun " + this.d.F();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.d.c.b.a.p
    public void c() {
        this.e = null;
        this.j.b();
        this.k.b();
        this.f670a.b();
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
        this.f670a.b();
        this.f670a.j = false;
        this.g.j = false;
    }

    @Override // androidx.d.c.b.a.p
    boolean a() {
        return this.f != e.a.MATCH_CONSTRAINT || this.d.H == 0;
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
                a(dVar, this.d.U, this.d.W, 1);
                return;
        }
        if (this.g.c && !this.g.j && this.f == e.a.MATCH_CONSTRAINT) {
            switch (this.d.H) {
                case 2:
                    androidx.d.c.b.e A = this.d.A();
                    if (A != null && A.m.g.j) {
                        this.g.a((int) ((A.m.g.g * this.d.O) + 0.5f));
                        break;
                    }
                    break;
                case 3:
                    if (this.d.l.g.j) {
                        switch (this.d.ad()) {
                            case -1:
                                ac = (int) ((this.d.l.g.g / this.d.ac()) + 0.5f);
                                break;
                            case 0:
                                ac = (int) ((this.d.l.g.g * this.d.ac()) + 0.5f);
                                break;
                            case 1:
                                ac = (int) ((this.d.l.g.g / this.d.ac()) + 0.5f);
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
            if (!this.g.j && this.f == e.a.MATCH_CONSTRAINT && this.d.G == 0 && !this.d.an()) {
                f fVar = this.j.l.get(0);
                f fVar2 = this.k.l.get(0);
                int i = fVar.g + this.j.f;
                int i2 = fVar2.g + this.k.f;
                this.j.a(i);
                this.k.a(i2);
                this.g.a(i2 - i);
                return;
            }
            if (!this.g.j && this.f == e.a.MATCH_CONSTRAINT && this.c == 1 && this.j.l.size() > 0 && this.k.l.size() > 0) {
                int i3 = (this.k.l.get(0).g + this.k.f) - (this.j.l.get(0).g + this.j.f);
                if (i3 < this.g.m) {
                    this.g.a(i3);
                } else {
                    this.g.a(this.g.m);
                }
            }
            if (this.g.j && this.j.l.size() > 0 && this.k.l.size() > 0) {
                f fVar3 = this.j.l.get(0);
                f fVar4 = this.k.l.get(0);
                int i4 = fVar3.g + this.j.f;
                int i5 = fVar4.g + this.k.f;
                float X = this.d.X();
                if (fVar3 == fVar4) {
                    i4 = fVar3.g;
                    i5 = fVar4.g;
                    X = 0.5f;
                }
                this.j.a((int) (i4 + 0.5f + (((i5 - i4) - this.g.g) * X)));
                this.k.a(this.j.g + this.g.g);
            }
        }
    }

    @Override // androidx.d.c.b.a.p
    void f() {
        androidx.d.c.b.e A;
        androidx.d.c.b.e A2;
        if (this.d.h) {
            this.g.a(this.d.L());
        }
        if (!this.g.j) {
            this.f = this.d.ak();
            if (this.d.Y()) {
                this.b = new a(this);
            }
            if (this.f != e.a.MATCH_CONSTRAINT) {
                if (this.f == e.a.MATCH_PARENT && (A2 = this.d.A()) != null && A2.ak() == e.a.FIXED) {
                    int L = (A2.L() - this.d.U.j()) - this.d.W.j();
                    a(this.j, A2.m.j, this.d.U.j());
                    a(this.k, A2.m.k, -this.d.W.j());
                    this.g.a(L);
                    return;
                }
                if (this.f == e.a.FIXED) {
                    this.g.a(this.d.L());
                }
            }
        } else if (this.f == e.a.MATCH_PARENT && (A = this.d.A()) != null && A.ak() == e.a.FIXED) {
            a(this.j, A.m.j, this.d.U.j());
            a(this.k, A.m.k, -this.d.W.j());
            return;
        }
        if (this.g.j && this.d.h) {
            if (this.d.ag[2].c != null && this.d.ag[3].c != null) {
                if (this.d.an()) {
                    this.j.f = this.d.ag[2].j();
                    this.k.f = -this.d.ag[3].j();
                } else {
                    f a2 = a(this.d.ag[2]);
                    if (a2 != null) {
                        a(this.j, a2, this.d.ag[2].j());
                    }
                    f a3 = a(this.d.ag[3]);
                    if (a3 != null) {
                        a(this.k, a3, -this.d.ag[3].j());
                    }
                    this.j.b = true;
                    this.k.b = true;
                }
                if (this.d.Y()) {
                    a(this.f670a, this.j, this.d.Z());
                    return;
                }
                return;
            }
            if (this.d.ag[2].c != null) {
                f a4 = a(this.d.ag[2]);
                if (a4 != null) {
                    a(this.j, a4, this.d.ag[2].j());
                    a(this.k, this.j, this.g.g);
                    if (this.d.Y()) {
                        a(this.f670a, this.j, this.d.Z());
                        return;
                    }
                    return;
                }
                return;
            }
            if (this.d.ag[3].c != null) {
                f a5 = a(this.d.ag[3]);
                if (a5 != null) {
                    a(this.k, a5, -this.d.ag[3].j());
                    a(this.j, this.k, -this.g.g);
                }
                if (this.d.Y()) {
                    a(this.f670a, this.j, this.d.Z());
                    return;
                }
                return;
            }
            if (this.d.ag[4].c != null) {
                f a6 = a(this.d.ag[4]);
                if (a6 != null) {
                    a(this.f670a, a6, 0);
                    a(this.j, this.f670a, -this.d.Z());
                    a(this.k, this.j, this.g.g);
                    return;
                }
                return;
            }
            if ((this.d instanceof androidx.d.c.b.i) || this.d.A() == null || this.d.a(d.a.CENTER).c != null) {
                return;
            }
            a(this.j, this.d.A().m.j, this.d.H());
            a(this.k, this.j, this.g.g);
            if (this.d.Y()) {
                a(this.f670a, this.j, this.d.Z());
                return;
            }
            return;
        }
        if (!this.g.j && this.f == e.a.MATCH_CONSTRAINT) {
            switch (this.d.H) {
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
                    if (!this.d.an() && this.d.G != 3) {
                        g gVar2 = this.d.l.g;
                        this.g.l.add(gVar2);
                        gVar2.k.add(this.g);
                        this.g.b = true;
                        this.g.k.add(this.j);
                        this.g.k.add(this.k);
                        break;
                    }
                    break;
            }
        } else {
            this.g.b(this);
        }
        if (this.d.ag[2].c != null && this.d.ag[3].c != null) {
            if (this.d.an()) {
                this.j.f = this.d.ag[2].j();
                this.k.f = -this.d.ag[3].j();
            } else {
                f a7 = a(this.d.ag[2]);
                f a8 = a(this.d.ag[3]);
                a7.b(this);
                a8.b(this);
                this.l = p.a.CENTER;
            }
            if (this.d.Y()) {
                a(this.f670a, this.j, 1, this.b);
            }
        } else if (this.d.ag[2].c != null) {
            f a9 = a(this.d.ag[2]);
            if (a9 != null) {
                a(this.j, a9, this.d.ag[2].j());
                a(this.k, this.j, 1, this.g);
                if (this.d.Y()) {
                    a(this.f670a, this.j, 1, this.b);
                }
                if (this.f == e.a.MATCH_CONSTRAINT && this.d.ac() > 0.0f && this.d.l.f == e.a.MATCH_CONSTRAINT) {
                    this.d.l.g.k.add(this.g);
                    this.g.l.add(this.d.l.g);
                    this.g.f663a = this;
                }
            }
        } else if (this.d.ag[3].c != null) {
            f a10 = a(this.d.ag[3]);
            if (a10 != null) {
                a(this.k, a10, -this.d.ag[3].j());
                a(this.j, this.k, -1, this.g);
                if (this.d.Y()) {
                    a(this.f670a, this.j, 1, this.b);
                }
            }
        } else if (this.d.ag[4].c != null) {
            f a11 = a(this.d.ag[4]);
            if (a11 != null) {
                a(this.f670a, a11, 0);
                a(this.j, this.f670a, -1, this.b);
                a(this.k, this.j, 1, this.g);
            }
        } else if (!(this.d instanceof androidx.d.c.b.i) && this.d.A() != null) {
            a(this.j, this.d.A().m.j, this.d.H());
            a(this.k, this.j, 1, this.g);
            if (this.d.Y()) {
                a(this.f670a, this.j, 1, this.b);
            }
            if (this.f == e.a.MATCH_CONSTRAINT && this.d.ac() > 0.0f && this.d.l.f == e.a.MATCH_CONSTRAINT) {
                this.d.l.g.k.add(this.g);
                this.g.l.add(this.d.l.g);
                this.g.f663a = this;
            }
        }
        if (this.g.l.size() == 0) {
            this.g.c = true;
        }
    }

    @Override // androidx.d.c.b.a.p
    public void e() {
        if (this.j.j) {
            this.d.o(this.j.g);
        }
    }
}
