package androidx.d.c.a.a;

import androidx.d.c.a.e;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes.dex */
public class f extends d {
    private Object f;
    private Object g;
    private Object h;
    private Object i;

    public f(androidx.d.c.a.e eVar) {
        super(eVar, e.d.HORIZONTAL_CHAIN);
    }

    @Override // androidx.d.c.a.c
    public void c() {
        Iterator<Object> it = this.c.iterator();
        while (it.hasNext()) {
            this.f650a.d(it.next()).h();
        }
        Iterator<Object> it2 = this.c.iterator();
        androidx.d.c.a.a aVar = null;
        androidx.d.c.a.a aVar2 = null;
        while (it2.hasNext()) {
            androidx.d.c.a.a d = this.f650a.d(it2.next());
            if (aVar == null) {
                if (this.f != null) {
                    d.g(this.f);
                } else if (this.g != null) {
                    d.h(this.g);
                } else {
                    d.g(androidx.d.c.a.e.g);
                }
                aVar = d;
            }
            if (aVar2 != null) {
                aVar2.i(d.a());
                d.h(aVar2.a());
            }
            aVar2 = d;
        }
        if (aVar2 != null) {
            if (this.h != null) {
                aVar2.i(this.h);
            } else if (this.i != null) {
                aVar2.j(this.i);
            } else {
                aVar2.j(androidx.d.c.a.e.g);
            }
        }
        if (aVar != null && this.d != 0.5f) {
            aVar.a(this.d);
        }
        switch (this.e) {
            case SPREAD:
                aVar.a(0);
                return;
            case SPREAD_INSIDE:
                aVar.a(1);
                return;
            case PACKED:
                aVar.a(2);
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
