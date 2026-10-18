package androidx.appcompat.app;

import android.R;
import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.as;
import androidx.appcompat.app.c;
import androidx.appcompat.widget.Toolbar;
import androidx.g.a.a;

/* loaded from: /home/user/work/dex/classes.dex */
public class b implements a.c {

    /* renamed from: a, reason: collision with root package name */
    boolean f48a;
    View.OnClickListener b;
    private final a c;
    private final androidx.g.a.a d;
    private androidx.appcompat.b.a.d e;
    private boolean f;
    private Drawable g;
    private boolean h;
    private final int i;
    private final int j;
    private boolean k;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface a {
        Drawable a();

        void a(@as int i);

        void a(Drawable drawable, @as int i);

        Context b();

        boolean c();
    }

    /* renamed from: androidx.appcompat.app.b$b, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface InterfaceC0012b {
        @ai
        a a();
    }

    @Override // androidx.g.a.a.c
    public void b(int i) {
    }

    public b(Activity activity, androidx.g.a.a aVar, @as int i, @as int i2) {
        this(activity, null, aVar, null, i, i2);
    }

    public b(Activity activity, androidx.g.a.a aVar, Toolbar toolbar, @as int i, @as int i2) {
        this(activity, toolbar, aVar, null, i, i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    b(Activity activity, Toolbar toolbar, androidx.g.a.a aVar, androidx.appcompat.b.a.d dVar, @as int i, @as int i2) {
        this.f = true;
        this.f48a = true;
        this.k = false;
        if (toolbar != null) {
            this.c = new d(toolbar);
            toolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: androidx.appcompat.app.b.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (b.this.f48a) {
                        b.this.b();
                    } else if (b.this.b != null) {
                        b.this.b.onClick(view);
                    }
                }
            });
        } else if (activity instanceof InterfaceC0012b) {
            this.c = ((InterfaceC0012b) activity).a();
        } else {
            this.c = new c(activity);
        }
        this.d = aVar;
        this.i = i;
        this.j = i2;
        if (dVar == null) {
            this.e = new androidx.appcompat.b.a.d(this.c.b());
        } else {
            this.e = dVar;
        }
        this.g = g();
    }

    public void a() {
        if (this.d.g(androidx.core.n.h.b)) {
            a(1.0f);
        } else {
            a(0.0f);
        }
        if (this.f48a) {
            a(this.e, this.d.g(androidx.core.n.h.b) ? this.j : this.i);
        }
    }

    public void a(Configuration configuration) {
        if (!this.h) {
            this.g = g();
        }
        a();
    }

    public boolean a(MenuItem menuItem) {
        if (menuItem == null || menuItem.getItemId() != 16908332 || !this.f48a) {
            return false;
        }
        b();
        return true;
    }

    void b() {
        int a2 = this.d.a(androidx.core.n.h.b);
        if (this.d.h(androidx.core.n.h.b) && a2 != 2) {
            this.d.f(androidx.core.n.h.b);
        } else if (a2 != 1) {
            this.d.e(androidx.core.n.h.b);
        }
    }

    public void a(Drawable drawable) {
        if (drawable == null) {
            this.g = g();
            this.h = false;
        } else {
            this.g = drawable;
            this.h = true;
        }
        if (this.f48a) {
            return;
        }
        a(this.g, 0);
    }

    public void a(int i) {
        a(i != 0 ? this.d.getResources().getDrawable(i) : null);
    }

    public boolean c() {
        return this.f48a;
    }

    public void a(boolean z) {
        if (z != this.f48a) {
            if (z) {
                a(this.e, this.d.g(androidx.core.n.h.b) ? this.j : this.i);
            } else {
                a(this.g, 0);
            }
            this.f48a = z;
        }
    }

    @ah
    public androidx.appcompat.b.a.d d() {
        return this.e;
    }

    public void a(@ah androidx.appcompat.b.a.d dVar) {
        this.e = dVar;
        a();
    }

    public void b(boolean z) {
        this.f = z;
        if (z) {
            return;
        }
        a(0.0f);
    }

    public boolean e() {
        return this.f;
    }

    @Override // androidx.g.a.a.c
    public void a(View view, float f) {
        if (this.f) {
            a(Math.min(1.0f, Math.max(0.0f, f)));
        } else {
            a(0.0f);
        }
    }

    @Override // androidx.g.a.a.c
    public void a(View view) {
        a(1.0f);
        if (this.f48a) {
            c(this.j);
        }
    }

    @Override // androidx.g.a.a.c
    public void b(View view) {
        a(0.0f);
        if (this.f48a) {
            c(this.i);
        }
    }

    public View.OnClickListener f() {
        return this.b;
    }

    public void a(View.OnClickListener onClickListener) {
        this.b = onClickListener;
    }

    void a(Drawable drawable, int i) {
        if (!this.k && !this.c.c()) {
            Log.w("ActionBarDrawerToggle", "DrawerToggle may not show up because NavigationIcon is not visible. You may need to call actionbar.setDisplayHomeAsUpEnabled(true);");
            this.k = true;
        }
        this.c.a(drawable, i);
    }

    void c(int i) {
        this.c.a(i);
    }

    Drawable g() {
        return this.c.a();
    }

    private void a(float f) {
        if (f == 1.0f) {
            this.e.b(true);
        } else if (f == 0.0f) {
            this.e.b(false);
        }
        this.e.f(f);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class c implements a {

        /* renamed from: a, reason: collision with root package name */
        private final Activity f50a;
        private c.a b;

