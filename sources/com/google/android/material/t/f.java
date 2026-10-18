package com.google.android.material.t;

import androidx.annotation.ah;

/* loaded from: /home/user/work/dex/classes.dex */
public class f extends e {

    /* renamed from: a, reason: collision with root package name */
    float f1408a;

    public f() {
        this.f1408a = -1.0f;
    }

    @Deprecated
    public f(float f) {
        this.f1408a = -1.0f;
        this.f1408a = f;
    }

    @Override // com.google.android.material.t.e
    public void a(@ah q qVar, float f, float f2, float f3) {
        qVar.a(0.0f, f3 * f2, 180.0f, 180.0f - f);
        double d = f3;
        double d2 = f2;
        qVar.b((float) (Math.sin(Math.toRadians(f)) * d * d2), (float) (Math.sin(Math.toRadians(90.0f - f)) * d * d2));
    }
}
