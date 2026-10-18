package com.google.android.material.a;

import android.graphics.Matrix;
import android.util.Property;
import android.widget.ImageView;
import androidx.annotation.ah;

/* loaded from: /home/user/work/dex/classes.dex */
public class f extends Property<ImageView, Matrix> {

    /* renamed from: a, reason: collision with root package name */
    private final Matrix f1150a;

    public f() {
        super(Matrix.class, "imageMatrixProperty");
        this.f1150a = new Matrix();
    }

    @Override // android.util.Property
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void set(@ah ImageView imageView, @ah Matrix matrix) {
        imageView.setImageMatrix(matrix);
    }

    @Override // android.util.Property
    @ah
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Matrix get(@ah ImageView imageView) {
        this.f1150a.set(imageView.getImageMatrix());
        return this.f1150a;
    }
}
