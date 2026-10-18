package androidx.d.c.b;

import androidx.d.c.b.a.o;
import androidx.d.c.i;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes.dex */
public class d {
    private static final boolean g = false;
    private static final int k = -1;

    /* renamed from: a, reason: collision with root package name */
    public final e f678a;
    public final a b;
    public d c;
    androidx.d.c.i f;
    private int i;
    private boolean j;
    private HashSet<d> h = null;
    public int d = 0;
    int e = -1;

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum a {
        NONE,
        LEFT,
        TOP,
        RIGHT,
        BOTTOM,
        BASELINE,
        CENTER,
        CENTER_X,
        CENTER_Y
    }

    public void a(int i, ArrayList<o> arrayList, o oVar) {
        if (this.h != null) {
            Iterator<d> it = this.h.iterator();
            while (it.hasNext()) {
                androidx.d.c.b.a.i.a(it.next().f678a, i, arrayList, oVar);
            }
        }
    }

    public HashSet<d> a() {
        return this.h;
    }

    public boolean b() {
        return this.h != null && this.h.size() > 0;
    }

    public boolean c() {
        if (this.h == null) {
            return false;
        }
        Iterator<d> it = this.h.iterator();
        while (it.hasNext()) {
            if (it.next().p().m()) {
                return true;
            }
        }
        return false;
    }

    public void a(int i) {
        this.i = i;
        this.j = true;
    }

    public int d() {
        if (this.j) {
            return this.i;
        }
        return 0;
    }

    public void e() {
        this.j = false;
        this.i = 0;
    }

    public boolean f() {
        return this.j;
    }

    public void a(d dVar, HashMap<e, e> hashMap) {
        if (this.c != null && this.c.h != null) {
            this.c.h.remove(this);
        }
        if (dVar.c != null) {
            this.c = hashMap.get(dVar.c.f678a).a(dVar.c.i());
        } else {
            this.c = null;
        }
        if (this.c != null) {
            if (this.c.h == null) {
                this.c.h = new HashSet<>();
            }
            this.c.h.add(this);
        }
        this.d = dVar.d;
        this.e = dVar.e;
    }

    public d(e eVar, a aVar) {
        this.f678a = eVar;
        this.b = aVar;
    }

    public androidx.d.c.i g() {
        return this.f;
    }

    public void a(androidx.d.c.c cVar) {
        if (this.f == null) {
            this.f = new androidx.d.c.i(i.a.UNRESTRICTED, (String) null);
        } else {
            this.f.d();
        }
    }

    public e h() {
        return this.f678a;
    }

    public a i() {
        return this.b;
    }

    public int j() {
        if (this.f678a.E() == 8) {
            return 0;
        }
        if (this.e > -1 && this.c != null && this.c.f678a.E() == 8) {
            return this.e;
        }
        return this.d;
    }

    public d k() {
        return this.c;
    }

    public void l() {
        if (this.c != null && this.c.h != null) {
            this.c.h.remove(this);
            if (this.c.h.size() == 0) {
                this.c.h = null;
            }
        }
        this.h = null;
        this.c = null;
        this.d = 0;
        this.e = -1;
        this.j = false;
        this.i = 0;
    }

    public boolean a(d dVar, int i, int i2, boolean z) {
        if (dVar == null) {
            l();
            return true;
        }
        if (!z && !a(dVar)) {
            return false;
        }
        this.c = dVar;
        if (this.c.h == null) {
            this.c.h = new HashSet<>();
        }
        if (this.c.h != null) {
            this.c.h.add(this);
        }
        if (i > 0) {
            this.d = i;
        } else {
            this.d = 0;
        }
        this.e = i2;
        return true;
    }

    public boolean a(d dVar, int i) {
        return a(dVar, i, -1, false);
    }

    public boolean m() {
        return this.c != null;
    }

    public boolean a(d dVar) {
        if (dVar == null) {
            return false;
        }
        a i = dVar.i();
        if (i == this.b) {
            return this.b != a.BASELINE || (dVar.h().Y() && h().Y());
        }
        switch (this.b) {
            case CENTER:
                return (i == a.BASELINE || i == a.CENTER_X || i == a.CENTER_Y) ? false : true;
            case LEFT:
            case RIGHT:
                boolean z = i == a.LEFT || i == a.RIGHT;
                return dVar.h() instanceof h ? z || i == a.CENTER_X : z;
            case TOP:
            case BOTTOM:
                boolean z2 = i == a.TOP || i == a.BOTTOM;
                return dVar.h() instanceof h ? z2 || i == a.CENTER_Y : z2;
            case BASELINE:
            case CENTER_X:
            case CENTER_Y:
            case NONE:
                return false;
            default:
                throw new AssertionError(this.b.name());
        }
    }

    public boolean n() {
        switch (this.b) {
            case CENTER:
            case BASELINE:
            case CENTER_X:
            case CENTER_Y:
            case NONE:
                return false;
            case LEFT:
            case RIGHT:
            case TOP:
            case BOTTOM:
                return true;
            default:
                throw new AssertionError(this.b.name());
        }
    }

    public boolean b(d dVar) {
        a i = dVar.i();
        if (i == this.b) {
            return true;
        }
        switch (this.b) {
            case CENTER:
                return i != a.BASELINE;
            case LEFT:
            case RIGHT:
            case CENTER_X:
                return i == a.LEFT || i == a.RIGHT || i == a.CENTER_X;
            case TOP:
            case BOTTOM:
            case BASELINE:
            case CENTER_Y:
                return i == a.TOP || i == a.BOTTOM || i == a.CENTER_Y || i == a.BASELINE;
            case NONE:
                return false;
            default:
                throw new AssertionError(this.b.name());
        }
    }

    public void b(int i) {
        if (m()) {
            this.d = i;
        }
    }

    public void c(int i) {
        if (m()) {
            this.e = i;
        }
    }

    public boolean o() {
        switch (this.b) {
            case CENTER:
            case LEFT:
            case RIGHT:
            case CENTER_X:
                return false;
            case TOP:
            case BOTTOM:
            case BASELINE:
            case CENTER_Y:
            case NONE:
                return true;
            default:
                throw new AssertionError(this.b.name());
        }
    }

    public String toString() {
        return this.f678a.F() + ":" + this.b.toString();
    }

    public boolean a(e eVar, d dVar) {
        return a(eVar);
    }

    public boolean a(e eVar) {
        if (a(eVar, new HashSet<>())) {
            return false;
        }
        e A = h().A();
        return A == eVar || eVar.A() == A;
    }

    private boolean a(e eVar, HashSet<e> hashSet) {
        if (hashSet.contains(eVar)) {
            return false;
        }
        hashSet.add(eVar);
        if (eVar == h()) {
            return true;
        }
        ArrayList<d> ab = eVar.ab();
        int size = ab.size();
        for (int i = 0; i < size; i++) {
            d dVar = ab.get(i);
            if (dVar.b(this) && dVar.m() && a(dVar.k().h(), hashSet)) {
                return true;
            }
        }
        return false;
    }

    public final d p() {
        switch (this.b) {
            case CENTER:
            case BASELINE:
            case CENTER_X:
            case CENTER_Y:
            case NONE:
                return null;
            case LEFT:
                return this.f678a.V;
            case RIGHT:
                return this.f678a.T;
            case TOP:
                return this.f678a.W;
            case BOTTOM:
                return this.f678a.U;
            default:
                throw new AssertionError(this.b.name());
        }
    }
}
