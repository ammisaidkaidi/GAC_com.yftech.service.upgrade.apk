package com.google.android.material.t;

import androidx.annotation.ah;

/* loaded from: /home/user/work/dex/classes.dex */
public class t extends g {

    /* renamed from: a, reason: collision with root package name */
    private final float f1431a;
    private final boolean b;

    public t(float f, boolean z) {
        this.f1431a = f;
        this.b = z;
    }

    @Override // com.google.android.material.t.g
    public void a(float f, float f2, float f3, @ah q qVar) {
        qVar.b(f2 - (this.f1431a * f3), 0.0f);
        qVar.b(f2, (this.b ? this.f1431a : -this.f1431a) * f3);
        qVar.b(f2 + (this.f1431a * f3), 0.0f);
        qVar.b(f, 0.0f);
    }
}
