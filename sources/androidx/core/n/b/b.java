package androidx.core.n.b;

import android.graphics.Path;
import android.os.Build;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;

/* loaded from: /home/user/work/dex/classes.dex */
public final class b {
    private b() {
    }

    public static Interpolator a(Path path) {
        if (Build.VERSION.SDK_INT >= 21) {
            return new PathInterpolator(path);
        }
        return new a(path);
    }

    public static Interpolator a(float f, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            return new PathInterpolator(f, f2);
        }
        return new a(f, f2);
    }

    public static Interpolator a(float f, float f2, float f3, float f4) {
        if (Build.VERSION.SDK_INT >= 21) {
            return new PathInterpolator(f, f2, f3, f4);
        }
        return new a(f, f2, f3, f4);
    }
}
