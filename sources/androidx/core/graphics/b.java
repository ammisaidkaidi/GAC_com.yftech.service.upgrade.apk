package androidx.core.graphics;

import android.graphics.BlendMode;
import android.graphics.BlendModeColorFilter;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.os.Build;
import androidx.annotation.ah;
import androidx.annotation.ai;

/* loaded from: /home/user/work/dex/classes.dex */
public class b {
    @ai
    public static ColorFilter a(int i, @ah c cVar) {
        if (Build.VERSION.SDK_INT >= 29) {
            BlendMode a2 = d.a(cVar);
            if (a2 != null) {
                return new BlendModeColorFilter(i, a2);
            }
            return null;
        }
        PorterDuff.Mode b = d.b(cVar);
        if (b != null) {
            return new PorterDuffColorFilter(i, b);
        }
        return null;
    }

    private b() {
    }
}
