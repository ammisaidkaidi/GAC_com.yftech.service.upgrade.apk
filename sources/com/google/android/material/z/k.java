package com.google.android.material.z;

import android.graphics.Path;
import android.graphics.PointF;
import androidx.annotation.ah;
import androidx.j.w;

/* loaded from: /home/user/work/dex/classes.dex */
public final class k extends w {
    @Override // androidx.j.w
    @ah
    public Path a(float f, float f2, float f3, float f4) {
        Path path = new Path();
        path.moveTo(f, f2);
        PointF b = b(f, f2, f3, f4);
        path.quadTo(b.x, b.y, f3, f4);
        return path;
    }

    private static PointF b(float f, float f2, float f3, float f4) {
        if (f2 > f4) {
            return new PointF(f3, f2);
        }
        return new PointF(f, f4);
    }
}
