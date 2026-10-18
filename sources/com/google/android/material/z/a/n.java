package com.google.android.material.z.a;

import android.animation.Animator;
import android.transition.TransitionValues;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.ai;
import androidx.annotation.am;

@am(a = 21)
/* loaded from: /home/user/work/dex/classes.dex */
public final class n extends r<s> {

    /* renamed from: a, reason: collision with root package name */
    private static final float f1528a = 0.85f;
    private final boolean b;

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

    public n(boolean z) {
        super(a(z), c());
        this.b = z;
    }

    public boolean a() {
        return this.b;
    }

    private static s a(boolean z) {
        s sVar = new s(z);
        sVar.b(f1528a);
        sVar.c(f1528a);
        return sVar;
    }

    private static w c() {
        return new d();
    }
}
