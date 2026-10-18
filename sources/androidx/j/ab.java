package androidx.j;

import android.animation.TypeEvaluator;
import android.graphics.Rect;

/* loaded from: /home/user/work/dex/classes.dex */
class ab implements TypeEvaluator<Rect> {

    /* renamed from: a, reason: collision with root package name */
    private Rect f830a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ab() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ab(Rect rect) {
        this.f830a = rect;
    }

    @Override // android.animation.TypeEvaluator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Rect evaluate(float f, Rect rect, Rect rect2) {
        int i = rect.left + ((int) ((rect2.left - rect.left) * f));
        int i2 = rect.top + ((int) ((rect2.top - rect.top) * f));
        int i3 = rect.right + ((int) ((rect2.right - rect.right) * f));
        int i4 = rect.bottom + ((int) ((rect2.bottom - rect.bottom) * f));
        if (this.f830a == null) {
            return new Rect(i, i2, i3, i4);
        }
        this.f830a.set(i, i2, i3, i4);
        return this.f830a;
    }
}
