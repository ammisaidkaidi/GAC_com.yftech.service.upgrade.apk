package androidx.viewpager2.a;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.ah;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.a.h;
import java.util.Locale;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public final class g extends RecyclerView.n {

    /* renamed from: a, reason: collision with root package name */
    private static final int f1122a = 0;
    private static final int b = 1;
    private static final int c = 2;
    private static final int d = 3;
    private static final int e = 4;
    private static final int f = -1;
    private h.f g;

    @ah
    private final h h;

    @ah
    private final RecyclerView i;

    @ah
    private final LinearLayoutManager j;
    private int k;
    private int l;
    private a m = new a();
    private int n;
    private int o;
    private boolean p;
    private boolean q;
    private boolean r;
    private boolean s;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(@ah h hVar) {
        this.h = hVar;
        this.i = this.h.j;
        this.j = (LinearLayoutManager) this.i.getLayoutManager();
        i();
    }

    private void i() {
        this.k = 0;
        this.l = 0;
        this.m.a();
        this.n = -1;
        this.o = -1;
        this.p = false;
        this.q = false;
        this.s = false;
        this.r = false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void a(@ah RecyclerView recyclerView, int i) {
        boolean z = true;
        if ((this.k != 1 || this.l != 1) && i == 1) {
            a(false);
            return;
        }
        if (k() && i == 2) {
            if (this.q) {
                a(2);
                this.p = true;
                return;
            }
            return;
        }
        if (k() && i == 0) {
            j();
            if (!this.q) {
                if (this.m.f1123a != -1) {
                    a(this.m.f1123a, 0.0f, 0);
                }
            } else if (this.m.c != 0) {
                z = false;
            } else if (this.n != this.m.f1123a) {
                b(this.m.f1123a);
            }
            if (z) {
                a(0);
                i();
            }
        }
        if (this.k == 2 && i == 0 && this.r) {
            j();
            if (this.m.c == 0) {
                if (this.o != this.m.f1123a) {
                    b(this.m.f1123a == -1 ? 0 : this.m.f1123a);
                }
                a(0);
                i();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001d, code lost:
    
        if ((r5 < 0) == r3.h.b()) goto L14;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003d  */
    @Override // androidx.recyclerview.widget.RecyclerView.n
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(@ah RecyclerView recyclerView, int i, int i2) {
        boolean z;
        this.q = true;
        j();
        if (this.p) {
            this.p = false;
            if (i2 <= 0) {
                if (i2 == 0) {
                }
                z = false;
                this.o = (z || this.m.c == 0) ? this.m.f1123a : this.m.f1123a + 1;
                if (this.n != this.o) {
                    b(this.o);
                }
            }
            z = true;
            this.o = (z || this.m.c == 0) ? this.m.f1123a : this.m.f1123a + 1;
            if (this.n != this.o) {
            }
        } else if (this.k == 0) {
            int i3 = this.m.f1123a;
            if (i3 == -1) {
                i3 = 0;
            }
            b(i3);
        }
        a(this.m.f1123a == -1 ? 0 : this.m.f1123a, this.m.b, this.m.c);
        if ((this.m.f1123a == this.o || this.o == -1) && this.m.c == 0 && this.l != 1) {
            a(0);
            i();
        }
    }

    private void j() {
        int top;
        a aVar = this.m;
        aVar.f1123a = this.j.u();
        if (aVar.f1123a == -1) {
            aVar.a();
            return;
        }
        View c2 = this.j.c(aVar.f1123a);
        if (c2 == null) {
            aVar.a();
            return;
        }
        int u = this.j.u(c2);
        int v = this.j.v(c2);
        int s = this.j.s(c2);
        int t = this.j.t(c2);
        ViewGroup.LayoutParams layoutParams = c2.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            u += marginLayoutParams.leftMargin;
            v += marginLayoutParams.rightMargin;
            s += marginLayoutParams.topMargin;
            t += marginLayoutParams.bottomMargin;
        }
        int height = c2.getHeight() + s + t;
        int width = v + c2.getWidth() + u;
        if (this.j.l() == 0) {
            top = (c2.getLeft() - u) - this.i.getPaddingLeft();
            if (this.h.b()) {
                top = -top;
            }
        } else {
            top = (c2.getTop() - s) - this.i.getPaddingTop();
            width = height;
        }
        aVar.c = -top;
        if (aVar.c < 0) {
            if (new androidx.viewpager2.a.a(this.j).a()) {
                throw new IllegalStateException("Page(s) contain a ViewGroup with a LayoutTransition (or animateLayoutChanges=\"true\"), which interferes with the scrolling animation. Make sure to call getLayoutTransition().setAnimateParentHierarchy(false) on all ViewGroups with a LayoutTransition before an animation is started.");
            }
            throw new IllegalStateException(String.format(Locale.US, "Page can only be offset by a positive amount, not by %d", Integer.valueOf(aVar.c)));
        }
        aVar.b = width == 0 ? 0.0f : aVar.c / width;
    }

    private void a(boolean z) {
        this.s = z;
        this.k = z ? 4 : 1;
        if (this.o != -1) {
            this.n = this.o;
            this.o = -1;
        } else if (this.n == -1) {
            this.n = l();
        }
        a(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.r = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, boolean z) {
        this.k = z ? 2 : 3;
        this.s = false;
        boolean z2 = this.o != i;
        this.o = i;
        a(2);
        if (z2) {
            b(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        this.k = 4;
        a(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        if (!f() || this.s) {
            this.s = false;
            j();
            if (this.m.c == 0) {
                if (this.m.f1123a != this.n) {
                    b(this.m.f1123a);
                }
                a(0);
                i();
                return;
            }
            a(2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(h.f fVar) {
        this.g = fVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int d() {
        return this.l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean e() {
        return this.l == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean f() {
        return this.l == 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean g() {
        return this.s;
    }

    private boolean k() {
        return this.k == 1 || this.k == 4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public double h() {
        j();
        return this.m.f1123a + this.m.b;
    }

    private void a(int i) {
        if ((this.k == 3 && this.l == 0) || this.l == i) {
            return;
        }
        this.l = i;
        if (this.g != null) {
            this.g.a(i);
        }
    }

    private void b(int i) {
        if (this.g != null) {
            this.g.b(i);
        }
    }

    private void a(int i, float f2, int i2) {
        if (this.g != null) {
            this.g.a(i, f2, i2);
        }
    }

    private int l() {
        return this.j.u();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        int f1123a;
        float b;
        int c;

        a() {
        }

        void a() {
            this.f1123a = -1;
            this.b = 0.0f;
            this.c = 0;
        }
    }
}
