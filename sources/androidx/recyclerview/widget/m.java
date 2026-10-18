package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.view.animation.Interpolator;
import androidx.annotation.ai;
import androidx.recyclerview.a;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class m extends RecyclerView.h implements RecyclerView.k {
    private static final String F = "ItemTouchHelper";
    private static final boolean G = false;
    private static final int H = -1;
    private static final int I = 255;
    private static final int J = 1000;

    /* renamed from: a, reason: collision with root package name */
    public static final int f1079a = 1;
    public static final int b = 2;
    public static final int c = 4;
    public static final int d = 8;
    public static final int e = 16;
    public static final int f = 32;
    public static final int g = 0;
    public static final int h = 1;
    public static final int i = 2;
    public static final int j = 2;
    public static final int k = 4;
    public static final int l = 8;
    static final int m = 8;
    static final int n = 65280;
    static final int o = 16711680;
    VelocityTracker B;
    androidx.core.n.g E;
    private float L;
    private float M;
    private float N;
    private float O;
    private int Q;
    private List<RecyclerView.z> R;
    private List<Integer> S;
    private b U;
    private Rect W;
    private long X;
    float r;
    float s;
    float t;
    float u;

    @androidx.annotation.ah
    a w;
    int x;
    RecyclerView z;
    final List<View> p = new ArrayList();
    private final float[] K = new float[2];
    RecyclerView.z q = null;
    int v = -1;
    private int P = 0;
    List<c> y = new ArrayList();
    final Runnable A = new Runnable() { // from class: androidx.recyclerview.widget.m.1
        @Override // java.lang.Runnable
        public void run() {
            if (m.this.q == null || !m.this.b()) {
                return;
            }
            if (m.this.q != null) {
                m.this.a(m.this.q);
            }
            m.this.z.removeCallbacks(m.this.A);
            androidx.core.n.af.a(m.this.z, this);
        }
    };
    private RecyclerView.d T = null;
    View C = null;
    int D = -1;
    private final RecyclerView.m V = new RecyclerView.m() { // from class: androidx.recyclerview.widget.m.2
        @Override // androidx.recyclerview.widget.RecyclerView.m
        public boolean a(@androidx.annotation.ah RecyclerView recyclerView, @androidx.annotation.ah MotionEvent motionEvent) {
            int findPointerIndex;
            c b2;
            m.this.E.a(motionEvent);
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                m.this.v = motionEvent.getPointerId(0);
                m.this.r = motionEvent.getX();
                m.this.s = motionEvent.getY();
                m.this.c();
                if (m.this.q == null && (b2 = m.this.b(motionEvent)) != null) {
                    m.this.r -= b2.l;
                    m.this.s -= b2.m;
                    m.this.a(b2.h, true);
                    if (m.this.p.remove(b2.h.f1016a)) {
                        m.this.w.e(m.this.z, b2.h);
                    }
                    m.this.a(b2.h, b2.i);
                    m.this.a(motionEvent, m.this.x, 0);
                }
            } else if (actionMasked == 3 || actionMasked == 1) {
                m.this.v = -1;
                m.this.a((RecyclerView.z) null, 0);
            } else if (m.this.v != -1 && (findPointerIndex = motionEvent.findPointerIndex(m.this.v)) >= 0) {
                m.this.a(actionMasked, motionEvent, findPointerIndex);
            }
            if (m.this.B != null) {
                m.this.B.addMovement(motionEvent);
            }
            return m.this.q != null;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.m
        public void b(@androidx.annotation.ah RecyclerView recyclerView, @androidx.annotation.ah MotionEvent motionEvent) {
            m.this.E.a(motionEvent);
            if (m.this.B != null) {
                m.this.B.addMovement(motionEvent);
            }
            if (m.this.v == -1) {
                return;
            }
            int actionMasked = motionEvent.getActionMasked();
            int findPointerIndex = motionEvent.findPointerIndex(m.this.v);
            if (findPointerIndex >= 0) {
                m.this.a(actionMasked, motionEvent, findPointerIndex);
            }
            RecyclerView.z zVar = m.this.q;
            if (zVar == null) {
                return;
            }
            if (actionMasked != 6) {
                switch (actionMasked) {
                    case 1:
                        break;
                    case 2:
                        if (findPointerIndex >= 0) {
                            m.this.a(motionEvent, m.this.x, findPointerIndex);
                            m.this.a(zVar);
                            m.this.z.removeCallbacks(m.this.A);
                            m.this.A.run();
                            m.this.z.invalidate();
                            return;
                        }
                        return;
                    case 3:
                        if (m.this.B != null) {
                            m.this.B.clear();
                            break;
                        }
                        break;
                    default:
                        return;
                }
                m.this.a((RecyclerView.z) null, 0);
                m.this.v = -1;
                return;
            }
            int actionIndex = motionEvent.getActionIndex();
            if (motionEvent.getPointerId(actionIndex) == m.this.v) {
                m.this.v = motionEvent.getPointerId(actionIndex == 0 ? 1 : 0);
                m.this.a(motionEvent, m.this.x, actionIndex);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.m
        public void a(boolean z) {
            if (z) {
                m.this.a((RecyclerView.z) null, 0);
            }
        }
    };

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface e {
        void a(@androidx.annotation.ah View view, @androidx.annotation.ah View view2, int i, int i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public void a(@androidx.annotation.ah View view) {
    }

    public m(@androidx.annotation.ah a aVar) {
        this.w = aVar;
    }

    private static boolean a(View view, float f2, float f3, float f4, float f5) {
        return f2 >= f4 && f2 <= f4 + ((float) view.getWidth()) && f3 >= f5 && f3 <= f5 + ((float) view.getHeight());
    }

    public void a(@ai RecyclerView recyclerView) {
        if (this.z == recyclerView) {
            return;
        }
        if (this.z != null) {
            e();
        }
        this.z = recyclerView;
        if (recyclerView != null) {
            Resources resources = recyclerView.getResources();
            this.L = resources.getDimension(a.c.item_touch_helper_swipe_escape_velocity);
            this.M = resources.getDimension(a.c.item_touch_helper_swipe_escape_max_velocity);
            d();
        }
    }

    private void d() {
        this.Q = ViewConfiguration.get(this.z.getContext()).getScaledTouchSlop();
        this.z.a((RecyclerView.h) this);
        this.z.a(this.V);
        this.z.a((RecyclerView.k) this);
        f();
    }

    private void e() {
        this.z.b((RecyclerView.h) this);
        this.z.b(this.V);
        this.z.b((RecyclerView.k) this);
        for (int size = this.y.size() - 1; size >= 0; size--) {
            this.w.e(this.z, this.y.get(0).h);
        }
        this.y.clear();
        this.C = null;
        this.D = -1;
        h();
        g();
    }

    private void f() {
        this.U = new b();
        this.E = new androidx.core.n.g(this.z.getContext(), this.U);
    }

    private void g() {
        if (this.U != null) {
            this.U.a();
            this.U = null;
        }
        if (this.E != null) {
            this.E = null;
        }
    }

    private void a(float[] fArr) {
        if ((this.x & 12) != 0) {
            fArr[0] = (this.N + this.t) - this.q.f1016a.getLeft();
        } else {
            fArr[0] = this.q.f1016a.getTranslationX();
        }
        if ((this.x & 3) != 0) {
            fArr[1] = (this.O + this.u) - this.q.f1016a.getTop();
        } else {
            fArr[1] = this.q.f1016a.getTranslationY();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public void b(Canvas canvas, RecyclerView recyclerView, RecyclerView.w wVar) {
        float f2;
        float f3;
        if (this.q != null) {
            a(this.K);
            float f4 = this.K[0];
            f3 = this.K[1];
            f2 = f4;
        } else {
            f2 = 0.0f;
            f3 = 0.0f;
        }
        this.w.b(canvas, recyclerView, this.q, this.y, this.P, f2, f3);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public void a(Canvas canvas, RecyclerView recyclerView, RecyclerView.w wVar) {
        float f2;
        float f3;
        this.D = -1;
        if (this.q != null) {
            a(this.K);
            float f4 = this.K[0];
            f3 = this.K[1];
            f2 = f4;
        } else {
            f2 = 0.0f;
            f3 = 0.0f;
        }
        this.w.a(canvas, recyclerView, this.q, this.y, this.P, f2, f3);
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0139  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void a(@ai RecyclerView.z zVar, int i2) {
        boolean z;
        boolean z2;
        ViewParent parent;
        float f2;
        float signum;
        if (zVar == this.q && i2 == this.P) {
            return;
        }
        this.X = Long.MIN_VALUE;
        int i3 = this.P;
        a(zVar, true);
        this.P = i2;
        if (i2 == 2) {
            if (zVar == null) {
                throw new IllegalArgumentException("Must pass a ViewHolder when dragging");
            }
            this.C = zVar.f1016a;
            i();
        }
        int i4 = (1 << ((i2 * 8) + 8)) - 1;
        if (this.q != null) {
            final RecyclerView.z zVar2 = this.q;
            if (zVar2.f1016a.getParent() != null) {
                int e2 = i3 == 2 ? 0 : e(zVar2);
                h();
                if (e2 == 4 || e2 == 8 || e2 == 16 || e2 == 32) {
                    f2 = 0.0f;
                    signum = Math.signum(this.t) * this.z.getWidth();
                } else {
                    switch (e2) {
                        case 1:
                        case 2:
                            signum = 0.0f;
                            f2 = Math.signum(this.u) * this.z.getHeight();
                            break;
                        default:
                            signum = 0.0f;
                            f2 = 0.0f;
                            break;
                    }
                }
                int i5 = i3 == 2 ? 8 : e2 > 0 ? 2 : 4;
                a(this.K);
                float f3 = this.K[0];
                float f4 = this.K[1];
                final int i6 = e2;
                c cVar = new c(zVar2, i5, i3, f3, f4, signum, f2) { // from class: androidx.recyclerview.widget.m.3
                    @Override // androidx.recyclerview.widget.m.c, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        super.onAnimationEnd(animator);
                        if (this.n) {
                            return;
                        }
                        if (i6 <= 0) {
                            m.this.w.e(m.this.z, zVar2);
                        } else {
                            m.this.p.add(zVar2.f1016a);
                            this.k = true;
                            if (i6 > 0) {
                                m.this.a(this, i6);
                            }
                        }
                        if (m.this.C == zVar2.f1016a) {
                            m.this.c(zVar2.f1016a);
                        }
                    }
                };
                cVar.a(this.w.a(this.z, i5, signum - f3, f2 - f4));
                this.y.add(cVar);
                cVar.a();
                z = true;
            } else {
                c(zVar2.f1016a);
                this.w.e(this.z, zVar2);
                z = false;
            }
            this.q = null;
        } else {
            z = false;
        }
        if (zVar != null) {
            this.x = (this.w.b(this.z, zVar) & i4) >> (this.P * 8);
            this.N = zVar.f1016a.getLeft();
            this.O = zVar.f1016a.getTop();
            this.q = zVar;
            if (i2 == 2) {
                z2 = false;
                this.q.f1016a.performHapticFeedback(0);
                parent = this.z.getParent();
                if (parent != null) {
                    if (this.q != null) {
                        z2 = true;
                    }
                    parent.requestDisallowInterceptTouchEvent(z2);
                }
                if (!z) {
                    this.z.getLayoutManager().aa();
                }
                this.w.b(this.q, this.P);
                this.z.invalidate();
            }
        }
        z2 = false;
        parent = this.z.getParent();
        if (parent != null) {
        }
        if (!z) {
        }
        this.w.b(this.q, this.P);
        this.z.invalidate();
    }

    void a(final c cVar, final int i2) {
        this.z.post(new Runnable() { // from class: androidx.recyclerview.widget.m.4
            @Override // java.lang.Runnable
            public void run() {
                if (m.this.z == null || !m.this.z.isAttachedToWindow() || cVar.n || cVar.h.f() == -1) {
                    return;
                }
                RecyclerView.f itemAnimator = m.this.z.getItemAnimator();
                if ((itemAnimator == null || !itemAnimator.a((RecyclerView.f.b) null)) && !m.this.a()) {
                    m.this.w.a(cVar.h, i2);
                } else {
                    m.this.z.post(this);
                }
            }
        });
    }

    boolean a() {
        int size = this.y.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (!this.y.get(i2).o) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00c7, code lost:
    
        if (r1 > 0) goto L37;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0106 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0103  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    boolean b() {
        int i2;
        int i3;
        int i4;
        int width;
        if (this.q == null) {
            this.X = Long.MIN_VALUE;
            return false;
        }
        long currentTimeMillis = System.currentTimeMillis();
        long j2 = this.X == Long.MIN_VALUE ? 0L : currentTimeMillis - this.X;
        RecyclerView.i layoutManager = this.z.getLayoutManager();
        if (this.W == null) {
            this.W = new Rect();
        }
        layoutManager.b(this.q.f1016a, this.W);
        if (layoutManager.i()) {
            int i5 = (int) (this.N + this.t);
            int paddingLeft = (i5 - this.W.left) - this.z.getPaddingLeft();
            if (this.t < 0.0f && paddingLeft < 0) {
                i2 = paddingLeft;
            } else if (this.t > 0.0f && (width = ((i5 + this.q.f1016a.getWidth()) + this.W.right) - (this.z.getWidth() - this.z.getPaddingRight())) > 0) {
                i2 = width;
            }
            if (layoutManager.j()) {
                int i6 = (int) (this.O + this.u);
                int paddingTop = (i6 - this.W.top) - this.z.getPaddingTop();
                if (this.u < 0.0f && paddingTop < 0) {
                    i3 = paddingTop;
                } else if (this.u > 0.0f) {
                    i3 = ((i6 + this.q.f1016a.getHeight()) + this.W.bottom) - (this.z.getHeight() - this.z.getPaddingBottom());
                }
                if (i2 != 0) {
                    i2 = this.w.a(this.z, this.q.f1016a.getWidth(), i2, this.z.getWidth(), j2);
                }
                int i7 = i2;
                if (i3 != 0) {
                    i4 = i7;
                    i3 = this.w.a(this.z, this.q.f1016a.getHeight(), i3, this.z.getHeight(), j2);
                } else {
                    i4 = i7;
                }
                if (i4 == 0 || i3 != 0) {
                    if (this.X == Long.MIN_VALUE) {
                        this.X = currentTimeMillis;
                    }
                    this.z.scrollBy(i4, i3);
                    return true;
                }
                this.X = Long.MIN_VALUE;
                return false;
            }
            i3 = 0;
            if (i2 != 0) {
            }
            int i72 = i2;
            if (i3 != 0) {
            }
            if (i4 == 0) {
            }
            if (this.X == Long.MIN_VALUE) {
            }
            this.z.scrollBy(i4, i3);
            return true;
        }
        i2 = 0;
        if (layoutManager.j()) {
        }
        i3 = 0;
        if (i2 != 0) {
        }
        int i722 = i2;
        if (i3 != 0) {
        }
        if (i4 == 0) {
        }
        if (this.X == Long.MIN_VALUE) {
        }
        this.z.scrollBy(i4, i3);
        return true;
    }

    private List<RecyclerView.z> d(RecyclerView.z zVar) {
        RecyclerView.z zVar2 = zVar;
        if (this.R == null) {
            this.R = new ArrayList();
            this.S = new ArrayList();
        } else {
            this.R.clear();
            this.S.clear();
        }
        int d2 = this.w.d();
        int round = Math.round(this.N + this.t) - d2;
        int round2 = Math.round(this.O + this.u) - d2;
        int i2 = d2 * 2;
        int width = zVar2.f1016a.getWidth() + round + i2;
        int height = zVar2.f1016a.getHeight() + round2 + i2;
        int i3 = (round + width) / 2;
        int i4 = (round2 + height) / 2;
        RecyclerView.i layoutManager = this.z.getLayoutManager();
        int H2 = layoutManager.H();
        int i5 = 0;
        while (i5 < H2) {
            View j2 = layoutManager.j(i5);
            if (j2 != zVar2.f1016a && j2.getBottom() >= round2 && j2.getTop() <= height && j2.getRight() >= round && j2.getLeft() <= width) {
                RecyclerView.z b2 = this.z.b(j2);
                if (this.w.a(this.z, this.q, b2)) {
                    int abs = Math.abs(i3 - ((j2.getLeft() + j2.getRight()) / 2));
                    int abs2 = Math.abs(i4 - ((j2.getTop() + j2.getBottom()) / 2));
                    int i6 = (abs * abs) + (abs2 * abs2);
                    int size = this.R.size();
                    int i7 = 0;
                    for (int i8 = 0; i8 < size && i6 > this.S.get(i8).intValue(); i8++) {
                        i7++;
                    }
                    this.R.add(i7, b2);
                    this.S.add(i7, Integer.valueOf(i6));
                }
            }
            i5++;
            zVar2 = zVar;
        }
        return this.R;
    }

    void a(RecyclerView.z zVar) {
        if (!this.z.isLayoutRequested() && this.P == 2) {
            float b2 = this.w.b(zVar);
            int i2 = (int) (this.N + this.t);
            int i3 = (int) (this.O + this.u);
            if (Math.abs(i3 - zVar.f1016a.getTop()) >= zVar.f1016a.getHeight() * b2 || Math.abs(i2 - zVar.f1016a.getLeft()) >= zVar.f1016a.getWidth() * b2) {
                List<RecyclerView.z> d2 = d(zVar);
                if (d2.size() == 0) {
                    return;
                }
                RecyclerView.z a2 = this.w.a(zVar, d2, i2, i3);
                if (a2 == null) {
                    this.R.clear();
                    this.S.clear();
                    return;
                }
                int f2 = a2.f();
                int f3 = zVar.f();
                if (this.w.b(this.z, zVar, a2)) {
                    this.w.a(this.z, zVar, f3, a2, f2, i2, i3);
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public void b(@androidx.annotation.ah View view) {
        c(view);
        RecyclerView.z b2 = this.z.b(view);
        if (b2 == null) {
            return;
        }
        if (this.q != null && b2 == this.q) {
            a((RecyclerView.z) null, 0);
            return;
        }
        a(b2, false);
        if (this.p.remove(b2.f1016a)) {
            this.w.e(this.z, b2);
        }
    }

    void a(RecyclerView.z zVar, boolean z) {
        for (int size = this.y.size() - 1; size >= 0; size--) {
            c cVar = this.y.get(size);
            if (cVar.h == zVar) {
                cVar.n |= z;
                if (!cVar.o) {
                    cVar.b();
                }
                this.y.remove(size);
                return;
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public void a(Rect rect, View view, RecyclerView recyclerView, RecyclerView.w wVar) {
        rect.setEmpty();
    }

    void c() {
        if (this.B != null) {
            this.B.recycle();
        }
        this.B = VelocityTracker.obtain();
    }

    private void h() {
        if (this.B != null) {
            this.B.recycle();
            this.B = null;
        }
    }

    private RecyclerView.z c(MotionEvent motionEvent) {
        View a2;
        RecyclerView.i layoutManager = this.z.getLayoutManager();
        if (this.v == -1) {
            return null;
        }
        int findPointerIndex = motionEvent.findPointerIndex(this.v);
        float x = motionEvent.getX(findPointerIndex) - this.r;
        float y = motionEvent.getY(findPointerIndex) - this.s;
        float abs = Math.abs(x);
        float abs2 = Math.abs(y);
        if (abs < this.Q && abs2 < this.Q) {
            return null;
        }
        if (abs > abs2 && layoutManager.i()) {
            return null;
        }
        if ((abs2 <= abs || !layoutManager.j()) && (a2 = a(motionEvent)) != null) {
            return this.z.b(a2);
        }
        return null;
    }

    void a(int i2, MotionEvent motionEvent, int i3) {
        RecyclerView.z c2;
        int b2;
        if (this.q != null || i2 != 2 || this.P == 2 || !this.w.c() || this.z.getScrollState() == 1 || (c2 = c(motionEvent)) == null || (b2 = (this.w.b(this.z, c2) & 65280) >> 8) == 0) {
            return;
        }
        float x = motionEvent.getX(i3);
        float y = motionEvent.getY(i3);
        float f2 = x - this.r;
        float f3 = y - this.s;
        float abs = Math.abs(f2);
        float abs2 = Math.abs(f3);
        if (abs >= this.Q || abs2 >= this.Q) {
            if (abs > abs2) {
                if (f2 < 0.0f && (b2 & 4) == 0) {
                    return;
                }
                if (f2 > 0.0f && (b2 & 8) == 0) {
                    return;
                }
            } else {
                if (f3 < 0.0f && (b2 & 1) == 0) {
                    return;
                }
                if (f3 > 0.0f && (b2 & 2) == 0) {
                    return;
                }
            }
            this.u = 0.0f;
            this.t = 0.0f;
            this.v = motionEvent.getPointerId(0);
            a(c2, 1);
        }
    }

    View a(MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        if (this.q != null) {
            View view = this.q.f1016a;
            if (a(view, x, y, this.N + this.t, this.O + this.u)) {
                return view;
            }
        }
        for (int size = this.y.size() - 1; size >= 0; size--) {
            c cVar = this.y.get(size);
            View view2 = cVar.h.f1016a;
            if (a(view2, x, y, cVar.l, cVar.m)) {
                return view2;
            }
        }
        return this.z.a(x, y);
    }

    public void b(@androidx.annotation.ah RecyclerView.z zVar) {
        if (!this.w.c(this.z, zVar)) {
            Log.e(F, "Start drag has been called but dragging is not enabled");
            return;
        }
        if (zVar.f1016a.getParent() != this.z) {
            Log.e(F, "Start drag has been called with a view holder which is not a child of the RecyclerView which is controlled by this ItemTouchHelper.");
            return;
        }
        c();
        this.u = 0.0f;
        this.t = 0.0f;
        a(zVar, 2);
    }

    public void c(@androidx.annotation.ah RecyclerView.z zVar) {
        if (!this.w.d(this.z, zVar)) {
            Log.e(F, "Start swipe has been called but swiping is not enabled");
            return;
        }
        if (zVar.f1016a.getParent() != this.z) {
            Log.e(F, "Start swipe has been called with a view holder which is not a child of the RecyclerView controlled by this ItemTouchHelper.");
            return;
        }
        c();
        this.u = 0.0f;
        this.t = 0.0f;
        a(zVar, 1);
    }

    c b(MotionEvent motionEvent) {
        if (this.y.isEmpty()) {
            return null;
        }
        View a2 = a(motionEvent);
        for (int size = this.y.size() - 1; size >= 0; size--) {
            c cVar = this.y.get(size);
            if (cVar.h.f1016a == a2) {
                return cVar;
            }
        }
        return null;
    }

    void a(MotionEvent motionEvent, int i2, int i3) {
        float x = motionEvent.getX(i3);
        float y = motionEvent.getY(i3);
        this.t = x - this.r;
        this.u = y - this.s;
        if ((i2 & 4) == 0) {
            this.t = Math.max(0.0f, this.t);
        }
        if ((i2 & 8) == 0) {
            this.t = Math.min(0.0f, this.t);
        }
        if ((i2 & 1) == 0) {
            this.u = Math.max(0.0f, this.u);
        }
        if ((i2 & 2) == 0) {
            this.u = Math.min(0.0f, this.u);
        }
    }

    private int e(RecyclerView.z zVar) {
        if (this.P == 2) {
            return 0;
        }
        int a2 = this.w.a(this.z, zVar);
        int d2 = (this.w.d(a2, androidx.core.n.af.p(this.z)) & 65280) >> 8;
        if (d2 == 0) {
            return 0;
        }
        int i2 = (a2 & 65280) >> 8;
        if (Math.abs(this.t) > Math.abs(this.u)) {
            int b2 = b(zVar, d2);
            if (b2 > 0) {
                return (i2 & b2) == 0 ? a.a(b2, androidx.core.n.af.p(this.z)) : b2;
            }
            int c2 = c(zVar, d2);
            if (c2 > 0) {
                return c2;
            }
        } else {
            int c3 = c(zVar, d2);
            if (c3 > 0) {
                return c3;
            }
            int b3 = b(zVar, d2);
            if (b3 > 0) {
                return (i2 & b3) == 0 ? a.a(b3, androidx.core.n.af.p(this.z)) : b3;
            }
        }
        return 0;
    }

    private int b(RecyclerView.z zVar, int i2) {
        if ((i2 & 12) == 0) {
            return 0;
        }
        int i3 = this.t > 0.0f ? 8 : 4;
        if (this.B != null && this.v > -1) {
            this.B.computeCurrentVelocity(1000, this.w.b(this.M));
            float xVelocity = this.B.getXVelocity(this.v);
            float yVelocity = this.B.getYVelocity(this.v);
            int i4 = xVelocity > 0.0f ? 8 : 4;
            float abs = Math.abs(xVelocity);
            if ((i4 & i2) != 0 && i3 == i4 && abs >= this.w.a(this.L) && abs > Math.abs(yVelocity)) {
                return i4;
            }
        }
        float width = this.z.getWidth() * this.w.a(zVar);
        if ((i2 & i3) == 0 || Math.abs(this.t) <= width) {
            return 0;
        }
        return i3;
    }

    private int c(RecyclerView.z zVar, int i2) {
        if ((i2 & 3) == 0) {
            return 0;
        }
        int i3 = this.u > 0.0f ? 2 : 1;
        if (this.B != null && this.v > -1) {
            this.B.computeCurrentVelocity(1000, this.w.b(this.M));
            float xVelocity = this.B.getXVelocity(this.v);
            float yVelocity = this.B.getYVelocity(this.v);
            int i4 = yVelocity > 0.0f ? 2 : 1;
            float abs = Math.abs(yVelocity);
            if ((i4 & i2) != 0 && i4 == i3 && abs >= this.w.a(this.L) && abs > Math.abs(xVelocity)) {
                return i4;
            }
        }
        float height = this.z.getHeight() * this.w.a(zVar);
        if ((i2 & i3) == 0 || Math.abs(this.u) <= height) {
            return 0;
        }
        return i3;
    }

    private void i() {
        if (Build.VERSION.SDK_INT >= 21) {
            return;
        }
        if (this.T == null) {
            this.T = new RecyclerView.d() { // from class: androidx.recyclerview.widget.m.5
                @Override // androidx.recyclerview.widget.RecyclerView.d
                public int a(int i2, int i3) {
                    if (m.this.C == null) {
                        return i3;
                    }
                    int i4 = m.this.D;
                    if (i4 == -1) {
                        i4 = m.this.z.indexOfChild(m.this.C);
                        m.this.D = i4;
                    }
                    return i3 == i2 + (-1) ? i4 : i3 < i4 ? i3 : i3 + 1;
                }
            };
        }
        this.z.setChildDrawingOrderCallback(this.T);
    }

    void c(View view) {
        if (view == this.C) {
            this.C = null;
            if (this.T != null) {
                this.z.setChildDrawingOrderCallback(null);
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class a {

        /* renamed from: a, reason: collision with root package name */
        public static final int f1085a = 200;
        public static final int b = 250;
        static final int c = 3158064;
        private static final int d = 789516;
        private static final Interpolator e = new Interpolator() { // from class: androidx.recyclerview.widget.m.a.1
            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float f2) {
                return f2 * f2 * f2 * f2 * f2;
            }
        };
        private static final Interpolator f = new Interpolator() { // from class: androidx.recyclerview.widget.m.a.2
            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float f2) {
                float f3 = f2 - 1.0f;
                return (f3 * f3 * f3 * f3 * f3) + 1.0f;
            }
        };
        private static final long g = 2000;
        private int h = -1;

        public static int a(int i, int i2) {
            int i3 = i & d;
            if (i3 == 0) {
                return i;
            }
            int i4 = i & (~i3);
            if (i2 == 0) {
                return i4 | (i3 << 2);
            }
            int i5 = i3 << 1;
            return i4 | ((-789517) & i5) | ((i5 & d) << 2);
        }

        public static int c(int i, int i2) {
            return i2 << (i * 8);
        }

        public float a(float f2) {
            return f2;
        }

        public float a(@androidx.annotation.ah RecyclerView.z zVar) {
            return 0.5f;
        }

        public abstract int a(@androidx.annotation.ah RecyclerView recyclerView, @androidx.annotation.ah RecyclerView.z zVar);

        public abstract void a(@androidx.annotation.ah RecyclerView.z zVar, int i);

        public boolean a(@androidx.annotation.ah RecyclerView recyclerView, @androidx.annotation.ah RecyclerView.z zVar, @androidx.annotation.ah RecyclerView.z zVar2) {
            return true;
        }

        public float b(float f2) {
            return f2;
        }

        public float b(@androidx.annotation.ah RecyclerView.z zVar) {
            return 0.5f;
        }

        public boolean b() {
            return true;
        }

        public abstract boolean b(@androidx.annotation.ah RecyclerView recyclerView, @androidx.annotation.ah RecyclerView.z zVar, @androidx.annotation.ah RecyclerView.z zVar2);

        public boolean c() {
            return true;
        }

        public int d() {
            return 0;
        }

        public int d(int i, int i2) {
            int i3 = i & c;
            if (i3 == 0) {
                return i;
            }
            int i4 = i & (~i3);
            if (i2 == 0) {
                return (i3 >> 2) | i4;
            }
            int i5 = i3 >> 1;
            return ((c & i5) >> 2) | i4 | ((-3158065) & i5);
        }

        @androidx.annotation.ah
        public static n a() {
            return o.f1089a;
        }

        public static int b(int i, int i2) {
            return c(2, i) | c(1, i2) | c(0, i2 | i);
        }

        final int b(RecyclerView recyclerView, RecyclerView.z zVar) {
            return d(a(recyclerView, zVar), androidx.core.n.af.p(recyclerView));
        }

        boolean c(RecyclerView recyclerView, RecyclerView.z zVar) {
            return (b(recyclerView, zVar) & m.o) != 0;
        }

        boolean d(RecyclerView recyclerView, RecyclerView.z zVar) {
            return (b(recyclerView, zVar) & 65280) != 0;
        }

        public RecyclerView.z a(@androidx.annotation.ah RecyclerView.z zVar, @androidx.annotation.ah List<RecyclerView.z> list, int i, int i2) {
            int bottom;
            int abs;
            int top;
            int abs2;
            int left;
            int abs3;
            int right;
            int abs4;
            int width = zVar.f1016a.getWidth() + i;
            int height = zVar.f1016a.getHeight() + i2;
            int left2 = i - zVar.f1016a.getLeft();
            int top2 = i2 - zVar.f1016a.getTop();
            int size = list.size();
            RecyclerView.z zVar2 = null;
            int i3 = -1;
            for (int i4 = 0; i4 < size; i4++) {
                RecyclerView.z zVar3 = list.get(i4);
                if (left2 > 0 && (right = zVar3.f1016a.getRight() - width) < 0 && zVar3.f1016a.getRight() > zVar.f1016a.getRight() && (abs4 = Math.abs(right)) > i3) {
                    zVar2 = zVar3;
                    i3 = abs4;
                }
                if (left2 < 0 && (left = zVar3.f1016a.getLeft() - i) > 0 && zVar3.f1016a.getLeft() < zVar.f1016a.getLeft() && (abs3 = Math.abs(left)) > i3) {
                    zVar2 = zVar3;
                    i3 = abs3;
                }
                if (top2 < 0 && (top = zVar3.f1016a.getTop() - i2) > 0 && zVar3.f1016a.getTop() < zVar.f1016a.getTop() && (abs2 = Math.abs(top)) > i3) {
                    zVar2 = zVar3;
                    i3 = abs2;
                }
                if (top2 > 0 && (bottom = zVar3.f1016a.getBottom() - height) < 0 && zVar3.f1016a.getBottom() > zVar.f1016a.getBottom() && (abs = Math.abs(bottom)) > i3) {
                    zVar2 = zVar3;
                    i3 = abs;
                }
            }
            return zVar2;
        }

        public void b(@ai RecyclerView.z zVar, int i) {
            if (zVar != null) {
                o.f1089a.b(zVar.f1016a);
            }
        }

        private int a(RecyclerView recyclerView) {
            if (this.h == -1) {
                this.h = recyclerView.getResources().getDimensionPixelSize(a.c.item_touch_helper_max_drag_scroll_per_frame);
            }
            return this.h;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void a(@androidx.annotation.ah RecyclerView recyclerView, @androidx.annotation.ah RecyclerView.z zVar, int i, @androidx.annotation.ah RecyclerView.z zVar2, int i2, int i3, int i4) {
            RecyclerView.i layoutManager = recyclerView.getLayoutManager();
            if (layoutManager instanceof e) {
                ((e) layoutManager).a(zVar.f1016a, zVar2.f1016a, i3, i4);
                return;
            }
            if (layoutManager.i()) {
                if (layoutManager.o(zVar2.f1016a) <= recyclerView.getPaddingLeft()) {
                    recyclerView.e(i2);
                }
                if (layoutManager.q(zVar2.f1016a) >= recyclerView.getWidth() - recyclerView.getPaddingRight()) {
                    recyclerView.e(i2);
                }
            }
            if (layoutManager.j()) {
                if (layoutManager.p(zVar2.f1016a) <= recyclerView.getPaddingTop()) {
                    recyclerView.e(i2);
                }
                if (layoutManager.r(zVar2.f1016a) >= recyclerView.getHeight() - recyclerView.getPaddingBottom()) {
                    recyclerView.e(i2);
                }
            }
        }

        void a(Canvas canvas, RecyclerView recyclerView, RecyclerView.z zVar, List<c> list, int i, float f2, float f3) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                c cVar = list.get(i2);
                cVar.c();
                int save = canvas.save();
                a(canvas, recyclerView, cVar.h, cVar.l, cVar.m, cVar.i, false);
                canvas.restoreToCount(save);
            }
            if (zVar != null) {
                int save2 = canvas.save();
                a(canvas, recyclerView, zVar, f2, f3, i, true);
                canvas.restoreToCount(save2);
            }
        }

        void b(Canvas canvas, RecyclerView recyclerView, RecyclerView.z zVar, List<c> list, int i, float f2, float f3) {
            int size = list.size();
            boolean z = false;
            for (int i2 = 0; i2 < size; i2++) {
                c cVar = list.get(i2);
                int save = canvas.save();
                b(canvas, recyclerView, cVar.h, cVar.l, cVar.m, cVar.i, false);
                canvas.restoreToCount(save);
            }
            if (zVar != null) {
                int save2 = canvas.save();
                b(canvas, recyclerView, zVar, f2, f3, i, true);
                canvas.restoreToCount(save2);
            }
            for (int i3 = size - 1; i3 >= 0; i3--) {
                c cVar2 = list.get(i3);
                if (cVar2.o && !cVar2.k) {
                    list.remove(i3);
                } else if (!cVar2.o) {
                    z = true;
                }
            }
            if (z) {
                recyclerView.invalidate();
            }
        }

        public void e(@androidx.annotation.ah RecyclerView recyclerView, @androidx.annotation.ah RecyclerView.z zVar) {
            o.f1089a.a(zVar.f1016a);
        }

        public void a(@androidx.annotation.ah Canvas canvas, @androidx.annotation.ah RecyclerView recyclerView, @androidx.annotation.ah RecyclerView.z zVar, float f2, float f3, int i, boolean z) {
            o.f1089a.a(canvas, recyclerView, zVar.f1016a, f2, f3, i, z);
        }

        public void b(@androidx.annotation.ah Canvas canvas, @androidx.annotation.ah RecyclerView recyclerView, RecyclerView.z zVar, float f2, float f3, int i, boolean z) {
            o.f1089a.b(canvas, recyclerView, zVar.f1016a, f2, f3, i, z);
        }

        public long a(@androidx.annotation.ah RecyclerView recyclerView, int i, float f2, float f3) {
            RecyclerView.f itemAnimator = recyclerView.getItemAnimator();
            if (itemAnimator == null) {
                return i == 8 ? 200L : 250L;
            }
            if (i == 8) {
                return itemAnimator.e();
            }
            return itemAnimator.g();
        }

        public int a(@androidx.annotation.ah RecyclerView recyclerView, int i, int i2, int i3, long j) {
            int signum = (int) (((int) (((int) Math.signum(i2)) * a(recyclerView) * f.getInterpolation(Math.min(1.0f, (Math.abs(i2) * 1.0f) / i)))) * e.getInterpolation(j <= g ? ((float) j) / 2000.0f : 1.0f));
            return signum == 0 ? i2 > 0 ? 1 : -1 : signum;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class d extends a {
        private int d;
        private int e;

        public d(int i, int i2) {
            this.d = i2;
            this.e = i;
        }

        public void a(int i) {
            this.d = i;
        }

        public void b(int i) {
            this.e = i;
        }

        public int f(@androidx.annotation.ah RecyclerView recyclerView, @androidx.annotation.ah RecyclerView.z zVar) {
            return this.d;
        }

        public int g(@androidx.annotation.ah RecyclerView recyclerView, @androidx.annotation.ah RecyclerView.z zVar) {
            return this.e;
        }

        @Override // androidx.recyclerview.widget.m.a
        public int a(@androidx.annotation.ah RecyclerView recyclerView, @androidx.annotation.ah RecyclerView.z zVar) {
            return b(g(recyclerView, zVar), f(recyclerView, zVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class b extends GestureDetector.SimpleOnGestureListener {
        private boolean b = true;

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            return true;
        }

        b() {
        }

        void a() {
            this.b = false;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            View a2;
            RecyclerView.z b;
            if (this.b && (a2 = m.this.a(motionEvent)) != null && (b = m.this.z.b(a2)) != null && m.this.w.c(m.this.z, b) && motionEvent.getPointerId(0) == m.this.v) {
                int findPointerIndex = motionEvent.findPointerIndex(m.this.v);
                float x = motionEvent.getX(findPointerIndex);
                float y = motionEvent.getY(findPointerIndex);
                m.this.r = x;
                m.this.s = y;
                m mVar = m.this;
                m.this.u = 0.0f;
                mVar.t = 0.0f;
                if (m.this.w.b()) {
                    m.this.a(b, 2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class c implements Animator.AnimatorListener {
        private float b;
        final float d;
        final float e;
        final float f;
        final float g;
        final RecyclerView.z h;
        final int i;
        final int j;
        boolean k;
        float l;
        float m;
        boolean n = false;
        boolean o = false;

        /* renamed from: a, reason: collision with root package name */
        private final ValueAnimator f1087a = ValueAnimator.ofFloat(0.0f, 1.0f);

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }

        c(RecyclerView.z zVar, int i, int i2, float f, float f2, float f3, float f4) {
            this.i = i2;
            this.j = i;
            this.h = zVar;
            this.d = f;
            this.e = f2;
            this.f = f3;
            this.g = f4;
            this.f1087a.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.recyclerview.widget.m.c.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    c.this.a(valueAnimator.getAnimatedFraction());
                }
            });
            this.f1087a.setTarget(zVar.f1016a);
            this.f1087a.addListener(this);
            a(0.0f);
        }

        public void a(long j) {
            this.f1087a.setDuration(j);
        }

        public void a() {
            this.h.a(false);
            this.f1087a.start();
        }

        public void b() {
            this.f1087a.cancel();
        }

        public void a(float f) {
            this.b = f;
        }

        public void c() {
            if (this.d == this.f) {
                this.l = this.h.f1016a.getTranslationX();
            } else {
                this.l = this.d + (this.b * (this.f - this.d));
            }
            if (this.e == this.g) {
                this.m = this.h.f1016a.getTranslationY();
            } else {
                this.m = this.e + (this.b * (this.g - this.e));
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (!this.o) {
                this.h.a(true);
            }
            this.o = true;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            a(1.0f);
        }
    }
}
