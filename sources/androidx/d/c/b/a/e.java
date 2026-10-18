package androidx.d.c.b.a;

import androidx.d.c.b.a.b;
import androidx.d.c.b.e;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes.dex */
public class e {
    private static final boolean b = true;
    private androidx.d.c.b.f c;
    private androidx.d.c.b.f f;
    private boolean d = b;
    private boolean e = b;
    private ArrayList<p> g = new ArrayList<>();
    private ArrayList<m> h = new ArrayList<>();
    private b.InterfaceC0050b i = null;
    private b.a j = new b.a();

    /* renamed from: a, reason: collision with root package name */
    ArrayList<m> f662a = new ArrayList<>();

    public e(androidx.d.c.b.f fVar) {
        this.c = fVar;
        this.f = fVar;
    }

    public void a(b.InterfaceC0050b interfaceC0050b) {
        this.i = interfaceC0050b;
    }

    private int a(androidx.d.c.b.f fVar, int i) {
        int size = this.f662a.size();
        long j = 0;
        for (int i2 = 0; i2 < size; i2++) {
            j = Math.max(j, this.f662a.get(i2).a(fVar, i));
        }
        return (int) j;
    }

    public void a(e.a aVar, e.a aVar2) {
        if (this.d) {
            d();
            Iterator<androidx.d.c.b.e> it = this.c.bq.iterator();
            boolean z = false;
            while (it.hasNext()) {
                androidx.d.c.b.e next = it.next();
                next.n[0] = b;
                next.n[1] = b;
                if (next instanceof androidx.d.c.b.a) {
                    z = true;
                }
            }
            if (z) {
                return;
            }
            Iterator<m> it2 = this.f662a.iterator();
            while (it2.hasNext()) {
                it2.next().a(aVar == e.a.WRAP_CONTENT, aVar2 == e.a.WRAP_CONTENT);
            }
        }
    }

