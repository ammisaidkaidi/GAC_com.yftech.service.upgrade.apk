package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import androidx.annotation.ah;
import androidx.annotation.ai;
import com.google.android.material.a.h;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public interface f {
    h a();

    void a(@ah Animator.AnimatorListener animatorListener);

    void a(Animator animator);

    void a(@ai h hVar);

    void a(@ai ExtendedFloatingActionButton.c cVar);

    List<Animator.AnimatorListener> b();

    void b(@ah Animator.AnimatorListener animatorListener);

    @ai
    h c();

    void d();

    void e();

    AnimatorSet f();

    void g();

    @androidx.annotation.b
    int h();

    boolean i();
}
