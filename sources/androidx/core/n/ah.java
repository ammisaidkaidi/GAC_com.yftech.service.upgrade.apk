package androidx.core.n;

import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.a;

/* loaded from: /home/user/work/dex/classes.dex */
public final class ah {

    /* renamed from: a, reason: collision with root package name */
    public static final int f533a = 0;
    public static final int b = 1;

    private ah() {
    }

    @Deprecated
    public static boolean a(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return viewGroup.onRequestSendAccessibilityEvent(view, accessibilityEvent);
    }

    @Deprecated
    public static void a(ViewGroup viewGroup, boolean z) {
        viewGroup.setMotionEventSplittingEnabled(z);
    }

    public static int a(@androidx.annotation.ah ViewGroup viewGroup) {
        if (Build.VERSION.SDK_INT >= 18) {
            return viewGroup.getLayoutMode();
        }
        return 0;
    }

    public static void a(@androidx.annotation.ah ViewGroup viewGroup, int i) {
        if (Build.VERSION.SDK_INT >= 18) {
            viewGroup.setLayoutMode(i);
        }
    }

    public static void b(@androidx.annotation.ah ViewGroup viewGroup, boolean z) {
        if (Build.VERSION.SDK_INT >= 21) {
            viewGroup.setTransitionGroup(z);
        } else {
            viewGroup.setTag(a.e.tag_transition_group, Boolean.valueOf(z));
        }
    }

    public static boolean b(@androidx.annotation.ah ViewGroup viewGroup) {
        if (Build.VERSION.SDK_INT >= 21) {
            return viewGroup.isTransitionGroup();
        }
        Boolean bool = (Boolean) viewGroup.getTag(a.e.tag_transition_group);
        return ((bool == null || !bool.booleanValue()) && viewGroup.getBackground() == null && af.R(viewGroup) == null) ? false : true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static int c(@androidx.annotation.ah ViewGroup viewGroup) {
        if (Build.VERSION.SDK_INT >= 21) {
            return viewGroup.getNestedScrollAxes();
        }
        if (viewGroup instanceof u) {
            return ((u) viewGroup).getNestedScrollAxes();
        }
        return 0;
    }
}
