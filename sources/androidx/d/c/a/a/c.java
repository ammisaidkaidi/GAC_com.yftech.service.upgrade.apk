package androidx.d.c.a.a;

import androidx.d.c.a.e;
import androidx.d.c.b.j;

/* loaded from: /home/user/work/dex/classes.dex */
public class c extends androidx.d.c.a.c {
    private e.c d;
    private int e;
    private androidx.d.c.b.a f;

    public c(androidx.d.c.a.e eVar) {
        super(eVar, e.d.BARRIER);
    }

    public void a(e.c cVar) {
        this.d = cVar;
    }

    public void a(Object obj) {
        a(this.f650a.a(obj));
    }

    public void a(int i) {
        this.e = i;
    }

    @Override // androidx.d.c.a.c
    public j b() {
        if (this.f == null) {
            this.f = new androidx.d.c.b.a();
        }
        return this.f;
    }

    @Override // androidx.d.c.a.c
    public void c() {
        b();
        int i = 0;
        switch (this.d) {
            case RIGHT:
            case END:
                i = 1;
                break;
            case TOP:
                i = 2;
                break;
            case BOTTOM:
                i = 3;
                break;
        }
        this.f.a(i);
        this.f.b(this.e);
    }
}
