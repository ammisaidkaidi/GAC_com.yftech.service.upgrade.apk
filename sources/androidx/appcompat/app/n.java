package androidx.appcompat.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.SpinnerAdapter;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.appcompat.app.a;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.n;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.ae;
import androidx.appcompat.widget.bb;
import androidx.core.n.af;
import java.util.ArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
class n extends androidx.appcompat.app.a {
    ae i;
    boolean j;
    Window.Callback k;
    private boolean l;
    private boolean m;
    private ArrayList<a.d> n = new ArrayList<>();
    private final Runnable o = new Runnable() { // from class: androidx.appcompat.app.n.1
        @Override // java.lang.Runnable
        public void run() {
            n.this.B();
        }
    };
    private final Toolbar.c p = new Toolbar.c() { // from class: androidx.appcompat.app.n.2
        @Override // androidx.appcompat.widget.Toolbar.c
        public boolean a(MenuItem menuItem) {
            return n.this.k.onMenuItemSelected(0, menuItem);
        }
    };

    @Override // androidx.appcompat.app.a
    public int a() {
        return -1;
    }

    @Override // androidx.appcompat.app.a
    public int b() {
        return 0;
    }

    @Override // androidx.appcompat.app.a
    public void d(Drawable drawable) {
    }

    @Override // androidx.appcompat.app.a
    public void e(Drawable drawable) {
    }

    @Override // androidx.appcompat.app.a
    public int f() {
        return 0;
    }

    @Override // androidx.appcompat.app.a
    public void f(boolean z) {
    }

    @Override // androidx.appcompat.app.a
    public void h(boolean z) {
    }

    @Override // androidx.appcompat.app.a
    public void i(boolean z) {
    }

    @Override // androidx.appcompat.app.a
    public int k() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(Toolbar toolbar, CharSequence charSequence, Window.Callback callback) {
        this.i = new bb(toolbar, false);
        this.k = new c(callback);
        this.i.a(this.k);
        toolbar.setOnMenuItemClickListener(this.p);
        this.i.a(charSequence);
    }

    public Window.Callback A() {
        return this.k;
    }

    @Override // androidx.appcompat.app.a
    public void a(View view) {
        a(view, new a.b(-2, -2));
    }

    @Override // androidx.appcompat.app.a
    public void a(View view, a.b bVar) {
        if (view != null) {
            view.setLayoutParams(bVar);
        }
        this.i.a(view);
    }

    @Override // androidx.appcompat.app.a
    public void a(int i) {
        a(LayoutInflater.from(this.i.b()).inflate(i, this.i.a(), false));
    }

    @Override // androidx.appcompat.app.a
    public void b(int i) {
        this.i.a(i);
    }

    @Override // androidx.appcompat.app.a
    public void a(Drawable drawable) {
        this.i.a(drawable);
    }

    @Override // androidx.appcompat.app.a
    public void c(int i) {
        this.i.b(i);
    }

    @Override // androidx.appcompat.app.a
    public void b(Drawable drawable) {
        this.i.b(drawable);
    }

    @Override // androidx.appcompat.app.a
    public void a(float f) {
        af.m(this.i.a(), f);
    }

    @Override // androidx.appcompat.app.a
    public float t() {
        return af.P(this.i.a());
    }

    @Override // androidx.appcompat.app.a
    public Context p() {
        return this.i.b();
    }

    @Override // androidx.appcompat.app.a
    public boolean q() {
        return super.q();
    }

    @Override // androidx.appcompat.app.a
    public void f(Drawable drawable) {
        this.i.c(drawable);
    }

    @Override // androidx.appcompat.app.a
    public void k(int i) {
        this.i.g(i);
    }

    @Override // androidx.appcompat.app.a
    public void c(CharSequence charSequence) {
        this.i.d(charSequence);
    }

    @Override // androidx.appcompat.app.a
    public void l(int i) {
        this.i.h(i);
    }

