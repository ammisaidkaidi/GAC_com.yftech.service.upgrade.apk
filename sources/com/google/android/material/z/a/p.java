package com.google.android.material.z.a;

import android.animation.Animator;
import android.transition.TransitionValues;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.ai;
import androidx.annotation.am;

@am(a = 21)
/* loaded from: /home/user/work/dex/classes.dex */
public final class p extends r<e> {

    /* renamed from: a, reason: collision with root package name */
    private static final float f1530a = 0.92f;

    @Override // com.google.android.material.z.a.r
    public /* bridge */ /* synthetic */ void a(@ai w wVar) {
        super.a(wVar);
    }

    @Override // com.google.android.material.z.a.r
    @ai
    public /* bridge */ /* synthetic */ w b() {
        return super.b();
    }

    @Override // com.google.android.material.z.a.r, android.transition.Visibility
    public /* bridge */ /* synthetic */ Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return super.onAppear(viewGroup, view, transitionValues, transitionValues2);
    }

    @Override // com.google.android.material.z.a.r, android.transition.Visibility
    public /* bridge */ /* synthetic */ Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return super.onDisappear(viewGroup, view, transitionValues, transitionValues2);
    }

    public p() {
        super(a(), c());
    }

    private static e a() {
        return new e();
    }

    private static w c() {
        s sVar = new s();
        sVar.b(false);
        sVar.c(f1530a);
        return sVar;
    }
}
