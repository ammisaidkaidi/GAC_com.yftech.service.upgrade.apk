package com.google.android.material.t;

import android.graphics.RectF;
import androidx.annotation.ah;
import java.util.Arrays;

/* loaded from: /home/user/work/dex/classes.dex */
public final class m implements d {

    /* renamed from: a, reason: collision with root package name */
    private final float f1417a;

    public m(@androidx.annotation.r(a = 0.0d, b = 1.0d) float f) {
        this.f1417a = f;
    }

    @androidx.annotation.r(a = 0.0d, b = 1.0d)
    public float a() {
        return this.f1417a;
    }

    @Override // com.google.android.material.t.d
    public float a(@ah RectF rectF) {
        return this.f1417a * rectF.height();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof m) && this.f1417a == ((m) obj).f1417a;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f1417a)});
    }
}
