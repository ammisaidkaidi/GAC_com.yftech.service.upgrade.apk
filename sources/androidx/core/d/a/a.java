package androidx.core.d.a;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Build;
import android.view.Display;
import android.view.WindowManager;
import androidx.annotation.ah;
import androidx.annotation.ai;
import java.util.WeakHashMap;

/* loaded from: /home/user/work/dex/classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static final String f418a = "android.hardware.display.category.PRESENTATION";
    private static final WeakHashMap<Context, a> b = new WeakHashMap<>();
    private final Context c;

    private a(Context context) {
        this.c = context;
    }

    @ah
    public static a a(@ah Context context) {
        a aVar;
        synchronized (b) {
            aVar = b.get(context);
            if (aVar == null) {
                aVar = new a(context);
                b.put(context, aVar);
            }
        }
        return aVar;
    }

    @ai
    public Display a(int i) {
        if (Build.VERSION.SDK_INT >= 17) {
            return ((DisplayManager) this.c.getSystemService("display")).getDisplay(i);
        }
        Display defaultDisplay = ((WindowManager) this.c.getSystemService("window")).getDefaultDisplay();
        if (defaultDisplay.getDisplayId() == i) {
            return defaultDisplay;
        }
        return null;
    }

    @ah
    public Display[] a() {
        if (Build.VERSION.SDK_INT >= 17) {
            return ((DisplayManager) this.c.getSystemService("display")).getDisplays();
        }
        return new Display[]{((WindowManager) this.c.getSystemService("window")).getDefaultDisplay()};
    }

    @ah
    public Display[] a(@ai String str) {
        if (Build.VERSION.SDK_INT >= 17) {
            return ((DisplayManager) this.c.getSystemService("display")).getDisplays(str);
        }
        if (str == null) {
            return new Display[0];
        }
        return new Display[]{((WindowManager) this.c.getSystemService("window")).getDefaultDisplay()};
    }
}
