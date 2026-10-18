package androidx.appcompat.view.menu;

import android.content.DialogInterface;
import android.os.IBinder;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.ah;
import androidx.appcompat.a;
import androidx.appcompat.app.d;
import androidx.appcompat.view.menu.n;
import androidx.core.n.aa;

/* loaded from: /home/user/work/dex/classes.dex */
class h implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener, DialogInterface.OnKeyListener, n.a {

    /* renamed from: a, reason: collision with root package name */
    e f137a;
    private g b;
    private androidx.appcompat.app.d c;
    private n.a d;

    public h(g gVar) {
        this.b = gVar;
    }

    public void a(IBinder iBinder) {
        g gVar = this.b;
        d.a aVar = new d.a(gVar.g());
        this.f137a = new e(aVar.a(), a.j.abc_list_menu_item_layout);
        this.f137a.a(this);
        this.b.a(this.f137a);
        aVar.a(this.f137a.a(), this);
        View q = gVar.q();
        if (q != null) {
            aVar.a(q);
        } else {
            aVar.a(gVar.p()).a(gVar.o());
        }
        aVar.a((DialogInterface.OnKeyListener) this);
        this.c = aVar.b();
        this.c.setOnDismissListener(this);
        WindowManager.LayoutParams attributes = this.c.getWindow().getAttributes();
        attributes.type = aa.e;
        if (iBinder != null) {
            attributes.token = iBinder;
        }
        attributes.flags |= 131072;
        this.c.show();
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        Window window;
        View decorView;
        KeyEvent.DispatcherState keyDispatcherState;
        View decorView2;
        KeyEvent.DispatcherState keyDispatcherState2;
        if (i == 82 || i == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                Window window2 = this.c.getWindow();
                if (window2 != null && (decorView2 = window2.getDecorView()) != null && (keyDispatcherState2 = decorView2.getKeyDispatcherState()) != null) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.c.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                this.b.b(true);
                dialogInterface.dismiss();
                return true;
            }
        }
        return this.b.performShortcut(i, keyEvent, 0);
    }

    public void a(n.a aVar) {
        this.d = aVar;
    }

    public void a() {
        if (this.c != null) {
            this.c.dismiss();
        }
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.f137a.a(this.b, true);
    }

    @Override // androidx.appcompat.view.menu.n.a
    public void a(@ah g gVar, boolean z) {
        if (z || gVar == this.b) {
            a();
        }
        if (this.d != null) {
            this.d.a(gVar, z);
        }
    }

    @Override // androidx.appcompat.view.menu.n.a
    public boolean a(@ah g gVar) {
        if (this.d != null) {
            return this.d.a(gVar);
        }
        return false;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.b.a((j) this.f137a.a().getItem(i), 0);
    }
}
