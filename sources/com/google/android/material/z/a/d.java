package com.google.android.material.z.a;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.am;

@am(a = 21)
/* loaded from: /home/user/work/dex/classes.dex */
public final class d implements w {

    /* renamed from: a, reason: collision with root package name */
    private float f1509a = 1.0f;

    public float a() {
        return this.f1509a;
    }

    public void a(float f) {
        this.f1509a = f;
    }

    @Override // com.google.android.material.z.a.w
    @ai
    public Animator a(@ah ViewGroup viewGroup, @ah View view) {
        return a(view, 0.0f, 1.0f, 0.0f, this.f1509a);
    }

    @Override // com.google.android.material.z.a.w
    @ai
    public Animator b(@ah ViewGroup viewGroup, @ah View view) {
        return a(view, 1.0f, 0.0f, 0.0f, 1.0f);
    }

    private static Animator a(final View view, final float f, final float f2, @androidx.annotation.r(a = 0.0d, b = 1.0d) final float f3, @androidx.annotation.r(a = 0.0d, b = 1.0d) final float f4) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.z.a.d.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                view.setAlpha(v.a(f, f2, f3, f4, ((Float) valueAnimator.getAnimatedValue()).floatValue()));
            }
        });
        return ofFloat;
    }
}
