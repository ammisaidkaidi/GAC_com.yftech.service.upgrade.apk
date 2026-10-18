package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.os.Parcelable;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.a;
import androidx.appcompat.view.menu.n;
import androidx.appcompat.widget.am;
import androidx.core.n.af;

/* loaded from: /home/user/work/dex/classes.dex */
final class r extends l implements View.OnKeyListener, AdapterView.OnItemClickListener, PopupWindow.OnDismissListener, n {
    private static final int e = a.j.abc_popup_menu_item_layout;

    /* renamed from: a, reason: collision with root package name */
    final am f147a;
    View c;
    ViewTreeObserver d;
    private final Context f;
    private final g g;
    private final f h;
    private final boolean i;
    private final int j;
    private final int k;
    private final int l;
    private PopupWindow.OnDismissListener n;
    private View o;
    private n.a p;
    private boolean q;
    private boolean r;
    private int s;
    private boolean u;
    final ViewTreeObserver.OnGlobalLayoutListener b = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.view.menu.r.1
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!r.this.e() || r.this.f147a.j()) {
                return;
            }
            View view = r.this.c;
            if (view == null || !view.isShown()) {
                r.this.d();
            } else {
                r.this.f147a.b_();
            }
        }
    };
    private final View.OnAttachStateChangeListener m = new View.OnAttachStateChangeListener() { // from class: androidx.appcompat.view.menu.r.2
        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            if (r.this.d != null) {
                if (!r.this.d.isAlive()) {
                    r.this.d = view.getViewTreeObserver();
                }
                r.this.d.removeGlobalOnLayoutListener(r.this.b);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    };
    private int t = 0;

    @Override // androidx.appcompat.view.menu.n
    public void a(Parcelable parcelable) {
    }

    @Override // androidx.appcompat.view.menu.l
    public void a(g gVar) {
    }

    @Override // androidx.appcompat.view.menu.n
    public boolean b() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.n
    public Parcelable f() {
        return null;
    }

    public r(Context context, g gVar, View view, int i, int i2, boolean z) {
        this.f = context;
        this.g = gVar;
        this.i = z;
        this.h = new f(gVar, LayoutInflater.from(context), this.i, e);
        this.k = i;
        this.l = i2;
        Resources resources = context.getResources();
        this.j = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(a.e.abc_config_prefDialogWidth));
        this.o = view;
        this.f147a = new am(this.f, null, this.k, this.l);
        gVar.a(this, context);
    }

    @Override // androidx.appcompat.view.menu.l
    public void b(boolean z) {
        this.h.a(z);
    }

    @Override // androidx.appcompat.view.menu.l
    public void a(int i) {
        this.t = i;
    }

    private boolean j() {
        if (e()) {
            return true;
        }
        if (this.q || this.o == null) {
            return false;
        }
        this.c = this.o;
        this.f147a.a((PopupWindow.OnDismissListener) this);
        this.f147a.a((AdapterView.OnItemClickListener) this);
        this.f147a.a(true);
        View view = this.c;
        boolean z = this.d == null;
        this.d = view.getViewTreeObserver();
        if (z) {
            this.d.addOnGlobalLayoutListener(this.b);
        }
        view.addOnAttachStateChangeListener(this.m);
        this.f147a.b(view);
        this.f147a.g(this.t);
        if (!this.r) {
            this.s = a(this.h, null, this.f, this.j);
            this.r = true;
        }
        this.f147a.i(this.s);
        this.f147a.l(2);
        this.f147a.a(i());
        this.f147a.b_();
        ListView c_ = this.f147a.c_();
        c_.setOnKeyListener(this);
        if (this.u && this.g.o() != null) {
            FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(this.f).inflate(a.j.abc_popup_menu_header_item_layout, (ViewGroup) c_, false);
            TextView textView = (TextView) frameLayout.findViewById(R.id.title);
            if (textView != null) {
                textView.setText(this.g.o());
            }
            frameLayout.setEnabled(false);
            c_.addHeaderView(frameLayout, null, false);
        }
        this.f147a.a((ListAdapter) this.h);
        this.f147a.b_();
        return true;
    }

    @Override // androidx.appcompat.view.menu.q
    public void b_() {
        if (!j()) {
            throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        }
    }

    @Override // androidx.appcompat.view.menu.q
    public void d() {
        if (e()) {
            this.f147a.d();
        }
    }

    @Override // androidx.appcompat.view.menu.q
    public boolean e() {
        return !this.q && this.f147a.e();
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        this.q = true;
        this.g.close();
        if (this.d != null) {
            if (!this.d.isAlive()) {
                this.d = this.c.getViewTreeObserver();
            }
            this.d.removeGlobalOnLayoutListener(this.b);
            this.d = null;
        }
        this.c.removeOnAttachStateChangeListener(this.m);
        if (this.n != null) {
            this.n.onDismiss();
        }
    }

    @Override // androidx.appcompat.view.menu.n
    public void a(boolean z) {
        this.r = false;
        if (this.h != null) {
            this.h.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.n
    public void a(n.a aVar) {
        this.p = aVar;
    }

    @Override // androidx.appcompat.view.menu.n
    public boolean a(s sVar) {
        if (sVar.hasVisibleItems()) {
            m mVar = new m(this.f, sVar, this.c, this.i, this.k, this.l);
            mVar.a(this.p);
            mVar.a(l.b(sVar));
            mVar.a(this.n);
            this.n = null;
            this.g.b(false);
            int f = this.f147a.f();
            int c = this.f147a.c();
            if ((Gravity.getAbsoluteGravity(this.t, af.p(this.o)) & 7) == 5) {
                f += this.o.getWidth();
            }
            if (mVar.b(f, c)) {
                if (this.p == null) {
                    return true;
                }
                this.p.a(sVar);
                return true;
            }
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.n
    public void a(g gVar, boolean z) {
        if (gVar != this.g) {
            return;
        }
        d();
        if (this.p != null) {
            this.p.a(gVar, z);
        }
    }

    @Override // androidx.appcompat.view.menu.l
    public void a(View view) {
        this.o = view;
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i != 82) {
            return false;
        }
        d();
        return true;
    }

    @Override // androidx.appcompat.view.menu.l
    public void a(PopupWindow.OnDismissListener onDismissListener) {
        this.n = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.q
    public ListView c_() {
        return this.f147a.c_();
    }

    @Override // androidx.appcompat.view.menu.l
    public void b(int i) {
        this.f147a.b(i);
    }

    @Override // androidx.appcompat.view.menu.l
    public void c(int i) {
        this.f147a.a(i);
    }

    @Override // androidx.appcompat.view.menu.l
    public void c(boolean z) {
        this.u = z;
    }
}
