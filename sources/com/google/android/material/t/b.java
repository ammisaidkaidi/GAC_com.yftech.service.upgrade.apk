package com.google.android.material.t;

import android.graphics.RectF;
import androidx.annotation.ah;
import androidx.annotation.ap;
import java.util.Arrays;

@ap(a = {ap.a.LIBRARY_GROUP})
/* loaded from: /home/user/work/dex/classes.dex */
public final class b implements d {

    /* renamed from: a, reason: collision with root package name */
    private final d f1406a;
    private final float b;

    public b(float f, @ah d dVar) {
        while (dVar instanceof b) {
            dVar = ((b) dVar).f1406a;
            f += ((b) dVar).b;
        }
        this.f1406a = dVar;
        this.b = f;
    }

    @Override // com.google.android.material.t.d
    public float a(@ah RectF rectF) {
        return Math.max(0.0f, this.f1406a.a(rectF) + this.b);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f1406a.equals(bVar.f1406a) && this.b == bVar.b;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f1406a, Float.valueOf(this.b)});
    }
}
