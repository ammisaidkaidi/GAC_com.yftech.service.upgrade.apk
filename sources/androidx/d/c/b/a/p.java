package androidx.d.c.b.a;

import androidx.d.c.b.e;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class p implements d {
    public int c;
    androidx.d.c.b.e d;
    m e;
    protected e.a f;
    g g = new g(this);
    public int h = 0;
    boolean i = false;
    public f j = new f(this);
    public f k = new f(this);
    protected a l = a.NONE;

    /* loaded from: /home/user/work/dex/classes.dex */
    enum a {
        NONE,
        START,
        END,
        CENTER
    }

    @Override // androidx.d.c.b.a.d
    public void a(d dVar) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean a();

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(d dVar) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void c();

    /* JADX INFO: Access modifiers changed from: protected */
    public void c(d dVar) {
    }

    abstract void d();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void e();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void f();

    public p(androidx.d.c.b.e eVar) {
        this.d = eVar;
    }

    public boolean g() {
        return this.g.j;
    }

    public boolean h() {
        int size = this.j.l.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            if (this.j.l.get(i2).d != this) {
                i++;
            }
        }
        int size2 = this.k.l.size();
        for (int i3 = 0; i3 < size2; i3++) {
            if (this.k.l.get(i3).d != this) {
                i++;
            }
        }
        return i >= 2;
    }

    public long a(int i) {
        if (!this.g.j) {
            return 0L;
        }
        long j = this.g.g;
        if (h()) {
            return j + (this.j.f - this.k.f);
        }
        if (i == 0) {
            return j + this.j.f;
        }
        return j - this.k.f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final f a(androidx.d.c.b.d dVar) {
        if (dVar.c == null) {
            return null;
        }
        androidx.d.c.b.e eVar = dVar.c.f678a;
        switch (dVar.c.b) {
            case LEFT:
                return eVar.l.j;
            case RIGHT:
                return eVar.l.k;
            case TOP:
                return eVar.m.j;
            case BASELINE:
                return eVar.m.f670a;
            case BOTTOM:
                return eVar.m.k;
            default:
                return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(d dVar, androidx.d.c.b.d dVar2, androidx.d.c.b.d dVar3, int i) {
        float X;
        f a2 = a(dVar2);
        f a3 = a(dVar3);
        if (a2.j && a3.j) {
            int j = a2.g + dVar2.j();
            int j2 = a3.g - dVar3.j();
            int i2 = j2 - j;
            if (!this.g.j && this.f == e.a.MATCH_CONSTRAINT) {
                b(i, i2);
            }
            if (this.g.j) {
                if (this.g.g == i2) {
                    this.j.a(j);
                    this.k.a(j2);
                    return;
                }
                if (i == 0) {
                    X = this.d.W();
                } else {
                    X = this.d.X();
                }
                if (a2 == a3) {
                    j = a2.g;
                    j2 = a3.g;
                    X = 0.5f;
                }
                this.j.a((int) (j + 0.5f + (((j2 - j) - this.g.g) * X)));
                this.k.a(this.j.g + this.g.g);
            }
        }
    }

    private void b(int i, int i2) {
        int i3;
        switch (this.c) {
            case 0:
                this.g.a(a(i2, i));
                return;
            case 1:
                this.g.a(Math.min(a(this.g.m, i), i2));
                return;
            case 2:
                androidx.d.c.b.e A = this.d.A();
                if (A != null) {
                    if ((i == 0 ? A.l : A.m).g.j) {
                        this.g.a(a((int) ((r5.g.g * (i == 0 ? this.d.L : this.d.O)) + 0.5f), i));
                        return;
                    }
                    return;
                }
                return;
            case 3:
                if (this.d.l.f == e.a.MATCH_CONSTRAINT && this.d.l.c == 3 && this.d.m.f == e.a.MATCH_CONSTRAINT && this.d.m.c == 3) {
                    return;
                }
                if ((i == 0 ? this.d.m : this.d.l).g.j) {
                    float ac = this.d.ac();
                    if (i == 1) {
                        i3 = (int) ((r5.g.g / ac) + 0.5f);
                    } else {
                        i3 = (int) ((ac * r5.g.g) + 0.5f);
                    }
                    this.g.a(i3);
                    return;
                }
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int a(int i, int i2) {
        int max;
        if (i2 == 0) {
            int i3 = this.d.K;
            max = Math.max(this.d.J, i);
            if (i3 > 0) {
                max = Math.min(i3, i);
            }
            if (max == i) {
                return i;
            }
        } else {
            int i4 = this.d.N;
            max = Math.max(this.d.M, i);
            if (i4 > 0) {
                max = Math.min(i4, i);
            }
            if (max == i) {
                return i;
            }
        }
        return max;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final f a(androidx.d.c.b.d dVar, int i) {
        if (dVar.c == null) {
            return null;
        }
        androidx.d.c.b.e eVar = dVar.c.f678a;
        p pVar = i == 0 ? eVar.l : eVar.m;
        int i2 = AnonymousClass1.f674a[dVar.c.b.ordinal()];
        if (i2 != 5) {
            switch (i2) {
                case 1:
                case 3:
                    return pVar.j;
                case 2:
                    break;
                default:
                    return null;
            }
        }
        return pVar.k;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(f fVar, f fVar2, int i) {
        fVar.l.add(fVar2);
        fVar.f = i;
        fVar2.k.add(fVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(f fVar, f fVar2, int i, g gVar) {
        fVar.l.add(fVar2);
        fVar.l.add(this.g);
        fVar.h = i;
        fVar.i = gVar;
        fVar2.k.add(fVar);
        gVar.k.add(fVar);
    }

    public long b() {
        if (this.g.j) {
            return this.g.g;
        }
        return 0L;
    }

    public boolean i() {
        return this.i;
    }
}
