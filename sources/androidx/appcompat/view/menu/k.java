package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.view.ActionProvider;
import android.view.CollapsibleActionView;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.am;
import androidx.annotation.ap;
import androidx.core.n.b;
import java.lang.reflect.Method;

@ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public class k extends androidx.appcompat.view.menu.c implements MenuItem {
    static final String b = "MenuItemWrapper";
    private final androidx.core.e.a.b c;
    private Method d;

    public k(Context context, androidx.core.e.a.b bVar) {
        super(context);
        if (bVar == null) {
            throw new IllegalArgumentException("Wrapped Object can not be null.");
        }
        this.c = bVar;
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return this.c.getItemId();
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.c.getGroupId();
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.c.getOrder();
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.c.setTitle(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i) {
        this.c.setTitle(i);
        return this;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return this.c.getTitle();
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.c.setTitleCondensed(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        return this.c.getTitleCondensed();
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.c.setIcon(drawable);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i) {
        this.c.setIcon(i);
        return this;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        return this.c.getIcon();
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.c.setIntent(intent);
        return this;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.c.getIntent();
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c2, char c3) {
        this.c.setShortcut(c2, c3);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c2, char c3, int i, int i2) {
        this.c.setShortcut(c2, c3, i, i2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c2) {
        this.c.setNumericShortcut(c2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c2, int i) {
        this.c.setNumericShortcut(c2, i);
        return this;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.c.getNumericShortcut();
    }

    @Override // android.view.MenuItem
    public int getNumericModifiers() {
        return this.c.getNumericModifiers();
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c2) {
        this.c.setAlphabeticShortcut(c2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c2, int i) {
        this.c.setAlphabeticShortcut(c2, i);
        return this;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.c.getAlphabeticShortcut();
    }

    @Override // android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.c.getAlphabeticModifiers();
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        this.c.setCheckable(z);
        return this;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return this.c.isCheckable();
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        this.c.setChecked(z);
        return this;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return this.c.isChecked();
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        return this.c.setVisible(z);
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return this.c.isVisible();
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        this.c.setEnabled(z);
        return this;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return this.c.isEnabled();
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return this.c.hasSubMenu();
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return a(this.c.getSubMenu());
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.c.setOnMenuItemClickListener(onMenuItemClickListener != null ? new e(onMenuItemClickListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.c.getMenuInfo();
    }

    @Override // android.view.MenuItem
    public void setShowAsAction(int i) {
        this.c.setShowAsAction(i);
    }

    @Override // android.view.MenuItem
    public MenuItem setShowAsActionFlags(int i) {
        this.c.setShowAsActionFlags(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(View view) {
        if (view instanceof CollapsibleActionView) {
            view = new c(view);
        }
        this.c.setActionView(view);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(int i) {
        this.c.setActionView(i);
        View actionView = this.c.getActionView();
        if (actionView instanceof CollapsibleActionView) {
            this.c.setActionView(new c(actionView));
        }
        return this;
    }

    @Override // android.view.MenuItem
    public View getActionView() {
        View actionView = this.c.getActionView();
        return actionView instanceof c ? ((c) actionView).c() : actionView;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        androidx.core.n.b aVar;
        if (Build.VERSION.SDK_INT >= 16) {
            aVar = new b(this.f126a, actionProvider);
        } else {
            aVar = new a(this.f126a, actionProvider);
        }
        androidx.core.e.a.b bVar = this.c;
        if (actionProvider == null) {
            aVar = null;
        }
        bVar.a(aVar);
        return this;
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        androidx.core.n.b b2 = this.c.b();
        if (b2 instanceof a) {
            return ((a) b2).f140a;
        }
        return null;
    }

    @Override // android.view.MenuItem
    public boolean expandActionView() {
        return this.c.expandActionView();
    }

    @Override // android.view.MenuItem
    public boolean collapseActionView() {
        return this.c.collapseActionView();
    }

    @Override // android.view.MenuItem
    public boolean isActionViewExpanded() {
        return this.c.isActionViewExpanded();
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.c.setOnActionExpandListener(onActionExpandListener != null ? new d(onActionExpandListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setContentDescription(CharSequence charSequence) {
        this.c.setContentDescription(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.c.getContentDescription();
    }

    @Override // android.view.MenuItem
    public MenuItem setTooltipText(CharSequence charSequence) {
        this.c.setTooltipText(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.c.getTooltipText();
    }

    @Override // android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.c.setIconTintList(colorStateList);
        return this;
    }

    @Override // android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.c.getIconTintList();
    }

    @Override // android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.c.setIconTintMode(mode);
        return this;
    }

    @Override // android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.c.getIconTintMode();
    }

    public void a(boolean z) {
        try {
            if (this.d == null) {
                this.d = this.c.getClass().getDeclaredMethod("setExclusiveCheckable", Boolean.TYPE);
            }
            this.d.invoke(this.c, Boolean.valueOf(z));
        } catch (Exception e2) {
            Log.w(b, "Error while calling setExclusiveCheckable", e2);
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private class e implements MenuItem.OnMenuItemClickListener {
        private final MenuItem.OnMenuItemClickListener b;

        e(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
            this.b = onMenuItemClickListener;
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            return this.b.onMenuItemClick(k.this.a(menuItem));
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private class d implements MenuItem.OnActionExpandListener {
        private final MenuItem.OnActionExpandListener b;

        d(MenuItem.OnActionExpandListener onActionExpandListener) {
            this.b = onActionExpandListener;
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionExpand(MenuItem menuItem) {
            return this.b.onMenuItemActionExpand(k.this.a(menuItem));
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionCollapse(MenuItem menuItem) {
            return this.b.onMenuItemActionCollapse(k.this.a(menuItem));
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private class a extends androidx.core.n.b {

        /* renamed from: a, reason: collision with root package name */
        final ActionProvider f140a;

        a(Context context, ActionProvider actionProvider) {
            super(context);
            this.f140a = actionProvider;
        }

        @Override // androidx.core.n.b
        public View a() {
            return this.f140a.onCreateActionView();
        }

        @Override // androidx.core.n.b
        public boolean b() {
            return this.f140a.onPerformDefaultAction();
        }

        @Override // androidx.core.n.b
        public boolean c() {
            return this.f140a.hasSubMenu();
        }

        @Override // androidx.core.n.b
        public void a(SubMenu subMenu) {
            this.f140a.onPrepareSubMenu(k.this.a(subMenu));
        }
    }

    @am(a = 16)
    /* loaded from: /home/user/work/dex/classes.dex */
    private class b extends a implements ActionProvider.VisibilityListener {
        private b.InterfaceC0043b d;

        b(Context context, ActionProvider actionProvider) {
            super(context, actionProvider);
        }

        @Override // androidx.core.n.b
        public View a(MenuItem menuItem) {
            return this.f140a.onCreateActionView(menuItem);
        }

        @Override // androidx.core.n.b
        public boolean d() {
            return this.f140a.overridesItemVisibility();
        }

        @Override // androidx.core.n.b
        public boolean e() {
            return this.f140a.isVisible();
        }

        @Override // androidx.core.n.b
        public void f() {
            this.f140a.refreshVisibility();
        }

        @Override // androidx.core.n.b
        public void a(b.InterfaceC0043b interfaceC0043b) {
            this.d = interfaceC0043b;
            ActionProvider actionProvider = this.f140a;
            if (interfaceC0043b == null) {
                this = null;
            }
            actionProvider.setVisibilityListener(this);
        }

        @Override // android.view.ActionProvider.VisibilityListener
        public void onActionProviderVisibilityChanged(boolean z) {
            if (this.d != null) {
                this.d.a(z);
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    static class c extends FrameLayout implements androidx.appcompat.view.c {

        /* renamed from: a, reason: collision with root package name */
        final CollapsibleActionView f141a;

        /* JADX WARN: Multi-variable type inference failed */
        c(View view) {
            super(view.getContext());
            this.f141a = (CollapsibleActionView) view;
            addView(view);
        }

        @Override // androidx.appcompat.view.c
        public void a() {
            this.f141a.onActionViewExpanded();
        }

        @Override // androidx.appcompat.view.c
        public void b() {
            this.f141a.onActionViewCollapsed();
        }

        View c() {
            return (View) this.f141a;
        }
    }
}
