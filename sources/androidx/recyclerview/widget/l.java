package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import androidx.annotation.ai;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public final class l implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    static final ThreadLocal<l> f1076a = new ThreadLocal<>();
    static Comparator<b> e = new Comparator<b>() { // from class: androidx.recyclerview.widget.l.1
        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(b bVar, b bVar2) {
            if ((bVar.d == null) != (bVar2.d == null)) {
                return bVar.d == null ? 1 : -1;
            }
            if (bVar.f1078a != bVar2.f1078a) {
                return bVar.f1078a ? -1 : 1;
            }
            int i = bVar2.b - bVar.b;
            if (i != 0) {
                return i;
            }
            int i2 = bVar.c - bVar2.c;
            if (i2 != 0) {
                return i2;
            }
            return 0;
        }
    };
    long c;
    long d;
    ArrayList<RecyclerView> b = new ArrayList<>();
    private ArrayList<b> f = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public boolean f1078a;
        public int b;
        public int c;
        public RecyclerView d;
        public int e;

        b() {
        }

        public void a() {
            this.f1078a = false;
            this.b = 0;
            this.c = 0;
            this.d = null;
            this.e = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SuppressLint({"VisibleForTests"})
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a implements RecyclerView.i.a {

        /* renamed from: a, reason: collision with root package name */
        int f1077a;
        int b;
        int[] c;
        int d;

        void a(int i, int i2) {
            this.f1077a = i;
            this.b = i2;
        }

        void a(RecyclerView recyclerView, boolean z) {
            this.d = 0;
            if (this.c != null) {
                Arrays.fill(this.c, -1);
            }
            RecyclerView.i iVar = recyclerView.G;
            if (recyclerView.F == null || iVar == null || !iVar.A()) {
                return;
            }
            if (z) {
                if (!recyclerView.y.d()) {
                    iVar.a(recyclerView.F.a(), this);
                }
            } else if (!recyclerView.B()) {
                iVar.a(this.f1077a, this.b, recyclerView.ad, this);
            }
            if (this.d > iVar.C) {
                iVar.C = this.d;
                iVar.D = z;
                recyclerView.x.b();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.i.a
        public void b(int i, int i2) {
            if (i < 0) {
                throw new IllegalArgumentException("Layout positions must be non-negative");
            }
            if (i2 < 0) {
                throw new IllegalArgumentException("Pixel distance must be non-negative");
            }
            int i3 = this.d * 2;
            if (this.c == null) {
                this.c = new int[4];
                Arrays.fill(this.c, -1);
            } else if (i3 >= this.c.length) {
                int[] iArr = this.c;
                this.c = new int[i3 * 2];
                System.arraycopy(iArr, 0, this.c, 0, iArr.length);
            }
            this.c[i3] = i;
            this.c[i3 + 1] = i2;
            this.d++;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean a(int i) {
            if (this.c != null) {
                int i2 = this.d * 2;
                for (int i3 = 0; i3 < i2; i3 += 2) {
                    if (this.c[i3] == i) {
                        return true;
                    }
                }
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a() {
            if (this.c != null) {
                Arrays.fill(this.c, -1);
            }
            this.d = 0;
        }
    }

    public void a(RecyclerView recyclerView) {
        this.b.add(recyclerView);
    }

    public void b(RecyclerView recyclerView) {
        this.b.remove(recyclerView);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(RecyclerView recyclerView, int i, int i2) {
        if (recyclerView.isAttachedToWindow() && this.c == 0) {
            this.c = recyclerView.getNanoTime();
            recyclerView.post(this);
        }
        recyclerView.ac.a(i, i2);
    }

    private void a() {
        b bVar;
        int size = this.b.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            RecyclerView recyclerView = this.b.get(i2);
            if (recyclerView.getWindowVisibility() == 0) {
                recyclerView.ac.a(recyclerView, false);
                i += recyclerView.ac.d;
            }
        }
        this.f.ensureCapacity(i);
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            RecyclerView recyclerView2 = this.b.get(i4);
            if (recyclerView2.getWindowVisibility() == 0) {
                a aVar = recyclerView2.ac;
                int abs = Math.abs(aVar.f1077a) + Math.abs(aVar.b);
                int i5 = i3;
                for (int i6 = 0; i6 < aVar.d * 2; i6 += 2) {
                    if (i5 >= this.f.size()) {
                        bVar = new b();
                        this.f.add(bVar);
                    } else {
                        bVar = this.f.get(i5);
                    }
                    int i7 = aVar.c[i6 + 1];
                    bVar.f1078a = i7 <= abs;
                    bVar.b = abs;
                    bVar.c = i7;
                    bVar.d = recyclerView2;
                    bVar.e = aVar.c[i6];
                    i5++;
                }
                i3 = i5;
            }
        }
        Collections.sort(this.f, e);
    }

    static boolean a(RecyclerView recyclerView, int i) {
        int c = recyclerView.z.c();
        for (int i2 = 0; i2 < c; i2++) {
            RecyclerView.z e2 = RecyclerView.e(recyclerView.z.d(i2));
            if (e2.c == i && !e2.p()) {
                return true;
            }
        }
        return false;
    }

    private RecyclerView.z a(RecyclerView recyclerView, int i, long j) {
        if (a(recyclerView, i)) {
            return null;
        }
        RecyclerView.q qVar = recyclerView.x;
        try {
            recyclerView.p();
            RecyclerView.z a2 = qVar.a(i, false, j);
            if (a2 != null) {
                if (a2.r() && !a2.p()) {
                    qVar.a(a2.f1016a);
                } else {
                    qVar.a(a2, false);
                }
            }
            return a2;
        } finally {
            recyclerView.b(false);
        }
    }

    private void a(@ai RecyclerView recyclerView, long j) {
        if (recyclerView == null) {
            return;
        }
        if (recyclerView.Q && recyclerView.z.c() != 0) {
            recyclerView.d();
        }
        a aVar = recyclerView.ac;
        aVar.a(recyclerView, true);
        if (aVar.d != 0) {
            try {
                androidx.core.i.o.a("RV Nested Prefetch");
                recyclerView.ad.a(recyclerView.F);
                for (int i = 0; i < aVar.d * 2; i += 2) {
                    a(recyclerView, aVar.c[i], j);
                }
            } finally {
                androidx.core.i.o.b();
            }
        }
    }

    private void a(b bVar, long j) {
        RecyclerView.z a2 = a(bVar.d, bVar.e, bVar.f1078a ? Long.MAX_VALUE : j);
        if (a2 == null || a2.b == null || !a2.r() || a2.p()) {
            return;
        }
        a(a2.b.get(), j);
    }

    private void b(long j) {
        for (int i = 0; i < this.f.size(); i++) {
            b bVar = this.f.get(i);
            if (bVar.d == null) {
                return;
            }
            a(bVar, j);
            bVar.a();
        }
    }

    void a(long j) {
        a();
        b(j);
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            androidx.core.i.o.a("RV Prefetch");
            if (this.b.isEmpty()) {
                return;
            }
            int size = this.b.size();
            long j = 0;
            for (int i = 0; i < size; i++) {
                RecyclerView recyclerView = this.b.get(i);
                if (recyclerView.getWindowVisibility() == 0) {
                    j = Math.max(recyclerView.getDrawingTime(), j);
                }
            }
            if (j == 0) {
                return;
            }
            a(TimeUnit.MILLISECONDS.toNanos(j) + this.d);
        } finally {
            this.c = 0L;
            androidx.core.i.o.b();
        }
    }
}
