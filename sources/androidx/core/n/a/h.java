package androidx.core.n.a;

import android.graphics.Rect;
import android.os.Build;
import android.view.accessibility.AccessibilityWindowInfo;
import androidx.annotation.ah;

/* loaded from: /home/user/work/dex/classes.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    public static final int f524a = 1;
    public static final int b = 2;
    public static final int c = 3;
    public static final int d = 4;
    public static final int e = 5;
    private static final int g = -1;
    private Object f;

    private static String b(int i) {
        switch (i) {
            case 1:
                return "TYPE_APPLICATION";
            case 2:
                return "TYPE_INPUT_METHOD";
            case 3:
                return "TYPE_SYSTEM";
            case 4:
                return "TYPE_ACCESSIBILITY_OVERLAY";
            default:
                return "<UNKNOWN>";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static h a(Object obj) {
        if (obj != null) {
            return new h(obj);
        }
        return null;
    }

    private h(Object obj) {
        this.f = obj;
    }

    public int a() {
        if (Build.VERSION.SDK_INT >= 21) {
            return ((AccessibilityWindowInfo) this.f).getType();
        }
        return -1;
    }

    public int b() {
        if (Build.VERSION.SDK_INT >= 21) {
            return ((AccessibilityWindowInfo) this.f).getLayer();
        }
        return -1;
    }

    public d c() {
        if (Build.VERSION.SDK_INT >= 21) {
            return d.a((Object) ((AccessibilityWindowInfo) this.f).getRoot());
        }
        return null;
    }

    public h d() {
        if (Build.VERSION.SDK_INT >= 21) {
            return a(((AccessibilityWindowInfo) this.f).getParent());
        }
        return null;
    }

    public int e() {
        if (Build.VERSION.SDK_INT >= 21) {
            return ((AccessibilityWindowInfo) this.f).getId();
        }
        return -1;
    }

    public void a(Rect rect) {
        if (Build.VERSION.SDK_INT >= 21) {
            ((AccessibilityWindowInfo) this.f).getBoundsInScreen(rect);
        }
    }

    public boolean f() {
        if (Build.VERSION.SDK_INT >= 21) {
            return ((AccessibilityWindowInfo) this.f).isActive();
        }
        return true;
    }

    public boolean g() {
        if (Build.VERSION.SDK_INT >= 21) {
            return ((AccessibilityWindowInfo) this.f).isFocused();
        }
        return true;
    }

    public boolean h() {
        if (Build.VERSION.SDK_INT >= 21) {
            return ((AccessibilityWindowInfo) this.f).isAccessibilityFocused();
        }
        return true;
    }

    public int i() {
        if (Build.VERSION.SDK_INT >= 21) {
            return ((AccessibilityWindowInfo) this.f).getChildCount();
        }
        return 0;
    }

    public h a(int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            return a(((AccessibilityWindowInfo) this.f).getChild(i));
        }
        return null;
    }

    public CharSequence j() {
        if (Build.VERSION.SDK_INT >= 24) {
            return ((AccessibilityWindowInfo) this.f).getTitle();
        }
        return null;
    }

    public d k() {
        if (Build.VERSION.SDK_INT >= 24) {
            return d.a((Object) ((AccessibilityWindowInfo) this.f).getAnchor());
        }
        return null;
    }

    public static h l() {
        if (Build.VERSION.SDK_INT >= 21) {
            return a(AccessibilityWindowInfo.obtain());
        }
        return null;
    }

    public static h a(h hVar) {
        if (Build.VERSION.SDK_INT < 21 || hVar == null) {
            return null;
        }
        return a(AccessibilityWindowInfo.obtain((AccessibilityWindowInfo) hVar.f));
    }

    public void m() {
        if (Build.VERSION.SDK_INT >= 21) {
            ((AccessibilityWindowInfo) this.f).recycle();
        }
    }

    public int hashCode() {
        if (this.f == null) {
            return 0;
        }
        return this.f.hashCode();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        if (this.f == null) {
            if (hVar.f != null) {
                return false;
            }
        } else if (!this.f.equals(hVar.f)) {
            return false;
        }
        return true;
    }

    @ah
    public String toString() {
        StringBuilder sb = new StringBuilder();
        Rect rect = new Rect();
        a(rect);
        sb.append("AccessibilityWindowInfo[");
        sb.append("id=");
        sb.append(e());
        sb.append(", type=");
        sb.append(b(a()));
        sb.append(", layer=");
        sb.append(b());
        sb.append(", bounds=");
        sb.append(rect);
        sb.append(", focused=");
        sb.append(g());
        sb.append(", active=");
        sb.append(f());
        sb.append(", hasParent=");
        sb.append(d() != null);
        sb.append(", hasChildren=");
        sb.append(i() > 0);
        sb.append(']');
        return sb.toString();
    }
}
