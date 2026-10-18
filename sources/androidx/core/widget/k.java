package androidx.core.widget;

import android.os.Build;
import android.util.Log;
import android.view.View;
import android.widget.PopupWindow;
import androidx.annotation.ah;
import androidx.core.n.af;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* loaded from: /home/user/work/dex/classes.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    private static final String f587a = "PopupWindowCompatApi21";
    private static Method b;
    private static boolean c;
    private static Method d;
    private static boolean e;
    private static Field f;
    private static boolean g;

    private k() {
    }

    public static void a(@ah PopupWindow popupWindow, @ah View view, int i, int i2, int i3) {
        if (Build.VERSION.SDK_INT >= 19) {
            popupWindow.showAsDropDown(view, i, i2, i3);
            return;
        }
        if ((androidx.core.n.h.a(i3, af.p(view)) & 7) == 5) {
            i -= popupWindow.getWidth() - view.getWidth();
        }
        popupWindow.showAsDropDown(view, i, i2);
    }

    public static void a(@ah PopupWindow popupWindow, boolean z) {
        if (Build.VERSION.SDK_INT >= 23) {
            popupWindow.setOverlapAnchor(z);
            return;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            if (!g) {
                try {
                    f = PopupWindow.class.getDeclaredField("mOverlapAnchor");
                    f.setAccessible(true);
                } catch (NoSuchFieldException e2) {
                    Log.i(f587a, "Could not fetch mOverlapAnchor field from PopupWindow", e2);
                }
                g = true;
            }
            if (f != null) {
                try {
                    f.set(popupWindow, Boolean.valueOf(z));
                } catch (IllegalAccessException e3) {
                    Log.i(f587a, "Could not set overlap anchor field in PopupWindow", e3);
                }
            }
        }
    }

    public static boolean a(@ah PopupWindow popupWindow) {
        if (Build.VERSION.SDK_INT >= 23) {
            return popupWindow.getOverlapAnchor();
        }
        if (Build.VERSION.SDK_INT < 21) {
            return false;
        }
        if (!g) {
            try {
                f = PopupWindow.class.getDeclaredField("mOverlapAnchor");
                f.setAccessible(true);
            } catch (NoSuchFieldException e2) {
                Log.i(f587a, "Could not fetch mOverlapAnchor field from PopupWindow", e2);
            }
            g = true;
        }
        if (f == null) {
            return false;
        }
        try {
            return ((Boolean) f.get(popupWindow)).booleanValue();
        } catch (IllegalAccessException e3) {
            Log.i(f587a, "Could not get overlap anchor field in PopupWindow", e3);
            return false;
        }
    }

    public static void a(@ah PopupWindow popupWindow, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            popupWindow.setWindowLayoutType(i);
            return;
        }
        if (!c) {
            try {
                b = PopupWindow.class.getDeclaredMethod("setWindowLayoutType", Integer.TYPE);
                b.setAccessible(true);
            } catch (Exception unused) {
            }
            c = true;
        }
        if (b != null) {
            try {
                b.invoke(popupWindow, Integer.valueOf(i));
            } catch (Exception unused2) {
            }
        }
    }

    public static int b(@ah PopupWindow popupWindow) {
        if (Build.VERSION.SDK_INT >= 23) {
            return popupWindow.getWindowLayoutType();
        }
        if (!e) {
            try {
                d = PopupWindow.class.getDeclaredMethod("getWindowLayoutType", new Class[0]);
                d.setAccessible(true);
            } catch (Exception unused) {
            }
            e = true;
        }
        if (d != null) {
            try {
                return ((Integer) d.invoke(popupWindow, new Object[0])).intValue();
            } catch (Exception unused2) {
            }
        }
        return 0;
    }
}
