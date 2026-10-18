package androidx.d.c.b;

import androidx.d.c.b.d;
import androidx.d.c.b.e;
import java.util.HashMap;

/* loaded from: /home/user/work/dex/classes.dex */
public class a extends j {

    /* renamed from: a, reason: collision with root package name */
    public static final int f658a = 0;
    private static final boolean aY = true;
    private static final boolean aZ = false;
    public static final int b = 1;
    public static final int c = 2;
    public static final int d = 3;
    private int ba = 0;
    private boolean bb = aY;
    private int bc = 0;
    boolean e = false;

    @Override // androidx.d.c.b.e
    public boolean a() {
        return aY;
    }

    public a() {
    }

    public a(String str) {
        b(str);
    }

    public int b() {
        return this.ba;
    }

    public void a(int i) {
        this.ba = i;
    }

    public void a(boolean z) {
        this.bb = z;
    }

    public boolean c() {
        return this.bb;
    }

    @Override // androidx.d.c.b.e
    public boolean d() {
        return this.e;
    }

    @Override // androidx.d.c.b.e
    public boolean e() {
        return this.e;
    }

    @Override // androidx.d.c.b.j, androidx.d.c.b.e
    public void a(e eVar, HashMap<e, e> hashMap) {
        super.a(eVar, hashMap);
        a aVar = (a) eVar;
        this.ba = aVar.ba;
        this.bb = aVar.bb;
        this.bc = aVar.bc;
    }

