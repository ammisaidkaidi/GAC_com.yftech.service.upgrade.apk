package androidx.d.c.a.a;

import androidx.d.c.b.h;

/* loaded from: /home/user/work/dex/classes.dex */
public class e implements androidx.d.c.a.d {

    /* renamed from: a, reason: collision with root package name */
    final androidx.d.c.a.e f645a;
    private int b;
    private h c;
    private int d = -1;
    private int e = -1;
    private float f = 0.0f;
    private Object g;

    @Override // androidx.d.c.a.d
    public void a(Object obj) {
        this.g = obj;
    }

    @Override // androidx.d.c.a.d
    public Object a() {
        return this.g;
    }

    public e(androidx.d.c.a.e eVar) {
        this.f645a = eVar;
    }

    public void b(Object obj) {
        this.d = this.f645a.a(obj);
        this.e = -1;
        this.f = 0.0f;
    }

    public void c(Object obj) {
        this.d = -1;
        this.e = this.f645a.a(obj);
        this.f = 0.0f;
    }

    public void a(float f) {
        this.d = -1;
        this.e = -1;
        this.f = f;
    }

    public void a(int i) {
        this.b = i;
    }

    public int b() {
        return this.b;
    }

    @Override // androidx.d.c.a.d
    public void s() {
        this.c.a(this.b);
        if (this.d != -1) {
            this.c.C(this.d);
        } else if (this.e != -1) {
            this.c.D(this.e);
        } else {
            this.c.e(this.f);
        }
    }

    @Override // androidx.d.c.a.d
    public androidx.d.c.b.e c() {
        if (this.c == null) {
            this.c = new h();
        }
        return this.c;
    }

    @Override // androidx.d.c.a.d
    public void a(androidx.d.c.b.e eVar) {
        if (eVar instanceof h) {
            this.c = (h) eVar;
        } else {
            this.c = null;
        }
    }
}
