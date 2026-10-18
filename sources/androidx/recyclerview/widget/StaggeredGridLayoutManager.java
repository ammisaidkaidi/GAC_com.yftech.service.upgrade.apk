package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.ai;
import androidx.annotation.ap;
import androidx.appcompat.widget.ActivityChooserView;
import androidx.core.n.a.d;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class StaggeredGridLayoutManager extends RecyclerView.i implements RecyclerView.v.b {

    /* renamed from: a, reason: collision with root package name */
    static final boolean f1017a = false;
    public static final int b = 0;
    public static final int c = 1;
    public static final int d = 0;

    @Deprecated
    public static final int e = 1;
    public static final int f = 2;
    static final int g = Integer.MIN_VALUE;
    private static final String p = "StaggeredGridLManager";
    private static final float q = 0.33333334f;

    @androidx.annotation.ah
    private final p E;
    private BitSet F;
    private boolean H;
    private boolean I;
    private d J;
    private int K;
    private int[] P;
    e[] h;

    @androidx.annotation.ah
    w i;

    @androidx.annotation.ah
    w j;
    private int s;
    private int t;
    private int r = -1;
    boolean k = false;
    boolean l = false;
    int m = -1;
    int n = Integer.MIN_VALUE;
    c o = new c();
    private int G = 2;
    private final Rect L = new Rect();
    private final a M = new a();
    private boolean N = false;
    private boolean O = true;
    private final Runnable Q = new Runnable() { // from class: androidx.recyclerview.widget.StaggeredGridLayoutManager.1
        @Override // java.lang.Runnable
        public void run() {
            StaggeredGridLayoutManager.this.b();
        }
    };

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        RecyclerView.i.b a2 = a(context, attributeSet, i, i2);
        b(a2.f1006a);
        a(a2.b);
        a(a2.c);
        this.E = new p();
        u();
    }

    public StaggeredGridLayoutManager(int i, int i2) {
        this.s = i2;
        a(i);
        this.E = new p();
        u();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public boolean f() {
        return this.G != 0;
    }

    private void u() {
        this.i = w.a(this, this.s);
        this.j = w.a(this, 1 - this.s);
    }

    boolean b() {
        int r;
        int q2;
        if (H() == 0 || this.G == 0 || !B()) {
            return false;
        }
        if (this.l) {
            r = q();
            q2 = r();
        } else {
            r = r();
            q2 = q();
        }
        if (r == 0 && c() != null) {
            this.o.a();
            aa();
            z();
            return true;
        }
        if (!this.N) {
            return false;
        }
        int i = this.l ? -1 : 1;
        int i2 = q2 + 1;
        c.a a2 = this.o.a(r, i2, i, true);
        if (a2 == null) {
            this.N = false;
            this.o.a(i2);
            return false;
        }
        c.a a3 = this.o.a(r, a2.f1022a, i * (-1), true);
        if (a3 == null) {
            this.o.a(a2.f1022a);
        } else {
            this.o.a(a3.f1022a + 1);
        }
        aa();
        z();
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void m(int i) {
        if (i == 0) {
            b();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(RecyclerView recyclerView, RecyclerView.q qVar) {
        super.a(recyclerView, qVar);
        b(this.Q);
        for (int i = 0; i < this.r; i++) {
            this.h[i].e();
        }
        recyclerView.requestLayout();
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0074, code lost:
    
        if (r10 == r11) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x008a, code lost:
    
        r10 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0088, code lost:
    
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0086, code lost:
    
        if (r10 == r11) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    View c() {
        int i;
        int i2;
        boolean z;
        int H = H() - 1;
        BitSet bitSet = new BitSet(this.r);
        bitSet.set(0, this.r, true);
        char c2 = (this.s == 1 && l()) ? (char) 1 : (char) 65535;
        if (this.l) {
            i = -1;
        } else {
            i = H + 1;
            H = 0;
        }
        int i3 = H < i ? 1 : -1;
        while (H != i) {
            View j = j(H);
            b bVar = (b) j.getLayoutParams();
            if (bitSet.get(bVar.b.f)) {
                if (a(bVar.b)) {
                    return j;
                }
                bitSet.clear(bVar.b.f);
            }
            if (!bVar.c && (i2 = H + i3) != i) {
                View j2 = j(i2);
                if (this.l) {
                    int b2 = this.i.b(j);
                    int b3 = this.i.b(j2);
                    if (b2 < b3) {
                        return j;
                    }
                } else {
                    int a2 = this.i.a(j);
                    int a3 = this.i.a(j2);
                    if (a2 > a3) {
                        return j;
                    }
                }
                if (z) {
                    if ((bVar.b.f - ((b) j2.getLayoutParams()).b.f < 0) != (c2 < 0)) {
                        return j;
                    }
                } else {
                    continue;
                }
            }
            H += i3;
        }
        return null;
    }

    private boolean a(e eVar) {
        if (this.l) {
            if (eVar.d() < this.i.e()) {
                return !eVar.c(eVar.b.get(eVar.b.size() - 1)).c;
            }
        } else if (eVar.b() > this.i.d()) {
            return !eVar.c(eVar.b.get(0)).c;
        }
        return false;
    }

    public void a(int i) {
        a((String) null);
        if (i != this.r) {
            k();
            this.r = i;
            this.F = new BitSet(this.r);
            this.h = new e[this.r];
            for (int i2 = 0; i2 < this.r; i2++) {
                this.h[i2] = new e(i2);
            }
            z();
        }
    }

    public void b(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException("invalid orientation.");
        }
        a((String) null);
        if (i == this.s) {
            return;
        }
        this.s = i;
        w wVar = this.i;
        this.i = this.j;
        this.j = wVar;
        z();
    }

    public void a(boolean z) {
        a((String) null);
        if (this.J != null && this.J.h != z) {
            this.J.h = z;
        }
        this.k = z;
        z();
    }

    public int e() {
        return this.G;
    }

    public void f(int i) {
        a((String) null);
        if (i == this.G) {
            return;
        }
        if (i != 0 && i != 2) {
            throw new IllegalArgumentException("invalid gap strategy. Must be GAP_HANDLING_NONE or GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS");
        }
        this.G = i;
        z();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(String str) {
        if (this.J == null) {
            super.a(str);
        }
    }

    public int g() {
        return this.r;
    }

    public void k() {
        this.o.a();
        z();
    }

    private void v() {
        if (this.s == 1 || !l()) {
            this.l = this.k;
        } else {
            this.l = !this.k;
        }
    }

    boolean l() {
        return E() == 1;
    }

    public boolean m() {
        return this.k;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(Rect rect, int i, int i2) {
        int a2;
        int a3;
        int M = M() + O();
        int N = N() + P();
        if (this.s == 1) {
            a3 = a(i2, rect.height() + N, Y());
            a2 = a(i, (this.t * this.r) + M, X());
        } else {
            a2 = a(i, rect.width() + M, X());
            a3 = a(i2, (this.t * this.r) + N, Y());
        }
        g(a2, a3);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void c(RecyclerView.q qVar, RecyclerView.w wVar) {
        a(qVar, wVar, true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:82:0x0163, code lost:
    
        if (b() != false) goto L90;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void a(RecyclerView.q qVar, RecyclerView.w wVar, boolean z) {
        a aVar = this.M;
        if ((this.J != null || this.m != -1) && wVar.h() == 0) {
            c(qVar);
            aVar.a();
            return;
        }
        boolean z2 = true;
        boolean z3 = (aVar.e && this.m == -1 && this.J == null) ? false : true;
        if (z3) {
            aVar.a();
            if (this.J != null) {
                a(aVar);
            } else {
                v();
                aVar.c = this.l;
            }
            a(wVar, aVar);
            aVar.e = true;
        }
        if (this.J == null && this.m == -1 && (aVar.c != this.H || l() != this.I)) {
            this.o.a();
            aVar.d = true;
        }
        if (H() > 0 && (this.J == null || this.J.c < 1)) {
            if (aVar.d) {
                for (int i = 0; i < this.r; i++) {
                    this.h[i].e();
                    if (aVar.b != Integer.MIN_VALUE) {
                        this.h[i].c(aVar.b);
                    }
                }
            } else if (z3 || this.M.f == null) {
                for (int i2 = 0; i2 < this.r; i2++) {
                    this.h[i2].a(this.l, aVar.b);
                }
                this.M.a(this.h);
            } else {
                for (int i3 = 0; i3 < this.r; i3++) {
                    e eVar = this.h[i3];
                    eVar.e();
                    eVar.c(this.M.f[i3]);
                }
            }
        }
        a(qVar);
        this.E.f = false;
        this.N = false;
        g(this.j.g());
        b(aVar.f1019a, wVar);
        if (aVar.c) {
            n(-1);
            a(qVar, this.E, wVar);
            n(1);
            this.E.h = aVar.f1019a + this.E.i;
            a(qVar, this.E, wVar);
        } else {
            n(1);
            a(qVar, this.E, wVar);
            n(-1);
            this.E.h = aVar.f1019a + this.E.i;
            a(qVar, this.E, wVar);
        }
        w();
        if (H() > 0) {
            if (this.l) {
                b(qVar, wVar, true);
                c(qVar, wVar, false);
            } else {
                c(qVar, wVar, true);
                b(qVar, wVar, false);
            }
        }
        if (z && !wVar.b()) {
            if (this.G != 0 && H() > 0 && (this.N || c() != null)) {
                b(this.Q);
            }
        }
        z2 = false;
        if (wVar.b()) {
            this.M.a();
        }
        this.H = aVar.c;
        this.I = l();
        if (z2) {
            this.M.a();
            a(qVar, wVar, false);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(RecyclerView.w wVar) {
        super.a(wVar);
        this.m = -1;
        this.n = Integer.MIN_VALUE;
        this.J = null;
        this.M.a();
    }

    private void w() {
        if (this.j.i() == 1073741824) {
            return;
        }
        int H = H();
        float f2 = 0.0f;
        for (int i = 0; i < H; i++) {
            View j = j(i);
            float e2 = this.j.e(j);
            if (e2 >= f2) {
                if (((b) j.getLayoutParams()).a()) {
                    e2 = (e2 * 1.0f) / this.r;
                }
                f2 = Math.max(f2, e2);
            }
        }
        int i2 = this.t;
        int round = Math.round(f2 * this.r);
        if (this.j.i() == Integer.MIN_VALUE) {
            round = Math.min(round, this.j.g());
        }
        g(round);
        if (this.t == i2) {
            return;
        }
        for (int i3 = 0; i3 < H; i3++) {
            View j2 = j(i3);
            b bVar = (b) j2.getLayoutParams();
            if (!bVar.c) {
                if (l() && this.s == 1) {
                    j2.offsetLeftAndRight(((-((this.r - 1) - bVar.b.f)) * this.t) - ((-((this.r - 1) - bVar.b.f)) * i2));
                } else {
                    int i4 = bVar.b.f * this.t;
                    int i5 = bVar.b.f * i2;
                    if (this.s == 1) {
                        j2.offsetLeftAndRight(i4 - i5);
                    } else {
                        j2.offsetTopAndBottom(i4 - i5);
                    }
                }
            }
        }
    }

    private void a(a aVar) {
        if (this.J.c > 0) {
            if (this.J.c == this.r) {
                for (int i = 0; i < this.r; i++) {
                    this.h[i].e();
                    int i2 = this.J.d[i];
                    if (i2 != Integer.MIN_VALUE) {
                        if (this.J.i) {
                            i2 += this.i.e();
                        } else {
                            i2 += this.i.d();
                        }
                    }
                    this.h[i].c(i2);
                }
            } else {
                this.J.a();
                this.J.f1023a = this.J.b;
            }
        }
        this.I = this.J.j;
        a(this.J.h);
        v();
        if (this.J.f1023a != -1) {
            this.m = this.J.f1023a;
            aVar.c = this.J.i;
        } else {
            aVar.c = this.l;
        }
        if (this.J.e > 1) {
            this.o.f1021a = this.J.f;
            this.o.b = this.J.g;
        }
    }

    void a(RecyclerView.w wVar, a aVar) {
        if (b(wVar, aVar) || c(wVar, aVar)) {
            return;
        }
        aVar.b();
        aVar.f1019a = 0;
    }

    private boolean c(RecyclerView.w wVar, a aVar) {
        int w;
        if (this.H) {
            w = x(wVar.h());
        } else {
            w = w(wVar.h());
        }
        aVar.f1019a = w;
        aVar.b = Integer.MIN_VALUE;
        return true;
    }

    boolean b(RecyclerView.w wVar, a aVar) {
        int d2;
        if (wVar.b() || this.m == -1) {
            return false;
        }
        if (this.m < 0 || this.m >= wVar.h()) {
            this.m = -1;
            this.n = Integer.MIN_VALUE;
            return false;
        }
        if (this.J == null || this.J.f1023a == -1 || this.J.c < 1) {
            View c2 = c(this.m);
            if (c2 != null) {
                aVar.f1019a = this.l ? q() : r();
                if (this.n != Integer.MIN_VALUE) {
                    if (aVar.c) {
                        aVar.b = (this.i.e() - this.n) - this.i.b(c2);
                    } else {
                        aVar.b = (this.i.d() + this.n) - this.i.a(c2);
                    }
                    return true;
                }
                if (this.i.e(c2) > this.i.g()) {
                    if (aVar.c) {
                        d2 = this.i.e();
                    } else {
                        d2 = this.i.d();
                    }
                    aVar.b = d2;
                    return true;
                }
                int a2 = this.i.a(c2) - this.i.d();
                if (a2 < 0) {
                    aVar.b = -a2;
                    return true;
                }
                int e2 = this.i.e() - this.i.b(c2);
                if (e2 < 0) {
                    aVar.b = e2;
                    return true;
                }
                aVar.b = Integer.MIN_VALUE;
            } else {
                aVar.f1019a = this.m;
                if (this.n == Integer.MIN_VALUE) {
                    aVar.c = v(aVar.f1019a) == 1;
                    aVar.b();
                } else {
                    aVar.a(this.n);
                }
                aVar.d = true;
            }
        } else {
            aVar.b = Integer.MIN_VALUE;
            aVar.f1019a = this.m;
        }
        return true;
    }

    void g(int i) {
        this.t = i / this.r;
        this.K = View.MeasureSpec.makeMeasureSpec(i, this.j.i());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public boolean d() {
        return this.J == null;
    }

    public int[] a(int[] iArr) {
        if (iArr == null) {
            iArr = new int[this.r];
        } else if (iArr.length < this.r) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.r + ", array size:" + iArr.length);
        }
        for (int i = 0; i < this.r; i++) {
            iArr[i] = this.h[i].j();
        }
        return iArr;
    }

    public int[] b(int[] iArr) {
        if (iArr == null) {
            iArr = new int[this.r];
        } else if (iArr.length < this.r) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.r + ", array size:" + iArr.length);
        }
        for (int i = 0; i < this.r; i++) {
            iArr[i] = this.h[i].l();
        }
        return iArr;
    }

    public int[] c(int[] iArr) {
        if (iArr == null) {
            iArr = new int[this.r];
        } else if (iArr.length < this.r) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.r + ", array size:" + iArr.length);
        }
        for (int i = 0; i < this.r; i++) {
            iArr[i] = this.h[i].m();
        }
        return iArr;
    }

    public int[] d(int[] iArr) {
        if (iArr == null) {
            iArr = new int[this.r];
        } else if (iArr.length < this.r) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.r + ", array size:" + iArr.length);
        }
        for (int i = 0; i < this.r; i++) {
            iArr[i] = this.h[i].o();
        }
        return iArr;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public int d(RecyclerView.w wVar) {
        return f(wVar);
    }

    private int f(RecyclerView.w wVar) {
        if (H() == 0) {
            return 0;
        }
        return z.a(wVar, this.i, b(!this.O), c(!this.O), this, this.O, this.l);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public int e(RecyclerView.w wVar) {
        return f(wVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public int g(RecyclerView.w wVar) {
        return i(wVar);
    }

    private int i(RecyclerView.w wVar) {
        if (H() == 0) {
            return 0;
        }
        return z.a(wVar, this.i, b(!this.O), c(!this.O), this, this.O);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public int h(RecyclerView.w wVar) {
        return i(wVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public int b(RecyclerView.w wVar) {
        return j(wVar);
    }

    private int j(RecyclerView.w wVar) {
        if (H() == 0) {
            return 0;
        }
        return z.b(wVar, this.i, b(!this.O), c(!this.O), this, this.O);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public int c(RecyclerView.w wVar) {
        return j(wVar);
    }

    private void a(View view, b bVar, boolean z) {
        if (bVar.c) {
            if (this.s == 1) {
                a(view, this.K, a(L(), J(), N() + P(), bVar.height, true), z);
                return;
            } else {
                a(view, a(K(), I(), M() + O(), bVar.width, true), this.K, z);
                return;
            }
        }
        if (this.s == 1) {
            a(view, a(this.t, I(), 0, bVar.width, false), a(L(), J(), N() + P(), bVar.height, true), z);
        } else {
            a(view, a(K(), I(), M() + O(), bVar.width, true), a(this.t, J(), 0, bVar.height, false), z);
        }
    }

    private void a(View view, int i, int i2, boolean z) {
        boolean b2;
        b(view, this.L);
        b bVar = (b) view.getLayoutParams();
        int b3 = b(i, bVar.leftMargin + this.L.left, bVar.rightMargin + this.L.right);
        int b4 = b(i2, bVar.topMargin + this.L.top, bVar.bottomMargin + this.L.bottom);
        if (z) {
            b2 = a(view, b3, b4, bVar);
        } else {
            b2 = b(view, b3, b4, bVar);
        }
        if (b2) {
            view.measure(b3, b4);
        }
    }

    private int b(int i, int i2, int i3) {
        if (i2 == 0 && i3 == 0) {
            return i;
        }
        int mode = View.MeasureSpec.getMode(i);
        return (mode == Integer.MIN_VALUE || mode == 1073741824) ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i) - i2) - i3), mode) : i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(Parcelable parcelable) {
        if (parcelable instanceof d) {
            this.J = (d) parcelable;
            z();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public Parcelable h() {
        int a2;
        if (this.J != null) {
            return new d(this.J);
        }
        d dVar = new d();
        dVar.h = this.k;
        dVar.i = this.H;
        dVar.j = this.I;
        if (this.o != null && this.o.f1021a != null) {
            dVar.f = this.o.f1021a;
            dVar.e = dVar.f.length;
            dVar.g = this.o.b;
        } else {
            dVar.e = 0;
        }
        if (H() > 0) {
            dVar.f1023a = this.H ? q() : r();
            dVar.b = n();
            dVar.c = this.r;
            dVar.d = new int[this.r];
            for (int i = 0; i < this.r; i++) {
                if (this.H) {
                    a2 = this.h[i].b(Integer.MIN_VALUE);
                    if (a2 != Integer.MIN_VALUE) {
                        a2 -= this.i.e();
                    }
                } else {
                    a2 = this.h[i].a(Integer.MIN_VALUE);
                    if (a2 != Integer.MIN_VALUE) {
                        a2 -= this.i.d();
                    }
                }
                dVar.d[i] = a2;
            }
        } else {
            dVar.f1023a = -1;
            dVar.b = -1;
            dVar.c = 0;
        }
        return dVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(RecyclerView.q qVar, RecyclerView.w wVar, View view, androidx.core.n.a.d dVar) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof b)) {
            super.a(view, dVar);
            return;
        }
        b bVar = (b) layoutParams;
        if (this.s == 0) {
            dVar.c(d.c.a(bVar.b(), bVar.c ? this.r : 1, -1, -1, false, false));
        } else {
            dVar.c(d.c.a(-1, -1, bVar.b(), bVar.c ? this.r : 1, false, false));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(AccessibilityEvent accessibilityEvent) {
        super.a(accessibilityEvent);
        if (H() > 0) {
            View b2 = b(false);
            View c2 = c(false);
            if (b2 == null || c2 == null) {
                return;
            }
            int e2 = e(b2);
            int e3 = e(c2);
            if (e2 < e3) {
                accessibilityEvent.setFromIndex(e2);
                accessibilityEvent.setToIndex(e3);
            } else {
                accessibilityEvent.setFromIndex(e3);
                accessibilityEvent.setToIndex(e2);
            }
        }
    }

    int n() {
        View c2 = this.l ? c(true) : b(true);
        if (c2 == null) {
            return -1;
        }
        return e(c2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public int a(RecyclerView.q qVar, RecyclerView.w wVar) {
        if (this.s == 0) {
            return this.r;
        }
        return super.a(qVar, wVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public int b(RecyclerView.q qVar, RecyclerView.w wVar) {
        if (this.s == 1) {
            return this.r;
        }
        return super.b(qVar, wVar);
    }

    View b(boolean z) {
        int d2 = this.i.d();
        int e2 = this.i.e();
        int H = H();
        View view = null;
        for (int i = 0; i < H; i++) {
            View j = j(i);
            int a2 = this.i.a(j);
            if (this.i.b(j) > d2 && a2 < e2) {
                if (a2 >= d2 || !z) {
                    return j;
                }
                if (view == null) {
                    view = j;
                }
            }
        }
        return view;
    }

    View c(boolean z) {
        int d2 = this.i.d();
        int e2 = this.i.e();
        View view = null;
        for (int H = H() - 1; H >= 0; H--) {
            View j = j(H);
            int a2 = this.i.a(j);
            int b2 = this.i.b(j);
            if (b2 > d2 && a2 < e2) {
                if (b2 <= e2 || !z) {
                    return j;
                }
                if (view == null) {
                    view = j;
                }
            }
        }
        return view;
    }

    private void b(RecyclerView.q qVar, RecyclerView.w wVar, boolean z) {
        int e2;
        int s = s(Integer.MIN_VALUE);
        if (s != Integer.MIN_VALUE && (e2 = this.i.e() - s) > 0) {
            int i = e2 - (-c(-e2, qVar, wVar));
            if (!z || i <= 0) {
                return;
            }
            this.i.a(i);
        }
    }

    private void c(RecyclerView.q qVar, RecyclerView.w wVar, boolean z) {
        int d2;
        int r = r(ActivityChooserView.a.f166a);
        if (r != Integer.MAX_VALUE && (d2 = r - this.i.d()) > 0) {
            int c2 = d2 - c(d2, qVar, wVar);
            if (!z || c2 <= 0) {
                return;
            }
            this.i.a(-c2);
        }
    }

    private void b(int i, RecyclerView.w wVar) {
        int i2;
        int i3;
        int e2;
        boolean z = false;
        this.E.g = 0;
        this.E.h = i;
        if (!D() || (e2 = wVar.e()) == -1) {
            i2 = 0;
            i3 = 0;
        } else {
            if (this.l == (e2 < i)) {
                i3 = this.i.g();
                i2 = 0;
            } else {
                i2 = this.i.g();
                i3 = 0;
            }
        }
        if (C()) {
            this.E.k = this.i.d() - i2;
            this.E.l = this.i.e() + i3;
        } else {
            this.E.l = this.i.f() + i3;
            this.E.k = -i2;
        }
        this.E.m = false;
        this.E.f = true;
        p pVar = this.E;
        if (this.i.i() == 0 && this.i.f() == 0) {
            z = true;
        }
        pVar.n = z;
    }

    private void n(int i) {
        this.E.j = i;
        this.E.i = this.l != (i == -1) ? -1 : 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void k(int i) {
        super.k(i);
        for (int i2 = 0; i2 < this.r; i2++) {
            this.h[i2].d(i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void l(int i) {
        super.l(i);
        for (int i2 = 0; i2 < this.r; i2++) {
            this.h[i2].d(i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void b(RecyclerView recyclerView, int i, int i2) {
        c(i, i2, 2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(RecyclerView recyclerView, int i, int i2) {
        c(i, i2, 1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(RecyclerView recyclerView) {
        this.o.a();
        z();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(RecyclerView recyclerView, int i, int i2, int i3) {
        c(i, i2, 8);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(RecyclerView recyclerView, int i, int i2, Object obj) {
        c(i, i2, 4);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0043 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void c(int i, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int q2 = this.l ? q() : r();
        if (i3 != 8) {
            i4 = i + i2;
        } else {
            if (i >= i2) {
                i5 = i + 1;
                i6 = i2;
                this.o.b(i6);
                if (i3 == 8) {
                    switch (i3) {
                        case 1:
                            this.o.b(i, i2);
                            break;
                        case 2:
                            this.o.a(i, i2);
                            break;
                    }
                } else {
                    this.o.a(i, 1);
                    this.o.b(i2, 1);
                }
                if (i5 > q2) {
                    return;
                }
                if (i6 <= (this.l ? r() : q())) {
                    z();
                    return;
                }
                return;
            }
            i4 = i2 + 1;
        }
        i5 = i4;
        i6 = i;
        this.o.b(i6);
        if (i3 == 8) {
        }
        if (i5 > q2) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r9v6 */
    private int a(RecyclerView.q qVar, p pVar, RecyclerView.w wVar) {
        int i;
        int d2;
        int s;
        e eVar;
        int e2;
        int i2;
        int i3;
        int e3;
        boolean z;
        boolean p2;
        ?? r9 = 0;
        this.F.set(0, this.r, true);
        if (this.E.n) {
            i = pVar.j == 1 ? ActivityChooserView.a.f166a : Integer.MIN_VALUE;
        } else if (pVar.j == 1) {
            i = pVar.l + pVar.g;
        } else {
            i = pVar.k - pVar.g;
        }
        int i4 = i;
        b(pVar.j, i4);
        if (this.l) {
            d2 = this.i.e();
        } else {
            d2 = this.i.d();
        }
        int i5 = d2;
        boolean z2 = false;
        while (pVar.a(wVar) && (this.E.n || !this.F.isEmpty())) {
            View a2 = pVar.a(qVar);
            b bVar = (b) a2.getLayoutParams();
            int h = bVar.h();
            int c2 = this.o.c(h);
            boolean z3 = c2 == -1 ? true : r9;
            if (z3) {
                eVar = bVar.c ? this.h[r9] : a(pVar);
                this.o.a(h, eVar);
            } else {
                eVar = this.h[c2];
            }
            e eVar2 = eVar;
            bVar.b = eVar2;
            if (pVar.j == 1) {
                c(a2);
            } else {
                b(a2, (int) r9);
            }
            a(a2, bVar, (boolean) r9);
            if (pVar.j == 1) {
                int s2 = bVar.c ? s(i5) : eVar2.b(i5);
                int e4 = this.i.e(a2) + s2;
                if (z3 && bVar.c) {
                    c.a o = o(s2);
                    o.b = -1;
                    o.f1022a = h;
                    this.o.a(o);
                }
                i2 = e4;
                e2 = s2;
            } else {
                int r = bVar.c ? r(i5) : eVar2.a(i5);
                e2 = r - this.i.e(a2);
                if (z3 && bVar.c) {
                    c.a p3 = p(r);
                    p3.b = 1;
                    p3.f1022a = h;
                    this.o.a(p3);
                }
                i2 = r;
            }
            if (bVar.c && pVar.i == -1) {
                if (z3) {
                    this.N = true;
                } else {
                    if (pVar.j == 1) {
                        p2 = o();
                    } else {
                        p2 = p();
                    }
                    if (!p2) {
                        c.a f2 = this.o.f(h);
                        if (f2 != null) {
                            f2.d = true;
                        }
                        this.N = true;
                    }
                }
            }
            a(a2, bVar, pVar);
            if (l() && this.s == 1) {
                int e5 = bVar.c ? this.j.e() : this.j.e() - (((this.r - 1) - eVar2.f) * this.t);
                e3 = e5;
                i3 = e5 - this.j.e(a2);
            } else {
                int d3 = bVar.c ? this.j.d() : (eVar2.f * this.t) + this.j.d();
                i3 = d3;
                e3 = this.j.e(a2) + d3;
            }
            if (this.s == 1) {
                b(a2, i3, e2, e3, i2);
            } else {
                b(a2, e2, i3, i2, e3);
            }
            if (bVar.c) {
                b(this.E.j, i4);
            } else {
                a(eVar2, this.E.j, i4);
            }
            a(qVar, this.E);
            if (this.E.m && a2.hasFocusable()) {
                if (bVar.c) {
                    this.F.clear();
                } else {
                    z = false;
                    this.F.set(eVar2.f, false);
                    r9 = z;
                    z2 = true;
                }
            }
            z = false;
            r9 = z;
            z2 = true;
        }
        int i6 = r9;
        if (!z2) {
            a(qVar, this.E);
        }
        if (this.E.j == -1) {
            s = this.i.d() - r(this.i.d());
        } else {
            s = s(this.i.e()) - this.i.e();
        }
        return s > 0 ? Math.min(pVar.g, s) : i6;
    }

    private c.a o(int i) {
        c.a aVar = new c.a();
        aVar.c = new int[this.r];
        for (int i2 = 0; i2 < this.r; i2++) {
            aVar.c[i2] = i - this.h[i2].b(i);
        }
        return aVar;
    }

    private c.a p(int i) {
        c.a aVar = new c.a();
        aVar.c = new int[this.r];
        for (int i2 = 0; i2 < this.r; i2++) {
            aVar.c[i2] = this.h[i2].a(i) - i;
        }
        return aVar;
    }

    private void a(View view, b bVar, p pVar) {
        if (pVar.j == 1) {
            if (bVar.c) {
                w(view);
                return;
            } else {
                bVar.b.b(view);
                return;
            }
        }
        if (bVar.c) {
            x(view);
        } else {
            bVar.b.a(view);
        }
    }

    private void a(RecyclerView.q qVar, p pVar) {
        int min;
        int min2;
        if (!pVar.f || pVar.n) {
            return;
        }
        if (pVar.g == 0) {
            if (pVar.j == -1) {
                b(qVar, pVar.l);
                return;
            } else {
                a(qVar, pVar.k);
                return;
            }
        }
        if (pVar.j == -1) {
            int q2 = pVar.k - q(pVar.k);
            if (q2 < 0) {
                min2 = pVar.l;
            } else {
                min2 = pVar.l - Math.min(q2, pVar.g);
            }
            b(qVar, min2);
            return;
        }
        int t = t(pVar.l) - pVar.l;
        if (t < 0) {
            min = pVar.k;
        } else {
            min = Math.min(t, pVar.g) + pVar.k;
        }
        a(qVar, min);
    }

    private void w(View view) {
        for (int i = this.r - 1; i >= 0; i--) {
            this.h[i].b(view);
        }
    }

    private void x(View view) {
        for (int i = this.r - 1; i >= 0; i--) {
            this.h[i].a(view);
        }
    }

    private void b(int i, int i2) {
        for (int i3 = 0; i3 < this.r; i3++) {
            if (!this.h[i3].b.isEmpty()) {
                a(this.h[i3], i, i2);
            }
        }
    }

    private void a(e eVar, int i, int i2) {
        int i3 = eVar.i();
        if (i == -1) {
            if (eVar.b() + i3 <= i2) {
                this.F.set(eVar.f, false);
            }
        } else if (eVar.d() - i3 >= i2) {
            this.F.set(eVar.f, false);
        }
    }

    private int q(int i) {
        int a2 = this.h[0].a(i);
        for (int i2 = 1; i2 < this.r; i2++) {
            int a3 = this.h[i2].a(i);
            if (a3 > a2) {
                a2 = a3;
            }
        }
        return a2;
    }

    private int r(int i) {
        int a2 = this.h[0].a(i);
        for (int i2 = 1; i2 < this.r; i2++) {
            int a3 = this.h[i2].a(i);
            if (a3 < a2) {
                a2 = a3;
            }
        }
        return a2;
    }

    boolean o() {
        int b2 = this.h[0].b(Integer.MIN_VALUE);
        for (int i = 1; i < this.r; i++) {
            if (this.h[i].b(Integer.MIN_VALUE) != b2) {
                return false;
            }
        }
        return true;
    }

    boolean p() {
        int a2 = this.h[0].a(Integer.MIN_VALUE);
        for (int i = 1; i < this.r; i++) {
            if (this.h[i].a(Integer.MIN_VALUE) != a2) {
                return false;
            }
        }
        return true;
    }

    private int s(int i) {
        int b2 = this.h[0].b(i);
        for (int i2 = 1; i2 < this.r; i2++) {
            int b3 = this.h[i2].b(i);
            if (b3 > b2) {
                b2 = b3;
            }
        }
        return b2;
    }

    private int t(int i) {
        int b2 = this.h[0].b(i);
        for (int i2 = 1; i2 < this.r; i2++) {
            int b3 = this.h[i2].b(i);
            if (b3 < b2) {
                b2 = b3;
            }
        }
        return b2;
    }

    private void a(RecyclerView.q qVar, int i) {
        while (H() > 0) {
            View j = j(0);
            if (this.i.b(j) > i || this.i.c(j) > i) {
                return;
            }
            b bVar = (b) j.getLayoutParams();
            if (bVar.c) {
                for (int i2 = 0; i2 < this.r; i2++) {
                    if (this.h[i2].b.size() == 1) {
                        return;
                    }
                }
                for (int i3 = 0; i3 < this.r; i3++) {
                    this.h[i3].h();
                }
            } else if (bVar.b.b.size() == 1) {
                return;
            } else {
                bVar.b.h();
            }
            b(j, qVar);
        }
    }

    private void b(RecyclerView.q qVar, int i) {
        for (int H = H() - 1; H >= 0; H--) {
            View j = j(H);
            if (this.i.a(j) < i || this.i.d(j) < i) {
                return;
            }
            b bVar = (b) j.getLayoutParams();
            if (bVar.c) {
                for (int i2 = 0; i2 < this.r; i2++) {
                    if (this.h[i2].b.size() == 1) {
                        return;
                    }
                }
                for (int i3 = 0; i3 < this.r; i3++) {
                    this.h[i3].g();
                }
            } else if (bVar.b.b.size() == 1) {
                return;
            } else {
                bVar.b.g();
            }
            b(j, qVar);
        }
    }

    private boolean u(int i) {
        if (this.s == 0) {
            return (i == -1) != this.l;
        }
        return ((i == -1) == this.l) == l();
    }

    private e a(p pVar) {
        int i;
        int i2;
        int i3 = -1;
        if (u(pVar.j)) {
            i = this.r - 1;
            i2 = -1;
        } else {
            i = 0;
            i3 = this.r;
            i2 = 1;
        }
        e eVar = null;
        if (pVar.j == 1) {
            int i4 = ActivityChooserView.a.f166a;
            int d2 = this.i.d();
            while (i != i3) {
                e eVar2 = this.h[i];
                int b2 = eVar2.b(d2);
                if (b2 < i4) {
                    eVar = eVar2;
                    i4 = b2;
                }
                i += i2;
            }
            return eVar;
        }
        int i5 = Integer.MIN_VALUE;
        int e2 = this.i.e();
        while (i != i3) {
            e eVar3 = this.h[i];
            int a2 = eVar3.a(e2);
            if (a2 > i5) {
                eVar = eVar3;
                i5 = a2;
            }
            i += i2;
        }
        return eVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public boolean j() {
        return this.s == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public boolean i() {
        return this.s == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public int a(int i, RecyclerView.q qVar, RecyclerView.w wVar) {
        return c(i, qVar, wVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public int b(int i, RecyclerView.q qVar, RecyclerView.w wVar) {
        return c(i, qVar, wVar);
    }

    private int v(int i) {
        if (H() == 0) {
            return this.l ? 1 : -1;
        }
        return (i < r()) != this.l ? -1 : 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.v.b
    public PointF d(int i) {
        int v = v(i);
        PointF pointF = new PointF();
        if (v == 0) {
            return null;
        }
        if (this.s == 0) {
            pointF.x = v;
            pointF.y = 0.0f;
        } else {
            pointF.x = 0.0f;
            pointF.y = v;
        }
        return pointF;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(RecyclerView recyclerView, RecyclerView.w wVar, int i) {
        q qVar = new q(recyclerView.getContext());
        qVar.c(i);
        a(qVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void e(int i) {
        if (this.J != null && this.J.f1023a != i) {
            this.J.b();
        }
        this.m = i;
        this.n = Integer.MIN_VALUE;
        z();
    }

    public void a(int i, int i2) {
        if (this.J != null) {
            this.J.b();
        }
        this.m = i;
        this.n = i2;
        z();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    @ap(a = {ap.a.LIBRARY})
    public void a(int i, int i2, RecyclerView.w wVar, RecyclerView.i.a aVar) {
        int b2;
        if (this.s != 0) {
            i = i2;
        }
        if (H() == 0 || i == 0) {
            return;
        }
        a(i, wVar);
        if (this.P == null || this.P.length < this.r) {
            this.P = new int[this.r];
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.r; i4++) {
            if (this.E.i == -1) {
                b2 = this.E.k - this.h[i4].a(this.E.k);
            } else {
                b2 = this.h[i4].b(this.E.l) - this.E.l;
            }
            if (b2 >= 0) {
                this.P[i3] = b2;
                i3++;
            }
        }
        Arrays.sort(this.P, 0, i3);
        for (int i5 = 0; i5 < i3 && this.E.a(wVar); i5++) {
            aVar.b(this.E.h, this.P[i5]);
            this.E.h += this.E.i;
        }
    }

    void a(int i, RecyclerView.w wVar) {
        int i2;
        int r;
        if (i > 0) {
            r = q();
            i2 = 1;
        } else {
            i2 = -1;
            r = r();
        }
        this.E.f = true;
        b(r, wVar);
        n(i2);
        this.E.h = r + this.E.i;
        this.E.g = Math.abs(i);
    }

    int c(int i, RecyclerView.q qVar, RecyclerView.w wVar) {
        if (H() == 0 || i == 0) {
            return 0;
        }
        a(i, wVar);
        int a2 = a(qVar, this.E, wVar);
        if (this.E.g >= a2) {
            i = i < 0 ? -a2 : a2;
        }
        this.i.a(-i);
        this.H = this.l;
        this.E.g = 0;
        a(qVar, this.E);
        return i;
    }

    int q() {
        int H = H();
        if (H == 0) {
            return 0;
        }
        return e(j(H - 1));
    }

    int r() {
        if (H() == 0) {
            return 0;
        }
        return e(j(0));
    }

    private int w(int i) {
        int H = H();
        for (int i2 = 0; i2 < H; i2++) {
            int e2 = e(j(i2));
            if (e2 >= 0 && e2 < i) {
                return e2;
            }
        }
        return 0;
    }

    private int x(int i) {
        for (int H = H() - 1; H >= 0; H--) {
            int e2 = e(j(H));
            if (e2 >= 0 && e2 < i) {
                return e2;
            }
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public RecyclerView.j a() {
        if (this.s == 0) {
            return new b(-2, -1);
        }
        return new b(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public RecyclerView.j a(Context context, AttributeSet attributeSet) {
        return new b(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public RecyclerView.j a(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new b((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new b(layoutParams);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public boolean a(RecyclerView.j jVar) {
        return jVar instanceof b;
    }

    public int s() {
        return this.s;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    @ai
    public View a(View view, int i, RecyclerView.q qVar, RecyclerView.w wVar) {
        View g2;
        int r;
        int n;
        int n2;
        int n3;
        View a2;
        if (H() == 0 || (g2 = g(view)) == null) {
            return null;
        }
        v();
        int y = y(i);
        if (y == Integer.MIN_VALUE) {
            return null;
        }
        b bVar = (b) g2.getLayoutParams();
        boolean z = bVar.c;
        e eVar = bVar.b;
        if (y == 1) {
            r = q();
        } else {
            r = r();
        }
        b(r, wVar);
        n(y);
        this.E.h = this.E.i + r;
        this.E.g = (int) (this.i.g() * q);
        this.E.m = true;
        this.E.f = false;
        a(qVar, this.E, wVar);
        this.H = this.l;
        if (!z && (a2 = eVar.a(r, y)) != null && a2 != g2) {
            return a2;
        }
        if (u(y)) {
            for (int i2 = this.r - 1; i2 >= 0; i2--) {
                View a3 = this.h[i2].a(r, y);
                if (a3 != null && a3 != g2) {
                    return a3;
                }
            }
        } else {
            for (int i3 = 0; i3 < this.r; i3++) {
                View a4 = this.h[i3].a(r, y);
                if (a4 != null && a4 != g2) {
                    return a4;
                }
            }
        }
        boolean z2 = (this.k ^ true) == (y == -1);
        if (!z) {
            if (z2) {
                n3 = eVar.k();
            } else {
                n3 = eVar.n();
            }
            View c2 = c(n3);
            if (c2 != null && c2 != g2) {
                return c2;
            }
        }
        if (u(y)) {
            for (int i4 = this.r - 1; i4 >= 0; i4--) {
                if (i4 != eVar.f) {
                    if (z2) {
                        n2 = this.h[i4].k();
                    } else {
                        n2 = this.h[i4].n();
                    }
                    View c3 = c(n2);
                    if (c3 != null && c3 != g2) {
                        return c3;
                    }
                }
            }
        } else {
            for (int i5 = 0; i5 < this.r; i5++) {
                if (z2) {
                    n = this.h[i5].k();
                } else {
                    n = this.h[i5].n();
                }
                View c4 = c(n);
                if (c4 != null && c4 != g2) {
                    return c4;
                }
            }
        }
        return null;
    }

    private int y(int i) {
        if (i == 17) {
            return this.s == 0 ? -1 : Integer.MIN_VALUE;
        }
        if (i == 33) {
            return this.s == 1 ? -1 : Integer.MIN_VALUE;
        }
        if (i == 66) {
            return this.s == 0 ? 1 : Integer.MIN_VALUE;
        }
        if (i == 130) {
            return this.s == 1 ? 1 : Integer.MIN_VALUE;
        }
        switch (i) {
            case 1:
                return (this.s != 1 && l()) ? 1 : -1;
            case 2:
                return (this.s != 1 && l()) ? -1 : 1;
            default:
                return Integer.MIN_VALUE;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class b extends RecyclerView.j {

        /* renamed from: a, reason: collision with root package name */
        public static final int f1020a = -1;
        e b;
        boolean c;

        public b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public b(int i, int i2) {
            super(i, i2);
        }

        public b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public b(RecyclerView.j jVar) {
            super(jVar);
        }

        public void a(boolean z) {
            this.c = z;
        }

        public boolean a() {
            return this.c;
        }

        public final int b() {
            if (this.b == null) {
                return -1;
            }
            return this.b.f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class e {

        /* renamed from: a, reason: collision with root package name */
        static final int f1024a = Integer.MIN_VALUE;
        ArrayList<View> b = new ArrayList<>();
        int c = Integer.MIN_VALUE;
        int d = Integer.MIN_VALUE;
        int e = 0;
        final int f;

        e(int i) {
            this.f = i;
        }

        int a(int i) {
            if (this.c != Integer.MIN_VALUE) {
                return this.c;
            }
            if (this.b.size() == 0) {
                return i;
            }
            a();
            return this.c;
        }

        void a() {
            c.a f;
            View view = this.b.get(0);
            b c = c(view);
            this.c = StaggeredGridLayoutManager.this.i.a(view);
            if (c.c && (f = StaggeredGridLayoutManager.this.o.f(c.h())) != null && f.b == -1) {
                this.c -= f.a(this.f);
            }
        }

        int b() {
            if (this.c != Integer.MIN_VALUE) {
                return this.c;
            }
            a();
            return this.c;
        }

        int b(int i) {
            if (this.d != Integer.MIN_VALUE) {
                return this.d;
            }
            if (this.b.size() == 0) {
                return i;
            }
            c();
            return this.d;
        }

        void c() {
            c.a f;
            View view = this.b.get(this.b.size() - 1);
            b c = c(view);
            this.d = StaggeredGridLayoutManager.this.i.b(view);
            if (c.c && (f = StaggeredGridLayoutManager.this.o.f(c.h())) != null && f.b == 1) {
                this.d += f.a(this.f);
            }
        }

        int d() {
            if (this.d != Integer.MIN_VALUE) {
                return this.d;
            }
            c();
            return this.d;
        }

        void a(View view) {
            b c = c(view);
            c.b = this;
            this.b.add(0, view);
            this.c = Integer.MIN_VALUE;
            if (this.b.size() == 1) {
                this.d = Integer.MIN_VALUE;
            }
            if (c.e() || c.f()) {
                this.e += StaggeredGridLayoutManager.this.i.e(view);
            }
        }

        void b(View view) {
            b c = c(view);
            c.b = this;
            this.b.add(view);
            this.d = Integer.MIN_VALUE;
            if (this.b.size() == 1) {
                this.c = Integer.MIN_VALUE;
            }
            if (c.e() || c.f()) {
                this.e += StaggeredGridLayoutManager.this.i.e(view);
            }
        }

        void a(boolean z, int i) {
            int a2;
            if (z) {
                a2 = b(Integer.MIN_VALUE);
            } else {
                a2 = a(Integer.MIN_VALUE);
            }
            e();
            if (a2 == Integer.MIN_VALUE) {
                return;
            }
            if (!z || a2 >= StaggeredGridLayoutManager.this.i.e()) {
                if (z || a2 <= StaggeredGridLayoutManager.this.i.d()) {
                    if (i != Integer.MIN_VALUE) {
                        a2 += i;
                    }
                    this.d = a2;
                    this.c = a2;
                }
            }
        }

        void e() {
            this.b.clear();
            f();
            this.e = 0;
        }

        void f() {
            this.c = Integer.MIN_VALUE;
            this.d = Integer.MIN_VALUE;
        }

        void c(int i) {
            this.c = i;
            this.d = i;
        }

        void g() {
            int size = this.b.size();
            View remove = this.b.remove(size - 1);
            b c = c(remove);
            c.b = null;
            if (c.e() || c.f()) {
                this.e -= StaggeredGridLayoutManager.this.i.e(remove);
            }
            if (size == 1) {
                this.c = Integer.MIN_VALUE;
            }
            this.d = Integer.MIN_VALUE;
        }

        void h() {
            View remove = this.b.remove(0);
            b c = c(remove);
            c.b = null;
            if (this.b.size() == 0) {
                this.d = Integer.MIN_VALUE;
            }
            if (c.e() || c.f()) {
                this.e -= StaggeredGridLayoutManager.this.i.e(remove);
            }
            this.c = Integer.MIN_VALUE;
        }

        public int i() {
            return this.e;
        }

        b c(View view) {
            return (b) view.getLayoutParams();
        }

        void d(int i) {
            if (this.c != Integer.MIN_VALUE) {
                this.c += i;
            }
            if (this.d != Integer.MIN_VALUE) {
                this.d += i;
            }
        }

        public int j() {
            if (StaggeredGridLayoutManager.this.k) {
                return a(this.b.size() - 1, -1, false);
            }
            return a(0, this.b.size(), false);
        }

        public int k() {
            if (StaggeredGridLayoutManager.this.k) {
                return b(this.b.size() - 1, -1, true);
            }
            return b(0, this.b.size(), true);
        }

        public int l() {
            if (StaggeredGridLayoutManager.this.k) {
                return a(this.b.size() - 1, -1, true);
            }
            return a(0, this.b.size(), true);
        }

        public int m() {
            if (StaggeredGridLayoutManager.this.k) {
                return a(0, this.b.size(), false);
            }
            return a(this.b.size() - 1, -1, false);
        }

        public int n() {
            if (StaggeredGridLayoutManager.this.k) {
                return b(0, this.b.size(), true);
            }
            return b(this.b.size() - 1, -1, true);
        }

        public int o() {
            if (StaggeredGridLayoutManager.this.k) {
                return a(0, this.b.size(), true);
            }
            return a(this.b.size() - 1, -1, true);
        }

        int a(int i, int i2, boolean z, boolean z2, boolean z3) {
            int d = StaggeredGridLayoutManager.this.i.d();
            int e = StaggeredGridLayoutManager.this.i.e();
            int i3 = i2 > i ? 1 : -1;
            while (i != i2) {
                View view = this.b.get(i);
                int a2 = StaggeredGridLayoutManager.this.i.a(view);
                int b = StaggeredGridLayoutManager.this.i.b(view);
                boolean z4 = false;
                boolean z5 = !z3 ? a2 >= e : a2 > e;
                if (!z3 ? b > d : b >= d) {
                    z4 = true;
                }
                if (z5 && z4) {
                    if (z && z2) {
                        if (a2 >= d && b <= e) {
                            return StaggeredGridLayoutManager.this.e(view);
                        }
                    } else {
                        if (z2) {
                            return StaggeredGridLayoutManager.this.e(view);
                        }
                        if (a2 < d || b > e) {
                            return StaggeredGridLayoutManager.this.e(view);
                        }
                    }
                }
                i += i3;
            }
            return -1;
        }

        int a(int i, int i2, boolean z) {
            return a(i, i2, z, true, false);
        }

        int b(int i, int i2, boolean z) {
            return a(i, i2, false, false, z);
        }

        public View a(int i, int i2) {
            View view = null;
            if (i2 == -1) {
                int size = this.b.size();
                int i3 = 0;
                while (i3 < size) {
                    View view2 = this.b.get(i3);
                    if ((StaggeredGridLayoutManager.this.k && StaggeredGridLayoutManager.this.e(view2) <= i) || ((!StaggeredGridLayoutManager.this.k && StaggeredGridLayoutManager.this.e(view2) >= i) || !view2.hasFocusable())) {
                        break;
                    }
                    i3++;
                    view = view2;
                }
            } else {
                int size2 = this.b.size() - 1;
                while (size2 >= 0) {
                    View view3 = this.b.get(size2);
                    if ((StaggeredGridLayoutManager.this.k && StaggeredGridLayoutManager.this.e(view3) >= i) || ((!StaggeredGridLayoutManager.this.k && StaggeredGridLayoutManager.this.e(view3) <= i) || !view3.hasFocusable())) {
                        break;
                    }
                    size2--;
                    view = view3;
                }
            }
            return view;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class c {
        private static final int c = 10;

        /* renamed from: a, reason: collision with root package name */
        int[] f1021a;
        List<a> b;

        c() {
        }

        int a(int i) {
            if (this.b != null) {
                for (int size = this.b.size() - 1; size >= 0; size--) {
                    if (this.b.get(size).f1022a >= i) {
                        this.b.remove(size);
                    }
                }
            }
            return b(i);
        }

        int b(int i) {
            if (this.f1021a == null || i >= this.f1021a.length) {
                return -1;
            }
            int g = g(i);
            if (g == -1) {
                Arrays.fill(this.f1021a, i, this.f1021a.length, -1);
                return this.f1021a.length;
            }
            int i2 = g + 1;
            Arrays.fill(this.f1021a, i, i2, -1);
            return i2;
        }

        int c(int i) {
            if (this.f1021a == null || i >= this.f1021a.length) {
                return -1;
            }
            return this.f1021a[i];
        }

        void a(int i, e eVar) {
            e(i);
            this.f1021a[i] = eVar.f;
        }

        int d(int i) {
            int length = this.f1021a.length;
            while (length <= i) {
                length *= 2;
            }
            return length;
        }

        void e(int i) {
            if (this.f1021a == null) {
                this.f1021a = new int[Math.max(i, 10) + 1];
                Arrays.fill(this.f1021a, -1);
            } else if (i >= this.f1021a.length) {
                int[] iArr = this.f1021a;
                this.f1021a = new int[d(i)];
                System.arraycopy(iArr, 0, this.f1021a, 0, iArr.length);
                Arrays.fill(this.f1021a, iArr.length, this.f1021a.length, -1);
            }
        }

        void a() {
            if (this.f1021a != null) {
                Arrays.fill(this.f1021a, -1);
            }
            this.b = null;
        }

        void a(int i, int i2) {
            if (this.f1021a == null || i >= this.f1021a.length) {
                return;
            }
            int i3 = i + i2;
            e(i3);
            System.arraycopy(this.f1021a, i3, this.f1021a, i, (this.f1021a.length - i) - i2);
            Arrays.fill(this.f1021a, this.f1021a.length - i2, this.f1021a.length, -1);
            c(i, i2);
        }

        private void c(int i, int i2) {
            if (this.b == null) {
                return;
            }
            int i3 = i + i2;
            for (int size = this.b.size() - 1; size >= 0; size--) {
                a aVar = this.b.get(size);
                if (aVar.f1022a >= i) {
                    if (aVar.f1022a < i3) {
                        this.b.remove(size);
                    } else {
                        aVar.f1022a -= i2;
                    }
                }
            }
        }

        void b(int i, int i2) {
            if (this.f1021a == null || i >= this.f1021a.length) {
                return;
            }
            int i3 = i + i2;
            e(i3);
            System.arraycopy(this.f1021a, i, this.f1021a, i3, (this.f1021a.length - i) - i2);
            Arrays.fill(this.f1021a, i, i3, -1);
            d(i, i2);
        }

        private void d(int i, int i2) {
            if (this.b == null) {
                return;
            }
            for (int size = this.b.size() - 1; size >= 0; size--) {
                a aVar = this.b.get(size);
                if (aVar.f1022a >= i) {
                    aVar.f1022a += i2;
                }
            }
        }

        private int g(int i) {
            if (this.b == null) {
                return -1;
            }
            a f = f(i);
            if (f != null) {
                this.b.remove(f);
            }
            int size = this.b.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    i2 = -1;
                    break;
                }
                if (this.b.get(i2).f1022a >= i) {
                    break;
                }
                i2++;
            }
            if (i2 == -1) {
                return -1;
            }
            a aVar = this.b.get(i2);
            this.b.remove(i2);
            return aVar.f1022a;
        }

        public void a(a aVar) {
            if (this.b == null) {
                this.b = new ArrayList();
            }
            int size = this.b.size();
            for (int i = 0; i < size; i++) {
                a aVar2 = this.b.get(i);
                if (aVar2.f1022a == aVar.f1022a) {
                    this.b.remove(i);
                }
                if (aVar2.f1022a >= aVar.f1022a) {
                    this.b.add(i, aVar);
                    return;
                }
            }
            this.b.add(aVar);
        }

        public a f(int i) {
            if (this.b == null) {
                return null;
            }
            for (int size = this.b.size() - 1; size >= 0; size--) {
                a aVar = this.b.get(size);
                if (aVar.f1022a == i) {
                    return aVar;
                }
            }
            return null;
        }

        public a a(int i, int i2, int i3, boolean z) {
            if (this.b == null) {
                return null;
            }
            int size = this.b.size();
            for (int i4 = 0; i4 < size; i4++) {
                a aVar = this.b.get(i4);
                if (aVar.f1022a >= i2) {
                    return null;
                }
                if (aVar.f1022a >= i && (i3 == 0 || aVar.b == i3 || (z && aVar.d))) {
                    return aVar;
                }
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @SuppressLint({"BanParcelableUsage"})
        /* loaded from: /home/user/work/dex/classes.dex */
        public static class a implements Parcelable {
            public static final Parcelable.Creator<a> CREATOR = new Parcelable.Creator<a>() { // from class: androidx.recyclerview.widget.StaggeredGridLayoutManager.c.a.1
                @Override // android.os.Parcelable.Creator
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public a createFromParcel(Parcel parcel) {
                    return new a(parcel);
                }

                @Override // android.os.Parcelable.Creator
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public a[] newArray(int i) {
                    return new a[i];
                }
            };

            /* renamed from: a, reason: collision with root package name */
            int f1022a;
            int b;
            int[] c;
            boolean d;

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            a(Parcel parcel) {
                this.f1022a = parcel.readInt();
                this.b = parcel.readInt();
                this.d = parcel.readInt() == 1;
                int readInt = parcel.readInt();
                if (readInt > 0) {
                    this.c = new int[readInt];
                    parcel.readIntArray(this.c);
                }
            }

            a() {
            }

            int a(int i) {
                if (this.c == null) {
                    return 0;
                }
                return this.c[i];
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.f1022a);
                parcel.writeInt(this.b);
                parcel.writeInt(this.d ? 1 : 0);
                if (this.c != null && this.c.length > 0) {
                    parcel.writeInt(this.c.length);
                    parcel.writeIntArray(this.c);
                } else {
                    parcel.writeInt(0);
                }
            }

            public String toString() {
                return "FullSpanItem{mPosition=" + this.f1022a + ", mGapDir=" + this.b + ", mHasUnwantedGapAfter=" + this.d + ", mGapPerSpan=" + Arrays.toString(this.c) + '}';
            }
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    @ap(a = {ap.a.LIBRARY})
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class d implements Parcelable {
        public static final Parcelable.Creator<d> CREATOR = new Parcelable.Creator<d>() { // from class: androidx.recyclerview.widget.StaggeredGridLayoutManager.d.1
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
        int f1023a;
        int b;
        int c;
        int[] d;
        int e;
        int[] f;
        List<c.a> g;
        boolean h;
        boolean i;
        boolean j;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public d() {
        }

        d(Parcel parcel) {
            this.f1023a = parcel.readInt();
            this.b = parcel.readInt();
            this.c = parcel.readInt();
            if (this.c > 0) {
                this.d = new int[this.c];
                parcel.readIntArray(this.d);
            }
            this.e = parcel.readInt();
            if (this.e > 0) {
                this.f = new int[this.e];
                parcel.readIntArray(this.f);
            }
            this.h = parcel.readInt() == 1;
            this.i = parcel.readInt() == 1;
            this.j = parcel.readInt() == 1;
            this.g = parcel.readArrayList(c.a.class.getClassLoader());
        }

        public d(d dVar) {
            this.c = dVar.c;
            this.f1023a = dVar.f1023a;
            this.b = dVar.b;
            this.d = dVar.d;
            this.e = dVar.e;
            this.f = dVar.f;
            this.h = dVar.h;
            this.i = dVar.i;
            this.j = dVar.j;
            this.g = dVar.g;
        }

        void a() {
            this.d = null;
            this.c = 0;
            this.e = 0;
            this.f = null;
            this.g = null;
        }

        void b() {
            this.d = null;
            this.c = 0;
            this.f1023a = -1;
            this.b = -1;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f1023a);
            parcel.writeInt(this.b);
            parcel.writeInt(this.c);
            if (this.c > 0) {
                parcel.writeIntArray(this.d);
            }
            parcel.writeInt(this.e);
            if (this.e > 0) {
                parcel.writeIntArray(this.f);
            }
            parcel.writeInt(this.h ? 1 : 0);
            parcel.writeInt(this.i ? 1 : 0);
            parcel.writeInt(this.j ? 1 : 0);
            parcel.writeList(this.g);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class a {

        /* renamed from: a, reason: collision with root package name */
        int f1019a;
        int b;
        boolean c;
        boolean d;
        boolean e;
        int[] f;

        a() {
            a();
        }

        void a() {
            this.f1019a = -1;
            this.b = Integer.MIN_VALUE;
            this.c = false;
            this.d = false;
            this.e = false;
            if (this.f != null) {
                Arrays.fill(this.f, -1);
            }
        }

        void a(e[] eVarArr) {
            int length = eVarArr.length;
            if (this.f == null || this.f.length < length) {
                this.f = new int[StaggeredGridLayoutManager.this.h.length];
            }
            for (int i = 0; i < length; i++) {
                this.f[i] = eVarArr[i].a(Integer.MIN_VALUE);
            }
        }

        void b() {
            this.b = this.c ? StaggeredGridLayoutManager.this.i.e() : StaggeredGridLayoutManager.this.i.d();
        }

        void a(int i) {
            if (this.c) {
                this.b = StaggeredGridLayoutManager.this.i.e() - i;
            } else {
                this.b = StaggeredGridLayoutManager.this.i.d() + i;
            }
        }
    }
}
