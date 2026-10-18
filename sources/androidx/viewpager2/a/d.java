package androidx.viewpager2.a;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import androidx.annotation.aw;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: /home/user/work/dex/classes.dex */
final class d {

    /* renamed from: a, reason: collision with root package name */
    private final h f1119a;
    private final g b;
    private final RecyclerView c;
    private VelocityTracker d;
    private int e;
    private float f;
    private int g;
    private long h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(h hVar, g gVar, RecyclerView recyclerView) {
        this.f1119a = hVar;
        this.b = gVar;
        this.c = recyclerView;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a() {
        return this.b.g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @aw
    public boolean b() {
        if (this.b.f()) {
            return false;
        }
        this.g = 0;
        this.f = 0;
        this.h = SystemClock.uptimeMillis();
        d();
        this.b.b();
        if (!this.b.e()) {
            this.c.j();
        }
        a(this.h, 0, 0.0f, 0.0f);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @aw
    public boolean a(float f) {
        if (!this.b.g()) {
            return false;
        }
        this.f -= f;
        int round = Math.round(this.f - this.g);
        this.g += round;
        long uptimeMillis = SystemClock.uptimeMillis();
        boolean z = this.f1119a.getOrientation() == 0;
        int i = z ? round : 0;
        if (z) {
            round = 0;
        }
        float f2 = z ? this.f : 0.0f;
        float f3 = z ? 0.0f : this.f;
        this.c.scrollBy(i, round);
        a(uptimeMillis, 2, f2, f3);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @aw
    public boolean c() {
        if (!this.b.g()) {
            return false;
        }
        this.b.c();
        VelocityTracker velocityTracker = this.d;
        velocityTracker.computeCurrentVelocity(1000, this.e);
        if (this.c.c((int) velocityTracker.getXVelocity(), (int) velocityTracker.getYVelocity())) {
            return true;
        }
        this.f1119a.f();
        return true;
    }

    private void d() {
        if (this.d == null) {
            this.d = VelocityTracker.obtain();
            this.e = ViewConfiguration.get(this.f1119a.getContext()).getScaledMaximumFlingVelocity();
        } else {
            this.d.clear();
        }
    }

    private void a(long j, int i, float f, float f2) {
        MotionEvent obtain = MotionEvent.obtain(this.h, j, i, f, f2, 0);
        this.d.addMovement(obtain);
        obtain.recycle();
    }
}
