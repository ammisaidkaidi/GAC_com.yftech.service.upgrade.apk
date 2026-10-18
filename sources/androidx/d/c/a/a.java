package androidx.d.c.a;

import androidx.d.c.a.e;
import androidx.d.c.b.d;
import java.util.ArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public class a implements d {
    private Object H;
    private Object I;
    private androidx.d.c.b.e J;

    /* renamed from: a, reason: collision with root package name */
    final e f641a;
    int b = 0;
    int c = 0;
    float d = 0.5f;
    float e = 0.5f;
    int f = 0;
    int g = 0;
    int h = 0;
    int i = 0;
    int j = 0;
    int k = 0;
    int l = 0;
    int m = 0;
    int n = 0;
    int o = 0;
    int p = 0;
    int q = 0;
    Object r = null;
    Object s = null;
    Object t = null;
    Object u = null;
    Object v = null;
    Object w = null;
    Object x = null;
    Object y = null;
    Object z = null;
    Object A = null;
    Object B = null;
    Object C = null;
    Object D = null;
    e.b E = null;
    androidx.d.c.a.b F = androidx.d.c.a.b.b(androidx.d.c.a.b.b);
    androidx.d.c.a.b G = androidx.d.c.a.b.b(androidx.d.c.a.b.b);

    /* renamed from: androidx.d.c.a.a$a, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface InterfaceC0049a {
        a a(e eVar);
    }

    @Override // androidx.d.c.a.d
    public void a(Object obj) {
        this.H = obj;
    }

    @Override // androidx.d.c.a.d
    public Object a() {
        return this.H;
    }

    public void b(Object obj) {
        this.I = obj;
        if (this.J != null) {
            this.J.a(this.I);
        }
    }

    public Object b() {
        return this.I;
    }

    @Override // androidx.d.c.a.d
    public void a(androidx.d.c.b.e eVar) {
        if (eVar == null) {
            return;
        }
        this.J = eVar;
        this.J.a(this.I);
    }

    @Override // androidx.d.c.a.d
    public androidx.d.c.b.e c() {
        if (this.J == null) {
            this.J = d();
            this.J.a(this.I);
        }
        return this.J;
    }

    public androidx.d.c.b.e d() {
        return new androidx.d.c.b.e(p().d(), q().d());
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    class b extends Exception {
        private final ArrayList<String> b;

        public b(ArrayList<String> arrayList) {
            this.b = arrayList;
        }

        public ArrayList<String> a() {
            return this.b;
        }

        @Override // java.lang.Throwable
        public String toString() {
            return "IncorrectConstraintException: " + this.b.toString();
        }
    }

    public void e() {
        ArrayList arrayList = new ArrayList();
        if (this.r != null && this.s != null) {
            arrayList.add("LeftToLeft and LeftToRight both defined");
        }
        if (this.t != null && this.u != null) {
            arrayList.add("RightToLeft and RightToRight both defined");
        }
        if (this.v != null && this.w != null) {
            arrayList.add("StartToStart and StartToEnd both defined");
        }
        if (this.x != null && this.y != null) {
            arrayList.add("EndToStart and EndToEnd both defined");
        }
        if ((this.r != null || this.s != null || this.t != null || this.u != null) && (this.v != null || this.w != null || this.x != null || this.y != null)) {
            arrayList.add("Both left/right and start/end constraints defined");
        }
        if (arrayList.size() > 0) {
            throw new b(arrayList);
        }
    }

    private Object s(Object obj) {
        if (obj == null) {
            return null;
        }
        return !(obj instanceof a) ? this.f641a.c(obj) : obj;
    }

    public a(e eVar) {
        this.f641a = eVar;
    }

    public void a(int i) {
        this.b = i;
    }

    public int f() {
        return this.b;
    }

    public void b(int i) {
        this.c = i;
    }

    public int c(int i) {
        return this.c;
    }

    public a g() {
        m().r();
        o().r();
        n().r();
        return this;
    }

    public a h() {
        k().r();
        l().r();
        i().r();
        j().r();
        return this;
    }

    public a i() {
        if (this.r != null) {
            this.E = e.b.LEFT_TO_LEFT;
        } else {
            this.E = e.b.LEFT_TO_RIGHT;
        }
        return this;
    }

    public a j() {
        if (this.t != null) {
            this.E = e.b.RIGHT_TO_LEFT;
        } else {
            this.E = e.b.RIGHT_TO_RIGHT;
        }
        return this;
    }

    public a k() {
        if (this.v != null) {
            this.E = e.b.START_TO_START;
        } else {
            this.E = e.b.START_TO_END;
        }
        return this;
    }

    public a l() {
        if (this.x != null) {
            this.E = e.b.END_TO_START;
        } else {
            this.E = e.b.END_TO_END;
        }
        return this;
    }

    public a m() {
        if (this.z != null) {
            this.E = e.b.TOP_TO_TOP;
        } else {
            this.E = e.b.TOP_TO_BOTTOM;
        }
        return this;
    }

    public a n() {
        if (this.B != null) {
            this.E = e.b.BOTTOM_TO_TOP;
        } else {
            this.E = e.b.BOTTOM_TO_BOTTOM;
        }
        return this;
    }

    public a o() {
        this.E = e.b.BASELINE_TO_BASELINE;
        return this;
    }

    private void t() {
        this.r = s(this.r);
        this.s = s(this.s);
        this.t = s(this.t);
        this.u = s(this.u);
        this.v = s(this.v);
        this.w = s(this.w);
        this.x = s(this.x);
        this.y = s(this.y);
        this.z = s(this.z);
        this.A = s(this.A);
        this.B = s(this.B);
        this.C = s(this.C);
        this.D = s(this.D);
    }

    public a c(Object obj) {
        this.E = e.b.LEFT_TO_LEFT;
        this.r = obj;
        return this;
    }

    public a d(Object obj) {
        this.E = e.b.LEFT_TO_RIGHT;
        this.s = obj;
        return this;
    }

    public a e(Object obj) {
        this.E = e.b.RIGHT_TO_LEFT;
        this.t = obj;
        return this;
    }

    public a f(Object obj) {
        this.E = e.b.RIGHT_TO_RIGHT;
        this.u = obj;
        return this;
    }

    public a g(Object obj) {
        this.E = e.b.START_TO_START;
        this.v = obj;
        return this;
    }

    public a h(Object obj) {
        this.E = e.b.START_TO_END;
        this.w = obj;
        return this;
    }

    public a i(Object obj) {
        this.E = e.b.END_TO_START;
        this.x = obj;
        return this;
    }

    public a j(Object obj) {
        this.E = e.b.END_TO_END;
        this.y = obj;
        return this;
    }

    public a k(Object obj) {
        this.E = e.b.TOP_TO_TOP;
        this.z = obj;
        return this;
    }

    public a l(Object obj) {
        this.E = e.b.TOP_TO_BOTTOM;
        this.A = obj;
        return this;
    }

    public a m(Object obj) {
        this.E = e.b.BOTTOM_TO_TOP;
        this.B = obj;
        return this;
    }

    public a n(Object obj) {
        this.E = e.b.BOTTOM_TO_BOTTOM;
        this.C = obj;
        return this;
    }

    public a o(Object obj) {
        this.E = e.b.BASELINE_TO_BASELINE;
        this.D = obj;
        return this;
    }

    public a p(Object obj) {
        Object s = s(obj);
        this.v = s;
        this.y = s;
        this.E = e.b.CENTER_HORIZONTALLY;
        this.d = 0.5f;
        return this;
    }

    public a q(Object obj) {
        Object s = s(obj);
        this.z = s;
        this.C = s;
        this.E = e.b.CENTER_VERTICALLY;
        this.e = 0.5f;
        return this;
    }

    public a a(androidx.d.c.a.b bVar) {
        return c(bVar);
    }

    public a b(androidx.d.c.a.b bVar) {
        return d(bVar);
    }

    public androidx.d.c.a.b p() {
        return this.F;
    }

    public a c(androidx.d.c.a.b bVar) {
        this.F = bVar;
        return this;
    }

    public androidx.d.c.a.b q() {
        return this.G;
    }

    public a d(androidx.d.c.a.b bVar) {
        this.G = bVar;
        return this;
    }

    public a r(Object obj) {
        return d(this.f641a.a(obj));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public a d(int i) {
        if (this.E != null) {
            switch (this.E) {
                case LEFT_TO_LEFT:
                case LEFT_TO_RIGHT:
                    this.f = i;
                    break;
                case RIGHT_TO_LEFT:
                case RIGHT_TO_RIGHT:
                    this.g = i;
                    break;
                case START_TO_START:
                case START_TO_END:
                    this.h = i;
                    break;
                case END_TO_START:
                case END_TO_END:
                    this.i = i;
                    break;
                case TOP_TO_TOP:
                case TOP_TO_BOTTOM:
                    this.j = i;
                    break;
                case BOTTOM_TO_TOP:
                case BOTTOM_TO_BOTTOM:
                    this.k = i;
                    break;
            }
        } else {
            this.f = i;
            this.g = i;
            this.h = i;
            this.i = i;
            this.j = i;
            this.k = i;
        }
        return this;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public a e(int i) {
        if (this.E != null) {
            switch (this.E) {
                case LEFT_TO_LEFT:
                case LEFT_TO_RIGHT:
                    this.l = i;
                    break;
                case RIGHT_TO_LEFT:
                case RIGHT_TO_RIGHT:
                    this.m = i;
                    break;
                case START_TO_START:
                case START_TO_END:
                    this.n = i;
                    break;
                case END_TO_START:
                case END_TO_END:
                    this.o = i;
                    break;
                case TOP_TO_TOP:
                case TOP_TO_BOTTOM:
                    this.p = i;
                    break;
                case BOTTOM_TO_TOP:
                case BOTTOM_TO_BOTTOM:
                    this.q = i;
                    break;
            }
        } else {
            this.l = i;
            this.m = i;
            this.n = i;
            this.o = i;
            this.p = i;
            this.q = i;
        }
        return this;
    }

    public a a(float f) {
        this.d = f;
        return this;
    }

    public a b(float f) {
        this.e = f;
        return this;
    }

    public a c(float f) {
        if (this.E == null) {
            return this;
        }
        switch (this.E) {
            case LEFT_TO_LEFT:
            case LEFT_TO_RIGHT:
            case RIGHT_TO_LEFT:
            case RIGHT_TO_RIGHT:
            case START_TO_START:
            case START_TO_END:
            case END_TO_START:
            case END_TO_END:
            case CENTER_HORIZONTALLY:
                this.d = f;
                break;
            case TOP_TO_TOP:
            case TOP_TO_BOTTOM:
            case BOTTOM_TO_TOP:
            case BOTTOM_TO_BOTTOM:
            case CENTER_VERTICALLY:
                this.e = f;
                break;
        }
        return this;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public a r() {
        if (this.E != null) {
            switch (this.E) {
                case LEFT_TO_LEFT:
                case LEFT_TO_RIGHT:
                    this.r = null;
                    this.s = null;
                    this.f = 0;
                    this.l = 0;
                    break;
                case RIGHT_TO_LEFT:
                case RIGHT_TO_RIGHT:
                    this.t = null;
                    this.u = null;
                    this.g = 0;
                    this.m = 0;
                    break;
                case START_TO_START:
                case START_TO_END:
                    this.v = null;
                    this.w = null;
                    this.h = 0;
                    this.n = 0;
                    break;
                case END_TO_START:
                case END_TO_END:
                    this.x = null;
                    this.y = null;
                    this.i = 0;
                    this.o = 0;
                    break;
                case TOP_TO_TOP:
                case TOP_TO_BOTTOM:
                    this.z = null;
                    this.A = null;
                    this.j = 0;
                    this.p = 0;
                    break;
                case BOTTOM_TO_TOP:
                case BOTTOM_TO_BOTTOM:
                    this.B = null;
                    this.C = null;
                    this.k = 0;
                    this.q = 0;
                    break;
                case BASELINE_TO_BASELINE:
                    this.D = null;
                    break;
            }
        } else {
            this.r = null;
            this.s = null;
            this.f = 0;
            this.t = null;
            this.u = null;
            this.g = 0;
            this.v = null;
            this.w = null;
            this.h = 0;
            this.x = null;
            this.y = null;
            this.i = 0;
            this.z = null;
            this.A = null;
            this.j = 0;
            this.B = null;
            this.C = null;
            this.k = 0;
            this.D = null;
            this.d = 0.5f;
            this.e = 0.5f;
            this.l = 0;
            this.m = 0;
            this.n = 0;
            this.o = 0;
            this.p = 0;
            this.q = 0;
        }
        return this;
    }

    private androidx.d.c.b.e t(Object obj) {
        if (obj instanceof d) {
            return ((d) obj).c();
        }
        return null;
    }

    private void a(androidx.d.c.b.e eVar, Object obj, e.b bVar) {
        androidx.d.c.b.e t = t(obj);
        if (t == null) {
            return;
        }
        int i = AnonymousClass1.f642a[bVar.ordinal()];
        switch (bVar) {
            case LEFT_TO_LEFT:
                eVar.a(d.a.LEFT).a(t.a(d.a.LEFT), this.f, this.l, false);
                return;
            case LEFT_TO_RIGHT:
                eVar.a(d.a.LEFT).a(t.a(d.a.RIGHT), this.f, this.l, false);
                return;
            case RIGHT_TO_LEFT:
                eVar.a(d.a.RIGHT).a(t.a(d.a.LEFT), this.g, this.m, false);
                return;
            case RIGHT_TO_RIGHT:
                eVar.a(d.a.RIGHT).a(t.a(d.a.RIGHT), this.g, this.m, false);
                return;
            case START_TO_START:
                eVar.a(d.a.LEFT).a(t.a(d.a.LEFT), this.h, this.n, false);
                return;
            case START_TO_END:
                eVar.a(d.a.LEFT).a(t.a(d.a.RIGHT), this.h, this.n, false);
                return;
            case END_TO_START:
                eVar.a(d.a.RIGHT).a(t.a(d.a.LEFT), this.i, this.o, false);
                return;
            case END_TO_END:
                eVar.a(d.a.RIGHT).a(t.a(d.a.RIGHT), this.i, this.o, false);
                return;
            case TOP_TO_TOP:
                eVar.a(d.a.TOP).a(t.a(d.a.TOP), this.j, this.p, false);
                return;
            case TOP_TO_BOTTOM:
                eVar.a(d.a.TOP).a(t.a(d.a.BOTTOM), this.j, this.p, false);
                return;
            case BOTTOM_TO_TOP:
                eVar.a(d.a.BOTTOM).a(t.a(d.a.TOP), this.k, this.q, false);
                return;
            case BOTTOM_TO_BOTTOM:
                eVar.a(d.a.BOTTOM).a(t.a(d.a.BOTTOM), this.k, this.q, false);
                return;
            case BASELINE_TO_BASELINE:
                eVar.a(d.a.BASELINE, t, d.a.BASELINE, 0, 0);
                return;
            default:
                return;
        }
    }

    @Override // androidx.d.c.a.d
    public void s() {
        if (this.J == null) {
            return;
        }
        this.F.a(this.f641a, this.J, 0);
        this.G.a(this.f641a, this.J, 1);
        t();
        a(this.J, this.r, e.b.LEFT_TO_LEFT);
        a(this.J, this.s, e.b.LEFT_TO_RIGHT);
        a(this.J, this.t, e.b.RIGHT_TO_LEFT);
        a(this.J, this.u, e.b.RIGHT_TO_RIGHT);
        a(this.J, this.v, e.b.START_TO_START);
        a(this.J, this.w, e.b.START_TO_END);
        a(this.J, this.x, e.b.END_TO_START);
        a(this.J, this.y, e.b.END_TO_END);
        a(this.J, this.z, e.b.TOP_TO_TOP);
        a(this.J, this.A, e.b.TOP_TO_BOTTOM);
        a(this.J, this.B, e.b.BOTTOM_TO_TOP);
        a(this.J, this.C, e.b.BOTTOM_TO_BOTTOM);
        a(this.J, this.D, e.b.BASELINE_TO_BASELINE);
        if (this.b != 0) {
            this.J.w(this.b);
        }
        if (this.c != 0) {
            this.J.x(this.c);
        }
        this.J.a(this.d);
        this.J.b(this.e);
    }
}
