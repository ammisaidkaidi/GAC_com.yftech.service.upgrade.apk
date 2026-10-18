package androidx.j;

import android.graphics.Matrix;
import android.view.View;

@androidx.annotation.am(a = 29)
/* loaded from: /home/user/work/dex/classes.dex */
class bd extends bc {
    @Override // androidx.j.az, androidx.j.be
    public void a(@androidx.annotation.ah View view, float f) {
        view.setTransitionAlpha(f);
    }

    @Override // androidx.j.az, androidx.j.be
    public float a(@androidx.annotation.ah View view) {
        return view.getTransitionAlpha();
    }

    @Override // androidx.j.bc, androidx.j.be
    public void a(@androidx.annotation.ah View view, int i) {
        view.setTransitionVisibility(i);
    }

    @Override // androidx.j.bb, androidx.j.be
    public void a(@androidx.annotation.ah View view, int i, int i2, int i3, int i4) {
        view.setLeftTopRightBottom(i, i2, i3, i4);
    }

    @Override // androidx.j.ba, androidx.j.be
    public void a(@androidx.annotation.ah View view, @androidx.annotation.ah Matrix matrix) {
        view.transformMatrixToGlobal(matrix);
    }

    @Override // androidx.j.ba, androidx.j.be
    public void b(@androidx.annotation.ah View view, @androidx.annotation.ah Matrix matrix) {
        view.transformMatrixToLocal(matrix);
    }

    @Override // androidx.j.ba, androidx.j.be
    public void c(@androidx.annotation.ah View view, @androidx.annotation.ai Matrix matrix) {
        view.setAnimationMatrix(matrix);
    }
}
