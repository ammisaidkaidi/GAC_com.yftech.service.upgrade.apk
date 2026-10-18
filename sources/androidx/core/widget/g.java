package androidx.core.widget;

import android.os.Build;
import android.view.View;
import android.widget.ListPopupWindow;
import androidx.annotation.ah;
import androidx.annotation.ai;

/* loaded from: /home/user/work/dex/classes.dex */
public final class g {
    private g() {
    }

    @Deprecated
    public static View.OnTouchListener a(Object obj, View view) {
        return a((ListPopupWindow) obj, view);
    }

    @ai
    public static View.OnTouchListener a(@ah ListPopupWindow listPopupWindow, @ah View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            return listPopupWindow.createDragToOpenListener(view);
        }
        return null;
    }
}
