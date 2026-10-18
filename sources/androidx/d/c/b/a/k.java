package androidx.d.c.b.a;

import androidx.d.c.b.a.f;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public class k extends p {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.d.c.b.a.p
    public boolean a() {
        return false;
    }

    public k(androidx.d.c.b.e eVar) {
        super(eVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.d.c.b.a.p
    public void c() {
        this.e = null;
        this.j.b();
    }

    @Override // androidx.d.c.b.a.p
    void d() {
        this.j.j = false;
    }

    private void a(f fVar) {
        this.j.k.add(fVar);
        fVar.l.add(this.j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.d.c.b.a.p
    public void f() {
        if (this.d instanceof androidx.d.c.b.a) {
            this.j.b = true;
            androidx.d.c.b.a aVar = (androidx.d.c.b.a) this.d;
            int b = aVar.b();
            boolean c = aVar.c();
            int i = 0;
            switch (b) {
                case 0:
                    this.j.e = f.a.LEFT;
                    while (i < aVar.be) {
                        androidx.d.c.b.e eVar = aVar.bd[i];
                        if (c || eVar.E() != 8) {
                            f fVar = eVar.l.j;
                            fVar.k.add(this.j);
                            this.j.l.add(fVar);
                        }
                        i++;
                    }
                    a(this.d.l.j);
                    a(this.d.l.k);
                    return;
                case 1:
                    this.j.e = f.a.RIGHT;
                    while (i < aVar.be) {
                        androidx.d.c.b.e eVar2 = aVar.bd[i];
                        if (c || eVar2.E() != 8) {
                            f fVar2 = eVar2.l.k;
                            fVar2.k.add(this.j);
                            this.j.l.add(fVar2);
                        }
                        i++;
                    }
                    a(this.d.l.j);
                    a(this.d.l.k);
                    return;
                case 2:
                    this.j.e = f.a.TOP;
                    while (i < aVar.be) {
                        androidx.d.c.b.e eVar3 = aVar.bd[i];
                        if (c || eVar3.E() != 8) {
                            f fVar3 = eVar3.m.j;
                            fVar3.k.add(this.j);
                            this.j.l.add(fVar3);
                        }
                        i++;
                    }
                    a(this.d.m.j);
                    a(this.d.m.k);
                    return;
                case 3:
                    this.j.e = f.a.BOTTOM;
                    while (i < aVar.be) {
                        androidx.d.c.b.e eVar4 = aVar.bd[i];
                        if (c || eVar4.E() != 8) {
                            f fVar4 = eVar4.m.k;
                            fVar4.k.add(this.j);
                            this.j.l.add(fVar4);
                        }
                        i++;
                    }
                    a(this.d.m.j);
                    a(this.d.m.k);
                    return;
                default:
                    return;
            }
        }
    }

    @Override // androidx.d.c.b.a.p, androidx.d.c.b.a.d
    public void a(d dVar) {
        androidx.d.c.b.a aVar = (androidx.d.c.b.a) this.d;
        int b = aVar.b();
        Iterator<f> it = this.j.l.iterator();
        int i = 0;
        int i2 = -1;
        while (it.hasNext()) {
            int i3 = it.next().g;
            if (i2 == -1 || i3 < i2) {
                i2 = i3;
            }
            if (i < i3) {
                i = i3;
            }
        }
        if (b == 0 || b == 2) {
            this.j.a(i2 + aVar.g());
        } else {
            this.j.a(i + aVar.g());
        }
    }

    @Override // androidx.d.c.b.a.p
    public void e() {
        if (this.d instanceof androidx.d.c.b.a) {
            int b = ((androidx.d.c.b.a) this.d).b();
            if (b == 0 || b == 1) {
                this.d.n(this.j.g);
            } else {
                this.d.o(this.j.g);
            }
        }
    }
}
