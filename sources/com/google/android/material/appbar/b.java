package com.google.android.material.appbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.OverScroller;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.appcompat.widget.ActivityChooserView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.n.af;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public abstract class b<V extends View> extends d<V> {
    private static final int b = -1;

    /* renamed from: a, reason: collision with root package name */
    OverScroller f1168a;

    @ai
    private Runnable c;
    private boolean d;
    private int e;
    private int f;
    private int g;

    @ai
    private VelocityTracker h;

    boolean d(V v) {
        return false;
    }

    void e(CoordinatorLayout coordinatorLayout, V v) {
    }

    public b() {
        this.e = -1;
        this.g = -1;
    }

    public b(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = -1;
        this.g = -1;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public boolean a(@ah CoordinatorLayout coordinatorLayout, @ah V v, @ah MotionEvent motionEvent) {
        int findPointerIndex;
        if (this.g < 0) {
            this.g = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        if (motionEvent.getActionMasked() == 2 && this.d) {
            if (this.e == -1 || (findPointerIndex = motionEvent.findPointerIndex(this.e)) == -1) {
                return false;
            }
            int y = (int) motionEvent.getY(findPointerIndex);
            if (Math.abs(y - this.f) > this.g) {
                this.f = y;
                return true;
            }
        }
        if (motionEvent.getActionMasked() == 0) {
            this.e = -1;
            int x = (int) motionEvent.getX();
            int y2 = (int) motionEvent.getY();
            this.d = d(v) && coordinatorLayout.a(v, x, y2);
            if (this.d) {
                this.f = y2;
                this.e = motionEvent.getPointerId(0);
                b();
                if (this.f1168a != null && !this.f1168a.isFinished()) {
                    this.f1168a.abortAnimation();
                    return true;
                }
            }
        }
        if (this.h != null) {
            this.h.addMovement(motionEvent);
        }
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x000a. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x008e A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean b(@ah CoordinatorLayout coordinatorLayout, @ah V v, @ah MotionEvent motionEvent) {
        boolean z;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 6) {
            int i = motionEvent.getActionIndex() == 0 ? 1 : 0;
            this.e = motionEvent.getPointerId(i);
            this.f = (int) (motionEvent.getY(i) + 0.5f);
        } else {
            switch (actionMasked) {
                case 1:
                    if (this.h != null) {
                        this.h.addMovement(motionEvent);
                        this.h.computeCurrentVelocity(1000);
                        a(coordinatorLayout, (CoordinatorLayout) v, -b((b<V>) v), 0, this.h.getYVelocity(this.e));
                        z = true;
                        this.d = false;
                        this.e = -1;
                        if (this.h != null) {
                            this.h.recycle();
                            this.h = null;
                        }
                        if (this.h != null) {
                            this.h.addMovement(motionEvent);
                        }
                        return this.d || z;
                    }
                    z = false;
                    this.d = false;
                    this.e = -1;
                    if (this.h != null) {
                    }
                    if (this.h != null) {
                    }
                    if (this.d) {
                        return true;
                    }
                case 2:
                    int findPointerIndex = motionEvent.findPointerIndex(this.e);
                    if (findPointerIndex != -1) {
                        int y = (int) motionEvent.getY(findPointerIndex);
                        int i2 = this.f - y;
                        this.f = y;
                        b(coordinatorLayout, (CoordinatorLayout) v, i2, c(v), 0);
                        break;
                    } else {
                        return false;
                    }
                case 3:
                    z = false;
                    this.d = false;
                    this.e = -1;
                    if (this.h != null) {
                    }
                    if (this.h != null) {
                    }
                    if (this.d) {
                    }
                    break;
            }
        }
        z = false;
        if (this.h != null) {
        }
        if (this.d) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a_(CoordinatorLayout coordinatorLayout, V v, int i) {
        return a(coordinatorLayout, (CoordinatorLayout) v, i, Integer.MIN_VALUE, ActivityChooserView.a.f166a);
    }

    int a(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3) {
        int a2;
        int g = g();
        if (i2 == 0 || g < i2 || g > i3 || g == (a2 = androidx.core.g.a.a(i, i2, i3))) {
            return 0;
        }
        b(a2);
        return g - a2;
    }

    int c() {
        return g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int b(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3) {
        return a(coordinatorLayout, (CoordinatorLayout) v, c() - i, i2, i3);
    }

    final boolean a(CoordinatorLayout coordinatorLayout, @ah V v, int i, int i2, float f) {
        if (this.c != null) {
            v.removeCallbacks(this.c);
            this.c = null;
        }
        if (this.f1168a == null) {
            this.f1168a = new OverScroller(v.getContext());
        }
        this.f1168a.fling(0, g(), 0, Math.round(f), 0, 0, i, i2);
        if (this.f1168a.computeScrollOffset()) {
            this.c = new a(coordinatorLayout, v);
            af.a(v, this.c);
            return true;
        }
        e(coordinatorLayout, v);
        return false;
    }

    int c(@ah V v) {
        return -v.getHeight();
    }

    int b(@ah V v) {
        return v.getHeight();
    }

    private void b() {
        if (this.h == null) {
            this.h = VelocityTracker.obtain();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class a implements Runnable {
        private final CoordinatorLayout b;
        private final V c;

        a(CoordinatorLayout coordinatorLayout, V v) {
            this.b = coordinatorLayout;
            this.c = v;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.c == null || b.this.f1168a == null) {
                return;
            }
            if (b.this.f1168a.computeScrollOffset()) {
                b.this.a_(this.b, this.c, b.this.f1168a.getCurrY());
                af.a(this.c, this);
            } else {
                b.this.e(this.b, this.c);
            }
        }
    }
}
