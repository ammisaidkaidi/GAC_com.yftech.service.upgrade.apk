package com.google.android.material.z.a;

import android.graphics.Path;
import android.graphics.PointF;
import android.transition.PathMotion;
import androidx.annotation.ah;
import androidx.annotation.am;

@am(a = 21)
/* loaded from: /home/user/work/dex/classes.dex */
public final class k extends PathMotion {
    @Override // android.transition.PathMotion
    @ah
    public Path getPath(float f, float f2, float f3, float f4) {
        Path path = new Path();
        path.moveTo(f, f2);
        PointF a2 = a(f, f2, f3, f4);
        path.quadTo(a2.x, a2.y, f3, f4);
        return path;
    }

    private static PointF a(float f, float f2, float f3, float f4) {
        if (f2 > f4) {
            return new PointF(f3, f2);
        }
        return new PointF(f, f4);
    }
}
