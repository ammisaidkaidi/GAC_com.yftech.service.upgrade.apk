package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.annotation.ai;
import androidx.annotation.ap;

@ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public class a implements androidx.core.e.a.b {
    private static final int A = 2;
    private static final int B = 4;
    private static final int C = 8;
    private static final int D = 16;
    private static final int z = 1;

    /* renamed from: a, reason: collision with root package name */
    private final int f124a;
    private final int b;
    private final int h;
    private CharSequence i;
    private CharSequence j;
    private Intent k;
    private char l;
    private char n;
    private Drawable p;
    private Context q;
    private MenuItem.OnMenuItemClickListener r;
    private CharSequence s;
    private CharSequence t;
    private int m = 4096;
    private int o = 4096;
    private ColorStateList u = null;
    private PorterDuff.Mode v = null;
    private boolean w = false;
    private boolean x = false;
    private int y = 16;

    @Override // androidx.core.e.a.b
    public androidx.core.n.b b() {
        return null;
    }

    @Override // androidx.core.e.a.b, android.view.MenuItem
    public boolean collapseActionView() {
        return false;
    }

    @Override // androidx.core.e.a.b, android.view.MenuItem
    public boolean expandActionView() {
        return false;
    }

    @Override // androidx.core.e.a.b, android.view.MenuItem
    public View getActionView() {
        return null;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return null;
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return false;
    }

    @Override // androidx.core.e.a.b, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return false;
    }

    @Override // androidx.core.e.a.b
    public boolean requiresActionButton() {
        return true;
    }

    @Override // androidx.core.e.a.b
    public boolean requiresOverflow() {
        return false;
    }

    @Override // androidx.core.e.a.b, android.view.MenuItem
    public void setShowAsAction(int i) {
    }

    public a(Context context, int i, int i2, int i3, int i4, CharSequence charSequence) {
        this.q = context;
        this.f124a = i2;
        this.b = i;
        this.h = i4;
        this.i = charSequence;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.n;
    }

    @Override // androidx.core.e.a.b, android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.o;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.b;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        return this.p;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.k;
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return this.f124a;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.l;
    }

    @Override // androidx.core.e.a.b, android.view.MenuItem
    public int getNumericModifiers() {
        return this.m;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.h;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return this.i;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        return this.j != null ? this.j : this.i;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return (this.y & 1) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.y & 2) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.y & 16) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return (this.y & 8) == 0;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c) {
        this.n = Character.toLowerCase(c);
        return this;
    }

    @Override // androidx.core.e.a.b, android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c, int i) {
        this.n = Character.toLowerCase(c);
        this.o = KeyEvent.normalizeMetaState(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z2) {
        this.y = (z2 ? 1 : 0) | (this.y & (-2));
        return this;
    }

    public a a(boolean z2) {
        this.y = (z2 ? 4 : 0) | (this.y & (-5));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z2) {
        this.y = (z2 ? 2 : 0) | (this.y & (-3));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z2) {
        this.y = (z2 ? 16 : 0) | (this.y & (-17));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.p = drawable;
        c();
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i) {
        this.p = androidx.core.b.c.a(this.q, i);
        c();
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.k = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c) {
        this.l = c;
        return this;
    }

    @Override // androidx.core.e.a.b, android.view.MenuItem
    public MenuItem setNumericShortcut(char c, int i) {
        this.l = c;
        this.m = KeyEvent.normalizeMetaState(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.r = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c, char c2) {
        this.l = c;
        this.n = Character.toLowerCase(c2);
        return this;
    }

    @Override // androidx.core.e.a.b, android.view.MenuItem
    public MenuItem setShortcut(char c, char c2, int i, int i2) {
        this.l = c;
        this.m = KeyEvent.normalizeMetaState(i);
        this.n = Character.toLowerCase(c2);
        this.o = KeyEvent.normalizeMetaState(i2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.i = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i) {
        this.i = this.q.getResources().getString(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.j = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z2) {
        this.y = (this.y & 8) | (z2 ? 0 : 8);
        return this;
    }

    public boolean a() {
        if (this.r != null && this.r.onMenuItemClick(this)) {
            return true;
        }
        if (this.k == null) {
            return false;
        }
        this.q.startActivity(this.k);
        return true;
    }

    @Override // androidx.core.e.a.b, android.view.MenuItem
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public androidx.core.e.a.b setActionView(View view) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.core.e.a.b, android.view.MenuItem
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public androidx.core.e.a.b setActionView(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.core.e.a.b
    public androidx.core.e.a.b a(androidx.core.n.b bVar) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.core.e.a.b, android.view.MenuItem
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public androidx.core.e.a.b setShowAsActionFlags(int i) {
        setShowAsAction(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    /* renamed from: a */
    public androidx.core.e.a.b setContentDescription(CharSequence charSequence) {
        this.s = charSequence;
        return this;
    }

    @Override // androidx.core.e.a.b, android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.s;
    }

    @Override // android.view.MenuItem
    /* renamed from: b */
    public androidx.core.e.a.b setTooltipText(CharSequence charSequence) {
        this.t = charSequence;
        return this;
    }

    @Override // androidx.core.e.a.b, android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.t;
    }

    @Override // androidx.core.e.a.b, android.view.MenuItem
    public MenuItem setIconTintList(@ai ColorStateList colorStateList) {
        this.u = colorStateList;
        this.w = true;
        c();
        return this;
    }

    @Override // androidx.core.e.a.b, android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.u;
    }

    @Override // androidx.core.e.a.b, android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.v = mode;
        this.x = true;
        c();
        return this;
    }

    @Override // androidx.core.e.a.b, android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.v;
    }

    private void c() {
        if (this.p != null) {
            if (this.w || this.x) {
                this.p = androidx.core.graphics.drawable.a.g(this.p);
                this.p = this.p.mutate();
                if (this.w) {
                    androidx.core.graphics.drawable.a.a(this.p, this.u);
                }
                if (this.x) {
                    androidx.core.graphics.drawable.a.a(this.p, this.v);
                }
            }
        }
    }
}
