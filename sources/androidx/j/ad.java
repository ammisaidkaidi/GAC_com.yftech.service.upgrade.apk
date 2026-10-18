package androidx.j;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: /home/user/work/dex/classes.dex */
public class ad extends bg {

    /* renamed from: a, reason: collision with root package name */
    private float f832a = 3.0f;
    private int b = 80;

    public void a(int i) {
        this.b = i;
    }

    public void a(float f) {
        if (f == 0.0f) {
            throw new IllegalArgumentException("propagationSpeed may not be 0");
        }
        this.f832a = f;
    }

    @Override // androidx.j.ak
    public long a(ViewGroup viewGroup, ag agVar, an anVar, an anVar2) {
        int i;
        int i2;
        int i3;
        an anVar3 = anVar;
        if (anVar3 == null && anVar2 == null) {
            return 0L;
        }
        Rect q = agVar.q();
        if (anVar2 == null || b(anVar3) == 0) {
            i = -1;
        } else {
            anVar3 = anVar2;
            i = 1;
        }
        int c = c(anVar3);
        int d = d(anVar3);
        int[] iArr = new int[2];
        viewGroup.getLocationOnScreen(iArr);
        int round = iArr[0] + Math.round(viewGroup.getTranslationX());
        int round2 = iArr[1] + Math.round(viewGroup.getTranslationY());
        int width = round + viewGroup.getWidth();
        int height = round2 + viewGroup.getHeight();
        if (q != null) {
            i2 = q.centerX();
            i3 = q.centerY();
        } else {
            i2 = (round + width) / 2;
            i3 = (round2 + height) / 2;
        }
        float a2 = a(viewGroup, c, d, i2, i3, round, round2, width, height) / a(viewGroup);
        long d2 = agVar.d();
        if (d2 < 0) {
            d2 = 300;
        }
        return Math.round((((float) (d2 * i)) / this.f832a) * a2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0017, code lost:
    
        r6 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0028, code lost:
    
        if ((androidx.core.n.af.p(r7) == 1) != false) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0013, code lost:
    
        if ((androidx.core.n.af.p(r7) == 1) != false) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0015, code lost:
    
        r6 = 5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int a(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        int i9;
        if (this.b != 8388611) {
            if (this.b != 8388613) {
                i9 = this.b;
            }
        }
        if (i9 == 3) {
            return (i7 - i) + Math.abs(i4 - i2);
        }
        if (i9 == 5) {
            return (i - i5) + Math.abs(i4 - i2);
        }
        if (i9 == 48) {
            return (i8 - i2) + Math.abs(i3 - i);
        }
        if (i9 != 80) {
            return 0;
        }
        return (i2 - i6) + Math.abs(i3 - i);
    }

    private int a(ViewGroup viewGroup) {
        int i = this.b;
        if (i == 3 || i == 5 || i == 8388611 || i == 8388613) {
            return viewGroup.getWidth();
        }
        return viewGroup.getHeight();
    }
}
