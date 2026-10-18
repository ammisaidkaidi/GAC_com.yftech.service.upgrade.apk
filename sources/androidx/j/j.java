package androidx.j;

import android.graphics.Rect;
import android.view.ViewGroup;

/* loaded from: /home/user/work/dex/classes.dex */
public class j extends bg {

    /* renamed from: a, reason: collision with root package name */
    private float f900a = 3.0f;

    public void a(float f) {
        if (f == 0.0f) {
            throw new IllegalArgumentException("propagationSpeed may not be 0");
        }
        this.f900a = f;
    }

    @Override // androidx.j.ak
    public long a(ViewGroup viewGroup, ag agVar, an anVar, an anVar2) {
        int i;
        int round;
        int i2;
        if (anVar == null && anVar2 == null) {
            return 0L;
        }
        if (anVar2 == null || b(anVar) == 0) {
            i = -1;
        } else {
            anVar = anVar2;
            i = 1;
        }
        int c = c(anVar);
        int d = d(anVar);
        Rect q = agVar.q();
        if (q != null) {
            i2 = q.centerX();
            round = q.centerY();
        } else {
            viewGroup.getLocationOnScreen(new int[2]);
            int round2 = Math.round(r5[0] + (viewGroup.getWidth() / 2) + viewGroup.getTranslationX());
            round = Math.round(r5[1] + (viewGroup.getHeight() / 2) + viewGroup.getTranslationY());
            i2 = round2;
        }
        float a2 = a(c, d, i2, round) / a(0.0f, 0.0f, viewGroup.getWidth(), viewGroup.getHeight());
        long d2 = agVar.d();
        if (d2 < 0) {
            d2 = 300;
        }
        return Math.round((((float) (d2 * i)) / this.f900a) * a2);
    }

    private static float a(float f, float f2, float f3, float f4) {
        float f5 = f3 - f;
        float f6 = f4 - f2;
        return (float) Math.sqrt((f5 * f5) + (f6 * f6));
    }
}
