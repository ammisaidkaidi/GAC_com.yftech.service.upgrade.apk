package androidx.core.n;

import android.annotation.SuppressLint;
import android.app.UiModeManager;
import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import android.text.TextUtils;
import android.view.Display;
import java.util.ArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    private static final int f548a = 3840;
    private static final int b = 2160;

    private c() {
    }

    @SuppressLint({"ArrayReturn"})
    @androidx.annotation.ah
    public static a[] a(@androidx.annotation.ah Context context, @androidx.annotation.ah Display display) {
        Point b2 = b(context, display);
        if (Build.VERSION.SDK_INT >= 23) {
            Display.Mode[] supportedModes = display.getSupportedModes();
            ArrayList arrayList = new ArrayList(supportedModes.length);
            boolean z = false;
            for (int i = 0; i < supportedModes.length; i++) {
                if (a(supportedModes[i], b2)) {
                    arrayList.add(i, new a(supportedModes[i], true));
                    z = true;
                } else {
                    arrayList.add(i, new a(supportedModes[i], false));
                }
            }
            if (!z) {
                arrayList.add(new a(b2));
            }
            return (a[]) arrayList.toArray(new a[0]);
        }
        return new a[]{new a(b2)};
    }

    private static Point a(@androidx.annotation.ah String str) {
        String[] split = str.trim().split("x", -1);
        if (split.length == 2) {
            int parseInt = Integer.parseInt(split[0]);
            int parseInt2 = Integer.parseInt(split[1]);
            if (parseInt > 0 && parseInt2 > 0) {
                return new Point(parseInt, parseInt2);
            }
        }
        throw new NumberFormatException();
    }

    @androidx.annotation.ai
    private static String b(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class).invoke(cls, str);
        } catch (Exception unused) {
            return null;
        }
    }

    @androidx.annotation.am(a = 23)
    private static boolean a(Display.Mode mode, Point point) {
        return (mode.getPhysicalWidth() == point.x && mode.getPhysicalHeight() == point.y) || (mode.getPhysicalWidth() == point.y && mode.getPhysicalHeight() == point.x);
    }

    private static boolean a(@androidx.annotation.ah Context context) {
        UiModeManager uiModeManager = (UiModeManager) context.getSystemService("uimode");
        return uiModeManager != null && uiModeManager.getCurrentModeType() == 4;
    }

    @androidx.annotation.ai
    private static Point a(@androidx.annotation.ah String str, @androidx.annotation.ah Display display) {
        if (display.getDisplayId() != 0) {
            return null;
        }
        String b2 = b(str);
        if (TextUtils.isEmpty(b2)) {
            return null;
        }
        try {
            return a(b2);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    private static Point b(@androidx.annotation.ah Context context, @androidx.annotation.ah Display display) {
        Point a2;
        if (Build.VERSION.SDK_INT < 28) {
            a2 = a("sys.display-size", display);
        } else {
            a2 = a("vendor.display-size", display);
        }
        if (a2 != null) {
            return a2;
        }
        if (b(context)) {
            return new Point(f548a, b);
        }
        Point point = new Point();
        if (Build.VERSION.SDK_INT >= 23) {
            Display.Mode mode = display.getMode();
            point.x = mode.getPhysicalWidth();
            point.y = mode.getPhysicalHeight();
        } else if (Build.VERSION.SDK_INT >= 17) {
            display.getRealSize(point);
        } else {
            display.getSize(point);
        }
        return point;
    }

    private static boolean b(@androidx.annotation.ah Context context) {
        return a(context) && "Sony".equals(Build.MANUFACTURER) && Build.MODEL.startsWith("BRAVIA") && context.getPackageManager().hasSystemFeature("com.sony.dtv.hardware.panel.qfhd");
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        private final Display.Mode f550a;
        private final Point b;
        private final boolean c;

        a(@androidx.annotation.ah Point point) {
            androidx.core.m.i.a(point, "physicalDisplaySize == null");
            this.c = true;
            this.b = point;
            this.f550a = null;
        }

        @androidx.annotation.am(a = 23)
        a(@androidx.annotation.ah Display.Mode mode, boolean z) {
            androidx.core.m.i.a(mode, "Display.Mode == null, can't wrap a null reference");
            this.c = z;
            this.b = new Point(mode.getPhysicalWidth(), mode.getPhysicalHeight());
            this.f550a = mode;
        }

        public int a() {
            return this.b.x;
        }

        public int b() {
            return this.b.y;
        }

        @androidx.annotation.ai
        @androidx.annotation.am(a = 23)
        public Display.Mode c() {
            return this.f550a;
        }

        public boolean d() {
            return this.c;
        }
    }
}
