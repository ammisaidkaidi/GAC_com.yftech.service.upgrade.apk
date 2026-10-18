package androidx.core.n;

import android.graphics.Rect;
import android.os.Build;
import android.view.Gravity;

/* loaded from: /home/user/work/dex/classes.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    public static final int f566a = 8388608;
    public static final int b = 8388611;
    public static final int c = 8388613;
    public static final int d = 8388615;

    public static void a(int i, int i2, int i3, Rect rect, Rect rect2, int i4) {
        if (Build.VERSION.SDK_INT >= 17) {
            Gravity.apply(i, i2, i3, rect, rect2, i4);
        } else {
            Gravity.apply(i, i2, i3, rect, rect2);
        }
    }

    public static void a(int i, int i2, int i3, Rect rect, int i4, int i5, Rect rect2, int i6) {
        if (Build.VERSION.SDK_INT >= 17) {
            Gravity.apply(i, i2, i3, rect, i4, i5, rect2, i6);
        } else {
            Gravity.apply(i, i2, i3, rect, i4, i5, rect2);
        }
    }

    public static void a(int i, Rect rect, Rect rect2, int i2) {
        if (Build.VERSION.SDK_INT >= 17) {
            Gravity.applyDisplay(i, rect, rect2, i2);
        } else {
            Gravity.applyDisplay(i, rect, rect2);
        }
    }

    public static int a(int i, int i2) {
        return Build.VERSION.SDK_INT >= 17 ? Gravity.getAbsoluteGravity(i, i2) : i & (-8388609);
    }

    private h() {
    }
}
