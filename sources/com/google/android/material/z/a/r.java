package com.google.android.material.z.a;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.transition.TransitionValues;
import android.transition.Visibility;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.am;
import com.google.android.material.z.a.w;
import java.util.ArrayList;

@am(a = 21)
/* loaded from: /home/user/work/dex/classes.dex */
abstract class r<P extends w> extends Visibility {

    /* renamed from: a, reason: collision with root package name */
    private final P f1532a;

    @ai
    private w b;

    /* JADX INFO: Access modifiers changed from: protected */
    public r(P p, @ai w wVar) {
        this.f1532a = p;
        this.b = wVar;
        setInterpolator(com.google.android.material.a.a.b);
    }

    @ah
    public P d() {
        return this.f1532a;
    }

    @ai
    public w b() {
        return this.b;
    }

    public void a(@ai w wVar) {
        this.b = wVar;
    }

    @Override // android.transition.Visibility
    public Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return a(viewGroup, view, true);
    }

    @Override // android.transition.Visibility
    public Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return a(viewGroup, view, false);
    }

    private Animator a(ViewGroup viewGroup, View view, boolean z) {
        Animator b;
        Animator b2;
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        if (z) {
            b = this.f1532a.a(viewGroup, view);
        } else {
            b = this.f1532a.b(viewGroup, view);
        }
        if (b != null) {
            arrayList.add(b);
        }
        if (this.b != null) {
            if (z) {
                b2 = this.b.a(viewGroup, view);
            } else {
                b2 = this.b.b(viewGroup, view);
            }
            if (b2 != null) {
                arrayList.add(b2);
            }
        }
        com.google.android.material.a.b.a(animatorSet, arrayList);
        return animatorSet;
    }
}
