package androidx.core.m;

import android.os.Build;
import androidx.annotation.ai;
import java.util.Arrays;
import java.util.Objects;

/* loaded from: /home/user/work/dex/classes.dex */
public class e {
    private e() {
    }

    public static boolean a(@ai Object obj, @ai Object obj2) {
        if (Build.VERSION.SDK_INT >= 19) {
            return Objects.equals(obj, obj2);
        }
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static int a(@ai Object obj) {
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public static int a(@ai Object... objArr) {
        if (Build.VERSION.SDK_INT >= 19) {
            return Objects.hash(objArr);
        }
        return Arrays.hashCode(objArr);
    }
}
