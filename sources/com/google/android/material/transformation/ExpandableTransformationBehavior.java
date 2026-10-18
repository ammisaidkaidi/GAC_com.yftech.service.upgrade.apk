package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.i;

@Deprecated
/* loaded from: /home/user/work/dex/classes.dex */
public abstract class ExpandableTransformationBehavior extends ExpandableBehavior {

    /* renamed from: a, reason: collision with root package name */
    @ai
    private AnimatorSet f1472a;

    @ah
    protected abstract AnimatorSet b(View view, View view2, boolean z, boolean z2);

    public ExpandableTransformationBehavior() {
    }

    public ExpandableTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.material.transformation.ExpandableBehavior
    @i
    public boolean a(View view, View view2, boolean z, boolean z2) {
        boolean z3 = this.f1472a != null;
        if (z3) {
            this.f1472a.cancel();
        }
        this.f1472a = b(view, view2, z, z3);
        this.f1472a.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.transformation.ExpandableTransformationBehavior.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ExpandableTransformationBehavior.this.f1472a = null;
            }
        });
        this.f1472a.start();
        if (!z2) {
            this.f1472a.end();
        }
        return true;
    }
}
