package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.ac;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class ad<T2> extends ac.b<T2> {

    /* renamed from: a, reason: collision with root package name */
    final RecyclerView.a f1032a;

    public ad(RecyclerView.a aVar) {
        this.f1032a = aVar;
    }

    @Override // androidx.recyclerview.widget.t
    public void a(int i, int i2) {
        this.f1032a.c(i, i2);
    }

    @Override // androidx.recyclerview.widget.t
    public void b(int i, int i2) {
        this.f1032a.d(i, i2);
    }

    @Override // androidx.recyclerview.widget.t
    public void c(int i, int i2) {
        this.f1032a.b(i, i2);
    }

    @Override // androidx.recyclerview.widget.ac.b
    public void d(int i, int i2) {
        this.f1032a.a(i, i2);
    }

    @Override // androidx.recyclerview.widget.ac.b, androidx.recyclerview.widget.t
    public void a(int i, int i2, Object obj) {
        this.f1032a.a(i, i2, obj);
    }
}
