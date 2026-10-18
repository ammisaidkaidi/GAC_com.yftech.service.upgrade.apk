package androidx.core.n.a;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.os.Build;
import android.view.accessibility.AccessibilityManager;
import androidx.annotation.ah;
import androidx.annotation.am;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public final class c {

    @Deprecated
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface a {
        @Deprecated
        void a(boolean z);
    }

    @Deprecated
    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class b implements a {
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface d {
        void a(boolean z);
    }

    @Deprecated
    public static boolean a(AccessibilityManager accessibilityManager, a aVar) {
        if (aVar == null) {
            return false;
        }
        return accessibilityManager.addAccessibilityStateChangeListener(new AccessibilityManagerAccessibilityStateChangeListenerC0040c(aVar));
    }

    @Deprecated
    public static boolean b(AccessibilityManager accessibilityManager, a aVar) {
        if (aVar == null) {
            return false;
        }
        return accessibilityManager.removeAccessibilityStateChangeListener(new AccessibilityManagerAccessibilityStateChangeListenerC0040c(aVar));
    }

    /* renamed from: androidx.core.n.a.c$c, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    private static class AccessibilityManagerAccessibilityStateChangeListenerC0040c implements AccessibilityManager.AccessibilityStateChangeListener {

        /* renamed from: a, reason: collision with root package name */
        a f512a;

        AccessibilityManagerAccessibilityStateChangeListenerC0040c(@ah a aVar) {
            this.f512a = aVar;
        }

        public int hashCode() {
            return this.f512a.hashCode();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof AccessibilityManagerAccessibilityStateChangeListenerC0040c) {
                return this.f512a.equals(((AccessibilityManagerAccessibilityStateChangeListenerC0040c) obj).f512a);
            }
            return false;
        }

        @Override // android.view.accessibility.AccessibilityManager.AccessibilityStateChangeListener
        public void onAccessibilityStateChanged(boolean z) {
            this.f512a.a(z);
        }
    }

    @Deprecated
    public static List<AccessibilityServiceInfo> a(AccessibilityManager accessibilityManager) {
        return accessibilityManager.getInstalledAccessibilityServiceList();
    }

    @Deprecated
    public static List<AccessibilityServiceInfo> a(AccessibilityManager accessibilityManager, int i) {
        return accessibilityManager.getEnabledAccessibilityServiceList(i);
    }

    @Deprecated
    public static boolean b(AccessibilityManager accessibilityManager) {
        return accessibilityManager.isTouchExplorationEnabled();
    }

    public static boolean a(AccessibilityManager accessibilityManager, d dVar) {
        if (Build.VERSION.SDK_INT < 19 || dVar == null) {
            return false;
        }
        return accessibilityManager.addTouchExplorationStateChangeListener(new e(dVar));
    }

    public static boolean b(AccessibilityManager accessibilityManager, d dVar) {
        if (Build.VERSION.SDK_INT < 19 || dVar == null) {
            return false;
        }
        return accessibilityManager.removeTouchExplorationStateChangeListener(new e(dVar));
    }

    @am(a = 19)
    /* loaded from: /home/user/work/dex/classes.dex */
    private static final class e implements AccessibilityManager.TouchExplorationStateChangeListener {

        /* renamed from: a, reason: collision with root package name */
        final d f513a;

        e(@ah d dVar) {
            this.f513a = dVar;
        }

        public int hashCode() {
            return this.f513a.hashCode();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof e) {
                return this.f513a.equals(((e) obj).f513a);
            }
            return false;
        }

        @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
        public void onTouchExplorationStateChanged(boolean z) {
            this.f513a.a(z);
        }
    }

    private c() {
    }
}
