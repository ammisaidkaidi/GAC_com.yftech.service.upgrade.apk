package androidx.d.c.a.a;

import androidx.d.c.a.e;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes.dex */
public class b extends androidx.d.c.a.c {
    private float d;
    private Object e;
    private Object f;
    private Object g;
    private Object h;

    public b(androidx.d.c.a.e eVar) {
        super(eVar, e.d.ALIGN_VERTICALLY);
        this.d = 0.5f;
    }

    @Override // androidx.d.c.a.c
    public void c() {
        Iterator<Object> it = this.c.iterator();
        while (it.hasNext()) {
            androidx.d.c.a.a d = this.f650a.d(it.next());
            d.g();
            if (this.e != null) {
                d.k(this.e);
            } else if (this.f != null) {
                d.l(this.f);
            } else {
                d.k(androidx.d.c.a.e.g);
            }
            if (this.g != null) {
                d.m(this.g);
            } else if (this.h != null) {
                d.n(this.h);
            } else {
                d.n(androidx.d.c.a.e.g);
            }
            if (this.d != 0.5f) {
                d.b(this.d);
            }
        }
    }

    public void a(Object obj) {
        this.e = obj;
    }

    public void b(Object obj) {
        this.f = obj;
    }

    public void c(Object obj) {
        this.g = obj;
    }

    public void d(Object obj) {
        this.h = obj;
    }

    public void a(float f) {
        this.d = f;
    }
}
