package androidx.appcompat.app;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.SpinnerAdapter;
import androidx.annotation.ah;
import androidx.annotation.ap;
import androidx.appcompat.a;
import androidx.appcompat.app.a;
import androidx.appcompat.view.b;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.ae;
import androidx.appcompat.widget.ar;
import androidx.core.n.af;
import androidx.core.n.aj;
import androidx.core.n.ak;
import androidx.core.n.al;
import androidx.core.n.am;
import androidx.fragment.app.s;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

@ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public class q extends androidx.appcompat.app.a implements ActionBarOverlayLayout.a {
    private static final String A = "WindowDecorActionBar";
    private static final Interpolator B = new AccelerateInterpolator();
    private static final Interpolator C = new DecelerateInterpolator();
    private static final int L = -1;
    private static final long M = 100;
    private static final long N = 200;
    private Context D;
    private Activity E;
    private b G;
    private boolean I;
    private boolean J;
    private boolean O;
    private boolean Q;
    private boolean S;
    Context i;
    ActionBarOverlayLayout j;
    ActionBarContainer k;
    ae l;
    ActionBarContextView m;
    View n;
    ar o;
    a p;
    androidx.appcompat.view.b q;
    b.a r;
    boolean t;
    boolean u;
    androidx.appcompat.view.h v;
    boolean w;
    private ArrayList<b> F = new ArrayList<>();
    private int H = -1;
    private ArrayList<a.d> K = new ArrayList<>();
    private int P = 0;
    boolean s = true;
    private boolean R = true;
    final ak x = new al() { // from class: androidx.appcompat.app.q.1
        @Override // androidx.core.n.al, androidx.core.n.ak
        public void b(View view) {
            if (q.this.s && q.this.n != null) {
                q.this.n.setTranslationY(0.0f);
                q.this.k.setTranslationY(0.0f);
            }
            q.this.k.setVisibility(8);
            q.this.k.setTransitioning(false);
            q.this.v = null;
            q.this.A();
            if (q.this.j != null) {
                af.T(q.this.j);
            }
        }
    };
    final ak y = new al() { // from class: androidx.appcompat.app.q.2
        @Override // androidx.core.n.al, androidx.core.n.ak
        public void b(View view) {
            q.this.v = null;
            q.this.k.requestLayout();
        }
    };
    final am z = new am() { // from class: androidx.appcompat.app.q.3
        @Override // androidx.core.n.am
        public void a(View view) {
            ((View) q.this.k.getParent()).invalidate();
        }
    };

    static boolean a(boolean z, boolean z2, boolean z3) {
        if (z3) {
            return true;
        }
        return (z || z2) ? false : true;
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.a
    public void E() {
    }

    @Override // androidx.appcompat.app.a
    public void e(Drawable drawable) {
    }

    public q(Activity activity, boolean z) {
        this.E = activity;
        View decorView = activity.getWindow().getDecorView();
        b(decorView);
        if (z) {
            return;
        }
        this.n = decorView.findViewById(R.id.content);
    }

    public q(Dialog dialog) {
        b(dialog.getWindow().getDecorView());
    }

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public q(View view) {
        b(view);
    }

    private void b(View view) {
        this.j = (ActionBarOverlayLayout) view.findViewById(a.g.decor_content_parent);
        if (this.j != null) {
            this.j.setActionBarVisibilityCallback(this);
        }
        this.l = c(view.findViewById(a.g.action_bar));
        this.m = (ActionBarContextView) view.findViewById(a.g.action_context_bar);
        this.k = (ActionBarContainer) view.findViewById(a.g.action_bar_container);
        if (this.l == null || this.m == null || this.k == null) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with a compatible window decor layout");
        }
        this.i = this.l.b();
        boolean z = (this.l.r() & 4) != 0;
        if (z) {
            this.I = true;
        }
        androidx.appcompat.view.a a2 = androidx.appcompat.view.a.a(this.i);
        f(a2.f() || z);
        o(a2.d());
        TypedArray obtainStyledAttributes = this.i.obtainStyledAttributes(null, a.m.ActionBar, a.b.actionBarStyle, 0);
        if (obtainStyledAttributes.getBoolean(a.m.ActionBar_hideOnContentScroll, false)) {
            g(true);
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(a.m.ActionBar_elevation, 0);
        if (dimensionPixelSize != 0) {
            a(dimensionPixelSize);
        }
        obtainStyledAttributes.recycle();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ae c(View view) {
        if (view instanceof ae) {
            return (ae) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Can't make a decor toolbar out of ");
        sb.append(view != 0 ? view.getClass().getSimpleName() : "null");
        throw new IllegalStateException(sb.toString());
    }

    @Override // androidx.appcompat.app.a
    public void a(float f) {
        af.m(this.k, f);
    }

    @Override // androidx.appcompat.app.a
    public float t() {
        return af.P(this.k);
    }

    @Override // androidx.appcompat.app.a
    public void a(Configuration configuration) {
        o(androidx.appcompat.view.a.a(this.i).d());
    }

    private void o(boolean z) {
        this.O = z;
        if (!this.O) {
            this.l.a((ar) null);
            this.k.setTabContainer(this.o);
        } else {
            this.k.setTabContainer(null);
            this.l.a(this.o);
        }
        boolean z2 = f() == 2;
        if (this.o != null) {
            if (z2) {
                this.o.setVisibility(0);
                if (this.j != null) {
                    af.T(this.j);
                }
            } else {
                this.o.setVisibility(8);
            }
        }
        this.l.a(!this.O && z2);
        this.j.setHasNonEmbeddedTabs(!this.O && z2);
    }

    private void H() {
        if (this.o != null) {
            return;
        }
        ar arVar = new ar(this.i);
        if (this.O) {
            arVar.setVisibility(0);
            this.l.a(arVar);
        } else {
            if (f() == 2) {
                arVar.setVisibility(0);
                if (this.j != null) {
                    af.T(this.j);
                }
            } else {
                arVar.setVisibility(8);
            }
            this.k.setTabContainer(arVar);
        }
        this.o = arVar;
    }

    void A() {
        if (this.r != null) {
            this.r.a(this.q);
            this.q = null;
            this.r = null;
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.a
    public void n(int i) {
        this.P = i;
    }

    @Override // androidx.appcompat.app.a
    public void i(boolean z) {
        this.S = z;
        if (z || this.v == null) {
            return;
        }
        this.v.c();
    }

    @Override // androidx.appcompat.app.a
    public void a(a.d dVar) {
        this.K.add(dVar);
    }

    @Override // androidx.appcompat.app.a
    public void b(a.d dVar) {
        this.K.remove(dVar);
    }

    @Override // androidx.appcompat.app.a
    public void j(boolean z) {
        if (z == this.J) {
            return;
        }
        this.J = z;
        int size = this.K.size();
        for (int i = 0; i < size; i++) {
            this.K.get(i).a(z);
        }
    }

    @Override // androidx.appcompat.app.a
    public void a(int i) {
        a(LayoutInflater.from(p()).inflate(i, this.l.a(), false));
    }

    @Override // androidx.appcompat.app.a
    public void a(boolean z) {
        a(z ? 1 : 0, 1);
    }

    @Override // androidx.appcompat.app.a
    public void b(boolean z) {
        a(z ? 2 : 0, 2);
    }

    @Override // androidx.appcompat.app.a
    public void c(boolean z) {
        a(z ? 4 : 0, 4);
    }

    @Override // androidx.appcompat.app.a
    public void d(boolean z) {
        a(z ? 8 : 0, 8);
    }

    @Override // androidx.appcompat.app.a
    public void e(boolean z) {
        a(z ? 16 : 0, 16);
    }

    @Override // androidx.appcompat.app.a
    public void f(boolean z) {
        this.l.b(z);
    }

    @Override // androidx.appcompat.app.a
    public void e(int i) {
        a(this.i.getString(i));
    }

    @Override // androidx.appcompat.app.a
    public void f(int i) {
        b(this.i.getString(i));
    }

    @Override // androidx.appcompat.app.a
    public void d(int i) {
        switch (this.l.u()) {
            case 1:
                this.l.e(i);
                return;
            case 2:
                c(this.F.get(i));
                return;
            default:
                throw new IllegalStateException("setSelectedNavigationIndex not valid for current navigation mode");
        }
    }

    @Override // androidx.appcompat.app.a
    public void i() {
        I();
    }

    private void I() {
        if (this.G != null) {
            c((a.f) null);
        }
        this.F.clear();
        if (this.o != null) {
            this.o.a();
        }
        this.H = -1;
    }

    @Override // androidx.appcompat.app.a
    public void a(CharSequence charSequence) {
        this.l.b(charSequence);
    }

    @Override // androidx.appcompat.app.a
    public void d(CharSequence charSequence) {
        this.l.a(charSequence);
    }

    @Override // androidx.appcompat.app.a
    public boolean y() {
        ViewGroup a2 = this.l.a();
        if (a2 == null || a2.hasFocus()) {
            return false;
        }
        a2.requestFocus();
        return true;
    }

    @Override // androidx.appcompat.app.a
    public void b(CharSequence charSequence) {
        this.l.c(charSequence);
    }

    @Override // androidx.appcompat.app.a
    public void g(int i) {
        if ((i & 4) != 0) {
            this.I = true;
        }
        this.l.c(i);
    }

    @Override // androidx.appcompat.app.a
    public void a(int i, int i2) {
        int r = this.l.r();
        if ((i2 & 4) != 0) {
            this.I = true;
        }
        this.l.c((i & i2) | ((~i2) & r));
    }

    @Override // androidx.appcompat.app.a
    public void c(Drawable drawable) {
        this.k.setPrimaryBackground(drawable);
    }

    @Override // androidx.appcompat.app.a
    public void d(Drawable drawable) {
        this.k.setStackedBackground(drawable);
    }

    @Override // androidx.appcompat.app.a
    public View c() {
        return this.l.x();
    }

    @Override // androidx.appcompat.app.a
    public CharSequence d() {
        return this.l.e();
    }

    @Override // androidx.appcompat.app.a
    public CharSequence e() {
        return this.l.f();
    }

    @Override // androidx.appcompat.app.a
    public int f() {
        return this.l.u();
    }

    @Override // androidx.appcompat.app.a
    public int g() {
        return this.l.r();
    }

    @Override // androidx.appcompat.app.a
    public androidx.appcompat.view.b a(b.a aVar) {
        if (this.p != null) {
            this.p.c();
        }
        this.j.setHideOnContentScrollEnabled(false);
        this.m.j();
        a aVar2 = new a(this.m.getContext(), aVar);
        if (!aVar2.e()) {
            return null;
        }
        this.p = aVar2;
        aVar2.d();
        this.m.a(aVar2);
        n(true);
        this.m.sendAccessibilityEvent(32);
        return aVar2;
    }

    private void b(a.f fVar, int i) {
        b bVar = (b) fVar;
        if (bVar.h() == null) {
            throw new IllegalStateException("Action Bar Tab must have a Callback");
        }
        bVar.e(i);
        this.F.add(i, bVar);
        int size = this.F.size();
        while (true) {
            i++;
            if (i >= size) {
                return;
            } else {
                this.F.get(i).e(i);
            }
        }
    }

    @Override // androidx.appcompat.app.a
    public void a(a.f fVar) {
        a(fVar, this.F.isEmpty());
    }

    @Override // androidx.appcompat.app.a
    public void a(a.f fVar, int i) {
        a(fVar, i, this.F.isEmpty());
    }

    @Override // androidx.appcompat.app.a
    public void a(a.f fVar, boolean z) {
        H();
        this.o.b(fVar, z);
        b(fVar, this.F.size());
        if (z) {
            c(fVar);
        }
    }

    @Override // androidx.appcompat.app.a
    public void a(a.f fVar, int i, boolean z) {
        H();
        this.o.a(fVar, i, z);
        b(fVar, i);
        if (z) {
            c(fVar);
        }
    }

    @Override // androidx.appcompat.app.a
    public a.f h() {
        return new b();
    }

    @Override // androidx.appcompat.app.a
    public void b(a.f fVar) {
        i(fVar.a());
    }

    @Override // androidx.appcompat.app.a
    public void i(int i) {
        if (this.o == null) {
            return;
        }
        int a2 = this.G != null ? this.G.a() : this.H;
        this.o.d(i);
        b remove = this.F.remove(i);
        if (remove != null) {
            remove.e(-1);
        }
        int size = this.F.size();
        for (int i2 = i; i2 < size; i2++) {
            this.F.get(i2).e(i2);
        }
        if (a2 == i) {
            c(this.F.isEmpty() ? null : this.F.get(Math.max(0, i - 1)));
        }
    }

    @Override // androidx.appcompat.app.a
    public void c(a.f fVar) {
        if (f() != 2) {
            this.H = fVar != null ? fVar.a() : -1;
            return;
        }
        s p = (!(this.E instanceof androidx.fragment.app.e) || this.l.a().isInEditMode()) ? null : ((androidx.fragment.app.e) this.E).q().a().p();
        if (this.G == fVar) {
            if (this.G != null) {
                this.G.h().c(this.G, p);
                this.o.b(fVar.a());
            }
        } else {
            this.o.setTabSelected(fVar != null ? fVar.a() : -1);
            if (this.G != null) {
                this.G.h().b(this.G, p);
            }
            this.G = (b) fVar;
            if (this.G != null) {
                this.G.h().a(this.G, p);
            }
        }
        if (p == null || p.n()) {
            return;
        }
        p.g();
    }

    @Override // androidx.appcompat.app.a
    public a.f j() {
        return this.G;
    }

    @Override // androidx.appcompat.app.a
    public int l() {
        return this.k.getHeight();
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.a
    public void k(boolean z) {
        this.s = z;
    }

    @Override // androidx.appcompat.app.a
    public void m() {
        if (this.t) {
            this.t = false;
            p(false);
        }
    }

    private void J() {
        if (this.Q) {
            return;
        }
        this.Q = true;
        if (this.j != null) {
            this.j.setShowingForActionMode(true);
        }
        p(false);
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.a
    public void B() {
        if (this.u) {
            this.u = false;
            p(true);
        }
    }

    @Override // androidx.appcompat.app.a
    public void n() {
        if (this.t) {
            return;
        }
        this.t = true;
        p(false);
    }

    private void K() {
        if (this.Q) {
            this.Q = false;
            if (this.j != null) {
                this.j.setShowingForActionMode(false);
            }
            p(false);
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.a
    public void C() {
        if (this.u) {
            return;
        }
        this.u = true;
        p(true);
    }

    @Override // androidx.appcompat.app.a
    public void g(boolean z) {
        if (z && !this.j.a()) {
            throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
        }
        this.w = z;
        this.j.setHideOnContentScrollEnabled(z);
    }

    @Override // androidx.appcompat.app.a
    public boolean r() {
        return this.j.d();
    }

    @Override // androidx.appcompat.app.a
    public int s() {
        return this.j.getActionBarHideOffset();
    }

    @Override // androidx.appcompat.app.a
    public void m(int i) {
        if (i != 0 && !this.j.a()) {
            throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to set a non-zero hide offset");
        }
        this.j.setActionBarHideOffset(i);
    }

    private void p(boolean z) {
        if (a(this.t, this.u, this.Q)) {
            if (this.R) {
                return;
            }
            this.R = true;
            l(z);
            return;
        }
        if (this.R) {
            this.R = false;
            m(z);
        }
    }

    public void l(boolean z) {
        if (this.v != null) {
            this.v.c();
        }
        this.k.setVisibility(0);
        if (this.P == 0 && (this.S || z)) {
            this.k.setTranslationY(0.0f);
            float f = -this.k.getHeight();
            if (z) {
                this.k.getLocationInWindow(new int[]{0, 0});
                f -= r5[1];
            }
            this.k.setTranslationY(f);
            androidx.appcompat.view.h hVar = new androidx.appcompat.view.h();
            aj d = af.F(this.k).d(0.0f);
            d.a(this.z);
            hVar.a(d);
            if (this.s && this.n != null) {
                this.n.setTranslationY(f);
                hVar.a(af.F(this.n).d(0.0f));
            }
            hVar.a(C);
            hVar.a(250L);
            hVar.a(this.y);
            this.v = hVar;
            hVar.a();
        } else {
            this.k.setAlpha(1.0f);
            this.k.setTranslationY(0.0f);
            if (this.s && this.n != null) {
                this.n.setTranslationY(0.0f);
            }
            this.y.b(null);
        }
        if (this.j != null) {
            af.T(this.j);
        }
    }

    public void m(boolean z) {
        if (this.v != null) {
            this.v.c();
        }
        if (this.P == 0 && (this.S || z)) {
            this.k.setAlpha(1.0f);
            this.k.setTransitioning(true);
            androidx.appcompat.view.h hVar = new androidx.appcompat.view.h();
            float f = -this.k.getHeight();
            if (z) {
                this.k.getLocationInWindow(new int[]{0, 0});
                f -= r5[1];
            }
            aj d = af.F(this.k).d(f);
            d.a(this.z);
            hVar.a(d);
            if (this.s && this.n != null) {
                hVar.a(af.F(this.n).d(f));
            }
            hVar.a(B);
            hVar.a(250L);
            hVar.a(this.x);
            this.v = hVar;
            hVar.a();
            return;
        }
        this.x.b(null);
    }

    @Override // androidx.appcompat.app.a
    public boolean o() {
        int l = l();
        return this.R && (l == 0 || s() < l);
    }

    public void n(boolean z) {
        aj a2;
        aj a3;
        if (z) {
            J();
        } else {
            K();
        }
        if (!L()) {
            if (z) {
                this.l.j(4);
                this.m.setVisibility(0);
                return;
            } else {
                this.l.j(0);
                this.m.setVisibility(8);
                return;
            }
        }
        if (z) {
            aj a4 = this.l.a(4, M);
            a2 = this.m.a(0, N);
            a3 = a4;
        } else {
            a2 = this.l.a(0, N);
            a3 = this.m.a(8, M);
        }
        androidx.appcompat.view.h hVar = new androidx.appcompat.view.h();
        hVar.a(a3, a2);
        hVar.a();
    }

    private boolean L() {
        return af.ag(this.k);
    }

    @Override // androidx.appcompat.app.a
    public Context p() {
        if (this.D == null) {
            TypedValue typedValue = new TypedValue();
            this.i.getTheme().resolveAttribute(a.b.actionBarWidgetTheme, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                this.D = new ContextThemeWrapper(this.i, i);
            } else {
                this.D = this.i;
            }
        }
        return this.D;
    }

    @Override // androidx.appcompat.app.a
    public boolean q() {
        return this.l != null && this.l.t();
    }

    @Override // androidx.appcompat.app.a
    public void f(Drawable drawable) {
        this.l.c(drawable);
    }

    @Override // androidx.appcompat.app.a
    public void k(int i) {
        this.l.g(i);
    }

    @Override // androidx.appcompat.app.a
    public void c(CharSequence charSequence) {
        this.l.d(charSequence);
    }

    @Override // androidx.appcompat.app.a
    public void l(int i) {
        this.l.h(i);
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.a
    public void D() {
        if (this.v != null) {
            this.v.c();
            this.v = null;
        }
    }

    @Override // androidx.appcompat.app.a
    public boolean x() {
        if (this.l == null || !this.l.c()) {
            return false;
        }
        this.l.d();
        return true;
    }

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: /home/user/work/dex/classes.dex */
    public class a extends androidx.appcompat.view.b implements g.a {
        private final Context b;
        private final androidx.appcompat.view.menu.g c;
        private b.a d;
        private WeakReference<View> e;

        public void a(androidx.appcompat.view.menu.g gVar, boolean z) {
        }

        public void b(androidx.appcompat.view.menu.s sVar) {
        }

        public a(Context context, b.a aVar) {
            this.b = context;
            this.d = aVar;
            this.c = new androidx.appcompat.view.menu.g(context).a(1);
            this.c.a(this);
        }

        @Override // androidx.appcompat.view.b
        public MenuInflater a() {
            return new androidx.appcompat.view.g(this.b);
        }

        @Override // androidx.appcompat.view.b
        public Menu b() {
            return this.c;
        }

        @Override // androidx.appcompat.view.b
        public void c() {
            if (q.this.p != this) {
                return;
            }
            if (!q.a(q.this.t, q.this.u, false)) {
                q.this.q = this;
                q.this.r = this.d;
            } else {
                this.d.a(this);
            }
            this.d = null;
            q.this.n(false);
            q.this.m.i();
            q.this.l.a().sendAccessibilityEvent(32);
            q.this.j.setHideOnContentScrollEnabled(q.this.w);
            q.this.p = null;
        }

        @Override // androidx.appcompat.view.b
        public void d() {
            if (q.this.p != this) {
                return;
            }
            this.c.i();
            try {
                this.d.b(this, this.c);
            } finally {
                this.c.j();
            }
        }

        public boolean e() {
            this.c.i();
            try {
                return this.d.a(this, this.c);
            } finally {
                this.c.j();
            }
        }

        @Override // androidx.appcompat.view.b
        public void a(View view) {
            q.this.m.setCustomView(view);
            this.e = new WeakReference<>(view);
        }

        @Override // androidx.appcompat.view.b
        public void a(CharSequence charSequence) {
            q.this.m.setSubtitle(charSequence);
        }

        @Override // androidx.appcompat.view.b
        public void b(CharSequence charSequence) {
            q.this.m.setTitle(charSequence);
        }

        @Override // androidx.appcompat.view.b
        public void a(int i) {
            b(q.this.i.getResources().getString(i));
        }

        @Override // androidx.appcompat.view.b
        public void b(int i) {
            a((CharSequence) q.this.i.getResources().getString(i));
        }

        @Override // androidx.appcompat.view.b
        public CharSequence f() {
            return q.this.m.getTitle();
        }

        @Override // androidx.appcompat.view.b
        public CharSequence g() {
            return q.this.m.getSubtitle();
        }

        @Override // androidx.appcompat.view.b
        public void a(boolean z) {
            super.a(z);
            q.this.m.setTitleOptional(z);
        }

        @Override // androidx.appcompat.view.b
        public boolean h() {
            return q.this.m.k();
        }

        @Override // androidx.appcompat.view.b
        public View i() {
            if (this.e != null) {
                return this.e.get();
            }
            return null;
        }

        @Override // androidx.appcompat.view.menu.g.a
        public boolean a(@ah androidx.appcompat.view.menu.g gVar, @ah MenuItem menuItem) {
            if (this.d != null) {
                return this.d.a(this, menuItem);
            }
            return false;
        }

        public boolean a(androidx.appcompat.view.menu.s sVar) {
            if (this.d == null) {
                return false;
            }
            if (!sVar.hasVisibleItems()) {
                return true;
            }
            new androidx.appcompat.view.menu.m(q.this.p(), sVar).c();
            return true;
        }

        @Override // androidx.appcompat.view.menu.g.a
        public void a(@ah androidx.appcompat.view.menu.g gVar) {
            if (this.d == null) {
                return;
            }
            d();
            q.this.m.a();
        }
    }

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: /home/user/work/dex/classes.dex */
    public class b extends a.f {
        private a.g c;
        private Object d;
        private Drawable e;
        private CharSequence f;
        private CharSequence g;
        private int h = -1;
        private View i;

        public b() {
        }

        @Override // androidx.appcompat.app.a.f
        public Object e() {
            return this.d;
        }

        @Override // androidx.appcompat.app.a.f
        public a.f a(Object obj) {
            this.d = obj;
            return this;
        }

        public a.g h() {
            return this.c;
        }

        @Override // androidx.appcompat.app.a.f
        public a.f a(a.g gVar) {
            this.c = gVar;
            return this;
        }

        @Override // androidx.appcompat.app.a.f
        public View d() {
            return this.i;
        }

        @Override // androidx.appcompat.app.a.f
        public a.f a(View view) {
            this.i = view;
            if (this.h >= 0) {
                q.this.o.c(this.h);
            }
            return this;
        }

        @Override // androidx.appcompat.app.a.f
        public a.f c(int i) {
            return a(LayoutInflater.from(q.this.p()).inflate(i, (ViewGroup) null));
        }

        @Override // androidx.appcompat.app.a.f
        public Drawable b() {
            return this.e;
        }

        @Override // androidx.appcompat.app.a.f
        public int a() {
            return this.h;
        }

        public void e(int i) {
            this.h = i;
        }

        @Override // androidx.appcompat.app.a.f
        public CharSequence c() {
            return this.f;
        }

        @Override // androidx.appcompat.app.a.f
        public a.f a(Drawable drawable) {
            this.e = drawable;
            if (this.h >= 0) {
                q.this.o.c(this.h);
            }
            return this;
        }

        @Override // androidx.appcompat.app.a.f
        public a.f a(int i) {
            return a(androidx.appcompat.a.a.a.b(q.this.i, i));
        }

        @Override // androidx.appcompat.app.a.f
        public a.f a(CharSequence charSequence) {
            this.f = charSequence;
            if (this.h >= 0) {
                q.this.o.c(this.h);
            }
            return this;
        }

        @Override // androidx.appcompat.app.a.f
        public a.f b(int i) {
            return a(q.this.i.getResources().getText(i));
        }

        @Override // androidx.appcompat.app.a.f
        public void f() {
            q.this.c(this);
        }

        @Override // androidx.appcompat.app.a.f
        public a.f d(int i) {
            return b(q.this.i.getResources().getText(i));
        }

        @Override // androidx.appcompat.app.a.f
        public a.f b(CharSequence charSequence) {
            this.g = charSequence;
            if (this.h >= 0) {
                q.this.o.c(this.h);
            }
            return this;
        }

        @Override // androidx.appcompat.app.a.f
        public CharSequence g() {
            return this.g;
        }
    }

    @Override // androidx.appcompat.app.a
    public void a(View view) {
        this.l.a(view);
    }

    @Override // androidx.appcompat.app.a
    public void a(View view, a.b bVar) {
        view.setLayoutParams(bVar);
        this.l.a(view);
    }

    @Override // androidx.appcompat.app.a
    public void a(SpinnerAdapter spinnerAdapter, a.e eVar) {
        this.l.a(spinnerAdapter, new l(eVar));
    }

    @Override // androidx.appcompat.app.a
    public int a() {
        switch (this.l.u()) {
            case 1:
                return this.l.v();
            case 2:
                if (this.G != null) {
                    return this.G.a();
                }
                return -1;
            default:
                return -1;
        }
    }

    @Override // androidx.appcompat.app.a
    public int b() {
        switch (this.l.u()) {
            case 1:
                return this.l.w();
            case 2:
                return this.F.size();
            default:
                return 0;
        }
    }

    @Override // androidx.appcompat.app.a
    public int k() {
        return this.F.size();
    }

    @Override // androidx.appcompat.app.a
    public void h(int i) {
        int u = this.l.u();
        if (u == 2) {
            this.H = a();
            c((a.f) null);
            this.o.setVisibility(8);
        }
        if (u != i && !this.O && this.j != null) {
            af.T(this.j);
        }
        this.l.d(i);
        boolean z = false;
        if (i == 2) {
            H();
            this.o.setVisibility(0);
            if (this.H != -1) {
                d(this.H);
                this.H = -1;
            }
        }
        this.l.a(i == 2 && !this.O);
        ActionBarOverlayLayout actionBarOverlayLayout = this.j;
        if (i == 2 && !this.O) {
            z = true;
        }
        actionBarOverlayLayout.setHasNonEmbeddedTabs(z);
    }

    @Override // androidx.appcompat.app.a
    public a.f j(int i) {
        return this.F.get(i);
    }

    @Override // androidx.appcompat.app.a
    public void b(int i) {
        this.l.a(i);
    }

    @Override // androidx.appcompat.app.a
    public void a(Drawable drawable) {
        this.l.a(drawable);
    }

    public boolean F() {
        return this.l.i();
    }

    @Override // androidx.appcompat.app.a
    public void c(int i) {
        this.l.b(i);
    }

    @Override // androidx.appcompat.app.a
    public void b(Drawable drawable) {
        this.l.b(drawable);
    }

    public boolean G() {
        return this.l.j();
    }

    @Override // androidx.appcompat.app.a
    public void h(boolean z) {
        if (this.I) {
            return;
        }
        c(z);
    }

    @Override // androidx.appcompat.app.a
    public boolean a(int i, KeyEvent keyEvent) {
        Menu b2;
        if (this.p == null || (b2 = this.p.b()) == null) {
            return false;
        }
        b2.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return b2.performShortcut(i, keyEvent, 0);
    }
}