        c(Activity activity) {
            this.f50a = activity;
        }

        @Override // androidx.appcompat.app.b.a
        public Drawable a() {
            if (Build.VERSION.SDK_INT >= 18) {
                TypedArray obtainStyledAttributes = b().obtainStyledAttributes(null, new int[]{R.attr.homeAsUpIndicator}, R.attr.actionBarStyle, 0);
                Drawable drawable = obtainStyledAttributes.getDrawable(0);
                obtainStyledAttributes.recycle();
                return drawable;
            }
            return androidx.appcompat.app.c.a(this.f50a);
        }

        @Override // androidx.appcompat.app.b.a
        public Context b() {
            ActionBar actionBar = this.f50a.getActionBar();
            if (actionBar != null) {
                return actionBar.getThemedContext();
            }
            return this.f50a;
        }

        @Override // androidx.appcompat.app.b.a
        public boolean c() {
            ActionBar actionBar = this.f50a.getActionBar();
            return (actionBar == null || (actionBar.getDisplayOptions() & 4) == 0) ? false : true;
        }

        @Override // androidx.appcompat.app.b.a
        public void a(Drawable drawable, int i) {
            ActionBar actionBar = this.f50a.getActionBar();
            if (actionBar != null) {
                if (Build.VERSION.SDK_INT >= 18) {
                    actionBar.setHomeAsUpIndicator(drawable);
                    actionBar.setHomeActionContentDescription(i);
                } else {
                    actionBar.setDisplayShowHomeEnabled(true);
                    this.b = androidx.appcompat.app.c.a(this.f50a, drawable, i);
                    actionBar.setDisplayShowHomeEnabled(false);
                }
            }
        }

        @Override // androidx.appcompat.app.b.a
        public void a(int i) {
            if (Build.VERSION.SDK_INT >= 18) {
                ActionBar actionBar = this.f50a.getActionBar();
                if (actionBar != null) {
                    actionBar.setHomeActionContentDescription(i);
                    return;
                }
                return;
            }
            this.b = androidx.appcompat.app.c.a(this.b, this.f50a, i);
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    static class d implements a {

        /* renamed from: a, reason: collision with root package name */
        final Toolbar f51a;
        final Drawable b;
        final CharSequence c;

        @Override // androidx.appcompat.app.b.a
        public boolean c() {
            return true;
        }

        d(Toolbar toolbar) {
            this.f51a = toolbar;
            this.b = toolbar.getNavigationIcon();
            this.c = toolbar.getNavigationContentDescription();
        }

        @Override // androidx.appcompat.app.b.a
        public void a(Drawable drawable, @as int i) {
            this.f51a.setNavigationIcon(drawable);
            a(i);
        }

        @Override // androidx.appcompat.app.b.a
        public void a(@as int i) {
            if (i == 0) {
                this.f51a.setNavigationContentDescription(this.c);
            } else {
                this.f51a.setNavigationContentDescription(i);
            }
        }

        @Override // androidx.appcompat.app.b.a
        public Drawable a() {
            return this.b;
        }

        @Override // androidx.appcompat.app.b.a
        public Context b() {
            return this.f51a.getContext();
        }
    }
}
