package androidx.core.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import androidx.core.n.j;
import androidx.lifecycle.g;

@ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public class j extends Activity implements j.a, androidx.lifecycle.j {

    /* renamed from: a, reason: collision with root package name */
    private androidx.c.i<Class<? extends a>, a> f346a = new androidx.c.i<>();
    private androidx.lifecycle.k b = new androidx.lifecycle.k(this);

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    @Deprecated
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    @Deprecated
    public void a(a aVar) {
        this.f346a.put(aVar.getClass(), aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    @SuppressLint({"RestrictedApi"})
    public void onCreate(@ai Bundle bundle) {
        super.onCreate(bundle);
        androidx.lifecycle.t.a(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    @androidx.annotation.i
    public void onSaveInstanceState(@ah Bundle bundle) {
        this.b.a(g.b.CREATED);
        super.onSaveInstanceState(bundle);
    }

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    @Deprecated
    public <T extends a> T a(Class<T> cls) {
        return (T) this.f346a.get(cls);
    }

    @ah
    public androidx.lifecycle.g c() {
        return this.b;
    }

    @Override // androidx.core.n.j.a
    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public boolean a(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (decorView == null || !androidx.core.n.j.a(decorView, keyEvent)) {
            return super.dispatchKeyShortcutEvent(keyEvent);
        }
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (decorView == null || !androidx.core.n.j.a(decorView, keyEvent)) {
            return androidx.core.n.j.a(this, decorView, this, keyEvent);
        }
        return true;
    }
}
