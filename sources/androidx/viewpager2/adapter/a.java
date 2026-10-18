package androidx.viewpager2.adapter;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.i;
import androidx.c.f;
import androidx.core.n.af;
import androidx.fragment.app.d;
import androidx.fragment.app.e;
import androidx.fragment.app.j;
import androidx.fragment.app.s;
import androidx.lifecycle.g;
import androidx.lifecycle.h;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.a.h;
import androidx.viewpager2.adapter.a;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class a extends RecyclerView.a<androidx.viewpager2.adapter.b> implements c {
    private static final String e = "f#";
    private static final String f = "s#";
    private static final long g = 10000;

    /* renamed from: a, reason: collision with root package name */
    final g f1139a;
    final j b;
    final f<d> c;
    boolean d;
    private final f<d.C0058d> h;
    private final f<Integer> i;
    private b j;
    private boolean k;

    @ah
    public abstract d a(int i);

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public long c(int i) {
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public final boolean b(@ah androidx.viewpager2.adapter.b bVar) {
        return true;
    }

    public a(@ah e eVar) {
        this(eVar.q(), eVar.c());
    }

    public a(@ah d dVar) {
        this(dVar.H(), dVar.c());
    }

    public a(@ah j jVar, @ah g gVar) {
        this.c = new f<>();
        this.h = new f<>();
        this.i = new f<>();
        this.d = false;
        this.k = false;
        this.b = jVar;
        this.f1139a = gVar;
        super.a(true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    @i
    public void a(@ah RecyclerView recyclerView) {
        androidx.core.m.i.a(this.j == null);
        this.j = new b();
        this.j.a(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    @i
    public void b(@ah RecyclerView recyclerView) {
        this.j.b(recyclerView);
        this.j = null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    @ah
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final androidx.viewpager2.adapter.b a(@ah ViewGroup viewGroup, int i) {
        return androidx.viewpager2.adapter.b.a(viewGroup);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public final void a(@ah final androidx.viewpager2.adapter.b bVar, int i) {
        long h = bVar.h();
        int id = bVar.D().getId();
        Long g2 = g(id);
        if (g2 != null && g2.longValue() != h) {
            c(g2.longValue());
            this.i.c(g2.longValue());
        }
        this.i.d(h, Integer.valueOf(id));
        h(i);
        final FrameLayout D = bVar.D();
        if (af.ak(D)) {
            if (D.getParent() != null) {
                throw new IllegalStateException("Design assumption violated.");
            }
            D.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: androidx.viewpager2.adapter.a.1
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                    if (D.getParent() != null) {
                        D.removeOnLayoutChangeListener(this);
                        a.this.b2(bVar);
                    }
                }
            });
        }
        b();
    }

    void b() {
        if (!this.k || f()) {
            return;
        }
        androidx.c.b bVar = new androidx.c.b();
        for (int i = 0; i < this.c.b(); i++) {
            long b2 = this.c.b(i);
            if (!a(b2)) {
                bVar.add(Long.valueOf(b2));
                this.i.c(b2);
            }
        }
        if (!this.d) {
            this.k = false;
            for (int i2 = 0; i2 < this.c.b(); i2++) {
                long b3 = this.c.b(i2);
                if (!b(b3)) {
                    bVar.add(Long.valueOf(b3));
                }
            }
        }
        Iterator<E> it = bVar.iterator();
        while (it.hasNext()) {
            c(((Long) it.next()).longValue());
        }
    }

    private boolean b(long j) {
        View X;
        if (this.i.e(j)) {
            return true;
        }
        d a2 = this.c.a(j);
        return (a2 == null || (X = a2.X()) == null || X.getParent() == null) ? false : true;
    }

    private Long g(int i) {
        Long l = null;
        for (int i2 = 0; i2 < this.i.b(); i2++) {
            if (this.i.c(i2).intValue() == i) {
                if (l != null) {
                    throw new IllegalStateException("Design assumption violated: a ViewHolder can only be bound to one item at a time.");
                }
                l = Long.valueOf(this.i.b(i2));
            }
        }
        return l;
    }

    private void h(int i) {
        long c = c(i);
        if (this.c.e(c)) {
            return;
        }
        d a2 = a(i);
        a2.a(this.h.a(c));
        this.c.d(c, a2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    /* renamed from: a, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public final void c(@ah androidx.viewpager2.adapter.b bVar) {
        b2(bVar);
        b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b, reason: avoid collision after fix types in other method */
    public void b2(@ah final androidx.viewpager2.adapter.b bVar) {
        d a2 = this.c.a(bVar.h());
        if (a2 == null) {
            throw new IllegalStateException("Design assumption violated.");
        }
        FrameLayout D = bVar.D();
        View X = a2.X();
        if (!a2.K() && X != null) {
            throw new IllegalStateException("Design assumption violated.");
        }
        if (a2.K() && X == null) {
            a(a2, D);
            return;
        }
        if (a2.K() && X.getParent() != null) {
            if (X.getParent() != D) {
                a(X, D);
                return;
            }
            return;
        }
        if (a2.K()) {
            a(X, D);
            return;
        }
        if (!f()) {
            a(a2, D);
            this.b.a().a(a2, "f" + bVar.h()).a(a2, g.b.STARTED).i();
            this.j.a(false);
            return;
        }
        if (this.b.h()) {
            return;
        }
        this.f1139a.a(new h() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter$2
            @Override // androidx.lifecycle.h
            public void a(@ah androidx.lifecycle.j jVar, @ah g.a aVar) {
                if (a.this.f()) {
                    return;
                }
                jVar.c().b(this);
                if (af.ak(bVar.D())) {
                    a.this.b2(bVar);
                }
            }
        });
    }

    private void a(final d dVar, @ah final FrameLayout frameLayout) {
        this.b.a(new j.b() { // from class: androidx.viewpager2.adapter.a.2
            @Override // androidx.fragment.app.j.b
            public void a(@ah j jVar, @ah d dVar2, @ah View view, @ai Bundle bundle) {
                if (dVar2 == dVar) {
                    jVar.a(this);
                    a.this.a(view, frameLayout);
                }
            }
        }, false);
    }

    void a(@ah View view, @ah FrameLayout frameLayout) {
        if (frameLayout.getChildCount() > 1) {
            throw new IllegalStateException("Design assumption violated.");
        }
        if (view.getParent() == frameLayout) {
            return;
        }
        if (frameLayout.getChildCount() > 0) {
            frameLayout.removeAllViews();
        }
        if (view.getParent() != null) {
            ((ViewGroup) view.getParent()).removeView(view);
        }
        frameLayout.addView(view);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    /* renamed from: c, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public final void a(@ah androidx.viewpager2.adapter.b bVar) {
        Long g2 = g(bVar.D().getId());
        if (g2 != null) {
            c(g2.longValue());
            this.i.c(g2.longValue());
        }
    }

    private void c(long j) {
        ViewParent parent;
        d a2 = this.c.a(j);
        if (a2 == null) {
            return;
        }
        if (a2.X() != null && (parent = a2.X().getParent()) != null) {
            ((FrameLayout) parent).removeAllViews();
        }
        if (!a(j)) {
            this.h.c(j);
        }
        if (!a2.K()) {
            this.c.c(j);
            return;
        }
        if (f()) {
            this.k = true;
            return;
        }
        if (a2.K() && a(j)) {
            this.h.d(j, this.b.a(a2));
        }
        this.b.a().a(a2).i();
        this.c.c(j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean f() {
        return this.b.k();
    }

    public boolean a(long j) {
        return j >= 0 && j < ((long) a());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public final void a(boolean z) {
        throw new UnsupportedOperationException("Stable Ids are required for the adapter to function properly, and the adapter takes care of setting the flag.");
    }

    @Override // androidx.viewpager2.adapter.c
    @ah
    public final Parcelable g() {
        Bundle bundle = new Bundle(this.c.b() + this.h.b());
        for (int i = 0; i < this.c.b(); i++) {
            long b2 = this.c.b(i);
            d a2 = this.c.a(b2);
            if (a2 != null && a2.K()) {
                this.b.a(bundle, a(e, b2), a2);
            }
        }
        for (int i2 = 0; i2 < this.h.b(); i2++) {
            long b3 = this.h.b(i2);
            if (a(b3)) {
                bundle.putParcelable(a(f, b3), this.h.a(b3));
            }
        }
        return bundle;
    }

    @Override // androidx.viewpager2.adapter.c
    public final void a(@ah Parcelable parcelable) {
        if (!this.h.c() || !this.c.c()) {
            throw new IllegalStateException("Expected the adapter to be 'fresh' while restoring state.");
        }
        Bundle bundle = (Bundle) parcelable;
        if (bundle.getClassLoader() == null) {
            bundle.setClassLoader(getClass().getClassLoader());
        }
        for (String str : bundle.keySet()) {
            if (a(str, e)) {
                this.c.d(b(str, e), this.b.a(bundle, str));
            } else if (a(str, f)) {
                long b2 = b(str, f);
                d.C0058d c0058d = (d.C0058d) bundle.getParcelable(str);
                if (a(b2)) {
                    this.h.d(b2, c0058d);
                }
            } else {
                throw new IllegalArgumentException("Unexpected key in savedState: " + str);
            }
        }
        if (this.c.c()) {
            return;
        }
        this.k = true;
        this.d = true;
        b();
        h();
    }

    private void h() {
        final Handler handler = new Handler(Looper.getMainLooper());
        final Runnable runnable = new Runnable() { // from class: androidx.viewpager2.adapter.a.3
            @Override // java.lang.Runnable
            public void run() {
                a.this.d = false;
                a.this.b();
            }
        };
        this.f1139a.a(new h() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter$5
            @Override // androidx.lifecycle.h
            public void a(@ah androidx.lifecycle.j jVar, @ah g.a aVar) {
                if (aVar == g.a.ON_DESTROY) {
                    handler.removeCallbacks(runnable);
                    jVar.c().b(this);
                }
            }
        });
        handler.postDelayed(runnable, g);
    }

    @ah
    private static String a(@ah String str, long j) {
        return str + j;
    }

    private static boolean a(@ah String str, @ah String str2) {
        return str.startsWith(str2) && str.length() > str2.length();
    }

    private static long b(@ah String str, @ah String str2) {
        return Long.parseLong(str.substring(str2.length()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class b {
        private h.f b;
        private RecyclerView.c c;
        private androidx.lifecycle.h d;
        private androidx.viewpager2.a.h e;
        private long f = -1;

        b() {
        }

        void a(@ah RecyclerView recyclerView) {
            this.e = c(recyclerView);
            this.b = new h.f() { // from class: androidx.viewpager2.adapter.a.b.1
                @Override // androidx.viewpager2.a.h.f
                public void a(int i) {
                    b.this.a(false);
                }

                @Override // androidx.viewpager2.a.h.f
                public void b(int i) {
                    b.this.a(false);
                }
            };
            this.e.a(this.b);
            this.c = new AbstractC0080a() { // from class: androidx.viewpager2.adapter.a.b.2
                @Override // androidx.viewpager2.adapter.a.AbstractC0080a, androidx.recyclerview.widget.RecyclerView.c
                public void a() {
                    b.this.a(true);
                }
            };
            a.this.a(this.c);
            this.d = new androidx.lifecycle.h() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3
                @Override // androidx.lifecycle.h
                public void a(@ah androidx.lifecycle.j jVar, @ah g.a aVar) {
                    a.b.this.a(false);
                }
            };
            a.this.f1139a.a(this.d);
        }

        void b(@ah RecyclerView recyclerView) {
            c(recyclerView).b(this.b);
            a.this.b(this.c);
            a.this.f1139a.b(this.d);
            this.e = null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a(boolean z) {
            int currentItem;
            d a2;
            if (a.this.f() || this.e.getScrollState() != 0 || a.this.c.c() || a.this.a() == 0 || (currentItem = this.e.getCurrentItem()) >= a.this.a()) {
                return;
            }
            long c = a.this.c(currentItem);
            if ((c != this.f || z) && (a2 = a.this.c.a(c)) != null && a2.K()) {
                this.f = c;
                s a3 = a.this.b.a();
                d dVar = null;
                for (int i = 0; i < a.this.c.b(); i++) {
                    long b = a.this.c.b(i);
                    d c2 = a.this.c.c(i);
                    if (c2.K()) {
                        if (b != this.f) {
                            a3.a(c2, g.b.STARTED);
                        } else {
                            dVar = c2;
                        }
                        c2.f(b == this.f);
                    }
                }
                if (dVar != null) {
                    a3.a(dVar, g.b.RESUMED);
                }
                if (a3.n()) {
                    return;
                }
                a3.i();
            }
        }

        @ah
        private androidx.viewpager2.a.h c(@ah RecyclerView recyclerView) {
            ViewParent parent = recyclerView.getParent();
            if (parent instanceof androidx.viewpager2.a.h) {
                return (androidx.viewpager2.a.h) parent;
            }
            throw new IllegalStateException("Expected ViewPager2 instance. Got: " + parent);
        }
    }

    /* renamed from: androidx.viewpager2.adapter.a$a, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    private static abstract class AbstractC0080a extends RecyclerView.c {
        @Override // androidx.recyclerview.widget.RecyclerView.c
        public abstract void a();

        private AbstractC0080a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.c
        public final void a(int i, int i2) {
            a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.c
        public final void a(int i, int i2, @ai Object obj) {
            a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.c
        public final void b(int i, int i2) {
            a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.c
        public final void c(int i, int i2) {
            a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.c
        public final void a(int i, int i2, int i3) {
            a();
        }
    }
}
