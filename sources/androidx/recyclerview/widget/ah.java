package androidx.recyclerview.widget;

import androidx.annotation.ai;
import androidx.annotation.ax;
import androidx.core.m.h;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public class ah {
    private static final boolean c = false;

    /* renamed from: a, reason: collision with root package name */
    @ax
    final androidx.c.i<RecyclerView.z, a> f1037a = new androidx.c.i<>();

    @ax
    final androidx.c.f<RecyclerView.z> b = new androidx.c.f<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface b {
        void a(RecyclerView.z zVar);

        void a(RecyclerView.z zVar, @androidx.annotation.ah RecyclerView.f.d dVar, @ai RecyclerView.f.d dVar2);

        void b(RecyclerView.z zVar, @ai RecyclerView.f.d dVar, RecyclerView.f.d dVar2);

        void c(RecyclerView.z zVar, @androidx.annotation.ah RecyclerView.f.d dVar, @androidx.annotation.ah RecyclerView.f.d dVar2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.f1037a.clear();
        this.b.d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(RecyclerView.z zVar, RecyclerView.f.d dVar) {
        a aVar = this.f1037a.get(zVar);
        if (aVar == null) {
            aVar = a.a();
            this.f1037a.put(zVar, aVar);
        }
        aVar.i = dVar;
        aVar.h |= 4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(RecyclerView.z zVar) {
        a aVar = this.f1037a.get(zVar);
        return (aVar == null || (aVar.h & 1) == 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ai
    public RecyclerView.f.d b(RecyclerView.z zVar) {
        return a(zVar, 4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ai
    public RecyclerView.f.d c(RecyclerView.z zVar) {
        return a(zVar, 8);
    }

    private RecyclerView.f.d a(RecyclerView.z zVar, int i) {
        a c2;
        RecyclerView.f.d dVar;
        int a2 = this.f1037a.a(zVar);
        if (a2 < 0 || (c2 = this.f1037a.c(a2)) == null || (c2.h & i) == 0) {
            return null;
        }
        c2.h &= ~i;
        if (i == 4) {
            dVar = c2.i;
        } else if (i == 8) {
            dVar = c2.j;
        } else {
            throw new IllegalArgumentException("Must provide flag PRE or POST");
        }
        if ((c2.h & 12) == 0) {
            this.f1037a.d(a2);
            a.a(c2);
        }
        return dVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(long j, RecyclerView.z zVar) {
        this.b.d(j, zVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(RecyclerView.z zVar, RecyclerView.f.d dVar) {
        a aVar = this.f1037a.get(zVar);
        if (aVar == null) {
            aVar = a.a();
            this.f1037a.put(zVar, aVar);
        }
        aVar.h |= 2;
        aVar.i = dVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d(RecyclerView.z zVar) {
        a aVar = this.f1037a.get(zVar);
        return (aVar == null || (aVar.h & 4) == 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RecyclerView.z a(long j) {
        return this.b.a(j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(RecyclerView.z zVar, RecyclerView.f.d dVar) {
        a aVar = this.f1037a.get(zVar);
        if (aVar == null) {
            aVar = a.a();
            this.f1037a.put(zVar, aVar);
        }
        aVar.j = dVar;
        aVar.h |= 8;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(RecyclerView.z zVar) {
        a aVar = this.f1037a.get(zVar);
        if (aVar == null) {
            aVar = a.a();
            this.f1037a.put(zVar, aVar);
        }
        aVar.h |= 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(RecyclerView.z zVar) {
        a aVar = this.f1037a.get(zVar);
        if (aVar == null) {
            return;
        }
        aVar.h &= -2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(b bVar) {
        for (int size = this.f1037a.size() - 1; size >= 0; size--) {
            RecyclerView.z b2 = this.f1037a.b(size);
            a d = this.f1037a.d(size);
            if ((d.h & 3) == 3) {
                bVar.a(b2);
            } else if ((d.h & 1) != 0) {
                if (d.i == null) {
                    bVar.a(b2);
                } else {
                    bVar.a(b2, d.i, d.j);
                }
            } else if ((d.h & 14) == 14) {
                bVar.b(b2, d.i, d.j);
            } else if ((d.h & 12) == 12) {
                bVar.c(b2, d.i, d.j);
            } else if ((d.h & 4) != 0) {
                bVar.a(b2, d.i, null);
            } else if ((d.h & 8) != 0) {
                bVar.b(b2, d.i, d.j);
            } else {
                int i = d.h;
            }
            a.a(d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(RecyclerView.z zVar) {
        int b2 = this.b.b() - 1;
        while (true) {
            if (b2 < 0) {
                break;
            }
            if (zVar == this.b.c(b2)) {
                this.b.a(b2);
                break;
            }
            b2--;
        }
        a remove = this.f1037a.remove(zVar);
        if (remove != null) {
            a.a(remove);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        a.b();
    }

    public void h(RecyclerView.z zVar) {
        f(zVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        static final int f1038a = 1;
        static final int b = 2;
        static final int c = 4;
        static final int d = 8;
        static final int e = 3;
        static final int f = 12;
        static final int g = 14;
        static h.a<a> k = new h.b(20);
        int h;

        @ai
        RecyclerView.f.d i;

        @ai
        RecyclerView.f.d j;

        private a() {
        }

        static a a() {
            a a2 = k.a();
            return a2 == null ? new a() : a2;
        }

        static void a(a aVar) {
            aVar.h = 0;
            aVar.i = null;
            aVar.j = null;
            k.a(aVar);
        }

        static void b() {
            do {
            } while (k.a() != null);
        }
    }
}
