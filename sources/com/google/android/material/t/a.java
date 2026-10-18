package com.google.android.material.t;

import android.graphics.RectF;
import androidx.annotation.ah;
import java.util.Arrays;

/* loaded from: /home/user/work/dex/classes.dex */
public final class a implements d {

    /* renamed from: a, reason: collision with root package name */
    private final float f1405a;

    public a(float f) {
        this.f1405a = f;
    }

    @Override // com.google.android.material.t.d
    public float a(@ah RectF rectF) {
        return this.f1405a;
    }

    public float a() {
        return this.f1405a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof a) && this.f1405a == ((a) obj).f1405a;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f1405a)});
    }
}
