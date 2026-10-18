package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.annotation.ah;
import androidx.annotation.ap;
import androidx.appcompat.view.menu.g;

@ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public class s extends g implements SubMenu {
    private g j;
    private j k;

    public s(Context context, g gVar, j jVar) {
        super(context);
        this.j = gVar;
        this.k = jVar;
    }

    @Override // androidx.appcompat.view.menu.g, android.view.Menu
    public void setQwertyMode(boolean z) {
        this.j.setQwertyMode(z);
    }

    @Override // androidx.appcompat.view.menu.g
    public boolean d() {
        return this.j.d();
    }

    @Override // androidx.appcompat.view.menu.g
    public void a(boolean z) {
        this.j.a(z);
    }

    @Override // androidx.appcompat.view.menu.g
    public boolean e() {
        return this.j.e();
    }

    public Menu u() {
        return this.j;
    }

    @Override // android.view.SubMenu
    public MenuItem getItem() {
        return this.k;
    }

    @Override // androidx.appcompat.view.menu.g
    public void a(g.a aVar) {
        this.j.a(aVar);
    }

    @Override // androidx.appcompat.view.menu.g
    public g r() {
        return this.j.r();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.appcompat.view.menu.g
    public boolean a(@ah g gVar, @ah MenuItem menuItem) {
        return super.a(gVar, menuItem) || this.j.a(gVar, menuItem);
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(Drawable drawable) {
        this.k.setIcon(drawable);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(int i) {
        this.k.setIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(Drawable drawable) {
        return (SubMenu) super.a(drawable);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(int i) {
        return (SubMenu) super.f(i);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(CharSequence charSequence) {
        return (SubMenu) super.a(charSequence);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(int i) {
        return (SubMenu) super.e(i);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderView(View view) {
        return (SubMenu) super.a(view);
    }

    @Override // androidx.appcompat.view.menu.g
    public boolean c(j jVar) {
        return this.j.c(jVar);
    }

    @Override // androidx.appcompat.view.menu.g
    public boolean d(j jVar) {
        return this.j.d(jVar);
    }

    @Override // androidx.appcompat.view.menu.g
    public String a() {
        int itemId = this.k != null ? this.k.getItemId() : 0;
        if (itemId == 0) {
            return null;
        }
        return super.a() + ":" + itemId;
    }

    @Override // androidx.appcompat.view.menu.g, androidx.core.e.a.a, android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.j.setGroupDividerEnabled(z);
    }

    @Override // androidx.appcompat.view.menu.g
    public boolean b() {
        return this.j.b();
    }
}
