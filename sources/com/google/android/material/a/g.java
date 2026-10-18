package com.google.android.material.a;

import android.animation.TypeEvaluator;
import android.graphics.Matrix;
import androidx.annotation.ah;

/* loaded from: /home/user/work/dex/classes.dex */
public class g implements TypeEvaluator<Matrix> {

    /* renamed from: a, reason: collision with root package name */
    private final float[] f1151a = new float[9];
    private final float[] b = new float[9];
    private final Matrix c = new Matrix();

    @Override // android.animation.TypeEvaluator
    @ah
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Matrix evaluate(float f, @ah Matrix matrix, @ah Matrix matrix2) {
        matrix.getValues(this.f1151a);
        matrix2.getValues(this.b);
        for (int i = 0; i < 9; i++) {
            this.b[i] = this.f1151a[i] + ((this.b[i] - this.f1151a[i]) * f);
        }
        this.c.setValues(this.b);
        return this.c;
    }
}
