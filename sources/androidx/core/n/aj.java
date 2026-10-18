package androidx.core.n;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.os.Build;
import android.view.View;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;

/* loaded from: /home/user/work/dex/classes.dex */
public final class aj {
    static final int d = 2113929216;

    /* renamed from: a, reason: collision with root package name */
    Runnable f535a = null;
    Runnable b = null;
    int c = -1;
    private WeakReference<View> e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aj(View view) {
        this.e = new WeakReference<>(view);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    static class a implements ak {

        /* renamed from: a, reason: collision with root package name */
        aj f538a;
        boolean b;

        a(aj ajVar) {
            this.f538a = ajVar;
        }

        @Override // androidx.core.n.ak
        public void a(View view) {
            this.b = false;
            if (this.f538a.c > -1) {
                view.setLayerType(2, null);
            }
            if (this.f538a.f535a != null) {
                Runnable runnable = this.f538a.f535a;
                this.f538a.f535a = null;
                runnable.run();
            }
            Object tag = view.getTag(aj.d);
            ak akVar = tag instanceof ak ? (ak) tag : null;
            if (akVar != null) {
                akVar.a(view);
            }
        }

        @Override // androidx.core.n.ak
        @SuppressLint({"WrongConstant"})
        public void b(View view) {
            if (this.f538a.c > -1) {
                view.setLayerType(this.f538a.c, null);
                this.f538a.c = -1;
            }
            if (Build.VERSION.SDK_INT >= 16 || !this.b) {
                if (this.f538a.b != null) {
                    Runnable runnable = this.f538a.b;
                    this.f538a.b = null;
                    runnable.run();
                }
                Object tag = view.getTag(aj.d);
                ak akVar = tag instanceof ak ? (ak) tag : null;
                if (akVar != null) {
                    akVar.b(view);
                }
                this.b = true;
            }
        }

        @Override // androidx.core.n.ak
        public void c(View view) {
            Object tag = view.getTag(aj.d);
            ak akVar = tag instanceof ak ? (ak) tag : null;
            if (akVar != null) {
                akVar.c(view);
            }
        }
    }

    public aj a(long j) {
        View view = this.e.get();
        if (view != null) {
            view.animate().setDuration(j);
        }
        return this;
    }

    public aj a(float f) {
        View view = this.e.get();
        if (view != null) {
            view.animate().alpha(f);
        }
        return this;
    }

    public aj b(float f) {
        View view = this.e.get();
        if (view != null) {
            view.animate().alphaBy(f);
        }
        return this;
    }

    public aj c(float f) {
        View view = this.e.get();
        if (view != null) {
            view.animate().translationX(f);
        }
        return this;
    }

    public aj d(float f) {
        View view = this.e.get();
        if (view != null) {
            view.animate().translationY(f);
        }
        return this;
    }

    public aj a(Runnable runnable) {
        View view = this.e.get();
        if (view != null) {
            if (Build.VERSION.SDK_INT >= 16) {
                view.animate().withEndAction(runnable);
            } else {
                a(view, new a(this));
                this.b = runnable;
            }
        }
        return this;
    }

    public long a() {
        View view = this.e.get();
        if (view != null) {
            return view.animate().getDuration();
        }
        return 0L;
    }

    public aj a(Interpolator interpolator) {
        View view = this.e.get();
        if (view != null) {
            view.animate().setInterpolator(interpolator);
        }
        return this;
    }

    public Interpolator b() {
        View view = this.e.get();
        if (view == null || Build.VERSION.SDK_INT < 18) {
            return null;
        }
        return (Interpolator) view.animate().getInterpolator();
    }

    public aj b(long j) {
        View view = this.e.get();
        if (view != null) {
            view.animate().setStartDelay(j);
        }
        return this;
    }

    public long c() {
        View view = this.e.get();
        if (view != null) {
            return view.animate().getStartDelay();
        }
        return 0L;
    }

    public aj e(float f) {
        View view = this.e.get();
        if (view != null) {
            view.animate().rotation(f);
        }
        return this;
    }

    public aj f(float f) {
        View view = this.e.get();
        if (view != null) {
            view.animate().rotationBy(f);
        }
        return this;
    }

    public aj g(float f) {
        View view = this.e.get();
        if (view != null) {
            view.animate().rotationX(f);
        }
        return this;
    }

    public aj h(float f) {
        View view = this.e.get();
        if (view != null) {
            view.animate().rotationXBy(f);
        }
        return this;
    }

    public aj i(float f) {
        View view = this.e.get();
        if (view != null) {
            view.animate().rotationY(f);
        }
        return this;
    }

    public aj j(float f) {
        View view = this.e.get();
        if (view != null) {
            view.animate().rotationYBy(f);
        }
        return this;
    }

    public aj k(float f) {
        View view = this.e.get();
        if (view != null) {
            view.animate().scaleX(f);
        }
        return this;
    }

    public aj l(float f) {
        View view = this.e.get();
        if (view != null) {
            view.animate().scaleXBy(f);
        }
        return this;
    }

    public aj m(float f) {
        View view = this.e.get();
        if (view != null) {
            view.animate().scaleY(f);
        }
        return this;
    }

    public aj n(float f) {
        View view = this.e.get();
        if (view != null) {
            view.animate().scaleYBy(f);
        }
        return this;
    }

    public void d() {
        View view = this.e.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    public aj o(float f) {
        View view = this.e.get();
        if (view != null) {
            view.animate().x(f);
        }
        return this;
    }

    public aj p(float f) {
        View view = this.e.get();
        if (view != null) {
            view.animate().xBy(f);
        }
        return this;
    }

    public aj q(float f) {
        View view = this.e.get();
        if (view != null) {
            view.animate().y(f);
        }
        return this;
    }

    public aj r(float f) {
        View view = this.e.get();
        if (view != null) {
            view.animate().yBy(f);
        }
        return this;
    }

    public aj s(float f) {
        View view = this.e.get();
        if (view != null) {
            view.animate().translationXBy(f);
        }
        return this;
    }

    public aj t(float f) {
        View view = this.e.get();
        if (view != null) {
            view.animate().translationYBy(f);
        }
        return this;
    }

    public aj u(float f) {
        View view = this.e.get();
        if (view != null && Build.VERSION.SDK_INT >= 21) {
            view.animate().translationZBy(f);
        }
        return this;
    }

    public aj v(float f) {
        View view = this.e.get();
        if (view != null && Build.VERSION.SDK_INT >= 21) {
            view.animate().translationZ(f);
        }
        return this;
    }

    public aj w(float f) {
        View view = this.e.get();
        if (view != null && Build.VERSION.SDK_INT >= 21) {
            view.animate().z(f);
        }
        return this;
    }

    public aj x(float f) {
        View view = this.e.get();
        if (view != null && Build.VERSION.SDK_INT >= 21) {
            view.animate().zBy(f);
        }
        return this;
    }

    public void e() {
        View view = this.e.get();
        if (view != null) {
            view.animate().start();
        }
    }

    @SuppressLint({"WrongConstant"})
    public aj f() {
        View view = this.e.get();
        if (view != null) {
            if (Build.VERSION.SDK_INT >= 16) {
                view.animate().withLayer();
            } else {
                this.c = view.getLayerType();
                a(view, new a(this));
            }
        }
        return this;
    }

    public aj b(Runnable runnable) {
        View view = this.e.get();
        if (view != null) {
            if (Build.VERSION.SDK_INT >= 16) {
                view.animate().withStartAction(runnable);
            } else {
                a(view, new a(this));
                this.f535a = runnable;
            }
        }
        return this;
    }

    public aj a(ak akVar) {
        View view = this.e.get();
        if (view != null) {
            if (Build.VERSION.SDK_INT >= 16) {
                a(view, akVar);
            } else {
                view.setTag(d, akVar);
                a(view, new a(this));
            }
        }
        return this;
    }

    private void a(final View view, final ak akVar) {
        if (akVar != null) {
            view.animate().setListener(new AnimatorListenerAdapter() { // from class: androidx.core.n.aj.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    akVar.c(view);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    akVar.b(view);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    akVar.a(view);
                }
            });
        } else {
            view.animate().setListener(null);
        }
    }

    public aj a(final am amVar) {
        final View view = this.e.get();
        if (view != null && Build.VERSION.SDK_INT >= 19) {
            view.animate().setUpdateListener(amVar != null ? new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.core.n.aj.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    amVar.a(view);
                }
            } : null);
        }
        return this;
    }
}
