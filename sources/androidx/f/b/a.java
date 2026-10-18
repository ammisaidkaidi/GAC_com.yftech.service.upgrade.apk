package androidx.f.b;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.appcompat.widget.ActivityChooserView;
import androidx.c.j;
import androidx.core.n.a.d;
import androidx.core.n.a.e;
import androidx.core.n.a.f;
import androidx.core.n.af;
import androidx.f.b.b;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class a extends androidx.core.n.a {

    /* renamed from: a, reason: collision with root package name */
    public static final int f743a = Integer.MIN_VALUE;
    public static final int b = -1;
    private static final String e = "android.view.View";
    private static final Rect f = new Rect(ActivityChooserView.a.f166a, ActivityChooserView.a.f166a, Integer.MIN_VALUE, Integer.MIN_VALUE);
    private static final b.a<d> o = new b.a<d>() { // from class: androidx.f.b.a.1
        @Override // androidx.f.b.b.a
        public void a(d dVar, Rect rect) {
            dVar.a(rect);
        }
    };
    private static final b.InterfaceC0056b<j<d>, d> p = new b.InterfaceC0056b<j<d>, d>() { // from class: androidx.f.b.a.2
        @Override // androidx.f.b.b.InterfaceC0056b
        public d a(j<d> jVar, int i) {
            return jVar.f(i);
        }

        @Override // androidx.f.b.b.InterfaceC0056b
        public int a(j<d> jVar) {
            return jVar.b();
        }
    };
    private final AccessibilityManager k;
    private final View l;
    private C0055a m;
    private final Rect g = new Rect();
    private final Rect h = new Rect();
    private final Rect i = new Rect();
    private final int[] j = new int[2];
    int c = Integer.MIN_VALUE;
    int d = Integer.MIN_VALUE;
    private int n = Integer.MIN_VALUE;

    private static int e(int i) {
        switch (i) {
            case 19:
                return 33;
            case 20:
            default:
                return 130;
            case 21:
                return 17;
            case 22:
                return 66;
        }
    }

    protected abstract int a(float f2, float f3);

    protected void a(int i, @ah AccessibilityEvent accessibilityEvent) {
    }

    protected abstract void a(int i, @ah d dVar);

    protected void a(int i, boolean z) {
    }

    protected void a(@ah AccessibilityEvent accessibilityEvent) {
    }

    protected void a(@ah d dVar) {
    }

    protected abstract void a(List<Integer> list);

    protected abstract boolean b(int i, int i2, @ai Bundle bundle);

    public a(@ah View view) {
        if (view == null) {
            throw new IllegalArgumentException("View may not be null");
        }
        this.l = view;
        this.k = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        view.setFocusable(true);
        if (af.i(view) == 0) {
            af.e(view, 1);
        }
    }

    @Override // androidx.core.n.a
    public e a(View view) {
        if (this.m == null) {
            this.m = new C0055a();
        }
        return this.m;
    }

    public final boolean a(@ah MotionEvent motionEvent) {
        if (!this.k.isEnabled() || !this.k.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 7) {
            switch (action) {
                case 9:
                    break;
                case 10:
                    if (this.n == Integer.MIN_VALUE) {
                        return false;
                    }
                    f(Integer.MIN_VALUE);
                    return true;
                default:
                    return false;
            }
        }
        int a2 = a(motionEvent.getX(), motionEvent.getY());
        f(a2);
        return a2 != Integer.MIN_VALUE;
    }

    public final boolean a(@ah KeyEvent keyEvent) {
        int i = 0;
        if (keyEvent.getAction() == 1) {
            return false;
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyCode != 61) {
            if (keyCode != 66) {
                switch (keyCode) {
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                        if (!keyEvent.hasNoModifiers()) {
                            return false;
                        }
                        int e2 = e(keyCode);
                        int repeatCount = keyEvent.getRepeatCount() + 1;
                        boolean z = false;
                        while (i < repeatCount && b(e2, (Rect) null)) {
                            i++;
                            z = true;
                        }
                        return z;
                    case 23:
                        break;
                    default:
                        return false;
                }
            }
            if (!keyEvent.hasNoModifiers() || keyEvent.getRepeatCount() != 0) {
                return false;
            }
            g();
            return true;
        }
        if (keyEvent.hasNoModifiers()) {
            return b(2, (Rect) null);
        }
        if (keyEvent.hasModifiers(1)) {
            return b(1, (Rect) null);
        }
        return false;
    }

    public final void a(boolean z, int i, @ai Rect rect) {
        if (this.d != Integer.MIN_VALUE) {
            d(this.d);
        }
        if (z) {
            b(i, rect);
        }
    }

    public final int b() {
        return this.c;
    }

    public final int c() {
        return this.d;
    }

    private void a(int i, Rect rect) {
        b(i).a(rect);
    }

    private boolean b(int i, @ai Rect rect) {
        d dVar;
        j<d> f2 = f();
        int i2 = this.d;
        d a2 = i2 == Integer.MIN_VALUE ? null : f2.a(i2);
        if (i != 17 && i != 33 && i != 66 && i != 130) {
            switch (i) {
                case 1:
                case 2:
                    dVar = (d) b.a(f2, p, o, a2, i, af.p(this.l) == 1, false);
                    break;
                default:
                    throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
        } else {
            Rect rect2 = new Rect();
            if (this.d != Integer.MIN_VALUE) {
                a(this.d, rect2);
            } else if (rect != null) {
                rect2.set(rect);
            } else {
                a(this.l, i, rect2);
            }
            dVar = (d) b.a(f2, p, o, a2, rect2, i);
        }
        return c(dVar != null ? f2.e(f2.a((j<d>) dVar)) : Integer.MIN_VALUE);
    }

    private j<d> f() {
        ArrayList arrayList = new ArrayList();
        a(arrayList);
        j<d> jVar = new j<>();
        for (int i = 0; i < arrayList.size(); i++) {
            jVar.d(i, h(i));
        }
        return jVar;
    }

    private static Rect a(@ah View view, int i, @ah Rect rect) {
        int width = view.getWidth();
        int height = view.getHeight();
        if (i == 17) {
            rect.set(width, 0, width, height);
        } else if (i == 33) {
            rect.set(0, height, width, height);
        } else if (i == 66) {
            rect.set(-1, 0, -1, height);
        } else if (i == 130) {
            rect.set(0, -1, width, -1);
        } else {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        return rect;
    }

    private boolean g() {
        return this.d != Integer.MIN_VALUE && b(this.d, 16, null);
    }

    public final boolean a(int i, int i2) {
        ViewParent parent;
        if (i == Integer.MIN_VALUE || !this.k.isEnabled() || (parent = this.l.getParent()) == null) {
            return false;
        }
        return androidx.core.n.ai.a(parent, this.l, c(i, i2));
    }

    public final void d() {
        b(-1, 1);
    }

    public final void a(int i) {
        b(i, 0);
    }

    public final void b(int i, int i2) {
        ViewParent parent;
        if (i == Integer.MIN_VALUE || !this.k.isEnabled() || (parent = this.l.getParent()) == null) {
            return;
        }
        AccessibilityEvent c = c(i, 2048);
        androidx.core.n.a.b.b(c, i2);
        androidx.core.n.ai.a(parent, this.l, c);
    }

    @Deprecated
    public int e() {
        return b();
    }

    private void f(int i) {
        if (this.n == i) {
            return;
        }
        int i2 = this.n;
        this.n = i;
        a(i, 128);
        a(i2, 256);
    }

    private AccessibilityEvent c(int i, int i2) {
        if (i == -1) {
            return g(i2);
        }
        return d(i, i2);
    }

    private AccessibilityEvent g(int i) {
        AccessibilityEvent obtain = AccessibilityEvent.obtain(i);
        this.l.onInitializeAccessibilityEvent(obtain);
        return obtain;
    }

    @Override // androidx.core.n.a
    public void d(View view, AccessibilityEvent accessibilityEvent) {
        super.d(view, accessibilityEvent);
        a(accessibilityEvent);
    }

    private AccessibilityEvent d(int i, int i2) {
        AccessibilityEvent obtain = AccessibilityEvent.obtain(i2);
        d b2 = b(i);
        obtain.getText().add(b2.x());
        obtain.setContentDescription(b2.y());
        obtain.setScrollable(b2.t());
        obtain.setPassword(b2.s());
        obtain.setEnabled(b2.r());
        obtain.setChecked(b2.j());
        a(i, obtain);
        if (obtain.getText().isEmpty() && obtain.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
        }
        obtain.setClassName(b2.w());
        f.a(obtain, this.l, i);
        obtain.setPackageName(this.l.getContext().getPackageName());
        return obtain;
    }

    @ah
    d b(int i) {
        if (i == -1) {
            return h();
        }
        return h(i);
    }

    @ah
    private d h() {
        d a2 = d.a(this.l);
        af.a(this.l, a2);
        ArrayList arrayList = new ArrayList();
        a(arrayList);
        if (a2.e() > 0 && arrayList.size() > 0) {
            throw new RuntimeException("Views cannot have both real and virtual children");
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            a2.c(this.l, ((Integer) arrayList.get(i)).intValue());
        }
        return a2;
    }

    @Override // androidx.core.n.a
    public void a(View view, d dVar) {
        super.a(view, dVar);
        a(dVar);
    }

    @ah
    private d h(int i) {
        d c = d.c();
        c.j(true);
        c.c(true);
        c.b(e);
        c.b(f);
        c.d(f);
        c.e(this.l);
        a(i, c);
        if (c.x() == null && c.y() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        c.a(this.h);
        if (this.h.equals(f)) {
            throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
        }
        int f2 = c.f();
        if ((f2 & 64) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        if ((f2 & 128) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        c.a((CharSequence) this.l.getContext().getPackageName());
        c.b(this.l, i);
        if (this.c == i) {
            c.f(true);
            c.d(128);
        } else {
            c.f(false);
            c.d(64);
        }
        boolean z = this.d == i;
        if (z) {
            c.d(2);
        } else if (c.k()) {
            c.d(1);
        }
        c.d(z);
        this.l.getLocationOnScreen(this.j);
        c.c(this.g);
        if (this.g.equals(f)) {
            c.a(this.g);
            if (c.f514a != -1) {
                d c2 = d.c();
                for (int i2 = c.f514a; i2 != -1; i2 = c2.f514a) {
                    c2.e(this.l, -1);
                    c2.b(f);
                    a(i2, c2);
                    c2.a(this.h);
                    this.g.offset(this.h.left, this.h.top);
                }
                c2.z();
            }
            this.g.offset(this.j[0] - this.l.getScrollX(), this.j[1] - this.l.getScrollY());
        }
        if (this.l.getLocalVisibleRect(this.i)) {
            this.i.offset(this.j[0] - this.l.getScrollX(), this.j[1] - this.l.getScrollY());
            if (this.g.intersect(this.i)) {
                c.d(this.g);
                if (a(this.g)) {
                    c.e(true);
                }
            }
        }
        return c;
    }

    boolean a(int i, int i2, Bundle bundle) {
        if (i == -1) {
            return a(i2, bundle);
        }
        return c(i, i2, bundle);
    }

    private boolean a(int i, Bundle bundle) {
        return af.a(this.l, i, bundle);
    }

    private boolean c(int i, int i2, Bundle bundle) {
        if (i2 == 64) {
            return i(i);
        }
        if (i2 == 128) {
            return j(i);
        }
        switch (i2) {
            case 1:
                return c(i);
            case 2:
                return d(i);
            default:
                return b(i, i2, bundle);
        }
    }

    private boolean a(Rect rect) {
        if (rect == null || rect.isEmpty() || this.l.getWindowVisibility() != 0) {
            return false;
        }
        Object parent = this.l.getParent();
        while (parent instanceof View) {
            View view = (View) parent;
            if (view.getAlpha() <= 0.0f || view.getVisibility() != 0) {
                return false;
            }
            parent = view.getParent();
        }
        return parent != null;
    }

    private boolean i(int i) {
        if (!this.k.isEnabled() || !this.k.isTouchExplorationEnabled() || this.c == i) {
            return false;
        }
        if (this.c != Integer.MIN_VALUE) {
            j(this.c);
        }
        this.c = i;
        this.l.invalidate();
        a(i, 32768);
        return true;
    }

    private boolean j(int i) {
        if (this.c != i) {
            return false;
        }
        this.c = Integer.MIN_VALUE;
        this.l.invalidate();
        a(i, 65536);
        return true;
    }

    public final boolean c(int i) {
        if ((!this.l.isFocused() && !this.l.requestFocus()) || this.d == i) {
            return false;
        }
        if (this.d != Integer.MIN_VALUE) {
            d(this.d);
        }
        this.d = i;
        a(i, true);
        a(i, 8);
        return true;
    }

    public final boolean d(int i) {
        if (this.d != i) {
            return false;
        }
        this.d = Integer.MIN_VALUE;
        a(i, false);
        a(i, 8);
        return true;
    }

    /* renamed from: androidx.f.b.a$a, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    private class C0055a extends e {
        C0055a() {
        }

        @Override // androidx.core.n.a.e
        public d a(int i) {
            return d.a(a.this.b(i));
        }

        @Override // androidx.core.n.a.e
        public boolean a(int i, int i2, Bundle bundle) {
            return a.this.a(i, i2, bundle);
        }

        @Override // androidx.core.n.a.e
        public d b(int i) {
            int i2 = i == 2 ? a.this.c : a.this.d;
            if (i2 == Integer.MIN_VALUE) {
                return null;
            }
            return a(i2);
        }
    }
}