    @Override // androidx.appcompat.app.a
    public void a(Configuration configuration) {
        super.a(configuration);
    }

    @Override // androidx.appcompat.app.a
    public void a(SpinnerAdapter spinnerAdapter, a.e eVar) {
        this.i.a(spinnerAdapter, new l(eVar));
    }

    @Override // androidx.appcompat.app.a
    public void d(int i) {
        if (this.i.u() == 1) {
            this.i.e(i);
            return;
        }
        throw new IllegalStateException("setSelectedNavigationIndex not valid for current navigation mode");
    }

    @Override // androidx.appcompat.app.a
    public void a(CharSequence charSequence) {
        this.i.b(charSequence);
    }

    @Override // androidx.appcompat.app.a
    public void e(int i) {
        this.i.b(i != 0 ? this.i.b().getText(i) : null);
    }

    @Override // androidx.appcompat.app.a
    public void d(CharSequence charSequence) {
        this.i.a(charSequence);
    }

    @Override // androidx.appcompat.app.a
    public boolean y() {
        ViewGroup a2 = this.i.a();
        if (a2 == null || a2.hasFocus()) {
            return false;
        }
        a2.requestFocus();
        return true;
    }

    @Override // androidx.appcompat.app.a
    public void b(CharSequence charSequence) {
        this.i.c(charSequence);
    }

    @Override // androidx.appcompat.app.a
    public void f(int i) {
        this.i.c(i != 0 ? this.i.b().getText(i) : null);
    }

    @Override // androidx.appcompat.app.a
    @SuppressLint({"WrongConstant"})
    public void g(int i) {
        a(i, -1);
    }

