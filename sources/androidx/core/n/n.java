package androidx.core.n;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.Menu;
import android.view.MenuItem;

/* loaded from: /home/user/work/dex/classes.dex */
public final class n {
    @Deprecated
    public static void a(MenuItem menuItem, int i) {
        menuItem.setShowAsAction(i);
    }

    @SuppressLint({"NewApi"})
    public static void a(Menu menu, boolean z) {
        if (menu instanceof androidx.core.e.a.a) {
            ((androidx.core.e.a.a) menu).setGroupDividerEnabled(z);
        } else if (Build.VERSION.SDK_INT >= 28) {
            menu.setGroupDividerEnabled(z);
        }
    }

    private n() {
    }
}
