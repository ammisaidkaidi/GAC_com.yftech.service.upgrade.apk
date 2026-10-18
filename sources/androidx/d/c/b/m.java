package androidx.d.c.b;

import androidx.d.c.b.a.b;
import androidx.d.c.b.e;

/* loaded from: /home/user/work/dex/classes.dex */
public class m extends j {

    /* renamed from: a, reason: collision with root package name */
    private int f691a = 0;
    private int b = 0;
    private int c = 0;
    private int d = 0;
    private int e = 0;
    private int aY = 0;
    private int aZ = 0;
    private int ba = 0;
    private boolean bb = false;
    private int bc = 0;
    private int bh = 0;
    protected b.a bf = new b.a();
    b.InterfaceC0050b bg = null;

    public void b(int i, int i2, int i3, int i4) {
    }

    public void N(int i) {
        this.c = i;
        this.f691a = i;
        this.d = i;
        this.b = i;
        this.e = i;
        this.aY = i;
    }

    public void O(int i) {
        this.e = i;
        this.aZ = i;
        this.ba = i;
    }

    public void P(int i) {
        this.aY = i;
    }

    public void Q(int i) {
        this.c = i;
        this.aZ = i;
    }

    public void a(boolean z) {
        if (this.e > 0 || this.aY > 0) {
            if (z) {
                this.aZ = this.aY;
                this.ba = this.e;
            } else {
                this.aZ = this.e;
                this.ba = this.aY;
            }
        }
    }

    public void R(int i) {
        this.f691a = i;
    }

    public void S(int i) {
        this.d = i;
        this.ba = i;
    }

    public void T(int i) {
        this.b = i;
    }

    public int b() {
        return this.f691a;
    }

    public int c() {
        return this.b;
    }

    public int f() {
        return this.aZ;
    }

    public int g() {
        return this.ba;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void h(boolean z) {
        this.bb = z;
    }

    public boolean h() {
        return this.bb;
    }

    @Override // androidx.d.c.b.j, androidx.d.c.b.i
    public void a(f fVar) {
        i();
    }

    public void i() {
        for (int i = 0; i < this.be; i++) {
            e eVar = this.bd[i];
            if (eVar != null) {
                eVar.b(true);
            }
        }
    }

    public int aq() {
        return this.bc;
    }

    public int ar() {
        return this.bh;
    }

    public void k(int i, int i2) {
        this.bc = i;
        this.bh = i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean as() {
        b.InterfaceC0050b h = this.al != null ? ((f) this.al).h() : null;
        if (h == null) {
            return false;
        }
        int i = 0;
        while (true) {
            if (i >= this.be) {
                return true;
            }
            e eVar = this.bd[i];
            if (eVar != null && !(eVar instanceof h)) {
                e.a y = eVar.y(0);
                e.a y2 = eVar.y(1);
                if (!(y == e.a.MATCH_CONSTRAINT && eVar.G != 1 && y2 == e.a.MATCH_CONSTRAINT && eVar.H != 1)) {
                    if (y == e.a.MATCH_CONSTRAINT) {
                        y = e.a.WRAP_CONTENT;
                    }
                    if (y2 == e.a.MATCH_CONSTRAINT) {
                        y2 = e.a.WRAP_CONTENT;
                    }
                    this.bf.d = y;
                    this.bf.e = y2;
                    this.bf.f = eVar.I();
                    this.bf.g = eVar.L();
                    h.a(eVar, this.bf);
                    eVar.p(this.bf.h);
                    eVar.q(this.bf.i);
                    eVar.u(this.bf.j);
                }
            }
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(e eVar, e.a aVar, int i, e.a aVar2, int i2) {
        while (this.bg == null && A() != null) {
            this.bg = ((f) A()).h();
        }
        this.bf.d = aVar;
        this.bf.e = aVar2;
        this.bf.f = i;
        this.bf.g = i2;
        this.bg.a(eVar, this.bf);
        eVar.p(this.bf.h);
        eVar.q(this.bf.i);
        eVar.c(this.bf.k);
        eVar.u(this.bf.j);
    }
}
