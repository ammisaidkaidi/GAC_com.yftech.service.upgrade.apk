package androidx.core.n;

import android.view.VelocityTracker;

@Deprecated
/* loaded from: /home/user/work/dex/classes.dex */
public final class ae {
    @Deprecated
    public static float a(VelocityTracker velocityTracker, int i) {
        return velocityTracker.getXVelocity(i);
    }

    @Deprecated
    public static float b(VelocityTracker velocityTracker, int i) {
        return velocityTracker.getYVelocity(i);
    }

    private ae() {
    }
}
