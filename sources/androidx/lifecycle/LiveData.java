package androidx.lifecycle;

import androidx.annotation.ae;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.lifecycle.g;
import java.util.Iterator;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class LiveData<T> {
    static final int c = -1;
    static final Object d = new Object();
    private boolean i;
    private boolean j;
    final Object b = new Object();

    /* renamed from: a, reason: collision with root package name */
    private androidx.a.a.b.b<q<? super T>, LiveData<T>.b> f954a = new androidx.a.a.b.b<>();
    int e = 0;
    private volatile Object g = d;
    volatile Object f = d;
    private int h = -1;
    private final Runnable k = new Runnable() { // from class: androidx.lifecycle.LiveData.1
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            Object obj;
            synchronized (LiveData.this.b) {
                obj = LiveData.this.f;
                LiveData.this.f = LiveData.d;
            }
            LiveData.this.b((LiveData) obj);
        }
    };

    protected void a() {
    }

    protected void d() {
    }

    private void b(LiveData<T>.b bVar) {
        if (bVar.d) {
            if (!bVar.a()) {
                bVar.a(false);
            } else {
                if (bVar.e >= this.h) {
                    return;
                }
                bVar.e = this.h;
                bVar.c.a((Object) this.g);
            }
        }
    }

    void a(@ai LiveData<T>.b bVar) {
        if (this.i) {
            this.j = true;
            return;
        }
        this.i = true;
        do {
            this.j = false;
            if (bVar != null) {
                b((b) bVar);
                bVar = null;
            } else {
                androidx.a.a.b.b<q<? super T>, LiveData<T>.b>.d c2 = this.f954a.c();
                while (c2.hasNext()) {
                    b((b) c2.next().getValue());
                    if (this.j) {
                        break;
                    }
                }
            }
        } while (this.j);
        this.i = false;
    }

    @ae
    public void a(@ah j jVar, @ah q<? super T> qVar) {
        a("observe");
        if (jVar.c().a() == g.b.DESTROYED) {
            return;
        }
        LifecycleBoundObserver lifecycleBoundObserver = new LifecycleBoundObserver(jVar, qVar);
        LiveData<T>.b a2 = this.f954a.a(qVar, lifecycleBoundObserver);
        if (a2 != null && !a2.a(jVar)) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (a2 != null) {
            return;
        }
        jVar.c().a(lifecycleBoundObserver);
    }

    @ae
    public void a(@ah q<? super T> qVar) {
        a("observeForever");
        a aVar = new a(qVar);
        LiveData<T>.b a2 = this.f954a.a(qVar, aVar);
        if (a2 != null && (a2 instanceof LifecycleBoundObserver)) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (a2 != null) {
            return;
        }
        aVar.a(true);
    }

    @ae
    public void b(@ah q<? super T> qVar) {
        a("removeObserver");
        LiveData<T>.b b2 = this.f954a.b(qVar);
        if (b2 == null) {
            return;
        }
        b2.b();
        b2.a(false);
    }

    @ae
    public void a(@ah j jVar) {
        a("removeObservers");
        Iterator<Map.Entry<q<? super T>, LiveData<T>.b>> it = this.f954a.iterator();
        while (it.hasNext()) {
            Map.Entry<q<? super T>, LiveData<T>.b> next = it.next();
            if (next.getValue().a(jVar)) {
                b((q) next.getKey());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(T t) {
        boolean z;
        synchronized (this.b) {
            z = this.f == d;
            this.f = t;
        }
        if (z) {
            androidx.a.a.a.a.a().b(this.k);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @ae
    public void b(T t) {
        a("setValue");
        this.h++;
        this.g = t;
        a((b) null);
    }

    @ai
    public T b() {
        T t = (T) this.g;
        if (t != d) {
            return t;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c() {
        return this.h;
    }

    public boolean e() {
        return this.f954a.a() > 0;
    }

    public boolean f() {
        return this.e > 0;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    class LifecycleBoundObserver extends LiveData<T>.b implements f {

        /* renamed from: a, reason: collision with root package name */
        @ah
        final j f956a;

        LifecycleBoundObserver(j jVar, @ah q<? super T> qVar) {
            super(qVar);
            this.f956a = jVar;
        }

        @Override // androidx.lifecycle.LiveData.b
        boolean a() {
            return this.f956a.c().a().a(g.b.STARTED);
        }

        @Override // androidx.lifecycle.h
        public void a(j jVar, g.a aVar) {
            if (this.f956a.c().a() == g.b.DESTROYED) {
                LiveData.this.b((q) this.c);
            } else {
                a(a());
            }
        }

        @Override // androidx.lifecycle.LiveData.b
        boolean a(j jVar) {
            return this.f956a == jVar;
        }

        @Override // androidx.lifecycle.LiveData.b
        void b() {
            this.f956a.c().b(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public abstract class b {
        final q<? super T> c;
        boolean d;
        int e = -1;

        abstract boolean a();

        boolean a(j jVar) {
            return false;
        }

        void b() {
        }

        b(q<? super T> qVar) {
            this.c = qVar;
        }

        void a(boolean z) {
            if (z == this.d) {
                return;
            }
            this.d = z;
            boolean z2 = LiveData.this.e == 0;
            LiveData.this.e += this.d ? 1 : -1;
            if (z2 && this.d) {
                LiveData.this.a();
            }
            if (LiveData.this.e == 0 && !this.d) {
                LiveData.this.d();
            }
            if (this.d) {
                LiveData.this.a(this);
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private class a extends LiveData<T>.b {
        @Override // androidx.lifecycle.LiveData.b
        boolean a() {
            return true;
        }

        a(q<? super T> qVar) {
            super(qVar);
        }
    }

    private static void a(String str) {
        if (androidx.a.a.a.a.a().d()) {
            return;
        }
        throw new IllegalStateException("Cannot invoke " + str + " on a background thread");
    }
}
