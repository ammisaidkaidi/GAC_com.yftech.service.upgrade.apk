package androidx.core.i;

import android.content.Context;
import android.os.Build;
import android.os.UserManager;
import androidx.annotation.ah;

/* loaded from: /home/user/work/dex/classes.dex */
public class p {
    private p() {
    }

    public static boolean a(@ah Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            return ((UserManager) context.getSystemService(UserManager.class)).isUserUnlocked();
        }
        return true;
    }
}
