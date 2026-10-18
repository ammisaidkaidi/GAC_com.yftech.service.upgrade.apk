package androidx.recyclerview.widget;

import android.view.View;
import androidx.annotation.ai;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class aa extends RecyclerView.f {

    /* renamed from: a, reason: collision with root package name */
    private static final boolean f1027a = false;
    private static final String b = "SimpleItemAnimator";
    boolean m = true;

    public abstract boolean a(RecyclerView.z zVar);

    public abstract boolean a(RecyclerView.z zVar, int i, int i2, int i3, int i4);

    public abstract boolean a(RecyclerView.z zVar, RecyclerView.z zVar2, int i, int i2, int i3, int i4);

    public abstract boolean b(RecyclerView.z zVar);

    public void c(RecyclerView.z zVar, boolean z) {
    }

    public void d(RecyclerView.z zVar, boolean z) {
    }

    public void q(RecyclerView.z zVar) {
    }

    public void r(RecyclerView.z zVar) {
    }

    public void s(RecyclerView.z zVar) {
    }

    public void t(RecyclerView.z zVar) {
    }

    public void u(RecyclerView.z zVar) {
    }

    public void v(RecyclerView.z zVar) {
    }

    public boolean k() {
        return this.m;
    }

    public void a(boolean z) {
        this.m = z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.f
    public boolean j(@androidx.annotation.ah RecyclerView.z zVar) {
        return !this.m || zVar.p();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.f
    public boolean a(@androidx.annotation.ah RecyclerView.z zVar, @androidx.annotation.ah RecyclerView.f.d dVar, @ai RecyclerView.f.d dVar2) {
        int i = dVar.f1001a;
        int i2 = dVar.b;
        View view = zVar.f1016a;
        int left = dVar2 == null ? view.getLeft() : dVar2.f1001a;
        int top = dVar2 == null ? view.getTop() : dVar2.b;
        if (!zVar.s() && (i != left || i2 != top)) {
            view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
            return a(zVar, i, i2, left, top);
        }
        return a(zVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.f
    public boolean b(@androidx.annotation.ah RecyclerView.z zVar, @ai RecyclerView.f.d dVar, @androidx.annotation.ah RecyclerView.f.d dVar2) {
        if (dVar != null && (dVar.f1001a != dVar2.f1001a || dVar.b != dVar2.b)) {
            return a(zVar, dVar.f1001a, dVar.b, dVar2.f1001a, dVar2.b);
        }
        return b(zVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.f
    public boolean c(@androidx.annotation.ah RecyclerView.z zVar, @androidx.annotation.ah RecyclerView.f.d dVar, @androidx.annotation.ah RecyclerView.f.d dVar2) {
        if (dVar.f1001a != dVar2.f1001a || dVar.b != dVar2.b) {
            return a(zVar, dVar.f1001a, dVar.b, dVar2.f1001a, dVar2.b);
        }
        l(zVar);
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.f
    public boolean a(@androidx.annotation.ah RecyclerView.z zVar, @androidx.annotation.ah RecyclerView.z zVar2, @androidx.annotation.ah RecyclerView.f.d dVar, @androidx.annotation.ah RecyclerView.f.d dVar2) {
        int i;
        int i2;
        int i3 = dVar.f1001a;
        int i4 = dVar.b;
        if (zVar2.c()) {
            int i5 = dVar.f1001a;
            i2 = dVar.b;
            i = i5;
        } else {
            i = dVar2.f1001a;
            i2 = dVar2.b;
        }
        return a(zVar, zVar2, i3, i4, i, i2);
    }

    public final void k(RecyclerView.z zVar) {
        r(zVar);
        f(zVar);
    }

    public final void l(RecyclerView.z zVar) {
        v(zVar);
        f(zVar);
    }

    public final void m(RecyclerView.z zVar) {
        t(zVar);
        f(zVar);
    }

    public final void a(RecyclerView.z zVar, boolean z) {
        d(zVar, z);
        f(zVar);
    }

    public final void n(RecyclerView.z zVar) {
        q(zVar);
    }

    public final void o(RecyclerView.z zVar) {
        u(zVar);
    }

    public final void p(RecyclerView.z zVar) {
        s(zVar);
    }

    public final void b(RecyclerView.z zVar, boolean z) {
        c(zVar, z);
    }
}
