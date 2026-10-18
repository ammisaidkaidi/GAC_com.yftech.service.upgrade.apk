package androidx.appcompat.widget;

import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityManager;
import androidx.annotation.ap;
import androidx.appcompat.widget.ActivityChooserView;

@androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
class bd implements View.OnAttachStateChangeListener, View.OnHoverListener, View.OnLongClickListener {

    /* renamed from: a, reason: collision with root package name */
    private static final String f248a = "TooltipCompatHandler";
    private static final long b = 2500;
    private static final long c = 15000;
    private static final long d = 3000;
    private static bd n;
    private static bd o;
    private final View e;
    private final CharSequence f;
    private final int g;
    private final Runnable h = new Runnable() { // from class: androidx.appcompat.widget.bd.1
        @Override // java.lang.Runnable
        public void run() {
            bd.this.a(false);
        }
    };
    private final Runnable i = new Runnable() { // from class: androidx.appcompat.widget.bd.2
        @Override // java.lang.Runnable
        public void run() {
            bd.this.a();
        }
    };
    private int j;
    private int k;
    private be l;
    private boolean m;

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    public static void a(View view, CharSequence charSequence) {
        if (n != null && n.e == view) {
            a((bd) null);
        }
        if (TextUtils.isEmpty(charSequence)) {
            if (o != null && o.e == view) {
                o.a();
            }
            view.setOnLongClickListener(null);
            view.setLongClickable(false);
            view.setOnHoverListener(null);
            return;
        }
        new bd(view, charSequence);
    }

    private bd(View view, CharSequence charSequence) {
        this.e = view;
        this.f = charSequence;
        this.g = androidx.core.n.ag.c(ViewConfiguration.get(this.e.getContext()));
        d();
        this.e.setOnLongClickListener(this);
        this.e.setOnHoverListener(this);
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        this.j = view.getWidth() / 2;
        this.k = view.getHeight() / 2;
        a(true);
        return true;
    }

    @Override // android.view.View.OnHoverListener
    public boolean onHover(View view, MotionEvent motionEvent) {
        if (this.l != null && this.m) {
            return false;
        }
        AccessibilityManager accessibilityManager = (AccessibilityManager) this.e.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 7) {
            if (action == 10) {
                d();
                a();
            }
        } else if (this.e.isEnabled() && this.l == null && a(motionEvent)) {
            a(this);
        }
        return false;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        a();
    }

    void a(boolean z) {
        long longPressTimeout;
        if (androidx.core.n.af.ak(this.e)) {
            a((bd) null);
            if (o != null) {
                o.a();
            }
            o = this;
            this.m = z;
            this.l = new be(this.e.getContext());
            this.l.a(this.e, this.j, this.k, this.m, this.f);
            this.e.addOnAttachStateChangeListener(this);
            if (this.m) {
                longPressTimeout = b;
            } else if ((androidx.core.n.af.S(this.e) & 1) == 1) {
                longPressTimeout = d - ViewConfiguration.getLongPressTimeout();
            } else {
                longPressTimeout = c - ViewConfiguration.getLongPressTimeout();
            }
            this.e.removeCallbacks(this.i);
            this.e.postDelayed(this.i, longPressTimeout);
        }
    }

    void a() {
        if (o == this) {
            o = null;
            if (this.l != null) {
                this.l.a();
                this.l = null;
                d();
                this.e.removeOnAttachStateChangeListener(this);
            } else {
                Log.e(f248a, "sActiveHandler.mPopup == null");
            }
        }
        if (n == this) {
            a((bd) null);
        }
        this.e.removeCallbacks(this.i);
    }

    private static void a(bd bdVar) {
        if (n != null) {
            n.c();
        }
        n = bdVar;
        if (n != null) {
            n.b();
        }
    }

    private void b() {
        this.e.postDelayed(this.h, ViewConfiguration.getLongPressTimeout());
    }

    private void c() {
        this.e.removeCallbacks(this.h);
    }

    private boolean a(MotionEvent motionEvent) {
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (Math.abs(x - this.j) <= this.g && Math.abs(y - this.k) <= this.g) {
            return false;
        }
        this.j = x;
        this.k = y;
        return true;
    }

    private void d() {
        this.j = ActivityChooserView.a.f166a;
        this.k = ActivityChooserView.a.f166a;
    }
}
