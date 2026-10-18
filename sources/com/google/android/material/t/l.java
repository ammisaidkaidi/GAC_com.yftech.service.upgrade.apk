package com.google.android.material.t;

import androidx.annotation.ah;

/* loaded from: /home/user/work/dex/classes.dex */
public final class l extends g {

    /* renamed from: a, reason: collision with root package name */
    private final g f1416a;
    private final float b;

    public l(@ah g gVar, float f) {
        this.f1416a = gVar;
        this.b = f;
    }

    @Override // com.google.android.material.t.g
    public void a(float f, float f2, float f3, @ah q qVar) {
        this.f1416a.a(f, f2 - this.b, f3, qVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.t.g
    public boolean f() {
        return this.f1416a.f();
    }
}
