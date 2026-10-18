package com.google.android.material.z.a;

import android.graphics.RectF;
import androidx.annotation.am;

@am(a = 21)
/* loaded from: /home/user/work/dex/classes.dex */
class g {

    /* renamed from: a, reason: collision with root package name */
    private static final f f1513a = new f() { // from class: com.google.android.material.z.a.g.1
        @Override // com.google.android.material.z.a.f
        public h a(float f, float f2, float f3, float f4, float f5, float f6, float f7) {
            float a2 = v.a(f4, f6, f2, f3, f);
            float f8 = a2 / f4;
            float f9 = a2 / f6;
            return new h(f8, f9, a2, f5 * f8, a2, f7 * f9);
        }

        @Override // com.google.android.material.z.a.f
        public boolean a(h hVar) {
            return hVar.d > hVar.f;
        }

        @Override // com.google.android.material.z.a.f
        public void a(RectF rectF, float f, h hVar) {
            rectF.bottom -= Math.abs(hVar.f - hVar.d) * f;
        }
    };
    private static final f b = new f() { // from class: com.google.android.material.z.a.g.2
        @Override // com.google.android.material.z.a.f
        public h a(float f, float f2, float f3, float f4, float f5, float f6, float f7) {
            float a2 = v.a(f5, f7, f2, f3, f);
            float f8 = a2 / f5;
            float f9 = a2 / f7;
            return new h(f8, f9, f4 * f8, a2, f6 * f9, a2);
        }

        @Override // com.google.android.material.z.a.f
        public boolean a(h hVar) {
            return hVar.c > hVar.e;
        }

        @Override // com.google.android.material.z.a.f
        public void a(RectF rectF, float f, h hVar) {
            float abs = (Math.abs(hVar.e - hVar.c) / 2.0f) * f;
            rectF.left += abs;
            rectF.right -= abs;
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    public static f a(int i, boolean z, RectF rectF, RectF rectF2) {
        switch (i) {
            case 0:
                return a(z, rectF, rectF2) ? f1513a : b;
            case 1:
                return f1513a;
            case 2:
                return b;
            default:
                throw new IllegalArgumentException("Invalid fit mode: " + i);
        }
    }

    private static boolean a(boolean z, RectF rectF, RectF rectF2) {
        float width = rectF.width();
        float height = rectF.height();
        float width2 = rectF2.width();
        float height2 = rectF2.height();
        float f = (height2 * width) / width2;
        float f2 = (width2 * height) / width;
        if (z) {
            if (f < height) {
                return false;
            }
        } else if (f2 < height2) {
            return false;
        }
        return true;
    }

    private g() {
    }
}
