package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public abstract class c {

    /* renamed from: a, reason: collision with root package name */
    final Context f126a;
    private androidx.c.i<androidx.core.e.a.b, MenuItem> b;
    private androidx.c.i<androidx.core.e.a.c, SubMenu> c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Context context) {
        this.f126a = context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final MenuItem a(MenuItem menuItem) {
        if (!(menuItem instanceof androidx.core.e.a.b)) {
            return menuItem;
        }
        androidx.core.e.a.b bVar = (androidx.core.e.a.b) menuItem;
        if (this.b == null) {
            this.b = new androidx.c.i<>();
        }
        MenuItem menuItem2 = this.b.get(menuItem);
        if (menuItem2 != null) {
            return menuItem2;
        }
        k kVar = new k(this.f126a, bVar);
        this.b.put(bVar, kVar);
        return kVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final SubMenu a(SubMenu subMenu) {
        if (!(subMenu instanceof androidx.core.e.a.c)) {
            return subMenu;
        }
        androidx.core.e.a.c cVar = (androidx.core.e.a.c) subMenu;
        if (this.c == null) {
            this.c = new androidx.c.i<>();
        }
        SubMenu subMenu2 = this.c.get(cVar);
        if (subMenu2 != null) {
            return subMenu2;
        }
        t tVar = new t(this.f126a, cVar);
        this.c.put(cVar, tVar);
        return tVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        if (this.b != null) {
            this.b.clear();
        }
        if (this.c != null) {
            this.c.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i) {
        if (this.b == null) {
            return;
        }
        int i2 = 0;
        while (i2 < this.b.size()) {
            if (this.b.b(i2).getGroupId() == i) {
                this.b.d(i2);
                i2--;
            }
            i2++;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(int i) {
        if (this.b == null) {
            return;
        }
        for (int i2 = 0; i2 < this.b.size(); i2++) {
            if (this.b.b(i2).getItemId() == i) {
                this.b.d(i2);
                return;
            }
        }
    }
}
