package com.google.android.material.behavior;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.p;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.a.a;

/* loaded from: /home/user/work/dex/classes.dex */
public class HideBottomViewOnScrollBehavior<V extends View> extends CoordinatorLayout.b<V> {

    /* renamed from: a, reason: collision with root package name */
    protected static final int f1177a = 225;
    protected static final int b = 175;
    private static final int c = 1;
    private static final int d = 2;
    private int e;
    private int f;
    private int g;

    @ai
    private ViewPropertyAnimator h;

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public boolean a(@ah CoordinatorLayout coordinatorLayout, @ah V v, @ah View view, @ah View view2, int i, int i2) {
        return i == 2;
    }

    public HideBottomViewOnScrollBehavior() {
        this.e = 0;
        this.f = 2;
        this.g = 0;
    }

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = 0;
        this.f = 2;
        this.g = 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public boolean a(@ah CoordinatorLayout coordinatorLayout, @ah V v, int i) {
        this.e = v.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) v.getLayoutParams()).bottomMargin;
        return super.a(coordinatorLayout, (CoordinatorLayout) v, i);
    }

    public void a(@ah V v, @p int i) {
        this.g = i;
        if (this.f == 1) {
            v.setTranslationY(this.e + this.g);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public void a(CoordinatorLayout coordinatorLayout, @ah V v, @ah View view, int i, int i2, int i3, int i4, int i5, @ah int[] iArr) {
        if (i2 > 0) {
            c(v);
        } else if (i2 < 0) {
            b(v);
        }
    }

    public void b(@ah V v) {
        if (this.f == 2) {
            return;
        }
        if (this.h != null) {
            this.h.cancel();
            v.clearAnimation();
        }
        this.f = 2;
        a((HideBottomViewOnScrollBehavior<V>) v, 0, 225L, a.d);
    }

    public void c(@ah V v) {
        if (this.f == 1) {
            return;
        }
        if (this.h != null) {
            this.h.cancel();
            v.clearAnimation();
        }
        this.f = 1;
        a((HideBottomViewOnScrollBehavior<V>) v, this.e + this.g, 175L, a.c);
    }

    private void a(@ah V v, int i, long j, TimeInterpolator timeInterpolator) {
        this.h = v.animate().translationY(i).setInterpolator(timeInterpolator).setDuration(j).setListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.behavior.HideBottomViewOnScrollBehavior.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                HideBottomViewOnScrollBehavior.this.h = null;
            }
        });
    }
}
