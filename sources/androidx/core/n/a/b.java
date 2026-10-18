package androidx.core.n.a;

import android.os.Build;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityRecord;

/* loaded from: /home/user/work/dex/classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    @Deprecated
    public static final int f511a = 128;

    @Deprecated
    public static final int b = 256;

    @Deprecated
    public static final int c = 512;

    @Deprecated
    public static final int d = 1024;

    @Deprecated
    public static final int e = 2048;

    @Deprecated
    public static final int f = 4096;

    @Deprecated
    public static final int g = 8192;
    public static final int h = 16384;
    public static final int i = 32768;
    public static final int j = 65536;
    public static final int k = 131072;
    public static final int l = 262144;
    public static final int m = 524288;
    public static final int n = 1048576;
    public static final int o = 2097152;
    public static final int p = 4194304;
    public static final int q = 8388608;
    public static final int r = 16777216;
    public static final int s = 0;
    public static final int t = 1;
    public static final int u = 2;
    public static final int v = 4;
    public static final int w = 8;
    public static final int x = 16;
    public static final int y = 32;
    public static final int z = -1;

    private b() {
    }

    @Deprecated
    public static int a(AccessibilityEvent accessibilityEvent) {
        return accessibilityEvent.getRecordCount();
    }

    @Deprecated
    public static void a(AccessibilityEvent accessibilityEvent, f fVar) {
        accessibilityEvent.appendRecord((AccessibilityRecord) fVar.a());
    }

    @Deprecated
    public static f a(AccessibilityEvent accessibilityEvent, int i2) {
        return new f(accessibilityEvent.getRecord(i2));
    }

    @Deprecated
    public static f b(AccessibilityEvent accessibilityEvent) {
        return new f(accessibilityEvent);
    }

    public static void b(AccessibilityEvent accessibilityEvent, int i2) {
        if (Build.VERSION.SDK_INT >= 19) {
            accessibilityEvent.setContentChangeTypes(i2);
        }
    }

    public static int c(AccessibilityEvent accessibilityEvent) {
        if (Build.VERSION.SDK_INT >= 19) {
            return accessibilityEvent.getContentChangeTypes();
        }
        return 0;
    }

    public static void c(AccessibilityEvent accessibilityEvent, int i2) {
        if (Build.VERSION.SDK_INT >= 16) {
            accessibilityEvent.setMovementGranularity(i2);
        }
    }

    public static int d(AccessibilityEvent accessibilityEvent) {
        if (Build.VERSION.SDK_INT >= 16) {
            return accessibilityEvent.getMovementGranularity();
        }
        return 0;
    }

    public static void d(AccessibilityEvent accessibilityEvent, int i2) {
        if (Build.VERSION.SDK_INT >= 16) {
            accessibilityEvent.setAction(i2);
        }
    }

    public static int e(AccessibilityEvent accessibilityEvent) {
        if (Build.VERSION.SDK_INT >= 16) {
            return accessibilityEvent.getAction();
        }
        return 0;
    }
}
