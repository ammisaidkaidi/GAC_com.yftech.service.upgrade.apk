package androidx.recyclerview.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.view.MotionEvent;
import androidx.annotation.ai;
import androidx.annotation.ax;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: Access modifiers changed from: package-private */
@ax
/* loaded from: /home/user/work/dex/classes.dex */
public class k extends RecyclerView.h implements RecyclerView.m {
    private static final int k = 0;
    private static final int l = 1;
    private static final int m = 2;
    private static final int n = 0;
    private static final int o = 1;
    private static final int p = 2;
    private static final int q = 0;
    private static final int r = 1;
    private static final int s = 2;
    private static final int t = 3;
    private static final int u = 500;
    private static final int v = 1500;
    private static final int w = 1200;
    private static final int x = 500;
    private static final int y = 255;
    private final int B;
    private final int C;
    private final int D;
    private final int E;
    private final StateListDrawable F;
    private final Drawable G;
    private final int H;
    private final int I;
    private RecyclerView L;

    /* renamed from: a, reason: collision with root package name */
    final StateListDrawable f1071a;
    final Drawable b;

    @ax
    int c;

    @ax
    int d;

    @ax
    float e;

    @ax
    int f;

    @ax
    int g;

    @ax
    float h;
    private static final int[] z = {R.attr.state_pressed};
    private static final int[] A = new int[0];
    private int J = 0;
    private int K = 0;
    private boolean M = false;
    private boolean N = false;
    private int O = 0;
    private int P = 0;
    private final int[] Q = new int[2];
    private final int[] R = new int[2];
    final ValueAnimator i = ValueAnimator.ofFloat(0.0f, 1.0f);
    int j = 0;
    private final Runnable S = new Runnable() { // from class: androidx.recyclerview.widget.k.1
        @Override // java.lang.Runnable
        public void run() {
            k.this.b(500);
        }
    };
    private final RecyclerView.n T = new RecyclerView.n() { // from class: androidx.recyclerview.widget.k.2
        @Override // androidx.recyclerview.widget.RecyclerView.n
        public void a(RecyclerView recyclerView, int i, int i2) {
            k.this.a(recyclerView.computeHorizontalScrollOffset(), recyclerView.computeVerticalScrollOffset());
        }
    };

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void a(boolean z2) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i, int i2, int i3) {
        this.f1071a = stateListDrawable;
        this.b = drawable;
        this.F = stateListDrawable2;
        this.G = drawable2;
        this.D = Math.max(i, stateListDrawable.getIntrinsicWidth());
        this.E = Math.max(i, drawable.getIntrinsicWidth());
        this.H = Math.max(i, stateListDrawable2.getIntrinsicWidth());
        this.I = Math.max(i, drawable2.getIntrinsicWidth());
        this.B = i2;
        this.C = i3;
        this.f1071a.setAlpha(255);
        this.b.setAlpha(255);
        this.i.addListener(new a());
        this.i.addUpdateListener(new b());
        a(recyclerView);
    }

    public void a(@ai RecyclerView recyclerView) {
        if (this.L == recyclerView) {
            return;
        }
        if (this.L != null) {
            j();
        }
        this.L = recyclerView;
        if (this.L != null) {
            i();
        }
    }

    private void i() {
        this.L.a((RecyclerView.h) this);
        this.L.a((RecyclerView.m) this);
        this.L.a(this.T);
    }

    private void j() {
        this.L.b((RecyclerView.h) this);
        this.L.b((RecyclerView.m) this);
        this.L.b(this.T);
        l();
    }

    void a() {
        this.L.invalidate();
    }

    void a(int i) {
        if (i == 2 && this.O != 2) {
            this.f1071a.setState(z);
            l();
        }
        if (i == 0) {
            a();
        } else {
            d();
        }
        if (this.O == 2 && i != 2) {
            this.f1071a.setState(A);
            c(w);
        } else if (i == 1) {
            c(v);
        }
        this.O = i;
    }

    private boolean k() {
        return androidx.core.n.af.p(this.L) == 1;
    }

    public boolean b() {
        return this.O == 2;
    }

    @ax
    boolean c() {
        return this.O == 1;
    }

    public void d() {
        int i = this.j;
        if (i != 0) {
            if (i != 3) {
                return;
            } else {
                this.i.cancel();
            }
        }
        this.j = 1;
        this.i.setFloatValues(((Float) this.i.getAnimatedValue()).floatValue(), 1.0f);
        this.i.setDuration(500L);
        this.i.setStartDelay(0L);
        this.i.start();
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0002. Please report as an issue. */
    @ax
    void b(int i) {
        switch (this.j) {
            case 1:
                this.i.cancel();
            case 2:
                this.j = 3;
                this.i.setFloatValues(((Float) this.i.getAnimatedValue()).floatValue(), 0.0f);
                this.i.setDuration(i);
                this.i.start();
                return;
            default:
                return;
        }
    }

    private void l() {
        this.L.removeCallbacks(this.S);
    }

    private void c(int i) {
        l();
        this.L.postDelayed(this.S, i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public void b(Canvas canvas, RecyclerView recyclerView, RecyclerView.w wVar) {
        if (this.J != this.L.getWidth() || this.K != this.L.getHeight()) {
            this.J = this.L.getWidth();
            this.K = this.L.getHeight();
            a(0);
        } else if (this.j != 0) {
            if (this.M) {
                a(canvas);
            }
            if (this.N) {
                b(canvas);
            }
        }
    }

    private void a(Canvas canvas) {
        int i = this.J - this.D;
        int i2 = this.d - (this.c / 2);
        this.f1071a.setBounds(0, 0, this.D, this.c);
        this.b.setBounds(0, 0, this.E, this.K);
        if (k()) {
            this.b.draw(canvas);
            canvas.translate(this.D, i2);
            canvas.scale(-1.0f, 1.0f);
            this.f1071a.draw(canvas);
            canvas.scale(1.0f, 1.0f);
            canvas.translate(-this.D, -i2);
            return;
        }
        canvas.translate(i, 0.0f);
        this.b.draw(canvas);
        canvas.translate(0.0f, i2);
        this.f1071a.draw(canvas);
        canvas.translate(-i, -i2);
    }

    private void b(Canvas canvas) {
        int i = this.K - this.H;
        int i2 = this.g - (this.f / 2);
        this.F.setBounds(0, 0, this.f, this.H);
        this.G.setBounds(0, 0, this.J, this.I);
        canvas.translate(0.0f, i);
        this.G.draw(canvas);
        canvas.translate(i2, 0.0f);
        this.F.draw(canvas);
        canvas.translate(-i2, -i);
    }

    void a(int i, int i2) {
        int computeVerticalScrollRange = this.L.computeVerticalScrollRange();
        int i3 = this.K;
        this.M = computeVerticalScrollRange - i3 > 0 && this.K >= this.B;
        int computeHorizontalScrollRange = this.L.computeHorizontalScrollRange();
        int i4 = this.J;
        this.N = computeHorizontalScrollRange - i4 > 0 && this.J >= this.B;
        if (!this.M && !this.N) {
            if (this.O != 0) {
                a(0);
                return;
            }
            return;
        }
        if (this.M) {
            float f = i3;
            this.d = (int) ((f * (i2 + (f / 2.0f))) / computeVerticalScrollRange);
            this.c = Math.min(i3, (i3 * i3) / computeVerticalScrollRange);
        }
        if (this.N) {
            float f2 = i4;
            this.g = (int) ((f2 * (i + (f2 / 2.0f))) / computeHorizontalScrollRange);
            this.f = Math.min(i4, (i4 * i4) / computeHorizontalScrollRange);
        }
        if (this.O == 0 || this.O == 1) {
            a(1);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean a(@androidx.annotation.ah RecyclerView recyclerView, @androidx.annotation.ah MotionEvent motionEvent) {
        if (this.O == 1) {
            boolean a2 = a(motionEvent.getX(), motionEvent.getY());
            boolean b2 = b(motionEvent.getX(), motionEvent.getY());
            if (motionEvent.getAction() != 0) {
                return false;
            }
            if (!a2 && !b2) {
                return false;
            }
            if (b2) {
                this.P = 1;
                this.h = (int) motionEvent.getX();
            } else if (a2) {
                this.P = 2;
                this.e = (int) motionEvent.getY();
            }
            a(2);
        } else if (this.O != 2) {
            return false;
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void b(@androidx.annotation.ah RecyclerView recyclerView, @androidx.annotation.ah MotionEvent motionEvent) {
        if (this.O == 0) {
            return;
        }
        if (motionEvent.getAction() == 0) {
            boolean a2 = a(motionEvent.getX(), motionEvent.getY());
            boolean b2 = b(motionEvent.getX(), motionEvent.getY());
            if (a2 || b2) {
                if (b2) {
                    this.P = 1;
                    this.h = (int) motionEvent.getX();
                } else if (a2) {
                    this.P = 2;
                    this.e = (int) motionEvent.getY();
                }
                a(2);
                return;
            }
            return;
        }
        if (motionEvent.getAction() == 1 && this.O == 2) {
            this.e = 0.0f;
            this.h = 0.0f;
            a(1);
            this.P = 0;
            return;
        }
        if (motionEvent.getAction() == 2 && this.O == 2) {
            d();
            if (this.P == 1) {
                b(motionEvent.getX());
            }
            if (this.P == 2) {
                a(motionEvent.getY());
            }
        }
    }

    private void a(float f) {
        int[] m2 = m();
        float max = Math.max(m2[0], Math.min(m2[1], f));
        if (Math.abs(this.d - max) < 2.0f) {
            return;
        }
        int a2 = a(this.e, max, m2, this.L.computeVerticalScrollRange(), this.L.computeVerticalScrollOffset(), this.K);
        if (a2 != 0) {
            this.L.scrollBy(0, a2);
        }
        this.e = max;
    }

    private void b(float f) {
        int[] n2 = n();
        float max = Math.max(n2[0], Math.min(n2[1], f));
        if (Math.abs(this.g - max) < 2.0f) {
            return;
        }
        int a2 = a(this.h, max, n2, this.L.computeHorizontalScrollRange(), this.L.computeHorizontalScrollOffset(), this.J);
        if (a2 != 0) {
            this.L.scrollBy(a2, 0);
        }
        this.h = max;
    }

    private int a(float f, float f2, int[] iArr, int i, int i2, int i3) {
        int i4 = iArr[1] - iArr[0];
        if (i4 == 0) {
            return 0;
        }
        int i5 = i - i3;
        int i6 = (int) (((f2 - f) / i4) * i5);
        int i7 = i2 + i6;
        if (i7 >= i5 || i7 < 0) {
            return 0;
        }
        return i6;
    }

    @ax
    boolean a(float f, float f2) {
        if (!k() ? f >= this.J - this.D : f <= this.D / 2) {
            if (f2 >= this.d - (this.c / 2) && f2 <= this.d + (this.c / 2)) {
                return true;
            }
        }
        return false;
    }

    @ax
    boolean b(float f, float f2) {
        return f2 >= ((float) (this.K - this.H)) && f >= ((float) (this.g - (this.f / 2))) && f <= ((float) (this.g + (this.f / 2)));
    }

    @ax
    Drawable e() {
        return this.G;
    }

    @ax
    Drawable f() {
        return this.F;
    }

    @ax
    Drawable g() {
        return this.b;
    }

    @ax
    Drawable h() {
        return this.f1071a;
    }

    private int[] m() {
        this.Q[0] = this.C;
        this.Q[1] = this.K - this.C;
        return this.Q;
    }

    private int[] n() {
        this.R[0] = this.C;
        this.R[1] = this.J - this.C;
        return this.R;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private class a extends AnimatorListenerAdapter {
        private boolean b = false;

        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.b) {
                this.b = false;
            } else if (((Float) k.this.i.getAnimatedValue()).floatValue() == 0.0f) {
                k.this.j = 0;
                k.this.a(0);
            } else {
                k.this.j = 2;
                k.this.a();
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.b = true;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int floatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
            k.this.f1071a.setAlpha(floatValue);
            k.this.b.setAlpha(floatValue);
            k.this.a();
        }
    }
}
