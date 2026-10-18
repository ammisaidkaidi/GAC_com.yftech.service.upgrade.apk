package androidx.d.c.a.a;

import androidx.d.c.a.e;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes.dex */
public class g extends d {
    private Object f;
    private Object g;
    private Object h;
    private Object i;

    public g(androidx.d.c.a.e eVar) {
        super(eVar, e.d.VERTICAL_CHAIN);
    }

    @Override // androidx.d.c.a.c
    public void c() {
        Iterator<Object> it = this.c.iterator();
        while (it.hasNext()) {
            this.f650a.d(it.next()).g();
        }
        Iterator<Object> it2 = this.c.iterator();
        androidx.d.c.a.a aVar = null;
        androidx.d.c.a.a aVar2 = null;
        while (it2.hasNext()) {
            androidx.d.c.a.a d = this.f650a.d(it2.next());
            if (aVar == null) {
                if (this.f != null) {
                    d.k(this.f);
                } else if (this.g != null) {
                    d.l(this.g);
                } else {
                    d.k(androidx.d.c.a.e.g);
                }
                aVar = d;
            }
            if (aVar2 != null) {
                aVar2.m(d.a());
                d.l(aVar2.a());
            }
            aVar2 = d;
        }
        if (aVar2 != null) {
            if (this.h != null) {
                aVar2.m(this.h);
            } else if (this.i != null) {
                aVar2.n(this.i);
            } else {
                aVar2.n(androidx.d.c.a.e.g);
            }
        }
        if (aVar != null && this.d != 0.5f) {
            aVar.b(this.d);
        }
        switch (this.e) {
            case SPREAD:
                aVar.b(0);
                return;
            case SPREAD_INSIDE:
                aVar.b(1);
                return;
            case PACKED:
                aVar.b(2);
                return;
            default:
                return;
        }
    }

    public void a(Object obj) {
        this.f = obj;
    }

    public void b(Object obj) {
        this.g = obj;
    }

    public void c(Object obj) {
        this.h = obj;
    }

    public void d(Object obj) {
        this.i = obj;
    }
}
