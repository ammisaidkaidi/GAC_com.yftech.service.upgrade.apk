package androidx.core.widget;

import android.content.Context;
import android.view.animation.Interpolator;
import android.widget.OverScroller;

@Deprecated
/* loaded from: /home/user/work/dex/classes.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    OverScroller f588a;

    @Deprecated
    public static l a(Context context) {
        return a(context, null);
    }

    @Deprecated
    public static l a(Context context, Interpolator interpolator) {
        return new l(context, interpolator);
    }

    l(Context context, Interpolator interpolator) {
        this.f588a = interpolator != null ? new OverScroller(context, interpolator) : new OverScroller(context);
    }

    @Deprecated
    public boolean a() {
        return this.f588a.isFinished();
    }

    @Deprecated
    public int b() {
        return this.f588a.getCurrX();
    }

    @Deprecated
    public int c() {
        return this.f588a.getCurrY();
    }

    @Deprecated
    public int d() {
        return this.f588a.getFinalX();
    }

    @Deprecated
    public int e() {
        return this.f588a.getFinalY();
    }

    @Deprecated
    public float f() {
        return this.f588a.getCurrVelocity();
    }

    @Deprecated
    public boolean g() {
        return this.f588a.computeScrollOffset();
    }

    @Deprecated
    public void a(int i, int i2, int i3, int i4) {
        this.f588a.startScroll(i, i2, i3, i4);
    }

    @Deprecated
    public void a(int i, int i2, int i3, int i4, int i5) {
        this.f588a.startScroll(i, i2, i3, i4, i5);
    }

    @Deprecated
    public void a(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        this.f588a.fling(i, i2, i3, i4, i5, i6, i7, i8);
    }

    @Deprecated
    public void a(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
        this.f588a.fling(i, i2, i3, i4, i5, i6, i7, i8, i9, i10);
    }

    @Deprecated
    public boolean a(int i, int i2, int i3, int i4, int i5, int i6) {
        return this.f588a.springBack(i, i2, i3, i4, i5, i6);
    }

    @Deprecated
    public void h() {
        this.f588a.abortAnimation();
    }

    @Deprecated
    public void a(int i, int i2, int i3) {
        this.f588a.notifyHorizontalEdgeReached(i, i2, i3);
    }

    @Deprecated
    public void b(int i, int i2, int i3) {
        this.f588a.notifyVerticalEdgeReached(i, i2, i3);
    }

    @Deprecated
    public boolean i() {
        return this.f588a.isOverScrolled();
    }
}
