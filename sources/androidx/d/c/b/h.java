package androidx.d.c.b;

import androidx.d.c.b.d;
import androidx.d.c.b.e;
import java.util.HashMap;

/* loaded from: /home/user/work/dex/classes.dex */
public class h extends e {

    /* renamed from: a, reason: collision with root package name */
    public static final int f687a = 0;
    public static final int aY = -1;
    public static final int b = 1;
    public static final int c = 0;
    public static final int d = 1;
    public static final int e = 2;
    protected float aZ = -1.0f;
    protected int ba = -1;
    protected int bb = -1;
    private d bc = this.U;
    private int bd = 0;
    private int be = 0;
    private boolean bf;

    @Override // androidx.d.c.b.e
    public String D() {
        return "Guideline";
    }

    @Override // androidx.d.c.b.e
    public boolean a() {
        return true;
    }

    public h() {
        this.ah.clear();
        this.ah.add(this.bc);
        int length = this.ag.length;
        for (int i = 0; i < length; i++) {
            this.ag[i] = this.bc;
        }
    }

    @Override // androidx.d.c.b.e
    public void a(e eVar, HashMap<e, e> hashMap) {
        super.a(eVar, hashMap);
        h hVar = (h) eVar;
        this.aZ = hVar.aZ;
        this.ba = hVar.ba;
        this.bb = hVar.bb;
        a(hVar.bd);
    }

    public int b() {
        if (this.aZ != -1.0f) {
            return 0;
        }
        if (this.ba != -1) {
            return 1;
        }
        return this.bb != -1 ? 2 : -1;
    }

    public void a(int i) {
        if (this.bd == i) {
            return;
        }
        this.bd = i;
        this.ah.clear();
        if (this.bd == 1) {
            this.bc = this.T;
        } else {
            this.bc = this.U;
        }
        this.ah.add(this.bc);
        int length = this.ag.length;
        for (int i2 = 0; i2 < length; i2++) {
            this.ag[i2] = this.bc;
        }
    }

    public d c() {
        return this.bc;
    }

    public int f() {
        return this.bd;
    }

    public void b(int i) {
        this.be = i;
    }

    @Override // androidx.d.c.b.e
    public d a(d.a aVar) {
        switch (aVar) {
            case LEFT:
            case RIGHT:
                if (this.bd == 1) {
                    return this.bc;
                }
                break;
            case TOP:
            case BOTTOM:
                if (this.bd == 0) {
                    return this.bc;
                }
                break;
            case BASELINE:
            case CENTER:
            case CENTER_X:
            case CENTER_Y:
            case NONE:
                return null;
        }
        throw new AssertionError(aVar.name());
    }

    public void B(int i) {
        e(i / 100.0f);
    }

    public void e(float f) {
        if (f > -1.0f) {
            this.aZ = f;
            this.ba = -1;
            this.bb = -1;
        }
    }

    public void C(int i) {
        if (i > -1) {
            this.aZ = -1.0f;
            this.ba = i;
            this.bb = -1;
        }
    }

    public void D(int i) {
        if (i > -1) {
            this.aZ = -1.0f;
            this.ba = -1;
            this.bb = i;
        }
    }

    public float g() {
        return this.aZ;
    }

    public int h() {
        return this.ba;
    }

    public int i() {
        return this.bb;
    }

    public void E(int i) {
        this.bc.a(i);
        this.bf = true;
    }

    @Override // androidx.d.c.b.e
    public boolean d() {
        return this.bf;
    }

    @Override // androidx.d.c.b.e
    public boolean e() {
        return this.bf;
    }

    @Override // androidx.d.c.b.e
    public void a(androidx.d.c.e eVar, boolean z) {
        f fVar = (f) A();
        if (fVar == null) {
            return;
        }
        d a2 = fVar.a(d.a.LEFT);
        d a3 = fVar.a(d.a.RIGHT);
        boolean z2 = this.al != null && this.al.ak[0] == e.a.WRAP_CONTENT;
        if (this.bd == 0) {
            a2 = fVar.a(d.a.TOP);
            a3 = fVar.a(d.a.BOTTOM);
            z2 = this.al != null && this.al.ak[1] == e.a.WRAP_CONTENT;
        }
        if (this.bf && this.bc.f()) {
            androidx.d.c.i a4 = eVar.a(this.bc);
            eVar.a(a4, this.bc.d());
            if (this.ba != -1) {
                if (z2) {
                    eVar.a(eVar.a(a3), a4, 0, 5);
                }
            } else if (this.bb != -1 && z2) {
                androidx.d.c.i a5 = eVar.a(a3);
                eVar.a(a4, eVar.a(a2), 0, 5);
                eVar.a(a5, a4, 0, 5);
            }
            this.bf = false;
            return;
        }
        if (this.ba != -1) {
            androidx.d.c.i a6 = eVar.a(this.bc);
            eVar.c(a6, eVar.a(a2), this.ba, 8);
            if (z2) {
                eVar.a(eVar.a(a3), a6, 0, 5);
                return;
            }
            return;
        }
        if (this.bb == -1) {
            if (this.aZ != -1.0f) {
                eVar.a(androidx.d.c.e.a(eVar, eVar.a(this.bc), eVar.a(a3), this.aZ));
                return;
            }
            return;
        }
        androidx.d.c.i a7 = eVar.a(this.bc);
        androidx.d.c.i a8 = eVar.a(a3);
        eVar.c(a7, a8, -this.bb, 8);
        if (z2) {
            eVar.a(a7, eVar.a(a2), 0, 5);
            eVar.a(a8, a7, 0, 5);
        }
    }

    @Override // androidx.d.c.b.e
    public void b(androidx.d.c.e eVar, boolean z) {
        if (A() == null) {
            return;
        }
        int b2 = eVar.b(this.bc);
        if (this.bd == 1) {
            n(b2);
            o(0);
            q(A().L());
            p(0);
            return;
        }
        n(0);
        o(b2);
        p(A().I());
        q(0);
    }

    void aq() {
        float G = G() / A().I();
        if (this.bd == 0) {
            G = H() / A().L();
        }
        e(G);
    }

    void ar() {
        int G = G();
        if (this.bd == 0) {
            G = H();
        }
        C(G);
    }

    void as() {
        int I = A().I() - G();
        if (this.bd == 0) {
            I = A().L() - H();
        }
        D(I);
    }

    public void at() {
        if (this.ba != -1) {
            aq();
        } else if (this.aZ != -1.0f) {
            as();
        } else if (this.bb != -1) {
            ar();
        }
    }

    public boolean au() {
        return this.aZ != -1.0f && this.ba == -1 && this.bb == -1;
    }
}
