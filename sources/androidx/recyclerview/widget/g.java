package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public class g {
    private static final boolean d = false;
    private static final String e = "ChildrenHelper";

    /* renamed from: a, reason: collision with root package name */
    final b f1052a;
    final a b = new a();
    final List<View> c = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface b {
        int a();

        int a(View view);

        void a(int i);

        void a(View view, int i);

        void a(View view, int i, ViewGroup.LayoutParams layoutParams);

        View b(int i);

        RecyclerView.z b(View view);

        void b();

        void c(int i);

        void c(View view);

        void d(View view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(b bVar) {
        this.f1052a = bVar;
    }

    private void g(View view) {
        this.c.add(view);
        this.f1052a.c(view);
    }

    private boolean h(View view) {
        if (!this.c.remove(view)) {
            return false;
        }
        this.f1052a.d(view);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(View view, boolean z) {
        a(view, -1, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(View view, int i, boolean z) {
        int f;
        if (i < 0) {
            f = this.f1052a.a();
        } else {
            f = f(i);
        }
        this.b.a(f, z);
        if (z) {
            g(view);
        }
        this.f1052a.a(view, f);
    }

    private int f(int i) {
        if (i < 0) {
            return -1;
        }
        int a2 = this.f1052a.a();
        int i2 = i;
        while (i2 < a2) {
            int e2 = i - (i2 - this.b.e(i2));
            if (e2 == 0) {
                while (this.b.c(i2)) {
                    i2++;
                }
                return i2;
            }
            i2 += e2;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(View view) {
        int a2 = this.f1052a.a(view);
        if (a2 < 0) {
            return;
        }
        if (this.b.d(a2)) {
            h(view);
        }
        this.f1052a.a(a2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i) {
        int f = f(i);
        View b2 = this.f1052a.b(f);
        if (b2 == null) {
            return;
        }
        if (this.b.d(f)) {
            h(b2);
        }
        this.f1052a.a(f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View b(int i) {
        return this.f1052a.b(f(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.b.a();
        for (int size = this.c.size() - 1; size >= 0; size--) {
            this.f1052a.d(this.c.get(size));
            this.c.remove(size);
        }
        this.f1052a.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View c(int i) {
        int size = this.c.size();
        for (int i2 = 0; i2 < size; i2++) {
            View view = this.c.get(i2);
            RecyclerView.z b2 = this.f1052a.b(view);
            if (b2.e() == i && !b2.p() && !b2.s()) {
                return view;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        int f;
        if (i < 0) {
            f = this.f1052a.a();
        } else {
            f = f(i);
        }
        this.b.a(f, z);
        if (z) {
            g(view);
        }
        this.f1052a.a(view, f, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b() {
        return this.f1052a.a() - this.c.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c() {
        return this.f1052a.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View d(int i) {
        return this.f1052a.b(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(int i) {
        int f = f(i);
        this.b.d(f);
        this.f1052a.c(f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b(View view) {
        int a2 = this.f1052a.a(view);
        if (a2 == -1 || this.b.c(a2)) {
            return -1;
        }
        return a2 - this.b.e(a2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c(View view) {
        return this.c.contains(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(View view) {
        int a2 = this.f1052a.a(view);
        if (a2 < 0) {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
        this.b.a(a2);
        g(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(View view) {
        int a2 = this.f1052a.a(view);
        if (a2 < 0) {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
        if (!this.b.c(a2)) {
            throw new RuntimeException("trying to unhide a view that was not hidden" + view);
        }
        this.b.b(a2);
        h(view);
    }

    public String toString() {
        return this.b.toString() + ", hidden list:" + this.c.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean f(View view) {
        int a2 = this.f1052a.a(view);
        if (a2 == -1) {
            h(view);
            return true;
        }
        if (!this.b.c(a2)) {
            return false;
        }
        this.b.d(a2);
        h(view);
        this.f1052a.a(a2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        static final int f1053a = 64;
        static final long b = Long.MIN_VALUE;
        long c = 0;
        a d;

        a() {
        }

        void a(int i) {
            if (i >= 64) {
                b();
                this.d.a(i - 64);
            } else {
                this.c |= 1 << i;
            }
        }

        private void b() {
            if (this.d == null) {
                this.d = new a();
            }
        }

        void b(int i) {
            if (i >= 64) {
                if (this.d != null) {
                    this.d.b(i - 64);
                    return;
                }
                return;
            }
            this.c &= ~(1 << i);
        }

        boolean c(int i) {
            if (i < 64) {
                return ((1 << i) & this.c) != 0;
            }
            b();
            return this.d.c(i - 64);
        }

        void a() {
            this.c = 0L;
            if (this.d != null) {
                this.d.a();
            }
        }

        void a(int i, boolean z) {
            if (i >= 64) {
                b();
                this.d.a(i - 64, z);
                return;
            }
            boolean z2 = (this.c & b) != 0;
            long j = (1 << i) - 1;
            this.c = (this.c & j) | (((~j) & this.c) << 1);
            if (z) {
                a(i);
            } else {
                b(i);
            }
            if (z2 || this.d != null) {
                b();
                this.d.a(0, z2);
            }
        }

        boolean d(int i) {
            if (i >= 64) {
                b();
                return this.d.d(i - 64);
            }
            long j = 1 << i;
            boolean z = (this.c & j) != 0;
            this.c &= ~j;
            long j2 = j - 1;
            this.c = (this.c & j2) | Long.rotateRight((~j2) & this.c, 1);
            if (this.d != null) {
                if (this.d.c(0)) {
                    a(63);
                }
                this.d.d(0);
            }
            return z;
        }

        int e(int i) {
            if (this.d == null) {
                if (i >= 64) {
                    return Long.bitCount(this.c);
                }
                return Long.bitCount(((1 << i) - 1) & this.c);
            }
            if (i < 64) {
                return Long.bitCount(((1 << i) - 1) & this.c);
            }
            return this.d.e(i - 64) + Long.bitCount(this.c);
        }

        public String toString() {
            if (this.d == null) {
                return Long.toBinaryString(this.c);
            }
            return this.d.toString() + "xx" + Long.toBinaryString(this.c);
        }
    }
}
