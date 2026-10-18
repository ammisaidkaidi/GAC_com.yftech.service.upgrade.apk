package androidx.core.b;

import android.content.Context;
import android.os.Binder;
import android.os.Process;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: /home/user/work/dex/classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public static final int f416a = 0;
    public static final int b = -1;
    public static final int c = -2;

    @Retention(RetentionPolicy.SOURCE)
    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface a {
    }

    private g() {
    }

    public static int a(@ah Context context, @ah String str, int i, int i2, @ai String str2) {
        if (context.checkPermission(str, i, i2) == -1) {
            return -1;
        }
        String a2 = androidx.core.app.h.a(str);
        if (a2 == null) {
            return 0;
        }
        if (str2 == null) {
            String[] packagesForUid = context.getPackageManager().getPackagesForUid(i2);
            if (packagesForUid == null || packagesForUid.length <= 0) {
                return -1;
            }
            str2 = packagesForUid[0];
        }
        return androidx.core.app.h.b(context, a2, str2) != 0 ? -2 : 0;
    }

    public static int a(@ah Context context, @ah String str) {
        return a(context, str, Process.myPid(), Process.myUid(), context.getPackageName());
    }

    public static int a(@ah Context context, @ah String str, @ai String str2) {
        if (Binder.getCallingPid() == Process.myPid()) {
            return -1;
        }
        return a(context, str, Binder.getCallingPid(), Binder.getCallingUid(), str2);
    }

    public static int b(@ah Context context, @ah String str) {
        return a(context, str, Binder.getCallingPid(), Binder.getCallingUid(), Binder.getCallingPid() == Process.myPid() ? context.getPackageName() : null);
    }
}
