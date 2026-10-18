package androidx.core.app;

import android.app.ActivityManager;
import android.os.Build;
import androidx.annotation.ah;

/* loaded from: /home/user/work/dex/classes.dex */
public final class b {
    private b() {
    }

    public static boolean a(@ah ActivityManager activityManager) {
        if (Build.VERSION.SDK_INT >= 19) {
            return activityManager.isLowRamDevice();
        }
        return false;
    }
}
