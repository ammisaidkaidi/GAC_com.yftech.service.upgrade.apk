package com.google.android.material.g;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TypeEvaluator;
import android.os.Build;
import android.util.Property;
import android.view.View;
import android.view.ViewAnimationUtils;
import androidx.annotation.ah;
import com.google.android.material.g.g;

/* loaded from: /home/user/work/dex/classes.dex */
public final class a {
    private a() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @ah
    public static Animator a(@ah g gVar, float f, float f2, float f3) {
        ObjectAnimator ofObject = ObjectAnimator.ofObject(gVar, (Property<g, V>) g.b.f1317a, (TypeEvaluator) g.a.f1316a, (Object[]) new g.d[]{new g.d(f, f2, f3)});
        if (Build.VERSION.SDK_INT < 21) {
            return ofObject;
        }
        g.d revealInfo = gVar.getRevealInfo();
        if (revealInfo == null) {
            throw new IllegalStateException("Caller must set a non-null RevealInfo before calling this.");
        }
        Animator createCircularReveal = ViewAnimationUtils.createCircularReveal((View) gVar, (int) f, (int) f2, revealInfo.d, f3);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ofObject, createCircularReveal);
        return animatorSet;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @ah
    public static Animator a(g gVar, float f, float f2, float f3, float f4) {
        ObjectAnimator ofObject = ObjectAnimator.ofObject(gVar, (Property<g, V>) g.b.f1317a, (TypeEvaluator) g.a.f1316a, (Object[]) new g.d[]{new g.d(f, f2, f3), new g.d(f, f2, f4)});
        if (Build.VERSION.SDK_INT < 21) {
            return ofObject;
        }
        Animator createCircularReveal = ViewAnimationUtils.createCircularReveal((View) gVar, (int) f, (int) f2, f3, f4);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ofObject, createCircularReveal);
        return animatorSet;
    }

    @ah
    public static Animator.AnimatorListener a(@ah final g gVar) {
        return new AnimatorListenerAdapter() { // from class: com.google.android.material.g.a.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                g.this.a();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                g.this.g_();
            }
        };
    }
}
