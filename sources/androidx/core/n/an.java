package androidx.core.n;

import android.os.Build;
import android.view.View;
import android.view.Window;

/* loaded from: /home/user/work/dex/classes.dex */
public final class an {

    /* renamed from: a, reason: collision with root package name */
    public static final int f539a = 8;
    public static final int b = 9;
    public static final int c = 10;

    private an() {
    }

    @androidx.annotation.ah
    public static <T extends View> T a(@androidx.annotation.ah Window window, @androidx.annotation.w int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            return (T) window.requireViewById(i);
        }
        T t = (T) window.findViewById(i);
        if (t != null) {
            return t;
        }
        throw new IllegalArgumentException("ID does not reference a View inside this Window");
    }
}
