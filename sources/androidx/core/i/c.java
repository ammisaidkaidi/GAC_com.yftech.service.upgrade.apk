package androidx.core.i;

import android.content.res.Configuration;
import android.os.Build;
import androidx.annotation.ah;

/* loaded from: /home/user/work/dex/classes.dex */
public final class c {
    private c() {
    }

    @ah
    public static f a(@ah Configuration configuration) {
        return Build.VERSION.SDK_INT >= 24 ? f.a(configuration.getLocales()) : f.a(configuration.locale);
    }
}
