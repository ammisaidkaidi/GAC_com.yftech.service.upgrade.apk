package androidx.appcompat.app;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.ac;
import androidx.annotation.ai;
import androidx.annotation.ap;
import androidx.annotation.w;
import androidx.appcompat.a;
import androidx.appcompat.view.b;
import androidx.core.n.j;

/* loaded from: /home/user/work/dex/classes.dex */
public class i extends Dialog implements f {

    /* renamed from: a, reason: collision with root package name */
    private g f78a;
    private final j.a b;

    @Override // androidx.appcompat.app.f
    @ai
    public androidx.appcompat.view.b a(b.a aVar) {
        return null;
    }

    @Override // androidx.appcompat.app.f
    public void a(androidx.appcompat.view.b bVar) {
    }

    @Override // androidx.appcompat.app.f
    public void b(androidx.appcompat.view.b bVar) {
    }

    public i(Context context) {
        this(context, 0);
    }

    public i(Context context, int i) {
        super(context, a(context, i));
        this.b = new j.a() { // from class: androidx.appcompat.app.i.1
            @Override // androidx.core.n.j.a
            public boolean a(KeyEvent keyEvent) {
                return i.this.a(keyEvent);
            }
        };
        g c = c();
        c.a(a(context, i));
        c.a((Bundle) null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public i(Context context, boolean z, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z, onCancelListener);
        this.b = new j.a() { // from class: androidx.appcompat.app.i.1
            @Override // androidx.core.n.j.a
            public boolean a(KeyEvent keyEvent) {
                return i.this.a(keyEvent);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        c().i();
        super.onCreate(bundle);
        c().a(bundle);
    }

    public a b() {
        return c().a();
    }

    @Override // android.app.Dialog
    public void setContentView(@ac int i) {
        c().c(i);
    }

    @Override // android.app.Dialog
    public void setContentView(View view) {
        c().a(view);
    }

    @Override // android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        c().a(view, layoutParams);
    }

    @Override // android.app.Dialog
    @ai
    public <T extends View> T findViewById(@w int i) {
        return (T) c().b(i);
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        c().a(charSequence);
    }

    @Override // android.app.Dialog
    public void setTitle(int i) {
        super.setTitle(i);
        c().a(getContext().getString(i));
    }

    @Override // android.app.Dialog
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        c().b(view, layoutParams);
    }

    @Override // android.app.Dialog
    protected void onStop() {
        super.onStop();
        c().d();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        c().g();
    }

    public boolean e(int i) {
        return c().d(i);
    }

    @Override // android.app.Dialog
    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void invalidateOptionsMenu() {
        c().f();
    }

    public g c() {
        if (this.f78a == null) {
            this.f78a = g.a(this, this);
        }
        return this.f78a;
    }

    private static int a(Context context, int i) {
        if (i != 0) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(a.b.dialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    boolean a(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return androidx.core.n.j.a(this.b, getWindow().getDecorView(), this, keyEvent);
    }
}
