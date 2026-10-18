package androidx.appcompat.widget;

import android.os.Build;
import android.view.View;

/* loaded from: /home/user/work/dex/classes.dex */
public class bc {
    public static void a(@androidx.annotation.ah View view, @androidx.annotation.ai CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            view.setTooltipText(charSequence);
        } else {
            bd.a(view, charSequence);
        }
    }

    private bc() {
    }
}
