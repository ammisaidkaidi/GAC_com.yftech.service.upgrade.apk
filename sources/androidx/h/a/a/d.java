package androidx.h.a.a;

import android.view.animation.Interpolator;

/* loaded from: /home/user/work/dex/classes.dex */
abstract class d implements Interpolator {

    /* renamed from: a, reason: collision with root package name */
    private final float[] f815a;
    private final float b;

    /* JADX INFO: Access modifiers changed from: protected */
    public d(float[] fArr) {
        this.f815a = fArr;
        this.b = 1.0f / (this.f815a.length - 1);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        if (f >= 1.0f) {
            return 1.0f;
        }
        if (f <= 0.0f) {
            return 0.0f;
        }
        int min = Math.min((int) ((this.f815a.length - 1) * f), this.f815a.length - 2);
        return this.f815a[min] + (((f - (min * this.b)) / this.b) * (this.f815a[min + 1] - this.f815a[min]));
    }
}
