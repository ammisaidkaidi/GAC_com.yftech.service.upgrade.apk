package androidx.j;

import android.animation.TypeEvaluator;

/* loaded from: /home/user/work/dex/classes.dex */
class m implements TypeEvaluator<float[]> {

    /* renamed from: a, reason: collision with root package name */
    private float[] f905a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(float[] fArr) {
        this.f905a = fArr;
    }

    @Override // android.animation.TypeEvaluator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public float[] evaluate(float f, float[] fArr, float[] fArr2) {
        float[] fArr3 = this.f905a;
        if (fArr3 == null) {
            fArr3 = new float[fArr.length];
        }
        for (int i = 0; i < fArr3.length; i++) {
            float f2 = fArr[i];
            fArr3[i] = f2 + ((fArr2[i] - f2) * f);
        }
        return fArr3;
    }
}
