package androidx.d.c.b.a;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public class m {

    /* renamed from: a, reason: collision with root package name */
    public static final int f669a = 0;
    public static final int b = 1;
    public static final int c = 2;
    public static int d;
    p g;
    p h;
    int j;
    int k;
    public int e = 0;
    public boolean f = false;
    ArrayList<p> i = new ArrayList<>();

    public m(p pVar, int i) {
        this.g = null;
        this.h = null;
        this.j = 0;
        this.j = d;
        d++;
        this.g = pVar;
        this.h = pVar;
        this.k = i;
    }

    public void a(p pVar) {
        this.i.add(pVar);
        this.h = pVar;
    }

    private long a(f fVar, long j) {
        p pVar = fVar.d;
        if (pVar instanceof k) {
            return j;
        }
        int size = fVar.k.size();
        long j2 = j;
        for (int i = 0; i < size; i++) {
            d dVar = fVar.k.get(i);
            if (dVar instanceof f) {
                f fVar2 = (f) dVar;
                if (fVar2.d != pVar) {
                    j2 = Math.max(j2, a(fVar2, fVar2.f + j));
                }
            }
        }
        if (fVar != pVar.j) {
            return j2;
        }
        long b2 = j + pVar.b();
        return Math.max(Math.max(j2, a(pVar.k, b2)), b2 - pVar.k.f);
    }

    private long b(f fVar, long j) {
        p pVar = fVar.d;
        if (pVar instanceof k) {
            return j;
        }
        int size = fVar.k.size();
        long j2 = j;
        for (int i = 0; i < size; i++) {
            d dVar = fVar.k.get(i);
            if (dVar instanceof f) {
                f fVar2 = (f) dVar;
                if (fVar2.d != pVar) {
                    j2 = Math.min(j2, b(fVar2, fVar2.f + j));
                }
            }
        }
        if (fVar != pVar.k) {
            return j2;
        }
        long b2 = j - pVar.b();
        return Math.min(Math.min(j2, b(pVar.j, b2)), b2 - pVar.j.f);
    }

    public long a(androidx.d.c.b.f fVar, int i) {
        if (this.g instanceof c) {
            if (((c) this.g).h != i) {
                return 0L;
            }
        } else if (i == 0) {
            if (!(this.g instanceof l)) {
                return 0L;
            }
        } else if (!(this.g instanceof n)) {
            return 0L;
        }
        f fVar2 = i == 0 ? fVar.l.j : fVar.m.j;
        f fVar3 = i == 0 ? fVar.l.k : fVar.m.k;
        boolean contains = this.g.j.l.contains(fVar2);
        boolean contains2 = this.g.k.l.contains(fVar3);
        long b2 = this.g.b();
        if (!contains || !contains2) {
            if (contains) {
                return Math.max(a(this.g.j, this.g.j.f), this.g.j.f + b2);
            }
            if (contains2) {
                return Math.max(-b(this.g.k, this.g.k.f), (-this.g.k.f) + b2);
            }
            return (this.g.j.f + this.g.b()) - this.g.k.f;
        }
        long a2 = a(this.g.j, 0L);
        long b3 = b(this.g.k, 0L);
        long j = a2 - b2;
        if (j >= (-this.g.k.f)) {
            j += this.g.k.f;
        }
        long j2 = ((-b3) - b2) - this.g.j.f;
        if (j2 >= this.g.j.f) {
            j2 -= this.g.j.f;
        }
        float f = (float) (this.g.d.m(i) > 0.0f ? (((float) j2) / r12) + (((float) j) / (1.0f - r12)) : 0L);
        return (this.g.j.f + ((((f * r12) + 0.5f) + b2) + ((f * (1.0f - r12)) + 0.5f))) - this.g.k.f;
    }

    private boolean a(p pVar, int i) {
        if (!pVar.d.n[i]) {
            return false;
        }
        for (d dVar : pVar.j.k) {
            if (dVar instanceof f) {
                f fVar = (f) dVar;
                if (fVar.d != pVar && fVar == fVar.d.j) {
                    if (pVar instanceof c) {
                        Iterator<p> it = ((c) pVar).f661a.iterator();
                        while (it.hasNext()) {
                            a(it.next(), i);
                        }
                    } else if (!(pVar instanceof k)) {
                        pVar.d.n[i] = false;
                    }
                    a(fVar.d, i);
                }
            }
        }
        for (d dVar2 : pVar.k.k) {
            if (dVar2 instanceof f) {
                f fVar2 = (f) dVar2;
                if (fVar2.d != pVar && fVar2 == fVar2.d.j) {
                    if (pVar instanceof c) {
                        Iterator<p> it2 = ((c) pVar).f661a.iterator();
                        while (it2.hasNext()) {
                            a(it2.next(), i);
                        }
                    } else if (!(pVar instanceof k)) {
                        pVar.d.n[i] = false;
                    }
                    a(fVar2.d, i);
                }
            }
        }
        return false;
    }

    public void a(boolean z, boolean z2) {
        if (z && (this.g instanceof l)) {
            a(this.g, 0);
        }
        if (z2 && (this.g instanceof n)) {
            a(this.g, 1);
        }
    }
}
