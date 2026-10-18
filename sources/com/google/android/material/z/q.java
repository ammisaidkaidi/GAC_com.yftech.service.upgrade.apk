package com.google.android.material.z;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.j.an;
import androidx.j.bf;
import com.google.android.material.z.v;
import java.util.ArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
abstract class q<P extends v> extends bf {

    /* renamed from: a, reason: collision with root package name */
    private final P f1559a;

    @ai
    private v b;

    /* JADX INFO: Access modifiers changed from: protected */
    public q(P p, @ai v vVar) {
        this.f1559a = p;
        this.b = vVar;
        a(com.google.android.material.a.a.b);
    }

    @ah
    public P w() {
        return this.f1559a;
    }

    @ai
    public v u() {
        return this.b;
    }

    public void a(@ai v vVar) {
        this.b = vVar;
    }

    @Override // androidx.j.bf
    public Animator a(ViewGroup viewGroup, View view, an anVar, an anVar2) {
        return a(viewGroup, view, true);
    }

    @Override // androidx.j.bf
    public Animator b(ViewGroup viewGroup, View view, an anVar, an anVar2) {
        return a(viewGroup, view, false);
    }

    private Animator a(ViewGroup viewGroup, View view, boolean z) {
        Animator b;
        Animator b2;
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        if (z) {
            b = this.f1559a.a(viewGroup, view);
        } else {
            b = this.f1559a.b(viewGroup, view);
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
