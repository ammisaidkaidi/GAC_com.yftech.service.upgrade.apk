package androidx.core.n;

import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;

/* loaded from: /home/user/work/dex/classes.dex */
public final class ai {

    /* renamed from: a, reason: collision with root package name */
    private static final String f534a = "ViewParentCompat";
    private static int[] b;

    private ai() {
    }

    @Deprecated
    public static boolean a(ViewParent viewParent, View view, AccessibilityEvent accessibilityEvent) {
        return viewParent.requestSendAccessibilityEvent(view, accessibilityEvent);
    }

    public static boolean a(ViewParent viewParent, View view, View view2, int i) {
        return a(viewParent, view, view2, i, 0);
    }

    public static void b(ViewParent viewParent, View view, View view2, int i) {
        b(viewParent, view, view2, i, 0);
    }

    public static void a(ViewParent viewParent, View view) {
        a(viewParent, view, 0);
    }

    public static void a(ViewParent viewParent, View view, int i, int i2, int i3, int i4) {
        a(viewParent, view, i, i2, i3, i4, 0, a());
    }

    public static void a(ViewParent viewParent, View view, int i, int i2, int i3, int i4, int i5) {
        a(viewParent, view, i, i2, i3, i4, i5, a());
    }

    public static void a(ViewParent viewParent, View view, int i, int i2, int[] iArr) {
        a(viewParent, view, i, i2, iArr, 0);
    }

    public static boolean a(ViewParent viewParent, View view, View view2, int i, int i2) {
        if (viewParent instanceof v) {
            return ((v) viewParent).a(view, view2, i, i2);
        }
        if (i2 != 0) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                return viewParent.onStartNestedScroll(view, view2, i);
            } catch (AbstractMethodError e) {
                Log.e(f534a, "ViewParent " + viewParent + " does not implement interface method onStartNestedScroll", e);
                return false;
            }
        }
        if (viewParent instanceof u) {
            return ((u) viewParent).onStartNestedScroll(view, view2, i);
        }
        return false;
    }

    public static void b(ViewParent viewParent, View view, View view2, int i, int i2) {
        if (viewParent instanceof v) {
            ((v) viewParent).b(view, view2, i, i2);
            return;
        }
        if (i2 == 0) {
            if (Build.VERSION.SDK_INT >= 21) {
                try {
                    viewParent.onNestedScrollAccepted(view, view2, i);
                    return;
                } catch (AbstractMethodError e) {
                    Log.e(f534a, "ViewParent " + viewParent + " does not implement interface method onNestedScrollAccepted", e);
                    return;
                }
            }
            if (viewParent instanceof u) {
                ((u) viewParent).onNestedScrollAccepted(view, view2, i);
            }
        }
    }

    public static void a(ViewParent viewParent, View view, int i) {
        if (viewParent instanceof v) {
            ((v) viewParent).a(view, i);
            return;
        }
        if (i == 0) {
            if (Build.VERSION.SDK_INT >= 21) {
                try {
                    viewParent.onStopNestedScroll(view);
                    return;
                } catch (AbstractMethodError e) {
                    Log.e(f534a, "ViewParent " + viewParent + " does not implement interface method onStopNestedScroll", e);
                    return;
                }
            }
            if (viewParent instanceof u) {
                ((u) viewParent).onStopNestedScroll(view);
            }
        }
    }

    public static void a(ViewParent viewParent, View view, int i, int i2, int i3, int i4, int i5, @androidx.annotation.ah int[] iArr) {
        if (viewParent instanceof w) {
            ((w) viewParent).a(view, i, i2, i3, i4, i5, iArr);
            return;
        }
        iArr[0] = iArr[0] + i3;
        iArr[1] = iArr[1] + i4;
        if (viewParent instanceof v) {
            ((v) viewParent).a(view, i, i2, i3, i4, i5);
            return;
        }
        if (i5 == 0) {
            if (Build.VERSION.SDK_INT >= 21) {
                try {
                    viewParent.onNestedScroll(view, i, i2, i3, i4);
                    return;
                } catch (AbstractMethodError e) {
                    Log.e(f534a, "ViewParent " + viewParent + " does not implement interface method onNestedScroll", e);
                    return;
                }
            }
            if (viewParent instanceof u) {
                ((u) viewParent).onNestedScroll(view, i, i2, i3, i4);
            }
        }
    }

    public static void a(ViewParent viewParent, View view, int i, int i2, int[] iArr, int i3) {
        if (viewParent instanceof v) {
            ((v) viewParent).a(view, i, i2, iArr, i3);
            return;
        }
        if (i3 == 0) {
            if (Build.VERSION.SDK_INT >= 21) {
                try {
                    viewParent.onNestedPreScroll(view, i, i2, iArr);
                    return;
                } catch (AbstractMethodError e) {
                    Log.e(f534a, "ViewParent " + viewParent + " does not implement interface method onNestedPreScroll", e);
                    return;
                }
            }
            if (viewParent instanceof u) {
                ((u) viewParent).onNestedPreScroll(view, i, i2, iArr);
            }
        }
    }

    public static boolean a(ViewParent viewParent, View view, float f, float f2, boolean z) {
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                return viewParent.onNestedFling(view, f, f2, z);
            } catch (AbstractMethodError e) {
                Log.e(f534a, "ViewParent " + viewParent + " does not implement interface method onNestedFling", e);
                return false;
            }
        }
        if (viewParent instanceof u) {
            return ((u) viewParent).onNestedFling(view, f, f2, z);
        }
        return false;
    }

    public static boolean a(ViewParent viewParent, View view, float f, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                return viewParent.onNestedPreFling(view, f, f2);
            } catch (AbstractMethodError e) {
                Log.e(f534a, "ViewParent " + viewParent + " does not implement interface method onNestedPreFling", e);
                return false;
            }
        }
        if (viewParent instanceof u) {
            return ((u) viewParent).onNestedPreFling(view, f, f2);
        }
        return false;
    }

    public static void c(ViewParent viewParent, View view, View view2, int i) {
        if (Build.VERSION.SDK_INT >= 19) {
            viewParent.notifySubtreeAccessibilityStateChanged(view, view2, i);
        }
    }

    private static int[] a() {
        if (b == null) {
            b = new int[2];
        } else {
            b[0] = 0;
            b[1] = 0;
        }
        return b;
    }
}
