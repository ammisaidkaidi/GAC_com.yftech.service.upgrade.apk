package com.google.android.material.appbar;

import android.R;
import android.animation.AnimatorInflater;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.annotation.ah;
import androidx.annotation.am;
import com.google.android.material.a;
import com.google.android.material.internal.s;

@am(a = 21)
/* loaded from: /home/user/work/dex/classes.dex */
class f {

    /* renamed from: a, reason: collision with root package name */
    private static final int[] f1173a = {R.attr.stateListAnimator};

    f() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(@ah View view) {
        view.setOutlineProvider(ViewOutlineProvider.BOUNDS);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(@ah View view, AttributeSet attributeSet, int i, int i2) {
        Context context = view.getContext();
        TypedArray a2 = s.a(context, attributeSet, f1173a, i, i2, new int[0]);
        try {
            if (a2.hasValue(0)) {
                view.setStateListAnimator(AnimatorInflater.loadStateListAnimator(context, a2.getResourceId(0, 0)));
            }
        } finally {
            a2.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(@ah View view, float f) {
        int integer = view.getResources().getInteger(a.i.app_bar_elevation_anim_duration);
        StateListAnimator stateListAnimator = new StateListAnimator();
        long j = integer;
        stateListAnimator.addState(new int[]{R.attr.enabled, a.c.state_liftable, -a.c.state_lifted}, ObjectAnimator.ofFloat(view, "elevation", 0.0f).setDuration(j));
        stateListAnimator.addState(new int[]{R.attr.enabled}, ObjectAnimator.ofFloat(view, "elevation", f).setDuration(j));
        stateListAnimator.addState(new int[0], ObjectAnimator.ofFloat(view, "elevation", 0.0f).setDuration(0L));
        view.setStateListAnimator(stateListAnimator);
    }
}
