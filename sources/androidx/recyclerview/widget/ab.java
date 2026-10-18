package androidx.recyclerview.widget;

import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;
import androidx.annotation.ai;
import androidx.appcompat.widget.ActivityChooserView;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class ab extends RecyclerView.l {

    /* renamed from: a, reason: collision with root package name */
    static final float f1028a = 100.0f;
    RecyclerView b;
    private Scroller c;
    private final RecyclerView.n d = new RecyclerView.n() { // from class: androidx.recyclerview.widget.ab.1

        /* renamed from: a, reason: collision with root package name */
        boolean f1029a = false;

        @Override // androidx.recyclerview.widget.RecyclerView.n
        public void a(RecyclerView recyclerView, int i) {
            super.a(recyclerView, i);
            if (i == 0 && this.f1029a) {
                this.f1029a = false;
                ab.this.a();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.n
        public void a(RecyclerView recyclerView, int i, int i2) {
            if (i == 0 && i2 == 0) {
                return;
            }
            this.f1029a = true;
        }
    };

    public abstract int a(RecyclerView.i iVar, int i, int i2);

    @ai
    public abstract View a(RecyclerView.i iVar);

    @ai
    public abstract int[] a(@androidx.annotation.ah RecyclerView.i iVar, @androidx.annotation.ah View view);

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public boolean a(int i, int i2) {
        RecyclerView.i layoutManager = this.b.getLayoutManager();
        if (layoutManager == null || this.b.getAdapter() == null) {
            return false;
        }
        int minFlingVelocity = this.b.getMinFlingVelocity();
        return (Math.abs(i2) > minFlingVelocity || Math.abs(i) > minFlingVelocity) && b(layoutManager, i, i2);
    }

    public void a(@ai RecyclerView recyclerView) {
        if (this.b == recyclerView) {
            return;
        }
        if (this.b != null) {
            c();
        }
        this.b = recyclerView;
        if (this.b != null) {
            b();
            this.c = new Scroller(this.b.getContext(), new DecelerateInterpolator());
            a();
        }
    }

    private void b() {
        if (this.b.getOnFlingListener() != null) {
            throw new IllegalStateException("An instance of OnFlingListener already set.");
        }
        this.b.a(this.d);
        this.b.setOnFlingListener(this);
    }

    private void c() {
        this.b.b(this.d);
        this.b.setOnFlingListener(null);
    }

    public int[] b(int i, int i2) {
        this.c.fling(0, 0, i, i2, Integer.MIN_VALUE, ActivityChooserView.a.f166a, Integer.MIN_VALUE, ActivityChooserView.a.f166a);
        return new int[]{this.c.getFinalX(), this.c.getFinalY()};
    }

    private boolean b(@androidx.annotation.ah RecyclerView.i iVar, int i, int i2) {
        RecyclerView.v c;
        int a2;
        if (!(iVar instanceof RecyclerView.v.b) || (c = c(iVar)) == null || (a2 = a(iVar, i, i2)) == -1) {
            return false;
        }
        c.c(a2);
        iVar.a(c);
        return true;
    }

    void a() {
        RecyclerView.i layoutManager;
        View a2;
        if (this.b == null || (layoutManager = this.b.getLayoutManager()) == null || (a2 = a(layoutManager)) == null) {
            return;
        }
        int[] a3 = a(layoutManager, a2);
        if (a3[0] == 0 && a3[1] == 0) {
            return;
        }
        this.b.b(a3[0], a3[1]);
    }

    @ai
    protected RecyclerView.v c(RecyclerView.i iVar) {
        return b(iVar);
    }

    @ai
    @Deprecated
    protected q b(RecyclerView.i iVar) {
        if (iVar instanceof RecyclerView.v.b) {
            return new q(this.b.getContext()) { // from class: androidx.recyclerview.widget.ab.2
                @Override // androidx.recyclerview.widget.q, androidx.recyclerview.widget.RecyclerView.v
                protected void a(View view, RecyclerView.w wVar, RecyclerView.v.a aVar) {
                    if (ab.this.b == null) {
                        return;
                    }
                    int[] a2 = ab.this.a(ab.this.b.getLayoutManager(), view);
                    int i = a2[0];
                    int i2 = a2[1];
                    int a3 = a(Math.max(Math.abs(i), Math.abs(i2)));
                    if (a3 > 0) {
                        aVar.a(i, i2, a3, this.e);
                    }
                }

                @Override // androidx.recyclerview.widget.q
                protected float a(DisplayMetrics displayMetrics) {
                    return ab.f1028a / displayMetrics.densityDpi;
                }
            };
        }
        return null;
    }
}
