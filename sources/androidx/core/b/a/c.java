package androidx.core.b.a;

import android.annotation.SuppressLint;
import android.content.pm.PermissionInfo;
import android.os.Build;
import androidx.annotation.ah;
import androidx.annotation.ap;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: /home/user/work/dex/classes.dex */
public final class c {

    @Retention(RetentionPolicy.SOURCE)
    @ap(a = {ap.a.LIBRARY})
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface a {
    }

    @SuppressLint({"UniqueConstants"})
    @Retention(RetentionPolicy.SOURCE)
    @ap(a = {ap.a.LIBRARY})
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface b {
    }

    private c() {
    }

    @SuppressLint({"WrongConstant"})
    public static int a(@ah PermissionInfo permissionInfo) {
        if (Build.VERSION.SDK_INT >= 28) {
            return permissionInfo.getProtection();
        }
        return permissionInfo.protectionLevel & 15;
    }

    @SuppressLint({"WrongConstant"})
    public static int b(@ah PermissionInfo permissionInfo) {
        if (Build.VERSION.SDK_INT >= 28) {
            return permissionInfo.getProtectionFlags();
        }
        return permissionInfo.protectionLevel & (-16);
    }
}