    @Override // androidx.appcompat.app.a
    public void a(int i, int i2) {
        this.i.c((i & i2) | ((~i2) & this.i.r()));
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
    public void c(@ai Drawable drawable) {
        this.i.e(drawable);
    }

    @Override // androidx.appcompat.app.a
    public View c() {
        return this.i.x();
    }

    @Override // androidx.appcompat.app.a
    public CharSequence d() {
        return this.i.e();
    }

    @Override // androidx.appcompat.app.a
    public CharSequence e() {
        return this.i.f();
    }

    @Override // androidx.appcompat.app.a
    public void h(int i) {
        if (i == 2) {
            throw new IllegalArgumentException("Tabs not supported in this configuration");
        }
        this.i.d(i);
    }

    @Override // androidx.appcompat.app.a
    public int g() {
        return this.i.r();
    }

    @Override // androidx.appcompat.app.a
    public a.f h() {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    @Override // androidx.appcompat.app.a
    public void a(a.f fVar) {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    @Override // androidx.appcompat.app.a
    public void a(a.f fVar, boolean z) {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    @Override // androidx.appcompat.app.a
    public void a(a.f fVar, int i) {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    @Override // androidx.appcompat.app.a
    public void a(a.f fVar, int i, boolean z) {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    @Override // androidx.appcompat.app.a
    public void b(a.f fVar) {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    @Override // androidx.appcompat.app.a
    public void i(int i) {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    @Override // androidx.appcompat.app.a
    public void i() {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    @Override // androidx.appcompat.app.a
    public void c(a.f fVar) {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    @Override // androidx.appcompat.app.a
    public a.f j() {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    @Override // androidx.appcompat.app.a
    public a.f j(int i) {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    @Override // androidx.appcompat.app.a
    public int l() {
        return this.i.y();
    }

    @Override // androidx.appcompat.app.a
    public void m() {
        this.i.j(0);
    }

    @Override // androidx.appcompat.app.a
    public void n() {
        this.i.j(8);
    }

    @Override // androidx.appcompat.app.a
    public boolean o() {
        return this.i.z() == 0;
    }

    @Override // androidx.appcompat.app.a
    public boolean u() {
        return this.i.n();
    }

    @Override // androidx.appcompat.app.a
    public boolean v() {
        return this.i.o();
    }

    @Override // androidx.appcompat.app.a
    public boolean w() {
        this.i.a().removeCallbacks(this.o);
        af.a(this.i.a(), this.o);
        return true;
    }

    @Override // androidx.appcompat.app.a
    public boolean x() {
        if (!this.i.c()) {
            return false;
        }
        this.i.d();
        return true;
    }

    void B() {
        Menu C = C();
        androidx.appcompat.view.menu.g gVar = C instanceof androidx.appcompat.view.menu.g ? (androidx.appcompat.view.menu.g) C : null;
        if (gVar != null) {
            gVar.i();
        }
        try {
            C.clear();
            if (!this.k.onCreatePanelMenu(0, C) || !this.k.onPreparePanel(0, null, C)) {
                C.clear();
            }
        } finally {
            if (gVar != null) {
                gVar.j();
            }
        }
    }

    @Override // androidx.appcompat.app.a
    public boolean a(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1) {
            u();
        }
        return true;
    }

    @Override // androidx.appcompat.app.a
    public boolean a(int i, KeyEvent keyEvent) {
        Menu C = C();
        if (C == null) {
            return false;
        }
        C.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return C.performShortcut(i, keyEvent, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.appcompat.app.a
    public void z() {
        this.i.a().removeCallbacks(this.o);
    }

    @Override // androidx.appcompat.app.a
    public void a(a.d dVar) {
        this.n.add(dVar);
    }

    @Override // androidx.appcompat.app.a
    public void b(a.d dVar) {
        this.n.remove(dVar);
    }

    @Override // androidx.appcompat.app.a
    public void j(boolean z) {
        if (z == this.m) {
            return;
        }
        this.m = z;
        int size = this.n.size();
        for (int i = 0; i < size; i++) {
            this.n.get(i).a(z);
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private class c extends androidx.appcompat.view.i {
        public c(Window.Callback callback) {
            super(callback);
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public boolean onPreparePanel(int i, View view, Menu menu) {
            boolean onPreparePanel = super.onPreparePanel(i, view, menu);
            if (onPreparePanel && !n.this.j) {
                n.this.i.p();
                n.this.j = true;
            }
            return onPreparePanel;
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public View onCreatePanelView(int i) {
            if (i == 0) {
                return new View(n.this.i.b());
            }
            return super.onCreatePanelView(i);
        }
    }

    private Menu C() {
        if (!this.l) {
            this.i.a(new a(), new b());
            this.l = true;
        }
        return this.i.A();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public final class a implements n.a {
        private boolean b;

        a() {
        }

        @Override // androidx.appcompat.view.menu.n.a
        public boolean a(@ah androidx.appcompat.view.menu.g gVar) {
            if (n.this.k == null) {
                return false;
            }
            n.this.k.onMenuOpened(108, gVar);
            return true;
        }

        @Override // androidx.appcompat.view.menu.n.a
        public void a(@ah androidx.appcompat.view.menu.g gVar, boolean z) {
            if (this.b) {
                return;
            }
            this.b = true;
            n.this.i.q();
            if (n.this.k != null) {
                n.this.k.onPanelClosed(108, gVar);
            }
            this.b = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public final class b implements g.a {
        @Override // androidx.appcompat.view.menu.g.a
        public boolean a(@ah androidx.appcompat.view.menu.g gVar, @ah MenuItem menuItem) {
            return false;
        }

        b() {
        }

        @Override // androidx.appcompat.view.menu.g.a
        public void a(@ah androidx.appcompat.view.menu.g gVar) {
            if (n.this.k != null) {
                if (n.this.i.l()) {
                    n.this.k.onPanelClosed(108, gVar);
                } else if (n.this.k.onPreparePanel(0, null, gVar)) {
                    n.this.k.onMenuOpened(108, gVar);
                }
            }
        }
    }
}
