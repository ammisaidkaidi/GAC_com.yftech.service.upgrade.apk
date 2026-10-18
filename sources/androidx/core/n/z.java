package androidx.core.n;

import android.view.View;
import android.view.ViewTreeObserver;

/* loaded from: /home/user/work/dex/classes.dex */
public final class z implements View.OnAttachStateChangeListener, ViewTreeObserver.OnPreDrawListener {

    /* renamed from: a, reason: collision with root package name */
    private final View f576a;
    private ViewTreeObserver b;
    private final Runnable c;

    private z(View view, Runnable runnable) {
        this.f576a = view;
        this.b = view.getViewTreeObserver();
        this.c = runnable;
    }

    @androidx.annotation.ah
    public static z a(@androidx.annotation.ah View view, @androidx.annotation.ah Runnable runnable) {
        if (view == null) {
            throw new NullPointerException("view == null");
        }
        if (runnable == null) {
            throw new NullPointerException("runnable == null");
        }
        z zVar = new z(view, runnable);
        view.getViewTreeObserver().addOnPreDrawListener(zVar);
        view.addOnAttachStateChangeListener(zVar);
        return zVar;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        a();
        this.c.run();
        return true;
    }

    public void a() {
        if (this.b.isAlive()) {
            this.b.removeOnPreDrawListener(this);
        } else {
            this.f576a.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        this.f576a.removeOnAttachStateChangeListener(this);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        this.b = view.getViewTreeObserver();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        a();
    }
}
