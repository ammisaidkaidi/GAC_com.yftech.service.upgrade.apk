package com.google.android.material.z;

import android.animation.Animator;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import androidx.j.an;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: /home/user/work/dex/classes.dex */
public final class p extends q<v> {

    /* renamed from: a, reason: collision with root package name */
    public static final int f1558a = 0;
    public static final int b = 1;
    public static final int r = 2;
    private final int s;
    private final boolean t;

    @Retention(RetentionPolicy.SOURCE)
    @ap(a = {ap.a.LIBRARY_GROUP})
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface a {
    }

    @Override // com.google.android.material.z.q, androidx.j.bf
    public /* bridge */ /* synthetic */ Animator a(ViewGroup viewGroup, View view, an anVar, an anVar2) {
        return super.a(viewGroup, view, anVar, anVar2);
    }

    @Override // com.google.android.material.z.q
    public /* bridge */ /* synthetic */ void a(@ai v vVar) {
        super.a(vVar);
    }

    @Override // com.google.android.material.z.q, androidx.j.bf
    public /* bridge */ /* synthetic */ Animator b(ViewGroup viewGroup, View view, an anVar, an anVar2) {
        return super.b(viewGroup, view, anVar, anVar2);
    }

    @Override // com.google.android.material.z.q
    @ai
    public /* bridge */ /* synthetic */ v u() {
        return super.u();
    }

    @Override // com.google.android.material.z.q
    @ah
    public /* bridge */ /* synthetic */ v w() {
        return super.w();
    }

    public p(int i, boolean z) {
        super(c(i, z), x());
        this.s = i;
        this.t = z;
    }

    public int b() {
        return this.s;
    }

    public boolean v() {
        return this.t;
    }

    private static v c(int i, boolean z) {
        switch (i) {
            case 0:
                return new s(z ? androidx.core.n.h.c : androidx.core.n.h.b);
            case 1:
                return new s(z ? 80 : 48);
            case 2:
                return new r(z);
            default:
                throw new IllegalArgumentException("Invalid axis: " + i);
        }
    }

    private static v x() {
        return new e();
    }
}
