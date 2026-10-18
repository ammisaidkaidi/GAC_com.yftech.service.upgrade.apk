package com.google.android.material.t;

import androidx.annotation.ah;

/* loaded from: /home/user/work/dex/classes.dex */
public final class i extends g {

    /* renamed from: a, reason: collision with root package name */
    private final float f1411a;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.t.g
    public boolean f() {
        return true;
    }

    public i(float f) {
        this.f1411a = f - 0.001f;
    }

    @Override // com.google.android.material.t.g
    public void a(float f, float f2, float f3, @ah q qVar) {
        float sqrt = (float) ((this.f1411a * Math.sqrt(2.0d)) / 2.0d);
        float sqrt2 = (float) Math.sqrt(Math.pow(this.f1411a, 2.0d) - Math.pow(sqrt, 2.0d));
        qVar.a(f2 - sqrt, ((float) (-((this.f1411a * Math.sqrt(2.0d)) - this.f1411a))) + sqrt2);
        qVar.b(f2, (float) (-((this.f1411a * Math.sqrt(2.0d)) - this.f1411a)));
        qVar.b(f2 + sqrt, ((float) (-((this.f1411a * Math.sqrt(2.0d)) - this.f1411a))) + sqrt2);
    }
}
