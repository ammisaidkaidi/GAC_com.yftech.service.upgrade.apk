package androidx.d.c.b.a;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class f implements d {
    p d;
    int f;
    public int g;

    /* renamed from: a, reason: collision with root package name */
    public d f663a = null;
    public boolean b = false;
    public boolean c = false;
    a e = a.UNKNOWN;
    int h = 1;
    g i = null;
    public boolean j = false;
    List<d> k = new ArrayList();
    List<f> l = new ArrayList();

    /* loaded from: /home/user/work/dex/classes.dex */
    enum a {
        UNKNOWN,
        HORIZONTAL_DIMENSION,
        VERTICAL_DIMENSION,
        LEFT,
        RIGHT,
        TOP,
        BOTTOM,
        BASELINE
    }

    public f(p pVar) {
        this.d = pVar;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.d.d.F());
        sb.append(":");
        sb.append(this.e);
        sb.append("(");
        sb.append(this.j ? Integer.valueOf(this.g) : "unresolved");
        sb.append(") <t=");
        sb.append(this.l.size());
        sb.append(":d=");
        sb.append(this.k.size());
        sb.append(">");
        return sb.toString();
    }

    public void a(int i) {
        if (this.j) {
            return;
        }
        this.j = true;
        this.g = i;
        for (d dVar : this.k) {
            dVar.a(dVar);
        }
    }

    @Override // androidx.d.c.b.a.d
    public void a(d dVar) {
        Iterator<f> it = this.l.iterator();
        while (it.hasNext()) {
            if (!it.next().j) {
                return;
            }
        }
        this.c = true;
        if (this.f663a != null) {
            this.f663a.a(this);
        }
        if (this.b) {
            this.d.a(this);
            return;
        }
        f fVar = null;
        int i = 0;
        for (f fVar2 : this.l) {
            if (!(fVar2 instanceof g)) {
                i++;
                fVar = fVar2;
            }
        }
        if (fVar != null && i == 1 && fVar.j) {
            if (this.i != null) {
                if (!this.i.j) {
                    return;
                } else {
                    this.f = this.h * this.i.g;
                }
            }
            a(fVar.g + this.f);
        }
        if (this.f663a != null) {
            this.f663a.a(this);
        }
    }

    public void b(d dVar) {
        this.k.add(dVar);
        if (this.j) {
            dVar.a(dVar);
        }
    }

    public String a() {
        String str;
        String F = this.d.d.F();
        if (this.e == a.LEFT || this.e == a.RIGHT) {
            str = F + "_HORIZONTAL";
        } else {
            str = F + "_VERTICAL";
        }
        return str + ":" + this.e.name();
    }

    public void b() {
        this.l.clear();
        this.k.clear();
        this.j = false;
        this.g = 0;
        this.c = false;
        this.b = false;
    }
}
