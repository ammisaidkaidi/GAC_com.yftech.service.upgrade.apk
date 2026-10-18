package androidx.core.b.b;

import android.content.res.Resources;
import android.os.Build;
import androidx.annotation.ah;

/* loaded from: /home/user/work/dex/classes.dex */
public final class c {
    private c() {
    }

    public static int a(@ah Resources resources) {
        if (Build.VERSION.SDK_INT >= 17) {
            return resources.getConfiguration().densityDpi;
        }
        return resources.getDisplayMetrics().densityDpi;
    }
}
