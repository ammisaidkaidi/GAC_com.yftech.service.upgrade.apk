package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.util.Property;
import android.view.View;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.core.m.i;
import com.google.android.material.a.h;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
abstract class b implements f {

    /* renamed from: a, reason: collision with root package name */
    private final Context f1296a;

    @ah
    private final ExtendedFloatingActionButton b;
    private final ArrayList<Animator.AnimatorListener> c = new ArrayList<>();
    private final a d;

    @ai
    private h e;

    @ai
    private h f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(@ah ExtendedFloatingActionButton extendedFloatingActionButton, a aVar) {
        this.b = extendedFloatingActionButton;
        this.f1296a = extendedFloatingActionButton.getContext();
        this.d = aVar;
    }

    @Override // com.google.android.material.floatingactionbutton.f
    public final void a(@ai h hVar) {
        this.f = hVar;
    }

    @Override // com.google.android.material.floatingactionbutton.f
    public final h a() {
        if (this.f != null) {
            return this.f;
        }
        if (this.e == null) {
            this.e = h.a(this.f1296a, h());
        }
        return (h) i.a(this.e);
    }

    @Override // com.google.android.material.floatingactionbutton.f
    public final void a(@ah Animator.AnimatorListener animatorListener) {
        this.c.add(animatorListener);
    }

    @Override // com.google.android.material.floatingactionbutton.f
    public final void b(@ah Animator.AnimatorListener animatorListener) {
        this.c.remove(animatorListener);
    }

    @Override // com.google.android.material.floatingactionbutton.f
    @ah
    public final List<Animator.AnimatorListener> b() {
        return this.c;
    }

    @Override // com.google.android.material.floatingactionbutton.f
    @ai
    public h c() {
        return this.f;
    }

    @Override // com.google.android.material.floatingactionbutton.f
    @androidx.annotation.i
    public void a(Animator animator) {
        this.d.a(animator);
    }

    @Override // com.google.android.material.floatingactionbutton.f
    @androidx.annotation.i
    public void d() {
        this.d.b();
    }

    @Override // com.google.android.material.floatingactionbutton.f
    @androidx.annotation.i
    public void e() {
        this.d.b();
    }

    @Override // com.google.android.material.floatingactionbutton.f
    public AnimatorSet f() {
        return b(a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ah
    public AnimatorSet b(@ah h hVar) {
        ArrayList arrayList = new ArrayList();
        if (hVar.c("opacity")) {
            arrayList.add(hVar.a("opacity", (String) this.b, (Property<String, ?>) View.ALPHA));
        }
        if (hVar.c("scale")) {
            arrayList.add(hVar.a("scale", (String) this.b, (Property<String, ?>) View.SCALE_Y));
            arrayList.add(hVar.a("scale", (String) this.b, (Property<String, ?>) View.SCALE_X));
        }
        if (hVar.c("width")) {
            arrayList.add(hVar.a("width", (String) this.b, (Property<String, ?>) ExtendedFloatingActionButton.f));
        }
        if (hVar.c("height")) {
            arrayList.add(hVar.a("height", (String) this.b, (Property<String, ?>) ExtendedFloatingActionButton.g));
        }
        AnimatorSet animatorSet = new AnimatorSet();
        com.google.android.material.a.b.a(animatorSet, arrayList);
        return animatorSet;
    }
}
