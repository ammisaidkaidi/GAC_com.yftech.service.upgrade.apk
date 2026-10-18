package androidx.j;

import android.animation.LayoutTransition;
import android.util.Log;
import android.view.ViewGroup;
import androidx.j.aa;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: /home/user/work/dex/classes.dex */
class au {

    /* renamed from: a, reason: collision with root package name */
    private static final String f864a = "ViewGroupUtilsApi14";
    private static final int b = 4;
    private static LayoutTransition c;
    private static Field d;
    private static boolean e;
    private static Method f;
    private static boolean g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void a(@androidx.annotation.ah ViewGroup viewGroup, boolean z) {
        LayoutTransition layoutTransition;
        boolean z2 = false;
        if (c == null) {
            c = new LayoutTransition() { // from class: androidx.j.au.1
                @Override // android.animation.LayoutTransition
                public boolean isChangingLayout() {
                    return true;
                }
            };
            c.setAnimator(2, null);
            c.setAnimator(0, null);
            c.setAnimator(1, null);
            c.setAnimator(3, null);
            c.setAnimator(4, null);
        }
        if (z) {
            LayoutTransition layoutTransition2 = viewGroup.getLayoutTransition();
            if (layoutTransition2 != null) {
                if (layoutTransition2.isRunning()) {
                    a(layoutTransition2);
                }
                if (layoutTransition2 != c) {
                    viewGroup.setTag(aa.e.transition_layout_save, layoutTransition2);
                }
            }
            viewGroup.setLayoutTransition(c);
            return;
        }
        viewGroup.setLayoutTransition(null);
        if (!e) {
            try {
                d = ViewGroup.class.getDeclaredField("mLayoutSuppressed");
                d.setAccessible(true);
            } catch (NoSuchFieldException unused) {
                Log.i(f864a, "Failed to access mLayoutSuppressed field by reflection");
            }
            e = true;
        }
        if (d != null) {
            try {
                boolean z3 = d.getBoolean(viewGroup);
                if (z3) {
                    try {
                        d.setBoolean(viewGroup, false);
                    } catch (IllegalAccessException unused2) {
                        z2 = z3;
                        Log.i(f864a, "Failed to get mLayoutSuppressed field by reflection");
                        if (z2) {
                        }
                        layoutTransition = (LayoutTransition) viewGroup.getTag(aa.e.transition_layout_save);
                        if (layoutTransition == null) {
                        }
                    }
                }
                z2 = z3;
            } catch (IllegalAccessException unused3) {
            }
        }
        if (z2) {
            viewGroup.requestLayout();
        }
        layoutTransition = (LayoutTransition) viewGroup.getTag(aa.e.transition_layout_save);
        if (layoutTransition == null) {
            viewGroup.setTag(aa.e.transition_layout_save, null);
            viewGroup.setLayoutTransition(layoutTransition);
        }
    }

    private static void a(LayoutTransition layoutTransition) {
        if (!g) {
            try {
                f = LayoutTransition.class.getDeclaredMethod("cancel", new Class[0]);
                f.setAccessible(true);
            } catch (NoSuchMethodException unused) {
                Log.i(f864a, "Failed to access cancel method by reflection");
            }
            g = true;
        }
        if (f != null) {
            try {
                f.invoke(layoutTransition, new Object[0]);
            } catch (IllegalAccessException unused2) {
                Log.i(f864a, "Failed to access cancel method by reflection");
            } catch (InvocationTargetException unused3) {
                Log.i(f864a, "Failed to invoke cancel method by reflection");
            }
        }
    }

    private au() {
    }
}