    @Override // androidx.d.c.b.e
    public String toString() {
        String str = "[Barrier] " + F() + " {";
        for (int i = 0; i < this.be; i++) {
            e eVar = this.bd[i];
            if (i > 0) {
                str = str + ", ";
            }
            str = str + eVar.F();
        }
        return str + "}";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void f() {
        for (int i = 0; i < this.be; i++) {
            e eVar = this.bd[i];
            if (this.ba == 0 || this.ba == 1) {
                eVar.a(0, aY);
            } else if (this.ba == 2 || this.ba == 3) {
                eVar.a(1, aY);
            }
        }
    }

    @Override // androidx.d.c.b.e
    public void a(androidx.d.c.e eVar, boolean z) {
        boolean z2;
        this.ag[0] = this.T;
        this.ag[2] = this.U;
        this.ag[1] = this.V;
        this.ag[3] = this.W;
        for (int i = 0; i < this.ag.length; i++) {
            this.ag[i].f = eVar.a(this.ag[i]);
        }
        if (this.ba < 0 || this.ba >= 4) {
            return;
        }
        d dVar = this.ag[this.ba];
        if (!this.e) {
            i();
        }
        if (this.e) {
            this.e = false;
            if (this.ba == 0 || this.ba == 1) {
                eVar.a(this.T.f, this.aq);
                eVar.a(this.V.f, this.aq);
                return;
            } else {
                if (this.ba == 2 || this.ba == 3) {
                    eVar.a(this.U.f, this.ar);
                    eVar.a(this.W.f, this.ar);
                    return;
                }
                return;
            }
        }
        for (int i2 = 0; i2 < this.be; i2++) {
            e eVar2 = this.bd[i2];
            if ((this.bb || eVar2.a()) && (((this.ba == 0 || this.ba == 1) && eVar2.aj() == e.a.MATCH_CONSTRAINT && eVar2.T.c != null && eVar2.V.c != null) || ((this.ba == 2 || this.ba == 3) && eVar2.ak() == e.a.MATCH_CONSTRAINT && eVar2.U.c != null && eVar2.W.c != null))) {
                z2 = true;
                break;
            }
        }
        z2 = false;
        boolean z3 = this.T.c() || this.V.c();
        boolean z4 = this.U.c() || this.W.c();
        int i3 = !z2 && ((this.ba == 0 && z3) || ((this.ba == 2 && z4) || ((this.ba == 1 && z3) || (this.ba == 3 && z4)))) ? 5 : 4;
        for (int i4 = 0; i4 < this.be; i4++) {
            e eVar3 = this.bd[i4];
            if (this.bb || eVar3.a()) {
                androidx.d.c.i a2 = eVar.a(eVar3.ag[this.ba]);
                eVar3.ag[this.ba].f = a2;
                int i5 = (eVar3.ag[this.ba].c == null || eVar3.ag[this.ba].c.f678a != this) ? 0 : eVar3.ag[this.ba].d + 0;
                if (this.ba == 0 || this.ba == 2) {
                    eVar.b(dVar.f, a2, this.bc - i5, z2);
                } else {
                    eVar.a(dVar.f, a2, this.bc + i5, z2);
                }
                eVar.c(dVar.f, a2, this.bc + i5, i3);
            }
        }
        if (this.ba == 0) {
            eVar.c(this.V.f, this.T.f, 0, 8);
            eVar.c(this.T.f, this.al.V.f, 0, 4);
            eVar.c(this.T.f, this.al.T.f, 0, 0);
            return;
        }
        if (this.ba == 1) {
            eVar.c(this.T.f, this.V.f, 0, 8);
            eVar.c(this.T.f, this.al.T.f, 0, 4);
            eVar.c(this.T.f, this.al.V.f, 0, 0);
        } else if (this.ba == 2) {
            eVar.c(this.W.f, this.U.f, 0, 8);
            eVar.c(this.U.f, this.al.W.f, 0, 4);
            eVar.c(this.U.f, this.al.U.f, 0, 0);
        } else if (this.ba == 3) {
            eVar.c(this.U.f, this.W.f, 0, 8);
            eVar.c(this.U.f, this.al.U.f, 0, 4);
            eVar.c(this.U.f, this.al.W.f, 0, 0);
        }
    }

    public void b(int i) {
        this.bc = i;
    }

    public int g() {
        return this.bc;
    }

    public int h() {
        switch (this.ba) {
            case 0:
            case 1:
                return 0;
            case 2:
            case 3:
                return 1;
            default:
                return -1;
        }
    }

    public boolean i() {
        boolean z = true;
        for (int i = 0; i < this.be; i++) {
            e eVar = this.bd[i];
            if ((this.bb || eVar.a()) && (((this.ba == 0 || this.ba == 1) && !eVar.d()) || ((this.ba == 2 || this.ba == 3) && !eVar.e()))) {
                z = false;
            }
        }
        if (!z || this.be <= 0) {
            return false;
        }
        int i2 = 0;
        boolean z2 = false;
        for (int i3 = 0; i3 < this.be; i3++) {
            e eVar2 = this.bd[i3];
            if (this.bb || eVar2.a()) {
                if (!z2) {
                    if (this.ba == 0) {
                        i2 = eVar2.a(d.a.LEFT).d();
                    } else if (this.ba == 1) {
                        i2 = eVar2.a(d.a.RIGHT).d();
                    } else if (this.ba == 2) {
                        i2 = eVar2.a(d.a.TOP).d();
                    } else if (this.ba == 3) {
                        i2 = eVar2.a(d.a.BOTTOM).d();
                    }
                    z2 = true;
                }
                if (this.ba == 0) {
                    i2 = Math.min(i2, eVar2.a(d.a.LEFT).d());
                } else if (this.ba == 1) {
                    i2 = Math.max(i2, eVar2.a(d.a.RIGHT).d());
                } else if (this.ba == 2) {
                    i2 = Math.min(i2, eVar2.a(d.a.TOP).d());
                } else if (this.ba == 3) {
                    i2 = Math.max(i2, eVar2.a(d.a.BOTTOM).d());
                }
            }
        }
        int i4 = i2 + this.bc;
        if (this.ba == 0 || this.ba == 1) {
            a(i4, i4);
        } else {
            b(i4, i4);
        }
        this.e = aY;
        return aY;
    }
}
