package androidx.d.c.b;

import androidx.d.c.b.e;
import java.util.ArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    protected e f677a;
    protected e b;
    protected e c;
    protected e d;
    protected e e;
    protected e f;
    protected e g;
    protected ArrayList<e> h;
    protected int i;
    protected int j;
    protected float k = 0.0f;
    int l;
    int m;
    int n;
    boolean o;
    protected boolean p;
    protected boolean q;
    protected boolean r;
    protected boolean s;
    private int t;
    private boolean u;
    private boolean v;

    public c(e eVar, int i, boolean z) {
        this.u = false;
        this.f677a = eVar;
        this.t = i;
        this.u = z;
    }

    private static boolean a(e eVar, int i) {
        return eVar.E() != 8 && eVar.ak[i] == e.a.MATCH_CONSTRAINT && (eVar.I[i] == 0 || eVar.I[i] == 3);
    }

    private void j() {
        int i = this.t * 2;
        e eVar = this.f677a;
        this.o = true;
        e eVar2 = this.f677a;
        e eVar3 = this.f677a;
        e eVar4 = eVar;
        boolean z = false;
        while (!z) {
            this.i++;
            e eVar5 = null;
            eVar2.aT[this.t] = null;
            eVar2.aS[this.t] = null;
            if (eVar2.E() != 8) {
                this.l++;
                if (eVar2.y(this.t) != e.a.MATCH_CONSTRAINT) {
                    this.m += eVar2.l(this.t);
                }
                this.m += eVar2.ag[i].j();
                int i2 = i + 1;
                this.m += eVar2.ag[i2].j();
                this.n += eVar2.ag[i].j();
                this.n += eVar2.ag[i2].j();
                if (this.b == null) {
                    this.b = eVar2;
                }
                this.d = eVar2;
                if (eVar2.ak[this.t] == e.a.MATCH_CONSTRAINT) {
                    if (eVar2.I[this.t] == 0 || eVar2.I[this.t] == 3 || eVar2.I[this.t] == 2) {
                        this.j++;
                        float f = eVar2.aR[this.t];
                        if (f > 0.0f) {
                            this.k += eVar2.aR[this.t];
                        }
                        if (a(eVar2, this.t)) {
                            if (f < 0.0f) {
                                this.p = true;
                            } else {
                                this.q = true;
                            }
                            if (this.h == null) {
                                this.h = new ArrayList<>();
                            }
                            this.h.add(eVar2);
                        }
                        if (this.f == null) {
                            this.f = eVar2;
                        }
                        if (this.g != null) {
                            this.g.aS[this.t] = eVar2;
                        }
                        this.g = eVar2;
                    }
                    if (this.t == 0) {
                        if (eVar2.G != 0) {
                            this.o = false;
                        } else if (eVar2.J != 0 || eVar2.K != 0) {
                            this.o = false;
                        }
                    } else if (eVar2.H != 0) {
                        this.o = false;
                    } else if (eVar2.M != 0 || eVar2.N != 0) {
                        this.o = false;
                    }
                    if (eVar2.ao != 0.0f) {
                        this.o = false;
                        this.s = true;
                    }
                }
            }
            if (eVar4 != eVar2) {
                eVar4.aT[this.t] = eVar2;
            }
            d dVar = eVar2.ag[i + 1].c;
            if (dVar != null) {
                e eVar6 = dVar.f678a;
                if (eVar6.ag[i].c != null && eVar6.ag[i].c.f678a == eVar2) {
                    eVar5 = eVar6;
                }
            }
            if (eVar5 == null) {
                z = true;
                eVar5 = eVar2;
            }
            eVar4 = eVar2;
            eVar2 = eVar5;
        }
        if (this.b != null) {
            this.m -= this.b.ag[i].j();
        }
        if (this.d != null) {
            this.m -= this.d.ag[i + 1].j();
        }
        this.c = eVar2;
        if (this.t == 0 && this.u) {
            this.e = this.c;
        } else {
            this.e = this.f677a;
        }
        this.r = this.q && this.p;
    }

    public e a() {
        return this.f677a;
    }

    public e b() {
        return this.b;
    }

    public e c() {
        return this.c;
    }

    public e d() {
        return this.d;
    }

    public e e() {
        return this.e;
    }

    public e f() {
        return this.f;
    }

    public e g() {
        return this.g;
    }

    public float h() {
        return this.k;
    }

    public void i() {
        if (!this.v) {
            j();
        }
        this.v = true;
    }
}
