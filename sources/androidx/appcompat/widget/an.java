package androidx.appcompat.widget;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.ListView;
import android.widget.PopupWindow;
import androidx.annotation.ap;
import androidx.appcompat.a;
import androidx.appcompat.view.menu.g;

/* loaded from: /home/user/work/dex/classes.dex */
public class an {

    /* renamed from: a, reason: collision with root package name */
    final androidx.appcompat.view.menu.m f219a;
    b b;
    a c;
    private final Context d;
    private final androidx.appcompat.view.menu.g e;
    private final View f;
    private View.OnTouchListener g;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface a {
        void a(an anVar);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface b {
        boolean a(MenuItem menuItem);
    }

    public an(@androidx.annotation.ah Context context, @androidx.annotation.ah View view) {
        this(context, view, 0);
    }

    public an(@androidx.annotation.ah Context context, @androidx.annotation.ah View view, int i) {
        this(context, view, i, a.b.popupMenuStyle, 0);
    }

    public an(@androidx.annotation.ah Context context, @androidx.annotation.ah View view, int i, @androidx.annotation.f int i2, @androidx.annotation.at int i3) {
        this.d = context;
        this.f = view;
        this.e = new androidx.appcompat.view.menu.g(context);
        this.e.a(new g.a() { // from class: androidx.appcompat.widget.an.1
            @Override // androidx.appcompat.view.menu.g.a
            public void a(@androidx.annotation.ah androidx.appcompat.view.menu.g gVar) {
            }

            @Override // androidx.appcompat.view.menu.g.a
            public boolean a(@androidx.annotation.ah androidx.appcompat.view.menu.g gVar, @androidx.annotation.ah MenuItem menuItem) {
                if (an.this.b != null) {
                    return an.this.b.a(menuItem);
                }
                return false;
            }
        });
        this.f219a = new androidx.appcompat.view.menu.m(context, this.e, view, false, i2, i3);
        this.f219a.a(i);
        this.f219a.a(new PopupWindow.OnDismissListener() { // from class: androidx.appcompat.widget.an.2
            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                if (an.this.c != null) {
                    an.this.c.a(an.this);
                }
            }
        });
    }

    public void a(int i) {
        this.f219a.a(i);
    }

    public int a() {
        return this.f219a.b();
    }

    @androidx.annotation.ah
    public View.OnTouchListener b() {
        if (this.g == null) {
            this.g = new ai(this.f) { // from class: androidx.appcompat.widget.an.3
                @Override // androidx.appcompat.widget.ai
                protected boolean b() {
                    an.this.e();
                    return true;
                }

                @Override // androidx.appcompat.widget.ai
                protected boolean c() {
                    an.this.f();
                    return true;
                }

                @Override // androidx.appcompat.widget.ai
                public androidx.appcompat.view.menu.q a() {
                    return an.this.f219a.d();
                }
            };
        }
        return this.g;
    }

    @androidx.annotation.ah
    public Menu c() {
        return this.e;
    }

    @androidx.annotation.ah
    public MenuInflater d() {
        return new androidx.appcompat.view.g(this.d);
    }

    public void b(@androidx.annotation.af int i) {
        d().inflate(i, this.e);
    }

    public void e() {
        this.f219a.c();
    }

    public void f() {
        this.f219a.a();
    }

    public void a(@androidx.annotation.ai b bVar) {
        this.b = bVar;
    }

    public void a(@androidx.annotation.ai a aVar) {
        this.c = aVar;
    }

    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    ListView g() {
        if (this.f219a.g()) {
            return this.f219a.h();
        }
        return null;
    }
}
