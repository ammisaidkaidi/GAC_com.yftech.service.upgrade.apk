package androidx.appcompat.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.annotation.ac;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.at;
import androidx.annotation.w;
import androidx.appcompat.app.b;
import androidx.appcompat.view.b;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.bf;
import androidx.core.app.aa;

/* loaded from: /home/user/work/dex/classes.dex */
public class e extends androidx.fragment.app.e implements b.InterfaceC0012b, f, aa.a {
    private g p;
    private Resources q;

    @Override // androidx.appcompat.app.f
    @ai
    public androidx.appcompat.view.b a(@ah b.a aVar) {
        return null;
    }

    @Override // androidx.appcompat.app.f
    @androidx.annotation.i
    public void a(@ah androidx.appcompat.view.b bVar) {
    }

    @Deprecated
    public void a(boolean z) {
    }

    @Deprecated
    public void b(int i) {
    }

    @Override // androidx.appcompat.app.f
    @androidx.annotation.i
    public void b(@ah androidx.appcompat.view.b bVar) {
    }

    public void b(@ah aa aaVar) {
    }

    @Deprecated
    public void b(boolean z) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c(int i) {
    }

    @Deprecated
    public void c(boolean z) {
    }

    @Deprecated
    public void k() {
    }

    public e() {
    }

    @androidx.annotation.n
    public e(@ac int i) {
        super(i);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(l().b(context));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.e, androidx.activity.b, androidx.core.app.j, android.app.Activity
    public void onCreate(@ai Bundle bundle) {
        g l = l();
        l.i();
        l.a(bundle);
        super.onCreate(bundle);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public void setTheme(@at int i) {
        super.setTheme(i);
        l().a(i);
    }

    @Override // android.app.Activity
    protected void onPostCreate(@ai Bundle bundle) {
        super.onPostCreate(bundle);
        l().b(bundle);
    }

    @ai
    public a g() {
        return l().a();
    }

    public void a(@ai Toolbar toolbar) {
        l().a(toolbar);
    }

    @Override // android.app.Activity
    @ah
    public MenuInflater getMenuInflater() {
        return l().b();
    }

    @Override // android.app.Activity
    public void setContentView(@ac int i) {
        l().c(i);
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        l().a(view);
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        l().a(view, layoutParams);
    }

    @Override // android.app.Activity
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        l().b(view, layoutParams);
    }

    @Override // androidx.fragment.app.e, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(@ah Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.q != null) {
            this.q.updateConfiguration(configuration, super.getResources().getDisplayMetrics());
        }
        l().a(configuration);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.e, android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        l().e();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.e, android.app.Activity
    public void onStart() {
        super.onStart();
        l().c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.e, android.app.Activity
    public void onStop() {
        super.onStop();
        l().d();
    }

    @Override // android.app.Activity
    public <T extends View> T findViewById(@w int i) {
        return (T) l().b(i);
    }

    @Override // androidx.fragment.app.e, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i, @ah MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        a g = g();
        if (menuItem.getItemId() != 16908332 || g == null || (g.g() & 4) == 0) {
            return false;
        }
        return i();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.e, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        l().g();
    }

    @Override // android.app.Activity
    protected void onTitleChanged(CharSequence charSequence, int i) {
        super.onTitleChanged(charSequence, i);
        l().a(charSequence);
    }

    public boolean a(int i) {
        return l().d(i);
    }

    @Override // androidx.fragment.app.e
    public void h() {
        l().f();
    }

    @Override // android.app.Activity
    public void invalidateOptionsMenu() {
        l().f();
    }

    @ai
    public androidx.appcompat.view.b b(@ah b.a aVar) {
        return l().a(aVar);
    }

    public void a(@ah aa aaVar) {
        aaVar.a((Activity) this);
    }

    public boolean i() {
        Intent j = j();
        if (j == null) {
            return false;
        }
        if (a(j)) {
            aa a2 = aa.a((Context) this);
            a(a2);
            b(a2);
            a2.b();
            try {
                androidx.core.app.a.b((Activity) this);
                return true;
            } catch (IllegalStateException unused) {
                finish();
                return true;
            }
        }
        b(j);
        return true;
    }

    @Override // androidx.core.app.aa.a
    @ai
    public Intent j() {
        return androidx.core.app.n.b(this);
    }

    public boolean a(@ah Intent intent) {
        return androidx.core.app.n.a(this, intent);
    }

    public void b(@ah Intent intent) {
        androidx.core.app.n.b(this, intent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onContentChanged() {
        k();
    }

    @Override // androidx.appcompat.app.b.InterfaceC0012b
    @ai
    public b.a a() {
        return l().h();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuOpened(int i, Menu menu) {
        return super.onMenuOpened(i, menu);
    }

    @Override // androidx.fragment.app.e, android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, @ah Menu menu) {
        super.onPanelClosed(i, menu);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.e, androidx.activity.b, androidx.core.app.j, android.app.Activity
    public void onSaveInstanceState(@ah Bundle bundle) {
        super.onSaveInstanceState(bundle);
        l().c(bundle);
    }

    @ah
    public g l() {
        if (this.p == null) {
            this.p = g.a(this, this);
        }
        return this.p;
    }

    @Override // androidx.core.app.j, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        a g = g();
        if (keyCode == 82 && g != null && g.a(keyEvent)) {
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        if (this.q == null && bf.a()) {
            this.q = new bf(this, super.getResources());
        }
        return this.q == null ? super.getResources() : this.q;
    }

    private boolean b(KeyEvent keyEvent) {
        Window window;
        return (Build.VERSION.SDK_INT >= 26 || keyEvent.isCtrlPressed() || KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState()) || keyEvent.getRepeatCount() != 0 || KeyEvent.isModifierKey(keyEvent.getKeyCode()) || (window = getWindow()) == null || window.getDecorView() == null || !window.getDecorView().dispatchKeyShortcutEvent(keyEvent)) ? false : true;
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (b(keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity
    public void openOptionsMenu() {
        a g = g();
        if (getWindow().hasFeature(0)) {
            if (g == null || !g.u()) {
                super.openOptionsMenu();
            }
        }
    }

    @Override // android.app.Activity
    public void closeOptionsMenu() {
        a g = g();
        if (getWindow().hasFeature(0)) {
            if (g == null || !g.v()) {
                super.closeOptionsMenu();
            }
        }
    }
}