    public boolean a(boolean z) {
        boolean z2;
        boolean z3 = z & b;
        boolean z4 = false;
        if (this.d || this.e) {
            Iterator<androidx.d.c.b.e> it = this.c.bq.iterator();
            while (it.hasNext()) {
                androidx.d.c.b.e next = it.next();
                next.y();
                next.h = false;
                next.l.d();
                next.m.d();
            }
            this.c.y();
            this.c.h = false;
            this.c.l.d();
            this.c.m.d();
            this.e = false;
        }
        if (a(this.f)) {
            return false;
        }
        this.c.n(0);
        this.c.o(0);
        e.a y = this.c.y(0);
        e.a y2 = this.c.y(1);
        if (this.d) {
            d();
        }
        int G = this.c.G();
        int H = this.c.H();
        this.c.l.j.a(G);
        this.c.m.j.a(H);
        a();
        if (y == e.a.WRAP_CONTENT || y2 == e.a.WRAP_CONTENT) {
            if (z3) {
                Iterator<p> it2 = this.g.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    if (!it2.next().a()) {
                        z3 = false;
                        break;
                    }
                }
            }
            if (z3 && y == e.a.WRAP_CONTENT) {
                this.c.a(e.a.FIXED);
                this.c.p(a(this.c, 0));
                this.c.l.g.a(this.c.I());
            }
            if (z3 && y2 == e.a.WRAP_CONTENT) {
                this.c.b(e.a.FIXED);
                this.c.q(a(this.c, 1));
                this.c.m.g.a(this.c.L());
            }
        }
        if (this.c.ak[0] == e.a.FIXED || this.c.ak[0] == e.a.MATCH_PARENT) {
            int I = this.c.I() + G;
            this.c.l.k.a(I);
            this.c.l.g.a(I - G);
            a();
            if (this.c.ak[1] == e.a.FIXED || this.c.ak[1] == e.a.MATCH_PARENT) {
                int L = this.c.L() + H;
                this.c.m.k.a(L);
                this.c.m.g.a(L - H);
            }
            a();
            z2 = true;
        } else {
            z2 = false;
        }
        Iterator<p> it3 = this.g.iterator();
        while (it3.hasNext()) {
            p next2 = it3.next();
            if (next2.d != this.c || next2.i) {
                next2.e();
            }
        }
        Iterator<p> it4 = this.g.iterator();
        while (true) {
            if (!it4.hasNext()) {
                z4 = true;
                break;
            }
            p next3 = it4.next();
            if (z2 || next3.d != this.c) {
                if (!next3.j.j) {
                    break;
                }
                if (!next3.k.j) {
                    if (!(next3 instanceof j)) {
                        break;
                    }
                }
                if (!next3.g.j && !(next3 instanceof c) && !(next3 instanceof j)) {
                    break;
                }
            }
        }
        this.c.a(y);
        this.c.b(y2);
        return z4;
    }

    public boolean b(boolean z) {
        if (this.d) {
            Iterator<androidx.d.c.b.e> it = this.c.bq.iterator();
            while (it.hasNext()) {
                androidx.d.c.b.e next = it.next();
                next.y();
                next.h = false;
                next.l.g.j = false;
                next.l.i = false;
                next.l.d();
                next.m.g.j = false;
                next.m.i = false;
                next.m.d();
            }
            this.c.y();
            this.c.h = false;
            this.c.l.g.j = false;
            this.c.l.i = false;
            this.c.l.d();
            this.c.m.g.j = false;
            this.c.m.i = false;
            this.c.m.d();
            d();
        }
        if (a(this.f)) {
            return false;
        }
        this.c.n(0);
        this.c.o(0);
        this.c.l.j.a(0);
        this.c.m.j.a(0);
        return b;
    }

    public boolean a(boolean z, int i) {
        boolean z2;
        boolean z3 = z & b;
        boolean z4 = false;
        e.a y = this.c.y(0);
        e.a y2 = this.c.y(1);
        int G = this.c.G();
        int H = this.c.H();
        if (z3 && (y == e.a.WRAP_CONTENT || y2 == e.a.WRAP_CONTENT)) {
            Iterator<p> it = this.g.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                p next = it.next();
                if (next.h == i && !next.a()) {
                    z3 = false;
                    break;
                }
            }
            if (i == 0) {
                if (z3 && y == e.a.WRAP_CONTENT) {
                    this.c.a(e.a.FIXED);
                    this.c.p(a(this.c, 0));
                    this.c.l.g.a(this.c.I());
                }
            } else if (z3 && y2 == e.a.WRAP_CONTENT) {
                this.c.b(e.a.FIXED);
                this.c.q(a(this.c, 1));
                this.c.m.g.a(this.c.L());
            }
        }
        if (i == 0) {
            if (this.c.ak[0] == e.a.FIXED || this.c.ak[0] == e.a.MATCH_PARENT) {
                int I = this.c.I() + G;
                this.c.l.k.a(I);
                this.c.l.g.a(I - G);
                z2 = true;
            }
            z2 = false;
        } else {
            if (this.c.ak[1] == e.a.FIXED || this.c.ak[1] == e.a.MATCH_PARENT) {
                int L = this.c.L() + H;
                this.c.m.k.a(L);
                this.c.m.g.a(L - H);
                z2 = true;
            }
            z2 = false;
        }
        a();
        Iterator<p> it2 = this.g.iterator();
        while (it2.hasNext()) {
            p next2 = it2.next();
            if (next2.h == i && (next2.d != this.c || next2.i)) {
                next2.e();
            }
        }
        Iterator<p> it3 = this.g.iterator();
        while (true) {
            if (!it3.hasNext()) {
                z4 = true;
                break;
            }
            p next3 = it3.next();
            if (next3.h == i && (z2 || next3.d != this.c)) {
                if (!next3.j.j) {
                    break;
                }
                if (!next3.k.j) {
                    break;
                }
                if (!(next3 instanceof c) && !next3.g.j) {
                    break;
                }
            }
        }
        this.c.a(y);
        this.c.b(y2);
        return z4;
    }

    private void a(androidx.d.c.b.e eVar, e.a aVar, int i, e.a aVar2, int i2) {
        this.j.d = aVar;
        this.j.e = aVar2;
        this.j.f = i;
        this.j.g = i2;
        this.i.a(eVar, this.j);
        eVar.p(this.j.h);
        eVar.q(this.j.i);
        eVar.c(this.j.k);
        eVar.u(this.j.j);
    }

    private boolean a(androidx.d.c.b.f fVar) {
        int i;
        e.a aVar;
        int i2;
        Iterator<androidx.d.c.b.e> it = fVar.bq.iterator();
        while (it.hasNext()) {
            androidx.d.c.b.e next = it.next();
            e.a aVar2 = next.ak[0];
            e.a aVar3 = next.ak[1];
            if (next.E() == 8) {
                next.h = b;
            } else {
                if (next.L < 1.0f && aVar2 == e.a.MATCH_CONSTRAINT) {
                    next.G = 2;
                }
                if (next.O < 1.0f && aVar3 == e.a.MATCH_CONSTRAINT) {
                    next.H = 2;
                }
                if (next.ac() > 0.0f) {
                    if (aVar2 == e.a.MATCH_CONSTRAINT && (aVar3 == e.a.WRAP_CONTENT || aVar3 == e.a.FIXED)) {
                        next.G = 3;
                    } else if (aVar3 == e.a.MATCH_CONSTRAINT && (aVar2 == e.a.WRAP_CONTENT || aVar2 == e.a.FIXED)) {
                        next.H = 3;
                    } else if (aVar2 == e.a.MATCH_CONSTRAINT && aVar3 == e.a.MATCH_CONSTRAINT) {
                        if (next.G == 0) {
                            next.G = 3;
                        }
                        if (next.H == 0) {
                            next.H = 3;
                        }
                    }
                }
                if (aVar2 == e.a.MATCH_CONSTRAINT && next.G == 1 && (next.T.c == null || next.V.c == null)) {
                    aVar2 = e.a.WRAP_CONTENT;
                }
                e.a aVar4 = aVar2;
                e.a aVar5 = (aVar3 == e.a.MATCH_CONSTRAINT && next.H == 1 && (next.U.c == null || next.W.c == null)) ? e.a.WRAP_CONTENT : aVar3;
                next.l.f = aVar4;
                next.l.c = next.G;
                next.m.f = aVar5;
                next.m.c = next.H;
                if ((aVar4 == e.a.MATCH_PARENT || aVar4 == e.a.FIXED || aVar4 == e.a.WRAP_CONTENT) && (aVar5 == e.a.MATCH_PARENT || aVar5 == e.a.FIXED || aVar5 == e.a.WRAP_CONTENT)) {
                    int I = next.I();
                    if (aVar4 == e.a.MATCH_PARENT) {
                        i = (fVar.I() - next.T.d) - next.V.d;
                        aVar4 = e.a.FIXED;
                    } else {
                        i = I;
                    }
                    int L = next.L();
                    if (aVar5 == e.a.MATCH_PARENT) {
                        i2 = (fVar.L() - next.U.d) - next.W.d;
                        aVar = e.a.FIXED;
                    } else {
                        aVar = aVar5;
                        i2 = L;
                    }
                    a(next, aVar4, i, aVar, i2);
                    next.l.g.a(next.I());
                    next.m.g.a(next.L());
                    next.h = b;
                } else {
                    if (aVar4 == e.a.MATCH_CONSTRAINT && (aVar5 == e.a.WRAP_CONTENT || aVar5 == e.a.FIXED)) {
                        if (next.G == 3) {
                            if (aVar5 == e.a.WRAP_CONTENT) {
                                a(next, e.a.WRAP_CONTENT, 0, e.a.WRAP_CONTENT, 0);
                            }
                            int L2 = next.L();
                            a(next, e.a.FIXED, (int) ((L2 * next.ao) + 0.5f), e.a.FIXED, L2);
                            next.l.g.a(next.I());
                            next.m.g.a(next.L());
                            next.h = b;
                        } else if (next.G == 1) {
                            a(next, e.a.WRAP_CONTENT, 0, aVar5, 0);
                            next.l.g.m = next.I();
                        } else if (next.G == 2) {
                            if (fVar.ak[0] == e.a.FIXED || fVar.ak[0] == e.a.MATCH_PARENT) {
                                a(next, e.a.FIXED, (int) ((next.L * fVar.I()) + 0.5f), aVar5, next.L());
                                next.l.g.a(next.I());
                                next.m.g.a(next.L());
                                next.h = b;
                            }
                        } else if (next.ag[0].c == null || next.ag[1].c == null) {
                            a(next, e.a.WRAP_CONTENT, 0, aVar5, 0);
                            next.l.g.a(next.I());
                            next.m.g.a(next.L());
                            next.h = b;
                        }
                    }
                    if (aVar5 == e.a.MATCH_CONSTRAINT && (aVar4 == e.a.WRAP_CONTENT || aVar4 == e.a.FIXED)) {
                        if (next.H == 3) {
                            if (aVar4 == e.a.WRAP_CONTENT) {
                                a(next, e.a.WRAP_CONTENT, 0, e.a.WRAP_CONTENT, 0);
                            }
                            int I2 = next.I();
                            float f = next.ao;
                            if (next.ad() == -1) {
                                f = 1.0f / f;
                            }
                            a(next, e.a.FIXED, I2, e.a.FIXED, (int) ((I2 * f) + 0.5f));
                            next.l.g.a(next.I());
                            next.m.g.a(next.L());
                            next.h = b;
                        } else if (next.H == 1) {
                            a(next, aVar4, 0, e.a.WRAP_CONTENT, 0);
                            next.m.g.m = next.L();
                        } else if (next.H == 2) {
                            if (fVar.ak[1] == e.a.FIXED || fVar.ak[1] == e.a.MATCH_PARENT) {
                                a(next, aVar4, next.I(), e.a.FIXED, (int) ((next.O * fVar.L()) + 0.5f));
                                next.l.g.a(next.I());
                                next.m.g.a(next.L());
                                next.h = b;
                            }
                        } else if (next.ag[2].c == null || next.ag[3].c == null) {
                            a(next, e.a.WRAP_CONTENT, 0, aVar5, 0);
                            next.l.g.a(next.I());
                            next.m.g.a(next.L());
                            next.h = b;
                        }
                    }
                    if (aVar4 == e.a.MATCH_CONSTRAINT && aVar5 == e.a.MATCH_CONSTRAINT) {
                        if (next.G == 1 || next.H == 1) {
                            a(next, e.a.WRAP_CONTENT, 0, e.a.WRAP_CONTENT, 0);
                            next.l.g.m = next.I();
                            next.m.g.m = next.L();
                        } else if (next.H == 2 && next.G == 2 && (fVar.ak[0] == e.a.FIXED || fVar.ak[0] == e.a.FIXED)) {
                            if (fVar.ak[1] == e.a.FIXED || fVar.ak[1] == e.a.FIXED) {
                                a(next, e.a.FIXED, (int) ((next.L * fVar.I()) + 0.5f), e.a.FIXED, (int) ((next.O * fVar.L()) + 0.5f));
                                next.l.g.a(next.I());
                                next.m.g.a(next.L());
                                next.h = b;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public void a() {
        Iterator<androidx.d.c.b.e> it = this.c.bq.iterator();
        while (it.hasNext()) {
            androidx.d.c.b.e next = it.next();
            if (!next.h) {
                boolean z = false;
                e.a aVar = next.ak[0];
                e.a aVar2 = next.ak[1];
                int i = next.G;
                int i2 = next.H;
                boolean z2 = aVar == e.a.WRAP_CONTENT || (aVar == e.a.MATCH_CONSTRAINT && i == 1);
                if (aVar2 == e.a.WRAP_CONTENT || (aVar2 == e.a.MATCH_CONSTRAINT && i2 == 1)) {
                    z = true;
                }
                boolean z3 = next.l.g.j;
                boolean z4 = next.m.g.j;
                if (z3 && z4) {
                    a(next, e.a.FIXED, next.l.g.g, e.a.FIXED, next.m.g.g);
                    next.h = b;
                } else if (z3 && z) {
                    a(next, e.a.FIXED, next.l.g.g, e.a.WRAP_CONTENT, next.m.g.g);
                    if (aVar2 == e.a.MATCH_CONSTRAINT) {
                        next.m.g.m = next.L();
                    } else {
                        next.m.g.a(next.L());
                        next.h = b;
                    }
                } else if (z4 && z2) {
                    a(next, e.a.WRAP_CONTENT, next.l.g.g, e.a.FIXED, next.m.g.g);
                    if (aVar == e.a.MATCH_CONSTRAINT) {
                        next.l.g.m = next.I();
                    } else {
                        next.l.g.a(next.I());
                        next.h = b;
                    }
                }
                if (next.h && next.m.b != null) {
                    next.m.b.a(next.Z());
                }
            }
        }
    }

    public void b() {
        this.d = b;
    }

    public void c() {
        this.e = b;
    }

    public void d() {
        a(this.g);
        this.f662a.clear();
        m.d = 0;
        a(this.c.l, 0, this.f662a);
        a(this.c.m, 1, this.f662a);
        this.d = false;
    }

    public void a(ArrayList<p> arrayList) {
        arrayList.clear();
        this.f.l.c();
        this.f.m.c();
        arrayList.add(this.f.l);
        arrayList.add(this.f.m);
        Iterator<androidx.d.c.b.e> it = this.f.bq.iterator();
        HashSet hashSet = null;
        while (it.hasNext()) {
            androidx.d.c.b.e next = it.next();
            if (next instanceof androidx.d.c.b.h) {
                arrayList.add(new j(next));
            } else {
                if (next.al()) {
                    if (next.j == null) {
                        next.j = new c(next, 0);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(next.j);
                } else {
                    arrayList.add(next.l);
                }
                if (next.an()) {
                    if (next.k == null) {
                        next.k = new c(next, 1);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(next.k);
                } else {
                    arrayList.add(next.m);
                }
                if (next instanceof androidx.d.c.b.j) {
                    arrayList.add(new k(next));
                }
            }
        }
        if (hashSet != null) {
            arrayList.addAll(hashSet);
        }
        Iterator<p> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            it2.next().c();
        }
        Iterator<p> it3 = arrayList.iterator();
        while (it3.hasNext()) {
            p next2 = it3.next();
            if (next2.d != this.f) {
                next2.f();
            }
        }
    }

    private void e() {
        String str = "digraph {\n";
        Iterator<p> it = this.g.iterator();
        while (it.hasNext()) {
            str = a(it.next(), str);
        }
        String str2 = str + "\n}\n";
        System.out.println("content:<<\n" + str2 + "\n>>");
    }

    private void a(f fVar, int i, int i2, f fVar2, ArrayList<m> arrayList, m mVar) {
        p pVar = fVar.d;
        if (pVar.e != null || pVar == this.c.l || pVar == this.c.m) {
            return;
        }
        if (mVar == null) {
            mVar = new m(pVar, i2);
            arrayList.add(mVar);
        }
        pVar.e = mVar;
        mVar.a(pVar);
        for (d dVar : pVar.j.k) {
            if (dVar instanceof f) {
                a((f) dVar, i, 0, fVar2, arrayList, mVar);
            }
        }
        for (d dVar2 : pVar.k.k) {
            if (dVar2 instanceof f) {
                a((f) dVar2, i, 1, fVar2, arrayList, mVar);
            }
        }
        if (i == 1 && (pVar instanceof n)) {
            for (d dVar3 : ((n) pVar).f670a.k) {
                if (dVar3 instanceof f) {
                    a((f) dVar3, i, 2, fVar2, arrayList, mVar);
                }
            }
        }
        for (f fVar3 : pVar.j.l) {
            if (fVar3 == fVar2) {
                mVar.f = b;
            }
            a(fVar3, i, 0, fVar2, arrayList, mVar);
        }
        for (f fVar4 : pVar.k.l) {
            if (fVar4 == fVar2) {
                mVar.f = b;
            }
            a(fVar4, i, 1, fVar2, arrayList, mVar);
        }
        if (i == 1 && (pVar instanceof n)) {
            Iterator<f> it = ((n) pVar).f670a.l.iterator();
            while (it.hasNext()) {
                a(it.next(), i, 2, fVar2, arrayList, mVar);
            }
        }
    }

    private void a(p pVar, int i, ArrayList<m> arrayList) {
        for (d dVar : pVar.j.k) {
            if (dVar instanceof f) {
                a((f) dVar, i, 0, pVar.k, arrayList, null);
            } else if (dVar instanceof p) {
                a(((p) dVar).j, i, 0, pVar.k, arrayList, null);
            }
        }
        for (d dVar2 : pVar.k.k) {
            if (dVar2 instanceof f) {
                a((f) dVar2, i, 1, pVar.j, arrayList, null);
            } else if (dVar2 instanceof p) {
                a(((p) dVar2).k, i, 1, pVar.j, arrayList, null);
            }
        }
        if (i == 1) {
            for (d dVar3 : ((n) pVar).f670a.k) {
                if (dVar3 instanceof f) {
                    a((f) dVar3, i, 2, null, arrayList, null);
                }
            }
        }
    }

    private String a(f fVar, boolean z, String str) {
        for (f fVar2 : fVar.l) {
            String str2 = ("\n" + fVar.a()) + " -> " + fVar2.a();
            if (fVar.f > 0 || z || (fVar.d instanceof k)) {
                String str3 = str2 + "[";
                if (fVar.f > 0) {
                    str3 = str3 + "label=\"" + fVar.f + "\"";
                    if (z) {
                        str3 = str3 + ",";
                    }
                }
                if (z) {
                    str3 = str3 + " style=dashed ";
                }
                if (fVar.d instanceof k) {
                    str3 = str3 + " style=bold,color=gray ";
                }
                str2 = str3 + "]";
            }
            str = str + (str2 + "\n");
        }
        return str;
    }

    private String a(p pVar) {
        e.a ak;
        String str;
        String str2;
        String str3;
        boolean z = pVar instanceof n;
        boolean z2 = z;
        String F = pVar.d.F();
        if (!z2) {
            ak = pVar.d.aj();
        } else {
            ak = pVar.d.ak();
        }
        m mVar = pVar.e;
        if (!z2) {
            str = F + "_HORIZONTAL";
        } else {
            str = F + "_VERTICAL";
        }
        String str4 = ((str + " [shape=none, label=<") + "<TABLE BORDER=\"0\" CELLSPACING=\"0\" CELLPADDING=\"2\">") + "  <TR>";
        if (!z2) {
            String str5 = str4 + "    <TD ";
            if (pVar.j.j) {
                str5 = str5 + " BGCOLOR=\"green\"";
            }
            str2 = str5 + " PORT=\"LEFT\" BORDER=\"1\">L</TD>";
        } else {
            String str6 = str4 + "    <TD ";
            if (pVar.j.j) {
                str6 = str6 + " BGCOLOR=\"green\"";
            }
            str2 = str6 + " PORT=\"TOP\" BORDER=\"1\">T</TD>";
        }
        String str7 = str2 + "    <TD BORDER=\"1\" ";
        if (pVar.g.j && !pVar.d.h) {
            str7 = str7 + " BGCOLOR=\"green\" ";
        } else if (pVar.g.j && pVar.d.h) {
            str7 = str7 + " BGCOLOR=\"lightgray\" ";
        } else if (!pVar.g.j && pVar.d.h) {
            str7 = str7 + " BGCOLOR=\"yellow\" ";
        }
        if (ak == e.a.MATCH_CONSTRAINT) {
            str7 = str7 + "style=\"dashed\"";
        }
        String str8 = com.yftech.service.upgrade.a.d;
        if (mVar != null) {
            str8 = " [" + (mVar.j + 1) + "/" + m.d + "]";
        }
        String str9 = str7 + ">" + F + str8 + " </TD>";
        if (!z2) {
            String str10 = str9 + "    <TD ";
            if (pVar.k.j) {
                str10 = str10 + " BGCOLOR=\"green\"";
            }
            str3 = str10 + " PORT=\"RIGHT\" BORDER=\"1\">R</TD>";
        } else {
            String str11 = str9 + "    <TD ";
            if (z && ((n) pVar).f670a.j) {
                str11 = str11 + " BGCOLOR=\"green\"";
            }
            String str12 = (str11 + " PORT=\"BASELINE\" BORDER=\"1\">b</TD>") + "    <TD ";
            if (pVar.k.j) {
                str12 = str12 + " BGCOLOR=\"green\"";
            }
            str3 = str12 + " PORT=\"BOTTOM\" BORDER=\"1\">B</TD>";
        }
        return (str3 + "  </TR></TABLE>") + ">];\n";
    }

    private String a(c cVar, String str) {
        String str2;
        String str3;
        int i = cVar.h;
        String str4 = "cluster_" + cVar.d.F();
        if (i == 0) {
            str2 = str4 + "_h";
        } else {
            str2 = str4 + "_v";
        }
        String str5 = "subgraph " + str2 + " {\n";
        String str6 = com.yftech.service.upgrade.a.d;
        Iterator<p> it = cVar.f661a.iterator();
        while (it.hasNext()) {
            p next = it.next();
            String F = next.d.F();
            if (i == 0) {
                str3 = F + "_HORIZONTAL";
            } else {
                str3 = F + "_VERTICAL";
            }
            str5 = str5 + str3 + ";\n";
            str6 = a(next, str6);
        }
        return str + str6 + (str5 + "}\n");
    }

    private boolean a(f fVar, f fVar2) {
        Iterator<f> it = fVar.l.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (it.next() != fVar2) {
                i++;
            }
        }
        Iterator<f> it2 = fVar2.l.iterator();
        int i2 = 0;
        while (it2.hasNext()) {
            if (it2.next() != fVar) {
                i2++;
            }
        }
        if (i <= 0 || i2 <= 0) {
            return false;
        }
        return b;
    }

    private String a(p pVar, String str) {
        boolean z;
        f fVar = pVar.j;
        f fVar2 = pVar.k;
        if (!(pVar instanceof k) && fVar.k.isEmpty() && (fVar2.k.isEmpty() && fVar.l.isEmpty()) && fVar2.l.isEmpty()) {
            return str;
        }
        String str2 = str + a(pVar);
        boolean a2 = a(fVar, fVar2);
        String a3 = a(fVar2, a2, a(fVar, a2, str2));
        boolean z2 = pVar instanceof n;
        if (z2) {
            a3 = a(((n) pVar).f670a, a2, a3);
        }
        if ((pVar instanceof l) || (((z = pVar instanceof c)) && ((c) pVar).h == 0)) {
            e.a aj = pVar.d.aj();
            if (aj == e.a.FIXED || aj == e.a.WRAP_CONTENT) {
                if (!fVar.l.isEmpty() && fVar2.l.isEmpty()) {
                    a3 = a3 + ("\n" + fVar2.a() + " -> " + fVar.a() + "\n");
                } else if (fVar.l.isEmpty() && !fVar2.l.isEmpty()) {
                    a3 = a3 + ("\n" + fVar.a() + " -> " + fVar2.a() + "\n");
                }
            } else if (aj == e.a.MATCH_CONSTRAINT && pVar.d.ac() > 0.0f) {
                String F = pVar.d.F();
                String str3 = "\n" + F + "_HORIZONTAL -> " + F + "_VERTICAL;\n";
            }
        } else if (z2 || (z && ((c) pVar).h == 1)) {
            e.a ak = pVar.d.ak();
            if (ak == e.a.FIXED || ak == e.a.WRAP_CONTENT) {
                if (!fVar.l.isEmpty() && fVar2.l.isEmpty()) {
                    a3 = a3 + ("\n" + fVar2.a() + " -> " + fVar.a() + "\n");
                } else if (fVar.l.isEmpty() && !fVar2.l.isEmpty()) {
                    a3 = a3 + ("\n" + fVar.a() + " -> " + fVar2.a() + "\n");
                }
            } else if (ak == e.a.MATCH_CONSTRAINT && pVar.d.ac() > 0.0f) {
                String F2 = pVar.d.F();
                String str4 = "\n" + F2 + "_VERTICAL -> " + F2 + "_HORIZONTAL;\n";
            }
        }
        return pVar instanceof c ? a((c) pVar, a3) : a3;
    }
}
