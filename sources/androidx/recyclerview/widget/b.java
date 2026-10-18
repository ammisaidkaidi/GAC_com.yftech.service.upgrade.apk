package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;

/* loaded from: /home/user/work/dex/classes.dex */
public final class b implements t {

    /* renamed from: a, reason: collision with root package name */
    @androidx.annotation.ah
    private final RecyclerView.a f1039a;

    public b(@androidx.annotation.ah RecyclerView.a aVar) {
        this.f1039a = aVar;
    }

    @Override // androidx.recyclerview.widget.t
    public void a(int i, int i2) {
        this.f1039a.c(i, i2);
    }

    @Override // androidx.recyclerview.widget.t
    public void b(int i, int i2) {
        this.f1039a.d(i, i2);
    }

    @Override // androidx.recyclerview.widget.t
    public void c(int i, int i2) {
        this.f1039a.b(i, i2);
    }

    @Override // androidx.recyclerview.widget.t
    public void a(int i, int i2, Object obj) {
        this.f1039a.a(i, i2, obj);
    }
}
