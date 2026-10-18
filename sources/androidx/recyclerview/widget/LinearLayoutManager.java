package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.ap;
import androidx.appcompat.widget.ActivityChooserView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.m;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class LinearLayoutManager extends RecyclerView.i implements RecyclerView.v.b, m.e {

    /* renamed from: a, reason: collision with root package name */
    private static final String f987a = "LinearLayoutManager";
    private static final float b = 0.33333334f;
    static final boolean j = false;
    public static final int k = 0;
    public static final int l = 1;
    public static final int m = Integer.MIN_VALUE;
    private int E;
    private int[] F;
    private c c;
    private boolean d;
    private boolean e;
    private boolean f;
    private boolean g;
    private boolean h;
    private final b i;
    int n;
    w o;
    boolean p;
    int q;
    int r;
    d s;
    final a t;

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(RecyclerView.q qVar, RecyclerView.w wVar, a aVar, int i) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public boolean f() {
        return true;
    }

    public LinearLayoutManager(Context context) {
        this(context, 1, false);
    }

    public LinearLayoutManager(Context context, int i, boolean z) {
        this.n = 1;
        this.e = false;
        this.p = false;
        this.f = false;
        this.g = true;
        this.q = -1;
        this.r = Integer.MIN_VALUE;
        this.s = null;
        this.t = new a();
        this.i = new b();
        this.E = 2;
        this.F = new int[2];
        b(i);
        d(z);
    }

    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.n = 1;
        this.e = false;
        this.p = false;
        this.f = false;
        this.g = true;
        this.q = -1;
        this.r = Integer.MIN_VALUE;
        this.s = null;
        this.t = new a();
        this.i = new b();
        this.E = 2;
        this.F = new int[2];
        RecyclerView.i.b a2 = a(context, attributeSet, i, i2);
        b(a2.f1006a);
        d(a2.c);
        a(a2.d);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public RecyclerView.j a() {
        return new RecyclerView.j(-2, -2);
    }

    public boolean g() {
        return this.h;
    }

    public void c(boolean z) {
        this.h = z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(RecyclerView recyclerView, RecyclerView.q qVar) {
        super.a(recyclerView, qVar);
        if (this.h) {
            c(qVar);
            qVar.a();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(AccessibilityEvent accessibilityEvent) {
        super.a(accessibilityEvent);
        if (H() > 0) {
            accessibilityEvent.setFromIndex(u());
            accessibilityEvent.setToIndex(w());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public Parcelable h() {
        if (this.s != null) {
            return new d(this.s);
        }
        d dVar = new d();
        if (H() > 0) {
            o();
            boolean z = this.d ^ this.p;
            dVar.c = z;
            if (z) {
                View e = e();
                dVar.b = this.o.e() - this.o.b(e);
                dVar.f991a = e(e);
            } else {
                View c2 = c();
                dVar.f991a = e(c2);
                dVar.b = this.o.a(c2) - this.o.d();
            }
        } else {
            dVar.b();
        }
        return dVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(Parcelable parcelable) {
        if (parcelable instanceof d) {
            this.s = (d) parcelable;
            z();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public boolean i() {
        return this.n == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public boolean j() {
        return this.n == 1;
    }

    public void a(boolean z) {
        a((String) null);
        if (this.f == z) {
            return;
        }
        this.f = z;
        z();
    }

    public boolean k() {
        return this.f;
    }

    public int l() {
        return this.n;
    }

    public void b(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException("invalid orientation:" + i);
        }
        a((String) null);
        if (i != this.n || this.o == null) {
            this.o = w.a(this, i);
            this.t.f988a = this.o;
            this.n = i;
            z();
        }
    }

    private void b() {
        if (this.n == 1 || !n()) {
            this.p = this.e;
        } else {
            this.p = !this.e;
        }
    }

    public boolean m() {
        return this.e;
    }

    public void d(boolean z) {
        a((String) null);
        if (z == this.e) {
            return;
        }
        this.e = z;
        z();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public View c(int i) {
        int H = H();
        if (H == 0) {
            return null;
        }
        int e = i - e(j(0));
        if (e >= 0 && e < H) {
            View j2 = j(e);
            if (e(j2) == i) {
                return j2;
            }
        }
        return super.c(i);
    }

    @Deprecated
    protected int f(RecyclerView.w wVar) {
        if (wVar.f()) {
            return this.o.g();
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(@androidx.annotation.ah RecyclerView.w wVar, @androidx.annotation.ah int[] iArr) {
        int i;
        int f = f(wVar);
        if (this.c.m == -1) {
            i = 0;
        } else {
            i = f;
            f = 0;
        }
        iArr[0] = f;
        iArr[1] = i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(RecyclerView recyclerView, RecyclerView.w wVar, int i) {
        q qVar = new q(recyclerView.getContext());
        qVar.c(i);
        a(qVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.v.b
    public PointF d(int i) {
        if (H() == 0) {
            return null;
        }
        int i2 = (i < e(j(0))) != this.p ? -1 : 1;
        if (this.n == 0) {
            return new PointF(i2, 0.0f);
        }
        return new PointF(0.0f, i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void c(RecyclerView.q qVar, RecyclerView.w wVar) {
        int i;
        int i2;
        View c2;
        int a2;
        int i3 = -1;
        if ((this.s != null || this.q != -1) && wVar.h() == 0) {
            c(qVar);
            return;
        }
        if (this.s != null && this.s.a()) {
            this.q = this.s.f991a;
        }
        o();
        this.c.h = false;
        b();
        View U = U();
        if (!this.t.e || this.q != -1 || this.s != null) {
            this.t.a();
            this.t.d = this.p ^ this.f;
            a(qVar, wVar, this.t);
            this.t.e = true;
        } else if (U != null && (this.o.a(U) >= this.o.e() || this.o.b(U) <= this.o.d())) {
            this.t.a(U, e(U));
        }
        this.c.m = this.c.r >= 0 ? 1 : -1;
        this.F[0] = 0;
        this.F[1] = 0;
        a(wVar, this.F);
        int max = Math.max(0, this.F[0]) + this.o.d();
        int max2 = Math.max(0, this.F[1]) + this.o.h();
        if (wVar.b() && this.q != -1 && this.r != Integer.MIN_VALUE && (c2 = c(this.q)) != null) {
            if (this.p) {
                a2 = (this.o.e() - this.o.b(c2)) - this.r;
            } else {
                a2 = this.r - (this.o.a(c2) - this.o.d());
            }
            if (a2 > 0) {
                max += a2;
            } else {
                max2 -= a2;
            }
        }
        if (!this.t.d ? !this.p : this.p) {
            i3 = 1;
        }
        a(qVar, wVar, this.t, i3);
        a(qVar);
        this.c.t = r();
        this.c.q = wVar.b();
        this.c.p = 0;
        if (this.t.d) {
            b(this.t);
            this.c.o = max;
            a(qVar, this.c, wVar, false);
            i2 = this.c.i;
            int i4 = this.c.k;
            if (this.c.j > 0) {
                max2 += this.c.j;
            }
            a(this.t);
            this.c.o = max2;
            this.c.k += this.c.l;
            a(qVar, this.c, wVar, false);
            i = this.c.i;
            if (this.c.j > 0) {
                int i5 = this.c.j;
                h(i4, i2);
                this.c.o = i5;
                a(qVar, this.c, wVar, false);
                i2 = this.c.i;
            }
        } else {
            a(this.t);
            this.c.o = max2;
            a(qVar, this.c, wVar, false);
            i = this.c.i;
            int i6 = this.c.k;
            if (this.c.j > 0) {
                max += this.c.j;
            }
            b(this.t);
            this.c.o = max;
            this.c.k += this.c.l;
            a(qVar, this.c, wVar, false);
            i2 = this.c.i;
            if (this.c.j > 0) {
                int i7 = this.c.j;
                a(i6, i);
                this.c.o = i7;
                a(qVar, this.c, wVar, false);
                i = this.c.i;
            }
        }
        if (H() > 0) {
            if (this.p ^ this.f) {
                int a3 = a(i, qVar, wVar, true);
                int i8 = i2 + a3;
                int i9 = i + a3;
                int b2 = b(i8, qVar, wVar, false);
                i2 = i8 + b2;
                i = i9 + b2;
            } else {
                int b3 = b(i2, qVar, wVar, true);
                int i10 = i2 + b3;
                int i11 = i + b3;
                int a4 = a(i11, qVar, wVar, false);
                i2 = i10 + a4;
                i = i11 + a4;
            }
        }
        b(qVar, wVar, i2, i);
        if (!wVar.b()) {
            this.o.b();
        } else {
            this.t.a();
        }
        this.d = this.f;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(RecyclerView.w wVar) {
        super.a(wVar);
        this.s = null;
        this.q = -1;
        this.r = Integer.MIN_VALUE;
        this.t.a();
    }

    private void b(RecyclerView.q qVar, RecyclerView.w wVar, int i, int i2) {
        if (!wVar.c() || H() == 0 || wVar.b() || !d()) {
            return;
        }
        List<RecyclerView.z> c2 = qVar.c();
        int size = c2.size();
        int e = e(j(0));
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < size; i5++) {
            RecyclerView.z zVar = c2.get(i5);
            if (!zVar.s()) {
                if (((zVar.e() < e) != this.p ? (char) 65535 : (char) 1) == 65535) {
                    i3 += this.o.e(zVar.f1016a);
                } else {
                    i4 += this.o.e(zVar.f1016a);
                }
            }
        }
        this.c.s = c2;
        if (i3 > 0) {
            h(e(c()), i);
            this.c.o = i3;
            this.c.j = 0;
            this.c.a();
            a(qVar, this.c, wVar, false);
        }
        if (i4 > 0) {
            a(e(e()), i2);
            this.c.o = i4;
            this.c.j = 0;
            this.c.a();
            a(qVar, this.c, wVar, false);
        }
        this.c.s = null;
    }

    private void a(RecyclerView.q qVar, RecyclerView.w wVar, a aVar) {
        if (a(wVar, aVar) || b(qVar, wVar, aVar)) {
            return;
        }
        aVar.b();
        aVar.b = this.f ? wVar.h() - 1 : 0;
    }

    private boolean b(RecyclerView.q qVar, RecyclerView.w wVar, a aVar) {
        View g;
        int d2;
        if (H() == 0) {
            return false;
        }
        View U = U();
        if (U != null && aVar.a(U, wVar)) {
            aVar.a(U, e(U));
            return true;
        }
        if (this.d != this.f) {
            return false;
        }
        if (aVar.d) {
            g = f(qVar, wVar);
        } else {
            g = g(qVar, wVar);
        }
        if (g == null) {
            return false;
        }
        aVar.b(g, e(g));
        if (!wVar.b() && d()) {
            if (this.o.a(g) >= this.o.e() || this.o.b(g) < this.o.d()) {
                if (aVar.d) {
                    d2 = this.o.e();
                } else {
                    d2 = this.o.d();
                }
                aVar.c = d2;
            }
        }
        return true;
    }

    private boolean a(RecyclerView.w wVar, a aVar) {
        int a2;
        if (wVar.b() || this.q == -1) {
            return false;
        }
        if (this.q < 0 || this.q >= wVar.h()) {
            this.q = -1;
            this.r = Integer.MIN_VALUE;
            return false;
        }
        aVar.b = this.q;
        if (this.s != null && this.s.a()) {
            aVar.d = this.s.c;
            if (aVar.d) {
                aVar.c = this.o.e() - this.s.b;
            } else {
                aVar.c = this.o.d() + this.s.b;
            }
            return true;
        }
        if (this.r == Integer.MIN_VALUE) {
            View c2 = c(this.q);
            if (c2 != null) {
                if (this.o.e(c2) > this.o.g()) {
                    aVar.b();
                    return true;
                }
                if (this.o.a(c2) - this.o.d() < 0) {
                    aVar.c = this.o.d();
                    aVar.d = false;
                    return true;
                }
                if (this.o.e() - this.o.b(c2) < 0) {
                    aVar.c = this.o.e();
                    aVar.d = true;
                    return true;
                }
                if (aVar.d) {
                    a2 = this.o.b(c2) + this.o.c();
                } else {
                    a2 = this.o.a(c2);
                }
                aVar.c = a2;
            } else {
                if (H() > 0) {
                    aVar.d = (this.q < e(j(0))) == this.p;
                }
                aVar.b();
            }
            return true;
        }
        aVar.d = this.p;
        if (this.p) {
            aVar.c = this.o.e() - this.r;
        } else {
            aVar.c = this.o.d() + this.r;
        }
        return true;
    }

    private int a(int i, RecyclerView.q qVar, RecyclerView.w wVar, boolean z) {
        int e;
        int e2 = this.o.e() - i;
        if (e2 <= 0) {
            return 0;
        }
        int i2 = -c(-e2, qVar, wVar);
        int i3 = i + i2;
        if (!z || (e = this.o.e() - i3) <= 0) {
            return i2;
        }
        this.o.a(e);
        return e + i2;
    }

    private int b(int i, RecyclerView.q qVar, RecyclerView.w wVar, boolean z) {
        int d2;
        int d3 = i - this.o.d();
        if (d3 <= 0) {
            return 0;
        }
        int i2 = -c(d3, qVar, wVar);
        int i3 = i + i2;
        if (!z || (d2 = i3 - this.o.d()) <= 0) {
            return i2;
        }
        this.o.a(-d2);
        return i2 - d2;
    }

    private void a(a aVar) {
        a(aVar.b, aVar.c);
    }

    private void a(int i, int i2) {
        this.c.j = this.o.e() - i2;
        this.c.l = this.p ? -1 : 1;
        this.c.k = i;
        this.c.m = 1;
        this.c.i = i2;
        this.c.n = Integer.MIN_VALUE;
    }

    private void b(a aVar) {
        h(aVar.b, aVar.c);
    }

    private void h(int i, int i2) {
        this.c.j = i2 - this.o.d();
        this.c.k = i;
        this.c.l = this.p ? 1 : -1;
        this.c.m = -1;
        this.c.i = i2;
        this.c.n = Integer.MIN_VALUE;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean n() {
        return E() == 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void o() {
        if (this.c == null) {
            this.c = p();
        }
    }

    c p() {
        return new c();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void e(int i) {
        this.q = i;
        this.r = Integer.MIN_VALUE;
        if (this.s != null) {
            this.s.b();
        }
        z();
    }

    public void b(int i, int i2) {
        this.q = i;
        this.r = i2;
        if (this.s != null) {
            this.s.b();
        }
        z();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public int a(int i, RecyclerView.q qVar, RecyclerView.w wVar) {
        if (this.n == 1) {
            return 0;
        }
        return c(i, qVar, wVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public int b(int i, RecyclerView.q qVar, RecyclerView.w wVar) {
        if (this.n == 0) {
            return 0;
        }
        return c(i, qVar, wVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public int d(RecyclerView.w wVar) {
        return i(wVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public int e(RecyclerView.w wVar) {
        return i(wVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public int g(RecyclerView.w wVar) {
        return j(wVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public int h(RecyclerView.w wVar) {
        return j(wVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public int b(RecyclerView.w wVar) {
        return k(wVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public int c(RecyclerView.w wVar) {
        return k(wVar);
    }

    private int i(RecyclerView.w wVar) {
        if (H() == 0) {
            return 0;
        }
        o();
        return z.a(wVar, this.o, a(!this.g, true), b(!this.g, true), this, this.g, this.p);
    }

    private int j(RecyclerView.w wVar) {
        if (H() == 0) {
            return 0;
        }
        o();
        return z.a(wVar, this.o, a(!this.g, true), b(!this.g, true), this, this.g);
    }

    private int k(RecyclerView.w wVar) {
        if (H() == 0) {
            return 0;
        }
        o();
        return z.b(wVar, this.o, a(!this.g, true), b(!this.g, true), this, this.g);
    }

    public void e(boolean z) {
        this.g = z;
    }

    public boolean q() {
        return this.g;
    }

    private void a(int i, int i2, boolean z, RecyclerView.w wVar) {
        int d2;
        this.c.t = r();
        this.c.m = i;
        this.F[0] = 0;
        this.F[1] = 0;
        a(wVar, this.F);
        int max = Math.max(0, this.F[0]);
        int max2 = Math.max(0, this.F[1]);
        boolean z2 = i == 1;
        this.c.o = z2 ? max2 : max;
        c cVar = this.c;
        if (!z2) {
            max = max2;
        }
        cVar.p = max;
        if (z2) {
            this.c.o += this.o.h();
            View e = e();
            this.c.l = this.p ? -1 : 1;
            this.c.k = e(e) + this.c.l;
            this.c.i = this.o.b(e);
            d2 = this.o.b(e) - this.o.e();
        } else {
            View c2 = c();
            this.c.o += this.o.d();
            this.c.l = this.p ? 1 : -1;
            this.c.k = e(c2) + this.c.l;
            this.c.i = this.o.a(c2);
            d2 = (-this.o.a(c2)) + this.o.d();
        }
        this.c.j = i2;
        if (z) {
            this.c.j -= d2;
        }
        this.c.n = d2;
    }

    boolean r() {
        return this.o.i() == 0 && this.o.f() == 0;
    }

    void a(RecyclerView.w wVar, c cVar, RecyclerView.i.a aVar) {
        int i = cVar.k;
        if (i < 0 || i >= wVar.h()) {
            return;
        }
        aVar.b(i, Math.max(0, cVar.n));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(int i, RecyclerView.i.a aVar) {
        boolean z;
        int i2;
        if (this.s != null && this.s.a()) {
            z = this.s.c;
            i2 = this.s.f991a;
        } else {
            b();
            z = this.p;
            if (this.q == -1) {
                i2 = z ? i - 1 : 0;
            } else {
                i2 = this.q;
            }
        }
        int i3 = z ? -1 : 1;
        for (int i4 = 0; i4 < this.E && i2 >= 0 && i2 < i; i4++) {
            aVar.b(i2, 0);
            i2 += i3;
        }
    }

    public void f(int i) {
        this.E = i;
    }

    public int s() {
        return this.E;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(int i, int i2, RecyclerView.w wVar, RecyclerView.i.a aVar) {
        if (this.n != 0) {
            i = i2;
        }
        if (H() == 0 || i == 0) {
            return;
        }
        o();
        a(i > 0 ? 1 : -1, Math.abs(i), true, wVar);
        a(wVar, this.c, aVar);
    }

    int c(int i, RecyclerView.q qVar, RecyclerView.w wVar) {
        if (H() == 0 || i == 0) {
            return 0;
        }
        o();
        this.c.h = true;
        int i2 = i > 0 ? 1 : -1;
        int abs = Math.abs(i);
        a(i2, abs, true, wVar);
        int a2 = this.c.n + a(qVar, this.c, wVar, false);
        if (a2 < 0) {
            return 0;
        }
        if (abs > a2) {
            i = i2 * a2;
        }
        this.o.a(-i);
        this.c.r = i;
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(String str) {
        if (this.s == null) {
            super.a(str);
        }
    }

    private void a(RecyclerView.q qVar, int i, int i2) {
        if (i == i2) {
            return;
        }
        if (i2 <= i) {
            while (i > i2) {
                b(i, qVar);
                i--;
            }
        } else {
            for (int i3 = i2 - 1; i3 >= i; i3--) {
                b(i3, qVar);
            }
        }
    }

    private void b(RecyclerView.q qVar, int i, int i2) {
        if (i < 0) {
            return;
        }
        int i3 = i - i2;
        int H = H();
        if (!this.p) {
            for (int i4 = 0; i4 < H; i4++) {
                View j2 = j(i4);
                if (this.o.b(j2) > i3 || this.o.c(j2) > i3) {
                    a(qVar, 0, i4);
                    return;
                }
            }
            return;
        }
        int i5 = H - 1;
        for (int i6 = i5; i6 >= 0; i6--) {
            View j3 = j(i6);
            if (this.o.b(j3) > i3 || this.o.c(j3) > i3) {
                a(qVar, i5, i6);
                return;
            }
        }
    }

    private void c(RecyclerView.q qVar, int i, int i2) {
        int H = H();
        if (i < 0) {
            return;
        }
        int f = (this.o.f() - i) + i2;
        if (this.p) {
            for (int i3 = 0; i3 < H; i3++) {
                View j2 = j(i3);
                if (this.o.a(j2) < f || this.o.d(j2) < f) {
                    a(qVar, 0, i3);
                    return;
                }
            }
            return;
        }
        int i4 = H - 1;
        for (int i5 = i4; i5 >= 0; i5--) {
            View j3 = j(i5);
            if (this.o.a(j3) < f || this.o.d(j3) < f) {
                a(qVar, i4, i5);
                return;
            }
        }
    }

    private void a(RecyclerView.q qVar, c cVar) {
        if (!cVar.h || cVar.t) {
            return;
        }
        int i = cVar.n;
        int i2 = cVar.p;
        if (cVar.m == -1) {
            c(qVar, i, i2);
        } else {
            b(qVar, i, i2);
        }
    }

    int a(RecyclerView.q qVar, c cVar, RecyclerView.w wVar, boolean z) {
        int i = cVar.j;
        if (cVar.n != Integer.MIN_VALUE) {
            if (cVar.j < 0) {
                cVar.n += cVar.j;
            }
            a(qVar, cVar);
        }
        int i2 = cVar.j + cVar.o;
        b bVar = this.i;
        while (true) {
            if ((!cVar.t && i2 <= 0) || !cVar.a(wVar)) {
                break;
            }
            bVar.a();
            a(qVar, wVar, cVar, bVar);
            if (!bVar.b) {
                cVar.i += bVar.f989a * cVar.m;
                if (!bVar.c || cVar.s != null || !wVar.b()) {
                    cVar.j -= bVar.f989a;
                    i2 -= bVar.f989a;
                }
                if (cVar.n != Integer.MIN_VALUE) {
                    cVar.n += bVar.f989a;
                    if (cVar.j < 0) {
                        cVar.n += cVar.j;
                    }
                    a(qVar, cVar);
                }
                if (z && bVar.d) {
                    break;
                }
            } else {
                break;
            }
        }
        return i - cVar.j;
    }

    void a(RecyclerView.q qVar, RecyclerView.w wVar, c cVar, b bVar) {
        int i;
        int i2;
        int i3;
        int i4;
        int f;
        View a2 = cVar.a(qVar);
        if (a2 == null) {
            bVar.b = true;
            return;
        }
        RecyclerView.j jVar = (RecyclerView.j) a2.getLayoutParams();
        if (cVar.s == null) {
            if (this.p == (cVar.m == -1)) {
                c(a2);
            } else {
                b(a2, 0);
            }
        } else {
            if (this.p == (cVar.m == -1)) {
                b(a2);
            } else {
                a(a2, 0);
            }
        }
        b(a2, 0, 0);
        bVar.f989a = this.o.e(a2);
        if (this.n == 1) {
            if (n()) {
                f = K() - O();
                i4 = f - this.o.f(a2);
            } else {
                i4 = M();
                f = this.o.f(a2) + i4;
            }
            if (cVar.m == -1) {
                int i5 = cVar.i;
                i2 = cVar.i - bVar.f989a;
                i = f;
                i3 = i5;
            } else {
                int i6 = cVar.i;
                i3 = cVar.i + bVar.f989a;
                i = f;
                i2 = i6;
            }
        } else {
            int N = N();
            int f2 = this.o.f(a2) + N;
            if (cVar.m == -1) {
                i2 = N;
                i = cVar.i;
                i3 = f2;
                i4 = cVar.i - bVar.f989a;
            } else {
                int i7 = cVar.i;
                i = cVar.i + bVar.f989a;
                i2 = N;
                i3 = f2;
                i4 = i7;
            }
        }
        b(a2, i4, i2, i, i3);
        if (jVar.e() || jVar.f()) {
            bVar.c = true;
        }
        bVar.d = a2.hasFocusable();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    boolean t() {
        return (J() == 1073741824 || I() == 1073741824 || !ab()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int g(int i) {
        if (i == 17) {
            return this.n == 0 ? -1 : Integer.MIN_VALUE;
        }
        if (i == 33) {
            return this.n == 1 ? -1 : Integer.MIN_VALUE;
        }
        if (i == 66) {
            return this.n == 0 ? 1 : Integer.MIN_VALUE;
        }
        if (i == 130) {
            return this.n == 1 ? 1 : Integer.MIN_VALUE;
        }
        switch (i) {
            case 1:
                return (this.n != 1 && n()) ? 1 : -1;
            case 2:
                return (this.n != 1 && n()) ? -1 : 1;
            default:
                return Integer.MIN_VALUE;
        }
    }

    private View c() {
        return j(this.p ? H() - 1 : 0);
    }

    private View e() {
        return j(this.p ? 0 : H() - 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View a(boolean z, boolean z2) {
        if (this.p) {
            return a(H() - 1, -1, z, z2);
        }
        return a(0, H(), z, z2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View b(boolean z, boolean z2) {
        if (this.p) {
            return a(0, H(), z, z2);
        }
        return a(H() - 1, -1, z, z2);
    }

    private View f(RecyclerView.q qVar, RecyclerView.w wVar) {
        return this.p ? h(qVar, wVar) : i(qVar, wVar);
    }

    private View g(RecyclerView.q qVar, RecyclerView.w wVar) {
        return this.p ? i(qVar, wVar) : h(qVar, wVar);
    }

    private View h(RecyclerView.q qVar, RecyclerView.w wVar) {
        return a(qVar, wVar, 0, H(), wVar.h());
    }

    private View i(RecyclerView.q qVar, RecyclerView.w wVar) {
        return a(qVar, wVar, H() - 1, -1, wVar.h());
    }

    View a(RecyclerView.q qVar, RecyclerView.w wVar, int i, int i2, int i3) {
        o();
        int d2 = this.o.d();
        int e = this.o.e();
        int i4 = i2 > i ? 1 : -1;
        View view = null;
        View view2 = null;
        while (i != i2) {
            View j2 = j(i);
            int e2 = e(j2);
            if (e2 >= 0 && e2 < i3) {
                if (((RecyclerView.j) j2.getLayoutParams()).e()) {
                    if (view2 == null) {
                        view2 = j2;
                    }
                } else {
                    if (this.o.a(j2) < e && this.o.b(j2) >= d2) {
                        return j2;
                    }
                    if (view == null) {
                        view = j2;
                    }
                }
            }
            i += i4;
        }
        return view != null ? view : view2;
    }

    private View ac() {
        return this.p ? ae() : af();
    }

    private View ad() {
        return this.p ? af() : ae();
    }

    private View ae() {
        return c(0, H());
    }

    private View af() {
        return c(H() - 1, -1);
    }

    public int u() {
        View a2 = a(0, H(), false, true);
        if (a2 == null) {
            return -1;
        }
        return e(a2);
    }

    public int v() {
        View a2 = a(0, H(), true, false);
        if (a2 == null) {
            return -1;
        }
        return e(a2);
    }

    public int w() {
        View a2 = a(H() - 1, -1, false, true);
        if (a2 == null) {
            return -1;
        }
        return e(a2);
    }

    public int x() {
        View a2 = a(H() - 1, -1, true, false);
        if (a2 == null) {
            return -1;
        }
        return e(a2);
    }

    View a(int i, int i2, boolean z, boolean z2) {
        o();
        int i3 = z ? 24579 : 320;
        int i4 = z2 ? 320 : 0;
        if (this.n == 0) {
            return this.w.a(i, i2, i3, i4);
        }
        return this.x.a(i, i2, i3, i4);
    }

    View c(int i, int i2) {
        int i3;
        int i4;
        o();
        if ((i2 > i ? (char) 1 : i2 < i ? (char) 65535 : (char) 0) == 0) {
            return j(i);
        }
        if (this.o.a(j(i)) < this.o.d()) {
            i3 = 16644;
            i4 = 16388;
        } else {
            i3 = 4161;
            i4 = androidx.fragment.app.s.L;
        }
        if (this.n == 0) {
            return this.w.a(i, i2, i3, i4);
        }
        return this.x.a(i, i2, i3, i4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public View a(View view, int i, RecyclerView.q qVar, RecyclerView.w wVar) {
        int g;
        View ac;
        View e;
        b();
        if (H() == 0 || (g = g(i)) == Integer.MIN_VALUE) {
            return null;
        }
        o();
        a(g, (int) (this.o.g() * b), false, wVar);
        this.c.n = Integer.MIN_VALUE;
        this.c.h = false;
        a(qVar, this.c, wVar, true);
        if (g == -1) {
            ac = ad();
        } else {
            ac = ac();
        }
        if (g == -1) {
            e = c();
        } else {
            e = e();
        }
        if (!e.hasFocusable()) {
            return ac;
        }
        if (ac == null) {
            return null;
        }
        return e;
    }

    private void ag() {
        Log.d(f987a, "internal representation of views on the screen");
        for (int i = 0; i < H(); i++) {
            View j2 = j(i);
            Log.d(f987a, "item " + e(j2) + ", coord:" + this.o.a(j2));
        }
        Log.d(f987a, "==============");
    }

    void y() {
        Log.d(f987a, "validating child count " + H());
        if (H() < 1) {
            return;
        }
        int e = e(j(0));
        int a2 = this.o.a(j(0));
        if (this.p) {
            for (int i = 1; i < H(); i++) {
                View j2 = j(i);
                int e2 = e(j2);
                int a3 = this.o.a(j2);
                if (e2 < e) {
                    ag();
                    StringBuilder sb = new StringBuilder();
                    sb.append("detected invalid position. loc invalid? ");
                    sb.append(a3 < a2);
                    throw new RuntimeException(sb.toString());
                }
                if (a3 > a2) {
                    ag();
                    throw new RuntimeException("detected invalid location");
                }
            }
            return;
        }
        for (int i2 = 1; i2 < H(); i2++) {
            View j3 = j(i2);
            int e3 = e(j3);
            int a4 = this.o.a(j3);
            if (e3 < e) {
                ag();
                StringBuilder sb2 = new StringBuilder();
                sb2.append("detected invalid position. loc invalid? ");
                sb2.append(a4 < a2);
                throw new RuntimeException(sb2.toString());
            }
            if (a4 < a2) {
                ag();
                throw new RuntimeException("detected invalid location");
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public boolean d() {
        return this.s == null && this.d == this.f;
    }

    @Override // androidx.recyclerview.widget.m.e
    public void a(@androidx.annotation.ah View view, @androidx.annotation.ah View view2, int i, int i2) {
        a("Cannot drop a view during a scroll or layout calculation");
        o();
        b();
        int e = e(view);
        int e2 = e(view2);
        char c2 = e < e2 ? (char) 1 : (char) 65535;
        if (this.p) {
            if (c2 == 1) {
                b(e2, this.o.e() - (this.o.a(view2) + this.o.e(view)));
                return;
            } else {
                b(e2, this.o.e() - this.o.b(view2));
                return;
            }
        }
        if (c2 == 65535) {
            b(e2, this.o.a(view2));
        } else {
            b(e2, this.o.b(view2) - this.o.e(view));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class c {

        /* renamed from: a, reason: collision with root package name */
        static final String f990a = "LLM#LayoutState";
        static final int b = -1;
        static final int c = 1;
        static final int d = Integer.MIN_VALUE;
        static final int e = -1;
        static final int f = 1;
        static final int g = Integer.MIN_VALUE;
        int i;
        int j;
        int k;
        int l;
        int m;
        int n;
        int r;
        boolean t;
        boolean h = true;
        int o = 0;
        int p = 0;
        boolean q = false;
        List<RecyclerView.z> s = null;

        c() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean a(RecyclerView.w wVar) {
            return this.k >= 0 && this.k < wVar.h();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public View a(RecyclerView.q qVar) {
            if (this.s != null) {
                return c();
            }
            View c2 = qVar.c(this.k);
            this.k += this.l;
            return c2;
        }

        private View c() {
            int size = this.s.size();
            for (int i = 0; i < size; i++) {
                View view = this.s.get(i).f1016a;
                RecyclerView.j jVar = (RecyclerView.j) view.getLayoutParams();
                if (!jVar.e() && this.k == jVar.h()) {
                    a(view);
                    return view;
                }
            }
            return null;
        }

        public void a() {
            a((View) null);
        }

        public void a(View view) {
            View b2 = b(view);
            if (b2 == null) {
                this.k = -1;
            } else {
                this.k = ((RecyclerView.j) b2.getLayoutParams()).h();
            }
        }

        public View b(View view) {
            int h;
            int size = this.s.size();
            View view2 = null;
            int i = ActivityChooserView.a.f166a;
            for (int i2 = 0; i2 < size; i2++) {
                View view3 = this.s.get(i2).f1016a;
                RecyclerView.j jVar = (RecyclerView.j) view3.getLayoutParams();
                if (view3 != view && !jVar.e() && (h = (jVar.h() - this.k) * this.l) >= 0 && h < i) {
                    if (h == 0) {
                        return view3;
                    }
                    view2 = view3;
                    i = h;
                }
            }
            return view2;
        }

        void b() {
            Log.d(f990a, "avail:" + this.j + ", ind:" + this.k + ", dir:" + this.l + ", offset:" + this.i + ", layoutDir:" + this.m);
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    @ap(a = {ap.a.LIBRARY})
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class d implements Parcelable {
        public static final Parcelable.Creator<d> CREATOR = new Parcelable.Creator<d>() { // from class: androidx.recyclerview.widget.LinearLayoutManager.d.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public d createFromParcel(Parcel parcel) {
                return new d(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public d[] newArray(int i) {
                return new d[i];
            }
        };

        /* renamed from: a, reason: collision with root package name */
        int f991a;
        int b;
        boolean c;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public d() {
        }

        d(Parcel parcel) {
            this.f991a = parcel.readInt();
            this.b = parcel.readInt();
            this.c = parcel.readInt() == 1;
        }

        public d(d dVar) {
            this.f991a = dVar.f991a;
            this.b = dVar.b;
            this.c = dVar.c;
        }

        boolean a() {
            return this.f991a >= 0;
        }

        void b() {
            this.f991a = -1;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f991a);
            parcel.writeInt(this.b);
            parcel.writeInt(this.c ? 1 : 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        w f988a;
        int b;
        int c;
        boolean d;
        boolean e;

        a() {
            a();
        }

        void a() {
            this.b = -1;
            this.c = Integer.MIN_VALUE;
            this.d = false;
            this.e = false;
        }

        void b() {
            int d;
            if (this.d) {
                d = this.f988a.e();
            } else {
                d = this.f988a.d();
            }
            this.c = d;
        }

        public String toString() {
            return "AnchorInfo{mPosition=" + this.b + ", mCoordinate=" + this.c + ", mLayoutFromEnd=" + this.d + ", mValid=" + this.e + '}';
        }

        boolean a(View view, RecyclerView.w wVar) {
            RecyclerView.j jVar = (RecyclerView.j) view.getLayoutParams();
            return !jVar.e() && jVar.h() >= 0 && jVar.h() < wVar.h();
        }

        public void a(View view, int i) {
            int c = this.f988a.c();
            if (c >= 0) {
                b(view, i);
                return;
            }
            this.b = i;
            if (this.d) {
                int e = (this.f988a.e() - c) - this.f988a.b(view);
                this.c = this.f988a.e() - e;
                if (e > 0) {
                    int e2 = this.c - this.f988a.e(view);
                    int d = this.f988a.d();
                    int min = e2 - (d + Math.min(this.f988a.a(view) - d, 0));
                    if (min < 0) {
                        this.c += Math.min(e, -min);
                        return;
                    }
                    return;
                }
                return;
            }
            int a2 = this.f988a.a(view);
            int d2 = a2 - this.f988a.d();
            this.c = a2;
            if (d2 > 0) {
                int e3 = (this.f988a.e() - Math.min(0, (this.f988a.e() - c) - this.f988a.b(view))) - (a2 + this.f988a.e(view));
                if (e3 < 0) {
                    this.c -= Math.min(d2, -e3);
                }
            }
        }

        public void b(View view, int i) {
            if (this.d) {
                this.c = this.f988a.b(view) + this.f988a.c();
            } else {
                this.c = this.f988a.a(view);
            }
            this.b = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public int f989a;
        public boolean b;
        public boolean c;
        public boolean d;

        protected b() {
        }

        void a() {
            this.f989a = 0;
            this.b = false;
            this.c = false;
            this.d = false;
        }
    }
}
