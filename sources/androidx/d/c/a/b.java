package androidx.d.c.a;

import androidx.appcompat.widget.ActivityChooserView;
import androidx.d.c.b.e;

/* loaded from: /home/user/work/dex/classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f648a = new Object();
    public static final Object b = new Object();
    public static final Object c = new Object();
    public static final Object d = new Object();
    public static final Object e = new Object();
    int f;
    int g;
    float h;
    int i;
    float j;
    Object k;
    boolean l;
    private final int m;

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum a {
        FIXED,
        WRAP,
        MATCH_PARENT,
        MATCH_CONSTRAINT
    }

    public b a(float f) {
        return this;
    }

    private b() {
        this.m = -2;
        this.f = 0;
        this.g = ActivityChooserView.a.f166a;
        this.h = 1.0f;
        this.i = 0;
        this.j = 1.0f;
        this.k = b;
        this.l = false;
    }

    private b(Object obj) {
        this.m = -2;
        this.f = 0;
        this.g = ActivityChooserView.a.f166a;
        this.h = 1.0f;
        this.i = 0;
        this.j = 1.0f;
        this.k = b;
        this.l = false;
        this.k = obj;
    }

    public static b a(int i) {
        b bVar = new b();
        bVar.e(i);
        return bVar;
    }

    public static b a(Object obj) {
        b bVar = new b();
        bVar.e(obj);
        return bVar;
    }

    public static b b(int i) {
        b bVar = new b(f648a);
        bVar.f(i);
        return bVar;
    }

    public static b b(Object obj) {
        b bVar = new b(f648a);
        bVar.f(obj);
        return bVar;
    }

    public static b a(Object obj, float f) {
        b bVar = new b(e);
        bVar.b(obj, f);
        return bVar;
    }

    public static b a() {
        return new b(d);
    }

    public static b b() {
        return new b(b);
    }

    public static b c() {
        return new b(c);
    }

    public b b(Object obj, float f) {
        this.h = f;
        return this;
    }

    public b c(int i) {
        if (i >= 0) {
            this.f = i;
        }
        return this;
    }

    public b c(Object obj) {
        if (obj == b) {
            this.f = -2;
        }
        return this;
    }

    public b d(int i) {
        if (this.g >= 0) {
            this.g = i;
        }
        return this;
    }

    public b d(Object obj) {
        if (obj == b && this.l) {
            this.k = b;
            this.g = ActivityChooserView.a.f166a;
        }
        return this;
    }

    public b e(int i) {
        this.l = true;
        return this;
    }

    public b e(Object obj) {
        this.k = obj;
        this.l = true;
        return this;
    }

    public b f(Object obj) {
        this.k = obj;
        if (obj instanceof Integer) {
            this.i = ((Integer) obj).intValue();
            this.k = null;
        }
        return this;
    }

    public b f(int i) {
        this.k = null;
        this.i = i;
        return this;
    }

    void g(int i) {
        this.l = false;
        this.k = null;
        this.i = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int d() {
        return this.i;
    }

    void b(float f) {
        this.j = f;
    }

    float e() {
        return this.j;
    }

    public void a(e eVar, androidx.d.c.b.e eVar2, int i) {
        int i2 = 2;
        if (i == 0) {
            if (this.l) {
                eVar2.a(e.a.MATCH_CONSTRAINT);
                if (this.k == b) {
                    i2 = 1;
                } else if (this.k != e) {
                    i2 = 0;
                }
                eVar2.a(i2, this.f, this.g, this.h);
                return;
            }
            if (this.f > 0) {
                eVar2.r(this.f);
            }
            if (this.g < Integer.MAX_VALUE) {
                eVar2.h(this.g);
            }
            if (this.k == b) {
                eVar2.a(e.a.WRAP_CONTENT);
                return;
            }
            if (this.k == d) {
                eVar2.a(e.a.MATCH_PARENT);
                return;
            } else {
                if (this.k == null) {
                    eVar2.a(e.a.FIXED);
                    eVar2.p(this.i);
                    return;
                }
                return;
            }
        }
        if (this.l) {
            eVar2.b(e.a.MATCH_CONSTRAINT);
            if (this.k == b) {
                i2 = 1;
            } else if (this.k != e) {
                i2 = 0;
            }
            eVar2.b(i2, this.f, this.g, this.h);
            return;
        }
        if (this.f > 0) {
            eVar2.s(this.f);
        }
        if (this.g < Integer.MAX_VALUE) {
            eVar2.i(this.g);
        }
        if (this.k == b) {
            eVar2.b(e.a.WRAP_CONTENT);
            return;
        }
        if (this.k == d) {
            eVar2.b(e.a.MATCH_PARENT);
        } else if (this.k == null) {
            eVar2.b(e.a.FIXED);
            eVar2.q(this.i);
        }
    }
}
