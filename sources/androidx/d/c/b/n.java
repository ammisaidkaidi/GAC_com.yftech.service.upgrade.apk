package androidx.d.c.b;

import java.util.ArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public class n extends e {
    public ArrayList<e> bq;

    public n() {
        this.bq = new ArrayList<>();
    }

    public n(int i, int i2, int i3, int i4) {
        super(i, i2, i3, i4);
        this.bq = new ArrayList<>();
    }

    public n(int i, int i2) {
        super(i, i2);
        this.bq = new ArrayList<>();
    }

    @Override // androidx.d.c.b.e
    public void w() {
        this.bq.clear();
        super.w();
    }

    public void b(e eVar) {
        this.bq.add(eVar);
        if (eVar.A() != null) {
            ((n) eVar.A()).c(eVar);
        }
        eVar.a_(this);
    }

    public void a(e... eVarArr) {
        for (e eVar : eVarArr) {
            b(eVar);
        }
    }

    public void c(e eVar) {
        this.bq.remove(eVar);
        eVar.w();
    }

    public ArrayList<e> ay() {
        return this.bq;
    }

    public f az() {
        e A = A();
        f fVar = this instanceof f ? (f) this : null;
        while (A != null) {
            e A2 = A.A();
            if (A instanceof f) {
                fVar = (f) A;
            }
            A = A2;
        }
        return fVar;
    }

    @Override // androidx.d.c.b.e
    public void e(int i, int i2) {
        super.e(i, i2);
        int size = this.bq.size();
        for (int i3 = 0; i3 < size; i3++) {
            this.bq.get(i3).e(M(), N());
        }
    }

    public void at() {
        if (this.bq == null) {
            return;
        }
        int size = this.bq.size();
        for (int i = 0; i < size; i++) {
            e eVar = this.bq.get(i);
            if (eVar instanceof n) {
                ((n) eVar).at();
            }
        }
    }

    @Override // androidx.d.c.b.e
    public void a(androidx.d.c.c cVar) {
        super.a(cVar);
        int size = this.bq.size();
        for (int i = 0; i < size; i++) {
            this.bq.get(i).a(cVar);
        }
    }

    public void aA() {
        this.bq.clear();
    }
}
