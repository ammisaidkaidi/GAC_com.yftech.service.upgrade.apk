package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.n.a.d;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;

/* loaded from: /home/user/work/dex/classes.dex */
public class GridLayoutManager extends LinearLayoutManager {
    private static final boolean E = false;
    private static final String F = "GridLayoutManager";

    /* renamed from: a, reason: collision with root package name */
    public static final int f984a = -1;
    private boolean G;
    boolean b;
    int c;
    int[] d;
    View[] e;
    final SparseIntArray f;
    final SparseIntArray g;
    c h;
    final Rect i;

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.b = false;
        this.c = -1;
        this.f = new SparseIntArray();
        this.g = new SparseIntArray();
        this.h = new a();
        this.i = new Rect();
        a(a(context, attributeSet, i, i2).b);
    }

    public GridLayoutManager(Context context, int i) {
        super(context);
        this.b = false;
        this.c = -1;
        this.f = new SparseIntArray();
        this.g = new SparseIntArray();
        this.h = new a();
        this.i = new Rect();
        a(i);
    }

    public GridLayoutManager(Context context, int i, int i2, boolean z) {
        super(context, i2, z);
        this.b = false;
        this.c = -1;
        this.f = new SparseIntArray();
        this.g = new SparseIntArray();
        this.h = new a();
        this.i = new Rect();
        a(i);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void a(boolean z) {
        if (z) {
            throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
        }
        super.a(false);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public int a(RecyclerView.q qVar, RecyclerView.w wVar) {
        if (this.n == 0) {
            return this.c;
        }
        if (wVar.h() < 1) {
            return 0;
        }
        return a(qVar, wVar, wVar.h() - 1) + 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public int b(RecyclerView.q qVar, RecyclerView.w wVar) {
        if (this.n == 1) {
            return this.c;
        }
        if (wVar.h() < 1) {
            return 0;
        }
        return a(qVar, wVar, wVar.h() - 1) + 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(RecyclerView.q qVar, RecyclerView.w wVar, View view, androidx.core.n.a.d dVar) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof b)) {
            super.a(view, dVar);
            return;
        }
        b bVar = (b) layoutParams;
        int a2 = a(qVar, wVar, bVar.h());
        if (this.n == 0) {
            dVar.c(d.c.a(bVar.a(), bVar.b(), a2, 1, false, false));
        } else {
            dVar.c(d.c.a(a2, 1, bVar.a(), bVar.b(), false, false));
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.i
    public void c(RecyclerView.q qVar, RecyclerView.w wVar) {
        if (wVar.b()) {
            ad();
        }
        super.c(qVar, wVar);
        ac();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.i
    public void a(RecyclerView.w wVar) {
        super.a(wVar);
        this.b = false;
    }

    private void ac() {
        this.f.clear();
        this.g.clear();
    }

    private void ad() {
        int H = H();
        for (int i = 0; i < H; i++) {
            b bVar = (b) j(i).getLayoutParams();
            int h = bVar.h();
            this.f.put(h, bVar.b());
            this.g.put(h, bVar.a());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(RecyclerView recyclerView, int i, int i2) {
        this.h.a();
        this.h.b();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(RecyclerView recyclerView) {
        this.h.a();
        this.h.b();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void b(RecyclerView recyclerView, int i, int i2) {
        this.h.a();
        this.h.b();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(RecyclerView recyclerView, int i, int i2, Object obj) {
        this.h.a();
        this.h.b();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(RecyclerView recyclerView, int i, int i2, int i3) {
        this.h.a();
        this.h.b();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.i
    public RecyclerView.j a() {
        if (this.n == 0) {
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

    public void a(c cVar) {
        this.h = cVar;
    }

    public c b() {
        return this.h;
    }

    private void ae() {
        int L;
        if (l() == 1) {
            L = (K() - O()) - M();
        } else {
            L = (L() - P()) - N();
        }
        n(L);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(Rect rect, int i, int i2) {
        int a2;
        int a3;
        if (this.d == null) {
            super.a(rect, i, i2);
        }
        int M = M() + O();
        int N = N() + P();
        if (this.n == 1) {
            a3 = a(i2, rect.height() + N, Y());
            a2 = a(i, this.d[this.d.length - 1] + M, X());
        } else {
            a2 = a(i, rect.width() + M, X());
            a3 = a(i2, this.d[this.d.length - 1] + N, Y());
        }
        g(a2, a3);
    }

    private void n(int i) {
        this.d = a(this.d, this.c, i);
    }

    static int[] a(int[] iArr, int i, int i2) {
        int i3;
        if (iArr == null || iArr.length != i + 1 || iArr[iArr.length - 1] != i2) {
            iArr = new int[i + 1];
        }
        int i4 = 0;
        iArr[0] = 0;
        int i5 = i2 / i;
        int i6 = i2 % i;
        int i7 = 0;
        for (int i8 = 1; i8 <= i; i8++) {
            i4 += i6;
            if (i4 <= 0 || i - i4 >= i6) {
                i3 = i5;
            } else {
                i3 = i5 + 1;
                i4 -= i;
            }
            i7 += i3;
            iArr[i8] = i7;
        }
        return iArr;
    }

    int a(int i, int i2) {
        if (this.n == 1 && n()) {
            return this.d[this.c - i] - this.d[(this.c - i) - i2];
        }
        return this.d[i2 + i] - this.d[i];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void a(RecyclerView.q qVar, RecyclerView.w wVar, LinearLayoutManager.a aVar, int i) {
        super.a(qVar, wVar, aVar, i);
        ae();
        if (wVar.h() > 0 && !wVar.b()) {
            b(qVar, wVar, aVar, i);
        }
        af();
    }

    private void af() {
        if (this.e == null || this.e.length != this.c) {
            this.e = new View[this.c];
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.i
    public int a(int i, RecyclerView.q qVar, RecyclerView.w wVar) {
        ae();
        af();
        return super.a(i, qVar, wVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.i
    public int b(int i, RecyclerView.q qVar, RecyclerView.w wVar) {
        ae();
        af();
        return super.b(i, qVar, wVar);
    }

    private void b(RecyclerView.q qVar, RecyclerView.w wVar, LinearLayoutManager.a aVar, int i) {
        boolean z = i == 1;
        int b2 = b(qVar, wVar, aVar.b);
        if (z) {
            while (b2 > 0 && aVar.b > 0) {
                aVar.b--;
                b2 = b(qVar, wVar, aVar.b);
            }
            return;
        }
        int h = wVar.h() - 1;
        int i2 = aVar.b;
        while (i2 < h) {
            int i3 = i2 + 1;
            int b3 = b(qVar, wVar, i3);
            if (b3 <= b2) {
                break;
            }
            i2 = i3;
            b2 = b3;
        }
        aVar.b = i2;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    View a(RecyclerView.q qVar, RecyclerView.w wVar, int i, int i2, int i3) {
        o();
        int d = this.o.d();
        int e = this.o.e();
        int i4 = i2 > i ? 1 : -1;
        View view = null;
        View view2 = null;
        while (i != i2) {
            View j = j(i);
            int e2 = e(j);
            if (e2 >= 0 && e2 < i3 && b(qVar, wVar, e2) == 0) {
                if (((RecyclerView.j) j.getLayoutParams()).e()) {
                    if (view2 == null) {
                        view2 = j;
                    }
                } else {
                    if (this.o.a(j) < e && this.o.b(j) >= d) {
                        return j;
                    }
                    if (view == null) {
                        view = j;
                    }
                }
            }
            i += i4;
        }
        return view != null ? view : view2;
    }

    private int a(RecyclerView.q qVar, RecyclerView.w wVar, int i) {
        if (!wVar.b()) {
            return this.h.c(i, this.c);
        }
        int b2 = qVar.b(i);
        if (b2 == -1) {
            Log.w(F, "Cannot find span size for pre layout position. " + i);
            return 0;
        }
        return this.h.c(b2, this.c);
    }

    private int b(RecyclerView.q qVar, RecyclerView.w wVar, int i) {
        if (!wVar.b()) {
            return this.h.b(i, this.c);
        }
        int i2 = this.g.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        int b2 = qVar.b(i);
        if (b2 == -1) {
            Log.w(F, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
            return 0;
        }
        return this.h.b(b2, this.c);
    }

    private int c(RecyclerView.q qVar, RecyclerView.w wVar, int i) {
        if (!wVar.b()) {
            return this.h.a(i);
        }
        int i2 = this.f.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        int b2 = qVar.b(i);
        if (b2 == -1) {
            Log.w(F, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
            return 1;
        }
        return this.h.a(b2);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    void a(RecyclerView.w wVar, LinearLayoutManager.c cVar, RecyclerView.i.a aVar) {
        int i = this.c;
        for (int i2 = 0; i2 < this.c && cVar.a(wVar) && i > 0; i2++) {
            int i3 = cVar.k;
            aVar.b(i3, Math.max(0, cVar.n));
            i -= this.h.a(i3);
            cVar.k += cVar.l;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00a0, code lost:
    
        r22.b = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00a2, code lost:
    
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v28 */
    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void a(RecyclerView.q qVar, RecyclerView.w wVar, LinearLayoutManager.c cVar, LinearLayoutManager.b bVar) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int f;
        int i7;
        int a2;
        int i8;
        View a3;
        int j = this.o.j();
        ?? r5 = 0;
        boolean z = j != 1073741824;
        int i9 = H() > 0 ? this.d[this.c] : 0;
        if (z) {
            ae();
        }
        boolean z2 = cVar.l == 1;
        int i10 = this.c;
        if (!z2) {
            i10 = b(qVar, wVar, cVar.k) + c(qVar, wVar, cVar.k);
        }
        int i11 = i10;
        int i12 = 0;
        while (i12 < this.c && cVar.a(wVar) && i11 > 0) {
            int i13 = cVar.k;
            int c2 = c(qVar, wVar, i13);
            if (c2 > this.c) {
                throw new IllegalArgumentException("Item at position " + i13 + " requires " + c2 + " spans but GridLayoutManager has only " + this.c + " spans.");
            }
            i11 -= c2;
            if (i11 < 0 || (a3 = cVar.a(qVar)) == null) {
                break;
            }
            this.e[i12] = a3;
            i12++;
        }
        float f2 = 0.0f;
        a(qVar, wVar, i12, z2);
        int i14 = 0;
        int i15 = 0;
        while (i14 < i12) {
            View view = this.e[i14];
            if (cVar.s == null) {
                if (z2) {
                    c(view);
                } else {
                    b(view, (int) r5);
                }
            } else if (z2) {
                b(view);
            } else {
                a(view, (int) r5);
            }
            b(view, this.i);
            a(view, j, (boolean) r5);
            int e = this.o.e(view);
            if (e > i15) {
                i15 = e;
            }
            float f3 = (this.o.f(view) * 1.0f) / ((b) view.getLayoutParams()).c;
            if (f3 > f2) {
                f2 = f3;
            }
            i14++;
            r5 = 0;
        }
        if (z) {
            a(f2, i9);
            i15 = 0;
            for (int i16 = 0; i16 < i12; i16++) {
                View view2 = this.e[i16];
                a(view2, androidx.d.c.b.a.b.b, true);
                int e2 = this.o.e(view2);
                if (e2 > i15) {
                    i15 = e2;
                }
            }
        }
        for (int i17 = 0; i17 < i12; i17++) {
            View view3 = this.e[i17];
            if (this.o.e(view3) != i15) {
                b bVar2 = (b) view3.getLayoutParams();
                Rect rect = bVar2.e;
                int i18 = rect.top + rect.bottom + bVar2.topMargin + bVar2.bottomMargin;
                int i19 = rect.left + rect.right + bVar2.leftMargin + bVar2.rightMargin;
                int a4 = a(bVar2.b, bVar2.c);
                if (this.n == 1) {
                    i8 = a(a4, androidx.d.c.b.a.b.b, i19, bVar2.width, false);
                    a2 = View.MeasureSpec.makeMeasureSpec(i15 - i18, androidx.d.c.b.a.b.b);
                } else {
                    int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i15 - i19, androidx.d.c.b.a.b.b);
                    a2 = a(a4, androidx.d.c.b.a.b.b, i18, bVar2.height, false);
                    i8 = makeMeasureSpec;
                }
                a(view3, i8, a2, true);
            }
        }
        int i20 = 0;
        bVar.f989a = i15;
        if (this.n == 1) {
            if (cVar.m == -1) {
                int i21 = cVar.i;
                i = i21 - i15;
                i2 = i21;
            } else {
                int i22 = cVar.i;
                i2 = i22 + i15;
                i = i22;
            }
            i4 = 0;
            i3 = 0;
        } else if (cVar.m == -1) {
            i3 = cVar.i;
            i4 = i3 - i15;
            i = 0;
            i2 = 0;
        } else {
            int i23 = cVar.i;
            int i24 = i23 + i15;
            i = 0;
            i2 = 0;
            i3 = i24;
            i4 = i23;
        }
        while (i20 < i12) {
            View view4 = this.e[i20];
            b bVar3 = (b) view4.getLayoutParams();
            if (this.n == 1) {
                if (n()) {
                    int M = M() + this.d[this.c - bVar3.b];
                    i7 = M;
                    i6 = i;
                    f = i2;
                    i5 = M - this.o.f(view4);
                } else {
                    int M2 = M() + this.d[bVar3.b];
                    i5 = M2;
                    i6 = i;
                    f = i2;
                    i7 = this.o.f(view4) + M2;
                }
            } else {
                int N = N() + this.d[bVar3.b];
                i5 = i4;
                i6 = N;
                f = this.o.f(view4) + N;
                i7 = i3;
            }
            b(view4, i5, i6, i7, f);
            if (bVar3.e() || bVar3.f()) {
                bVar.c = true;
            }
            bVar.d |= view4.hasFocusable();
            i20++;
            i4 = i5;
            i = i6;
            i3 = i7;
            i2 = f;
        }
        Arrays.fill(this.e, (Object) null);
    }

    private void a(View view, int i, boolean z) {
        int i2;
        int i3;
        b bVar = (b) view.getLayoutParams();
        Rect rect = bVar.e;
        int i4 = rect.top + rect.bottom + bVar.topMargin + bVar.bottomMargin;
        int i5 = rect.left + rect.right + bVar.leftMargin + bVar.rightMargin;
        int a2 = a(bVar.b, bVar.c);
        if (this.n == 1) {
            i3 = a(a2, i, i5, bVar.width, false);
            i2 = a(this.o.g(), J(), i4, bVar.height, true);
        } else {
            int a3 = a(a2, i, i4, bVar.height, false);
            int a4 = a(this.o.g(), I(), i5, bVar.width, true);
            i2 = a3;
            i3 = a4;
        }
        a(view, i3, i2, z);
    }

    private void a(float f, int i) {
        n(Math.max(Math.round(f * this.c), i));
    }

    private void a(View view, int i, int i2, boolean z) {
        boolean b2;
        RecyclerView.j jVar = (RecyclerView.j) view.getLayoutParams();
        if (z) {
            b2 = a(view, i, i2, jVar);
        } else {
            b2 = b(view, i, i2, jVar);
        }
        if (b2) {
            view.measure(i, i2);
        }
    }

    private void a(RecyclerView.q qVar, RecyclerView.w wVar, int i, boolean z) {
        int i2;
        int i3;
        int i4 = -1;
        int i5 = 0;
        if (z) {
            i3 = 1;
            i4 = i;
            i2 = 0;
        } else {
            i2 = i - 1;
            i3 = -1;
        }
        while (i2 != i4) {
            View view = this.e[i2];
            b bVar = (b) view.getLayoutParams();
            bVar.c = c(qVar, wVar, e(view));
            bVar.b = i5;
            i5 += bVar.c;
            i2 += i3;
        }
    }

    public int c() {
        return this.c;
    }

    public void a(int i) {
        if (i == this.c) {
            return;
        }
        this.b = true;
        if (i < 1) {
            throw new IllegalArgumentException("Span count should be at least 1. Provided " + i);
        }
        this.c = i;
        this.h.a();
        z();
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class c {

        /* renamed from: a, reason: collision with root package name */
        final SparseIntArray f986a = new SparseIntArray();
        final SparseIntArray b = new SparseIntArray();
        private boolean c = false;
        private boolean d = false;

        public abstract int a(int i);

        public void a(boolean z) {
            if (!z) {
                this.b.clear();
            }
            this.c = z;
        }

        public void b(boolean z) {
            if (!z) {
                this.b.clear();
            }
            this.d = z;
        }

        public void a() {
            this.f986a.clear();
        }

        public void b() {
            this.b.clear();
        }

        public boolean c() {
            return this.c;
        }

        public boolean d() {
            return this.d;
        }

        int b(int i, int i2) {
            if (!this.c) {
                return a(i, i2);
            }
            int i3 = this.f986a.get(i, -1);
            if (i3 != -1) {
                return i3;
            }
            int a2 = a(i, i2);
            this.f986a.put(i, a2);
            return a2;
        }

        int c(int i, int i2) {
            if (!this.d) {
                return d(i, i2);
            }
            int i3 = this.b.get(i, -1);
            if (i3 != -1) {
                return i3;
            }
            int d = d(i, i2);
            this.b.put(i, d);
            return d;
        }

        public int a(int i, int i2) {
            int i3;
            int i4;
            int a2;
            int a3 = a(i);
            if (a3 == i2) {
                return 0;
            }
            if (!this.c || (a2 = a(this.f986a, i)) < 0) {
                i3 = 0;
                i4 = 0;
            } else {
                i4 = this.f986a.get(a2) + a(a2);
                i3 = a2 + 1;
            }
            while (i3 < i) {
                int a4 = a(i3);
                i4 += a4;
                if (i4 == i2) {
                    i4 = 0;
                } else if (i4 > i2) {
                    i4 = a4;
                }
                i3++;
            }
            if (a3 + i4 <= i2) {
                return i4;
            }
            return 0;
        }

        static int a(SparseIntArray sparseIntArray, int i) {
            int size = sparseIntArray.size() - 1;
            int i2 = 0;
            while (i2 <= size) {
                int i3 = (i2 + size) >>> 1;
                if (sparseIntArray.keyAt(i3) < i) {
                    i2 = i3 + 1;
                } else {
                    size = i3 - 1;
                }
            }
            int i4 = i2 - 1;
            if (i4 < 0 || i4 >= sparseIntArray.size()) {
                return -1;
            }
            return sparseIntArray.keyAt(i4);
        }

        public int d(int i, int i2) {
            int i3;
            int i4;
            int i5;
            int a2;
            if (!this.d || (a2 = a(this.b, i)) == -1) {
                i3 = 0;
                i4 = 0;
                i5 = 0;
            } else {
                i4 = this.b.get(a2);
                i5 = a2 + 1;
                i3 = a(a2) + b(a2, i2);
                if (i3 == i2) {
                    i4++;
                    i3 = 0;
                }
            }
            int a3 = a(i);
            while (i5 < i) {
                int a4 = a(i5);
                i3 += a4;
                if (i3 == i2) {
                    i4++;
                    i3 = 0;
                } else if (i3 > i2) {
                    i4++;
                    i3 = a4;
                }
                i5++;
            }
            return i3 + a3 > i2 ? i4 + 1 : i4;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:68:0x00d8, code lost:
    
        if (r13 == (r2 > r8)) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x00f5, code lost:
    
        if (r13 == (r2 > r11)) goto L50;
     */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0104  */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.i
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public View a(View view, int i, RecyclerView.q qVar, RecyclerView.w wVar) {
        int H;
        int i2;
        int i3;
        View view2;
        int i4;
        int i5;
        View view3;
        int i6;
        int i7;
        boolean z;
        RecyclerView.q qVar2 = qVar;
        RecyclerView.w wVar2 = wVar;
        View g = g(view);
        View view4 = null;
        if (g == null) {
            return null;
        }
        b bVar = (b) g.getLayoutParams();
        int i8 = bVar.b;
        int i9 = bVar.b + bVar.c;
        if (super.a(view, i, qVar, wVar) == null) {
            return null;
        }
        if ((g(i) == 1) != this.p) {
            i3 = H() - 1;
            H = -1;
            i2 = -1;
        } else {
            H = H();
            i2 = 1;
            i3 = 0;
        }
        boolean z2 = this.n == 1 && n();
        int a2 = a(qVar2, wVar2, i3);
        int i10 = -1;
        int i11 = -1;
        int i12 = 0;
        int i13 = 0;
        View view5 = null;
        while (i3 != H) {
            int a3 = a(qVar2, wVar2, i3);
            View j = j(i3);
            if (j == g) {
                break;
            }
            if (!j.hasFocusable() || a3 == a2) {
                b bVar2 = (b) j.getLayoutParams();
                int i14 = bVar2.b;
                view2 = g;
                i4 = H;
                int i15 = bVar2.b + bVar2.c;
                if (j.hasFocusable() && i14 == i8 && i15 == i9) {
                    return j;
                }
                if ((!j.hasFocusable() || view4 != null) && (j.hasFocusable() || view5 != null)) {
                    int min = Math.min(i15, i9) - Math.max(i14, i8);
                    if (j.hasFocusable()) {
                        if (min <= i12) {
                            if (min == i12) {
                            }
                        }
                    } else if (view4 == null) {
                        i5 = i10;
                        view3 = view5;
                        if (a(j, false, true)) {
                            i6 = i13;
                            if (min <= i6) {
                                if (min == i6) {
                                    i7 = i11;
                                }
                                i7 = i11;
                                z = false;
                                if (z) {
                                    if (j.hasFocusable()) {
                                        int i16 = bVar2.b;
                                        i12 = Math.min(i15, i9) - Math.max(i14, i8);
                                        i13 = i6;
                                        i11 = i7;
                                        view5 = view3;
                                        i10 = i16;
                                        view4 = j;
                                    } else {
                                        int i17 = bVar2.b;
                                        view5 = j;
                                        i13 = Math.min(i15, i9) - Math.max(i14, i8);
                                        i11 = i17;
                                        i10 = i5;
                                    }
                                    i3 += i2;
                                    g = view2;
                                    H = i4;
                                    qVar2 = qVar;
                                    wVar2 = wVar;
                                }
                            }
                            i7 = i11;
                            z = true;
                            if (z) {
                            }
                        }
                        i6 = i13;
                        i7 = i11;
                        z = false;
                        if (z) {
                        }
                    }
                    i5 = i10;
                    view3 = view5;
                    i6 = i13;
                    i7 = i11;
                    z = false;
                    if (z) {
                    }
                }
                i5 = i10;
                view3 = view5;
                i6 = i13;
                i7 = i11;
                z = true;
                if (z) {
                }
            } else {
                if (view4 != null) {
                    break;
                }
                view2 = g;
                i5 = i10;
                view3 = view5;
                i4 = H;
                i6 = i13;
                i7 = i11;
            }
            i13 = i6;
            i11 = i7;
            i10 = i5;
            view5 = view3;
            i3 += i2;
            g = view2;
            H = i4;
            qVar2 = qVar;
            wVar2 = wVar;
        }
        return view4 != null ? view4 : view5;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.i
    public boolean d() {
        return this.s == null && !this.b;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.i
    public int b(RecyclerView.w wVar) {
        if (this.G) {
            return i(wVar);
        }
        return super.b(wVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.i
    public int c(RecyclerView.w wVar) {
        if (this.G) {
            return i(wVar);
        }
        return super.c(wVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.i
    public int d(RecyclerView.w wVar) {
        if (this.G) {
            return j(wVar);
        }
        return super.d(wVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.i
    public int e(RecyclerView.w wVar) {
        if (this.G) {
            return j(wVar);
        }
        return super.e(wVar);
    }

    public void b(boolean z) {
        this.G = z;
    }

    public boolean e() {
        return this.G;
    }

    private int i(RecyclerView.w wVar) {
        if (H() == 0 || wVar.h() == 0) {
            return 0;
        }
        o();
        View a2 = a(!q(), true);
        View b2 = b(!q(), true);
        if (a2 == null || b2 == null) {
            return 0;
        }
        if (!q()) {
            return this.h.c(wVar.h() - 1, this.c) + 1;
        }
        int b3 = this.o.b(b2) - this.o.a(a2);
        int c2 = this.h.c(e(a2), this.c);
        return (int) ((b3 / ((this.h.c(e(b2), this.c) - c2) + 1)) * (this.h.c(wVar.h() - 1, this.c) + 1));
    }

    private int j(RecyclerView.w wVar) {
        int max;
        if (H() == 0 || wVar.h() == 0) {
            return 0;
        }
        o();
        boolean q = q();
        View a2 = a(!q, true);
        View b2 = b(!q, true);
        if (a2 == null || b2 == null) {
            return 0;
        }
        int c2 = this.h.c(e(a2), this.c);
        int c3 = this.h.c(e(b2), this.c);
        int min = Math.min(c2, c3);
        int max2 = Math.max(c2, c3);
        int c4 = this.h.c(wVar.h() - 1, this.c) + 1;
        if (this.p) {
            max = Math.max(0, (c4 - max2) - 1);
        } else {
            max = Math.max(0, min);
        }
        if (!q) {
            return max;
        }
        return Math.round((max * (Math.abs(this.o.b(b2) - this.o.a(a2)) / ((this.h.c(e(b2), this.c) - this.h.c(e(a2), this.c)) + 1))) + (this.o.d() - this.o.a(a2)));
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class a extends c {
        @Override // androidx.recyclerview.widget.GridLayoutManager.c
        public int a(int i) {
            return 1;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.c
        public int a(int i, int i2) {
            return i % i2;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class b extends RecyclerView.j {

        /* renamed from: a, reason: collision with root package name */
        public static final int f985a = -1;
        int b;
        int c;

        public b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.b = -1;
            this.c = 0;
        }

        public b(int i, int i2) {
            super(i, i2);
            this.b = -1;
            this.c = 0;
        }

        public b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.b = -1;
            this.c = 0;
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.b = -1;
            this.c = 0;
        }

        public b(RecyclerView.j jVar) {
            super(jVar);
            this.b = -1;
            this.c = 0;
        }

        public int a() {
            return this.b;
        }

        public int b() {
            return this.c;
        }
    }
}
