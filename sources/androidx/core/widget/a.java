package androidx.core.widget;

import android.content.res.Resources;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import androidx.annotation.ah;
import androidx.core.n.af;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class a implements View.OnTouchListener {
    private static final int A = 315;
    private static final int B = 1575;
    private static final float C = Float.MAX_VALUE;
    private static final float D = 0.2f;
    private static final float E = 1.0f;
    private static final int F = ViewConfiguration.getTapTimeout();
    private static final int G = 500;
    private static final int H = 500;

    /* renamed from: a, reason: collision with root package name */
    public static final float f579a = 0.0f;
    public static final float b = Float.MAX_VALUE;
    public static final float c = 0.0f;
    public static final int d = 0;
    public static final int e = 1;
    public static final int f = 2;
    private static final int l = 0;
    private static final int m = 1;
    private static final int z = 1;
    final View h;
    boolean i;
    boolean j;
    boolean k;
    private Runnable o;
    private int r;
    private int s;
    private boolean w;
    private boolean x;
    private boolean y;
    final C0045a g = new C0045a();
    private final Interpolator n = new AccelerateInterpolator();
    private float[] p = {0.0f, 0.0f};
    private float[] q = {Float.MAX_VALUE, Float.MAX_VALUE};
    private float[] t = {0.0f, 0.0f};
    private float[] u = {0.0f, 0.0f};
    private float[] v = {Float.MAX_VALUE, Float.MAX_VALUE};

    static float a(float f2, float f3, float f4) {
        return f2 > f4 ? f4 : f2 < f3 ? f3 : f2;
    }

    static int a(int i, int i2, int i3) {
        return i > i3 ? i3 : i < i2 ? i2 : i;
    }

    public abstract void a(int i, int i2);

    public abstract boolean e(int i);

    public abstract boolean f(int i);

    public a(@ah View view) {
        this.h = view;
        DisplayMetrics displayMetrics = Resources.getSystem().getDisplayMetrics();
        int i = (int) ((displayMetrics.density * 1575.0f) + 0.5f);
        int i2 = (int) ((displayMetrics.density * 315.0f) + 0.5f);
        float f2 = i;
        a(f2, f2);
        float f3 = i2;
        b(f3, f3);
        a(1);
        e(Float.MAX_VALUE, Float.MAX_VALUE);
        d(D, D);
        c(1.0f, 1.0f);
        b(F);
        c(500);
        d(500);
    }

    public a a(boolean z2) {
        if (this.x && !z2) {
            f();
        }
        this.x = z2;
        return this;
    }

    public boolean a() {
        return this.x;
    }

    public a b(boolean z2) {
        this.y = z2;
        return this;
    }

    public boolean b() {
        return this.y;
    }

    @ah
    public a a(float f2, float f3) {
        this.v[0] = f2 / 1000.0f;
        this.v[1] = f3 / 1000.0f;
        return this;
    }

    @ah
    public a b(float f2, float f3) {
        this.u[0] = f2 / 1000.0f;
        this.u[1] = f3 / 1000.0f;
        return this;
    }

    @ah
    public a c(float f2, float f3) {
        this.t[0] = f2 / 1000.0f;
        this.t[1] = f3 / 1000.0f;
        return this;
    }

    @ah
    public a a(int i) {
        this.r = i;
        return this;
    }

    @ah
    public a d(float f2, float f3) {
        this.p[0] = f2;
        this.p[1] = f3;
        return this;
    }

    @ah
    public a e(float f2, float f3) {
        this.q[0] = f2;
        this.q[1] = f3;
        return this;
    }

    @ah
    public a b(int i) {
        this.s = i;
        return this;
    }

    @ah
    public a c(int i) {
        this.g.a(i);
        return this;
    }

    @ah
    public a d(int i) {
        this.g.b(i);
        return this;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (!this.x) {
            return false;
        }
        switch (motionEvent.getActionMasked()) {
            case 0:
                this.j = true;
                this.w = false;
                this.g.a(a(0, motionEvent.getX(), view.getWidth(), this.h.getWidth()), a(1, motionEvent.getY(), view.getHeight(), this.h.getHeight()));
                if (!this.k && c()) {
                    e();
                    break;
                }
                break;
            case 1:
            case 3:
                f();
                break;
            case 2:
                this.g.a(a(0, motionEvent.getX(), view.getWidth(), this.h.getWidth()), a(1, motionEvent.getY(), view.getHeight(), this.h.getHeight()));
                if (!this.k) {
                    e();
                    break;
                }
                break;
        }
        return this.y && this.k;
    }

    boolean c() {
        C0045a c0045a = this.g;
        int f2 = c0045a.f();
        int e2 = c0045a.e();
        return (f2 != 0 && f(f2)) || (e2 != 0 && e(e2));
    }

    private void e() {
        if (this.o == null) {
            this.o = new b();
        }
        this.k = true;
        this.i = true;
        if (!this.w && this.s > 0) {
            af.a(this.h, this.o, this.s);
        } else {
            this.o.run();
        }
        this.w = true;
    }

    private void f() {
        if (this.i) {
            this.k = false;
        } else {
            this.g.b();
        }
    }

    private float a(int i, float f2, float f3, float f4) {
        float a2 = a(this.p[i], f3, this.q[i], f2);
        if (a2 == 0.0f) {
            return 0.0f;
        }
        float f5 = this.t[i];
        float f6 = this.u[i];
        float f7 = this.v[i];
        float f8 = f5 * f4;
        if (a2 > 0.0f) {
            return a(a2 * f8, f6, f7);
        }
        return -a((-a2) * f8, f6, f7);
    }

    private float a(float f2, float f3, float f4, float f5) {
        float interpolation;
        float a2 = a(f2 * f3, 0.0f, f4);
        float f6 = f(f3 - f5, a2) - f(f5, a2);
        if (f6 < 0.0f) {
            interpolation = -this.n.getInterpolation(-f6);
        } else {
            if (f6 <= 0.0f) {
                return 0.0f;
            }
            interpolation = this.n.getInterpolation(f6);
        }
        return a(interpolation, -1.0f, 1.0f);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private float f(float f2, float f3) {
        if (f3 == 0.0f) {
            return 0.0f;
        }
        switch (this.r) {
            case 0:
            case 1:
                if (f2 < f3) {
                    if (f2 >= 0.0f) {
                        return 1.0f - (f2 / f3);
                    }
                    if (this.k && this.r == 1) {
                        return 1.0f;
                    }
                }
                return 0.0f;
            case 2:
                if (f2 < 0.0f) {
                    return f2 / (-f3);
                }
                return 0.0f;
            default:
                return 0.0f;
        }
    }

    void d() {
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
        this.h.onTouchEvent(obtain);
        obtain.recycle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.this.k) {
                if (a.this.i) {
                    a.this.i = false;
                    a.this.g.a();
                }
                C0045a c0045a = a.this.g;
                if (c0045a.c() || !a.this.c()) {
                    a.this.k = false;
                    return;
                }
                if (a.this.j) {
                    a.this.j = false;
                    a.this.d();
                }
                c0045a.d();
                a.this.a(c0045a.g(), c0045a.h());
                af.a(a.this.h, this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.core.widget.a$a, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class C0045a {

        /* renamed from: a, reason: collision with root package name */
        private int f580a;
        private int b;
        private float c;
        private float d;
        private float j;
        private int k;
        private long e = Long.MIN_VALUE;
        private long i = -1;
        private long f = 0;
        private int g = 0;
        private int h = 0;

        private float a(float f) {
            return ((-4.0f) * f * f) + (f * 4.0f);
        }

        C0045a() {
        }

        public void a(int i) {
            this.f580a = i;
        }

        public void b(int i) {
            this.b = i;
        }

        public void a() {
            this.e = AnimationUtils.currentAnimationTimeMillis();
            this.i = -1L;
            this.f = this.e;
            this.j = 0.5f;
            this.g = 0;
            this.h = 0;
        }

        public void b() {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.k = a.a((int) (currentAnimationTimeMillis - this.e), 0, this.b);
            this.j = a(currentAnimationTimeMillis);
            this.i = currentAnimationTimeMillis;
        }

        public boolean c() {
            return this.i > 0 && AnimationUtils.currentAnimationTimeMillis() > this.i + ((long) this.k);
        }

        private float a(long j) {
            if (j < this.e) {
                return 0.0f;
            }
            if (this.i < 0 || j < this.i) {
                return a.a(((float) (j - this.e)) / this.f580a, 0.0f, 1.0f) * 0.5f;
            }
            return (1.0f - this.j) + (this.j * a.a(((float) (j - this.i)) / this.k, 0.0f, 1.0f));
        }

        public void d() {
            if (this.f == 0) {
                throw new RuntimeException("Cannot compute scroll delta before calling start()");
            }
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            float a2 = a(a(currentAnimationTimeMillis));
            long j = currentAnimationTimeMillis - this.f;
            this.f = currentAnimationTimeMillis;
            float f = ((float) j) * a2;
            this.g = (int) (this.c * f);
            this.h = (int) (f * this.d);
        }

        public void a(float f, float f2) {
            this.c = f;
            this.d = f2;
        }

        public int e() {
            return (int) (this.c / Math.abs(this.c));
        }

        public int f() {
            return (int) (this.d / Math.abs(this.d));
        }

        public int g() {
            return this.g;
        }

        public int h() {
            return this.h;
        }
    }
}
