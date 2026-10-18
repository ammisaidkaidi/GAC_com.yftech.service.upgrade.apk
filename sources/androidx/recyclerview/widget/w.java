package androidx.recyclerview.widget;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class w {
    public static final int b = 0;
    public static final int c = 1;
    private static final int e = Integer.MIN_VALUE;

    /* renamed from: a, reason: collision with root package name */
    protected final RecyclerView.i f1101a;
    final Rect d;
    private int f;

    public abstract int a(View view);

    public abstract void a(int i);

    public abstract void a(View view, int i);

    public abstract int b(View view);

    public abstract int c(View view);

    public abstract int d();

    public abstract int d(View view);

    public abstract int e();

    public abstract int e(View view);

    public abstract int f();

    public abstract int f(View view);

    public abstract int g();

    public abstract int h();

    public abstract int i();

    public abstract int j();

    private w(RecyclerView.i iVar) {
        this.f = Integer.MIN_VALUE;
        this.d = new Rect();
        this.f1101a = iVar;
    }

    public RecyclerView.i a() {
        return this.f1101a;
    }

    public void b() {
        this.f = g();
    }

    public int c() {
        if (Integer.MIN_VALUE == this.f) {
            return 0;
        }
        return g() - this.f;
    }

    public static w a(RecyclerView.i iVar, int i) {
        switch (i) {
            case 0:
                return a(iVar);
            case 1:
                return b(iVar);
            default:
                throw new IllegalArgumentException("invalid orientation");
        }
    }

    public static w a(RecyclerView.i iVar) {
        return new w(iVar) { // from class: androidx.recyclerview.widget.w.1
            @Override // androidx.recyclerview.widget.w
            public int e() {
                return this.f1101a.K() - this.f1101a.O();
            }

            @Override // androidx.recyclerview.widget.w
            public int f() {
                return this.f1101a.K();
            }

            @Override // androidx.recyclerview.widget.w
            public void a(int i) {
                this.f1101a.k(i);
            }

            @Override // androidx.recyclerview.widget.w
            public int d() {
                return this.f1101a.M();
            }

            @Override // androidx.recyclerview.widget.w
            public int e(View view) {
                RecyclerView.j jVar = (RecyclerView.j) view.getLayoutParams();
                return this.f1101a.m(view) + jVar.leftMargin + jVar.rightMargin;
            }

            @Override // androidx.recyclerview.widget.w
            public int f(View view) {
                RecyclerView.j jVar = (RecyclerView.j) view.getLayoutParams();
                return this.f1101a.n(view) + jVar.topMargin + jVar.bottomMargin;
            }

            @Override // androidx.recyclerview.widget.w
            public int b(View view) {
                return this.f1101a.q(view) + ((RecyclerView.j) view.getLayoutParams()).rightMargin;
            }

            @Override // androidx.recyclerview.widget.w
            public int a(View view) {
                return this.f1101a.o(view) - ((RecyclerView.j) view.getLayoutParams()).leftMargin;
            }

            @Override // androidx.recyclerview.widget.w
            public int c(View view) {
                this.f1101a.a(view, true, this.d);
                return this.d.right;
            }

            @Override // androidx.recyclerview.widget.w
            public int d(View view) {
                this.f1101a.a(view, true, this.d);
                return this.d.left;
            }

            @Override // androidx.recyclerview.widget.w
            public int g() {
                return (this.f1101a.K() - this.f1101a.M()) - this.f1101a.O();
            }

            @Override // androidx.recyclerview.widget.w
            public void a(View view, int i) {
                view.offsetLeftAndRight(i);
            }

            @Override // androidx.recyclerview.widget.w
            public int h() {
                return this.f1101a.O();
            }

            @Override // androidx.recyclerview.widget.w
            public int i() {
                return this.f1101a.I();
            }

            @Override // androidx.recyclerview.widget.w
            public int j() {
                return this.f1101a.J();
            }
        };
    }

    public static w b(RecyclerView.i iVar) {
        return new w(iVar) { // from class: androidx.recyclerview.widget.w.2
            @Override // androidx.recyclerview.widget.w
            public int e() {
                return this.f1101a.L() - this.f1101a.P();
            }

            @Override // androidx.recyclerview.widget.w
            public int f() {
                return this.f1101a.L();
            }

            @Override // androidx.recyclerview.widget.w
            public void a(int i) {
                this.f1101a.l(i);
            }

            @Override // androidx.recyclerview.widget.w
            public int d() {
                return this.f1101a.N();
            }

            @Override // androidx.recyclerview.widget.w
            public int e(View view) {
                RecyclerView.j jVar = (RecyclerView.j) view.getLayoutParams();
                return this.f1101a.n(view) + jVar.topMargin + jVar.bottomMargin;
            }

            @Override // androidx.recyclerview.widget.w
            public int f(View view) {
                RecyclerView.j jVar = (RecyclerView.j) view.getLayoutParams();
                return this.f1101a.m(view) + jVar.leftMargin + jVar.rightMargin;
            }

            @Override // androidx.recyclerview.widget.w
            public int b(View view) {
                return this.f1101a.r(view) + ((RecyclerView.j) view.getLayoutParams()).bottomMargin;
            }

            @Override // androidx.recyclerview.widget.w
            public int a(View view) {
                return this.f1101a.p(view) - ((RecyclerView.j) view.getLayoutParams()).topMargin;
            }

            @Override // androidx.recyclerview.widget.w
            public int c(View view) {
                this.f1101a.a(view, true, this.d);
                return this.d.bottom;
            }

            @Override // androidx.recyclerview.widget.w
            public int d(View view) {
                this.f1101a.a(view, true, this.d);
                return this.d.top;
            }

            @Override // androidx.recyclerview.widget.w
            public int g() {
                return (this.f1101a.L() - this.f1101a.N()) - this.f1101a.P();
            }

            @Override // androidx.recyclerview.widget.w
            public void a(View view, int i) {
                view.offsetTopAndBottom(i);
            }

            @Override // androidx.recyclerview.widget.w
            public int h() {
                return this.f1101a.P();
            }

            @Override // androidx.recyclerview.widget.w
            public int i() {
                return this.f1101a.J();
            }

            @Override // androidx.recyclerview.widget.w
            public int j() {
                return this.f1101a.I();
            }
        };
    }
}
