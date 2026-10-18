package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import androidx.annotation.ai;

/* loaded from: /home/user/work/dex/classes.dex */
class a {

    /* renamed from: a, reason: collision with root package name */
    @ai
    private Animator f1295a;

    public void a(Animator animator) {
        a();
        this.f1295a = animator;
    }

    public void a() {
        if (this.f1295a != null) {
            this.f1295a.cancel();
        }
    }

    public void b() {
        this.f1295a = null;
    }
}
