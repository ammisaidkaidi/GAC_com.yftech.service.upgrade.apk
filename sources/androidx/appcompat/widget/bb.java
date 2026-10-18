package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import androidx.annotation.ap;
import androidx.appcompat.a;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.n;
import androidx.appcompat.widget.Toolbar;

@androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public class bb implements ae {
    private static final String e = "ToolbarWidgetWrapper";
    private static final int f = 3;
    private static final long g = 200;

    /* renamed from: a, reason: collision with root package name */
    Toolbar f245a;
    CharSequence b;
    Window.Callback c;
    boolean d;
    private int h;
    private View i;
    private Spinner j;
    private View k;
    private Drawable l;
    private Drawable m;
    private Drawable n;
    private boolean o;
    private CharSequence p;
    private CharSequence q;
    private c r;
    private int s;
    private int t;
    private Drawable u;

    @Override // androidx.appcompat.widget.ae
    public void b(boolean z) {
    }

    public bb(Toolbar toolbar, boolean z) {
        this(toolbar, z, a.k.abc_action_bar_up_description, a.f.abc_ic_ab_back_material);
    }

    public bb(Toolbar toolbar, boolean z, int i, int i2) {
        this.s = 0;
        this.t = 0;
        this.f245a = toolbar;
        this.b = toolbar.getTitle();
        this.p = toolbar.getSubtitle();
        this.o = this.b != null;
        this.n = toolbar.getNavigationIcon();
        ba a2 = ba.a(toolbar.getContext(), null, a.m.ActionBar, a.b.actionBarStyle, 0);
        this.u = a2.a(a.m.ActionBar_homeAsUpIndicator);
        if (z) {
            CharSequence d = a2.d(a.m.ActionBar_title);
            if (!TextUtils.isEmpty(d)) {
                b(d);
            }
            CharSequence d2 = a2.d(a.m.ActionBar_subtitle);
            if (!TextUtils.isEmpty(d2)) {
                c(d2);
            }
            Drawable a3 = a2.a(a.m.ActionBar_logo);
            if (a3 != null) {
                b(a3);
            }
            Drawable a4 = a2.a(a.m.ActionBar_icon);
            if (a4 != null) {
                a(a4);
            }
            if (this.n == null && this.u != null) {
                c(this.u);
            }
            c(a2.a(a.m.ActionBar_displayOptions, 0));
            int g2 = a2.g(a.m.ActionBar_customNavigationLayout, 0);
            if (g2 != 0) {
                a(LayoutInflater.from(this.f245a.getContext()).inflate(g2, (ViewGroup) this.f245a, false));
                c(this.h | 16);
            }
            int f2 = a2.f(a.m.ActionBar_height, 0);
            if (f2 > 0) {
                ViewGroup.LayoutParams layoutParams = this.f245a.getLayoutParams();
                layoutParams.height = f2;
                this.f245a.setLayoutParams(layoutParams);
            }
            int d3 = a2.d(a.m.ActionBar_contentInsetStart, -1);
            int d4 = a2.d(a.m.ActionBar_contentInsetEnd, -1);
            if (d3 >= 0 || d4 >= 0) {
                this.f245a.a(Math.max(d3, 0), Math.max(d4, 0));
            }
            int g3 = a2.g(a.m.ActionBar_titleTextStyle, 0);
            if (g3 != 0) {
                this.f245a.a(this.f245a.getContext(), g3);
            }
            int g4 = a2.g(a.m.ActionBar_subtitleTextStyle, 0);
            if (g4 != 0) {
                this.f245a.b(this.f245a.getContext(), g4);
            }
            int g5 = a2.g(a.m.ActionBar_popupTheme, 0);
            if (g5 != 0) {
                this.f245a.setPopupTheme(g5);
            }
        } else {
            this.h = B();
        }
        a2.f();
        i(i);
        this.q = this.f245a.getNavigationContentDescription();
        this.f245a.setNavigationOnClickListener(new View.OnClickListener() { // from class: androidx.appcompat.widget.bb.1

            /* renamed from: a, reason: collision with root package name */
            final androidx.appcompat.view.menu.a f246a;

            {
                this.f246a = new androidx.appcompat.view.menu.a(bb.this.f245a.getContext(), 0, R.id.home, 0, 0, bb.this.b);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (bb.this.c == null || !bb.this.d) {
                    return;
                }
                bb.this.c.onMenuItemSelected(0, this.f246a);
            }
        });
    }

    @Override // androidx.appcompat.widget.ae
    public void i(int i) {
        if (i == this.t) {
            return;
        }
        this.t = i;
        if (TextUtils.isEmpty(this.f245a.getNavigationContentDescription())) {
            h(this.t);
        }
    }

    private int B() {
        if (this.f245a.getNavigationIcon() == null) {
            return 11;
        }
        this.u = this.f245a.getNavigationIcon();
        return 15;
    }

    @Override // androidx.appcompat.widget.ae
    public ViewGroup a() {
        return this.f245a;
    }

    @Override // androidx.appcompat.widget.ae
    public Context b() {
        return this.f245a.getContext();
    }

    @Override // androidx.appcompat.widget.ae
    public boolean c() {
        return this.f245a.h();
    }

    @Override // androidx.appcompat.widget.ae
    public void d() {
        this.f245a.i();
    }

    @Override // androidx.appcompat.widget.ae
    public void a(Window.Callback callback) {
        this.c = callback;
    }

    @Override // androidx.appcompat.widget.ae
    public void a(CharSequence charSequence) {
        if (this.o) {
            return;
        }
        e(charSequence);
    }

    @Override // androidx.appcompat.widget.ae
    public CharSequence e() {
        return this.f245a.getTitle();
    }

    @Override // androidx.appcompat.widget.ae
    public void b(CharSequence charSequence) {
        this.o = true;
        e(charSequence);
    }

    private void e(CharSequence charSequence) {
        this.b = charSequence;
        if ((this.h & 8) != 0) {
            this.f245a.setTitle(charSequence);
        }
    }

    @Override // androidx.appcompat.widget.ae
    public CharSequence f() {
        return this.f245a.getSubtitle();
    }

    @Override // androidx.appcompat.widget.ae
    public void c(CharSequence charSequence) {
        this.p = charSequence;
        if ((this.h & 8) != 0) {
            this.f245a.setSubtitle(charSequence);
        }
    }

    @Override // androidx.appcompat.widget.ae
    public void g() {
        Log.i(e, "Progress display unsupported");
    }

    @Override // androidx.appcompat.widget.ae
    public void h() {
        Log.i(e, "Progress display unsupported");
    }

    @Override // androidx.appcompat.widget.ae
    public boolean i() {
        return this.l != null;
    }

    @Override // androidx.appcompat.widget.ae
    public boolean j() {
        return this.m != null;
    }

    @Override // androidx.appcompat.widget.ae
    public void a(int i) {
        a(i != 0 ? androidx.appcompat.a.a.a.b(b(), i) : null);
    }

    @Override // androidx.appcompat.widget.ae
    public void a(Drawable drawable) {
        this.l = drawable;
        C();
    }

    @Override // androidx.appcompat.widget.ae
    public void b(int i) {
        b(i != 0 ? androidx.appcompat.a.a.a.b(b(), i) : null);
    }

    @Override // androidx.appcompat.widget.ae
    public void b(Drawable drawable) {
        this.m = drawable;
        C();
    }

    private void C() {
        Drawable drawable;
        if ((this.h & 2) == 0) {
            drawable = null;
        } else if ((this.h & 1) != 0) {
            drawable = this.m != null ? this.m : this.l;
        } else {
            drawable = this.l;
        }
        this.f245a.setLogo(drawable);
    }

    @Override // androidx.appcompat.widget.ae
    public boolean k() {
        return this.f245a.a();
    }

    @Override // androidx.appcompat.widget.ae
    public boolean l() {
        return this.f245a.b();
    }

    @Override // androidx.appcompat.widget.ae
    public boolean m() {
        return this.f245a.c();
    }

    @Override // androidx.appcompat.widget.ae
    public boolean n() {
        return this.f245a.d();
    }

    @Override // androidx.appcompat.widget.ae
    public boolean o() {
        return this.f245a.e();
    }

    @Override // androidx.appcompat.widget.ae
    public void p() {
        this.d = true;
    }

    @Override // androidx.appcompat.widget.ae
    public void a(Menu menu, n.a aVar) {
        if (this.r == null) {
            this.r = new c(this.f245a.getContext());
            this.r.a(a.g.action_menu_presenter);
        }
        this.r.a(aVar);
        this.f245a.a((androidx.appcompat.view.menu.g) menu, this.r);
    }

    @Override // androidx.appcompat.widget.ae
    public void q() {
        this.f245a.f();
    }

    @Override // androidx.appcompat.widget.ae
    public int r() {
        return this.h;
    }

    @Override // androidx.appcompat.widget.ae
    public void c(int i) {
        int i2 = this.h ^ i;
        this.h = i;
        if (i2 != 0) {
            if ((i2 & 4) != 0) {
                if ((i & 4) != 0) {
                    F();
                }
                E();
            }
            if ((i2 & 3) != 0) {
                C();
            }
            if ((i2 & 8) != 0) {
                if ((i & 8) != 0) {
                    this.f245a.setTitle(this.b);
                    this.f245a.setSubtitle(this.p);
                } else {
                    this.f245a.setTitle((CharSequence) null);
                    this.f245a.setSubtitle((CharSequence) null);
                }
            }
            if ((i2 & 16) == 0 || this.k == null) {
                return;
            }
            if ((i & 16) != 0) {
                this.f245a.addView(this.k);
            } else {
                this.f245a.removeView(this.k);
            }
        }
    }

    @Override // androidx.appcompat.widget.ae
    public void a(ar arVar) {
        if (this.i != null && this.i.getParent() == this.f245a) {
            this.f245a.removeView(this.i);
        }
        this.i = arVar;
        if (arVar == null || this.s != 2) {
            return;
        }
        this.f245a.addView(this.i, 0);
        Toolbar.b bVar = (Toolbar.b) this.i.getLayoutParams();
        bVar.width = -2;
        bVar.height = -2;
        bVar.f46a = com.google.android.material.b.a.d;
        arVar.setAllowCollapse(true);
    }

    @Override // androidx.appcompat.widget.ae
    public boolean s() {
        return this.i != null;
    }

    @Override // androidx.appcompat.widget.ae
    public boolean t() {
        return this.f245a.g();
    }

    @Override // androidx.appcompat.widget.ae
    public void a(boolean z) {
        this.f245a.setCollapsible(z);
    }

    @Override // androidx.appcompat.widget.ae
    public int u() {
        return this.s;
    }

    @Override // androidx.appcompat.widget.ae
    public void d(int i) {
        int i2 = this.s;
        if (i != i2) {
            switch (i2) {
                case 1:
                    if (this.j != null && this.j.getParent() == this.f245a) {
                        this.f245a.removeView(this.j);
                        break;
                    }
                    break;
                case 2:
                    if (this.i != null && this.i.getParent() == this.f245a) {
                        this.f245a.removeView(this.i);
                        break;
                    }
                    break;
            }
            this.s = i;
            switch (i) {
                case 0:
                    return;
                case 1:
                    D();
                    this.f245a.addView(this.j, 0);
                    return;
                case 2:
                    if (this.i != null) {
                        this.f245a.addView(this.i, 0);
                        Toolbar.b bVar = (Toolbar.b) this.i.getLayoutParams();
                        bVar.width = -2;
                        bVar.height = -2;
                        bVar.f46a = com.google.android.material.b.a.d;
                        return;
                    }
                    return;
                default:
                    throw new IllegalArgumentException("Invalid navigation mode " + i);
            }
        }
    }

    private void D() {
        if (this.j == null) {
            this.j = new x(b(), null, a.b.actionDropDownStyle);
            this.j.setLayoutParams(new Toolbar.b(-2, -2, 8388627));
        }
    }

    @Override // androidx.appcompat.widget.ae
    public void a(SpinnerAdapter spinnerAdapter, AdapterView.OnItemSelectedListener onItemSelectedListener) {
        D();
        this.j.setAdapter(spinnerAdapter);
        this.j.setOnItemSelectedListener(onItemSelectedListener);
    }

    @Override // androidx.appcompat.widget.ae
    public void e(int i) {
        if (this.j == null) {
            throw new IllegalStateException("Can't set dropdown selected position without an adapter");
        }
        this.j.setSelection(i);
    }

    @Override // androidx.appcompat.widget.ae
    public int v() {
        if (this.j != null) {
            return this.j.getSelectedItemPosition();
        }
        return 0;
    }

    @Override // androidx.appcompat.widget.ae
    public int w() {
        if (this.j != null) {
            return this.j.getCount();
        }
        return 0;
    }

    @Override // androidx.appcompat.widget.ae
    public void a(View view) {
        if (this.k != null && (this.h & 16) != 0) {
            this.f245a.removeView(this.k);
        }
        this.k = view;
        if (view == null || (this.h & 16) == 0) {
            return;
        }
        this.f245a.addView(this.k);
    }

    @Override // androidx.appcompat.widget.ae
    public View x() {
        return this.k;
    }

    @Override // androidx.appcompat.widget.ae
    public void f(int i) {
        androidx.core.n.aj a2 = a(i, g);
        if (a2 != null) {
            a2.e();
        }
    }

    @Override // androidx.appcompat.widget.ae
    public androidx.core.n.aj a(final int i, long j) {
        return androidx.core.n.af.F(this.f245a).a(i == 0 ? 1.0f : 0.0f).a(j).a(new androidx.core.n.al() { // from class: androidx.appcompat.widget.bb.2
            private boolean c = false;

            @Override // androidx.core.n.al, androidx.core.n.ak
            public void a(View view) {
                bb.this.f245a.setVisibility(0);
            }

            @Override // androidx.core.n.al, androidx.core.n.ak
            public void b(View view) {
                if (this.c) {
                    return;
                }
                bb.this.f245a.setVisibility(i);
            }

            @Override // androidx.core.n.al, androidx.core.n.ak
            public void c(View view) {
                this.c = true;
            }
        });
    }

    @Override // androidx.appcompat.widget.ae
    public void c(Drawable drawable) {
        this.n = drawable;
        E();
    }

    @Override // androidx.appcompat.widget.ae
    public void g(int i) {
        c(i != 0 ? androidx.appcompat.a.a.a.b(b(), i) : null);
    }

    @Override // androidx.appcompat.widget.ae
    public void d(Drawable drawable) {
        if (this.u != drawable) {
            this.u = drawable;
            E();
        }
    }

    private void E() {
        if ((this.h & 4) != 0) {
            this.f245a.setNavigationIcon(this.n != null ? this.n : this.u);
        } else {
            this.f245a.setNavigationIcon((Drawable) null);
        }
    }

    @Override // androidx.appcompat.widget.ae
    public void d(CharSequence charSequence) {
        this.q = charSequence;
        F();
    }

    @Override // androidx.appcompat.widget.ae
    public void h(int i) {
        d(i == 0 ? null : b().getString(i));
    }

    private void F() {
        if ((this.h & 4) != 0) {
            if (TextUtils.isEmpty(this.q)) {
                this.f245a.setNavigationContentDescription(this.t);
            } else {
                this.f245a.setNavigationContentDescription(this.q);
            }
        }
    }

    @Override // androidx.appcompat.widget.ae
    public void a(SparseArray<Parcelable> sparseArray) {
        this.f245a.saveHierarchyState(sparseArray);
    }

    @Override // androidx.appcompat.widget.ae
    public void b(SparseArray<Parcelable> sparseArray) {
        this.f245a.restoreHierarchyState(sparseArray);
    }

    @Override // androidx.appcompat.widget.ae
    public void e(Drawable drawable) {
        androidx.core.n.af.a(this.f245a, drawable);
    }

    @Override // androidx.appcompat.widget.ae
    public int y() {
        return this.f245a.getHeight();
    }

    @Override // androidx.appcompat.widget.ae
    public void j(int i) {
        this.f245a.setVisibility(i);
    }

    @Override // androidx.appcompat.widget.ae
    public int z() {
        return this.f245a.getVisibility();
    }

    @Override // androidx.appcompat.widget.ae
    public void a(n.a aVar, g.a aVar2) {
        this.f245a.a(aVar, aVar2);
    }

    @Override // androidx.appcompat.widget.ae
    public Menu A() {
        return this.f245a.getMenu();
    }
}
