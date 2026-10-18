package androidx.fragment.app;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import androidx.annotation.at;

/* loaded from: /home/user/work/dex/classes.dex */
public class c extends d implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    public static final int f750a = 0;
    private static final String an = "android:savedDialogState";
    private static final String ao = "android:style";
    private static final String ap = "android:theme";
    private static final String aq = "android:cancelable";
    private static final String ar = "android:showsDialog";
    private static final String as = "android:backStackId";
    public static final int b = 1;
    public static final int c = 2;
    public static final int d = 3;
    private Handler at;
    private Runnable au = new Runnable() { // from class: androidx.fragment.app.c.1
        @Override // java.lang.Runnable
        public void run() {
            if (c.this.j != null) {
                c.this.onDismiss(c.this.j);
            }
        }
    };
    int e = 0;
    int f = 0;
    boolean g = true;
    boolean h = true;
    int i = -1;

    @ai
    Dialog j;
    boolean k;
    boolean l;
    boolean m;

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(@ah DialogInterface dialogInterface) {
    }

    public void a(int i, @at int i2) {
        this.e = i;
        if (this.e == 2 || this.e == 3) {
            this.f = R.style.Theme.Panel;
        }
        if (i2 != 0) {
            this.f = i2;
        }
    }

    public void a(@ah j jVar, @ai String str) {
        this.l = false;
        this.m = true;
        s a2 = jVar.a();
        a2.a(this, str);
        a2.g();
    }

    public int a(@ah s sVar, @ai String str) {
        this.l = false;
        this.m = true;
        sVar.a(this, str);
        this.k = false;
        this.i = sVar.g();
        return this.i;
    }

    public void b(@ah j jVar, @ai String str) {
        this.l = false;
        this.m = true;
        s a2 = jVar.a();
        a2.a(this, str);
        a2.i();
    }

    public void a() {
        a(false, false);
    }

    public void b() {
        a(true, false);
    }

    void a(boolean z, boolean z2) {
        if (this.l) {
            return;
        }
        this.l = true;
        this.m = false;
        if (this.j != null) {
            this.j.setOnDismissListener(null);
            this.j.dismiss();
            if (!z2) {
                if (Looper.myLooper() == this.at.getLooper()) {
                    onDismiss(this.j);
                } else {
                    this.at.post(this.au);
                }
            }
        }
        this.k = true;
        if (this.i >= 0) {
            G().a(this.i, 1);
            this.i = -1;
            return;
        }
        s a2 = G().a();
        a2.a(this);
        if (z) {
            a2.h();
        } else {
            a2.g();
        }
    }

    @ai
    public Dialog e() {
        return this.j;
    }

    @ah
    public final Dialog g() {
        Dialog e = e();
        if (e != null) {
            return e;
        }
        throw new IllegalStateException("DialogFragment " + this + " does not have a Dialog.");
    }

    @at
    public int h() {
        return this.f;
    }

    public void a(boolean z) {
        this.g = z;
        if (this.j != null) {
            this.j.setCancelable(z);
        }
    }

    public boolean i() {
        return this.g;
    }

    public void b(boolean z) {
        this.h = z;
    }

    public boolean j() {
        return this.h;
    }

    @Override // androidx.fragment.app.d
    public void a(@ah Context context) {
        super.a(context);
        if (this.m) {
            return;
        }
        this.l = false;
    }

    @Override // androidx.fragment.app.d
    public void k() {
        super.k();
        if (this.m || this.l) {
            return;
        }
        this.l = true;
    }

    @Override // androidx.fragment.app.d
    public void b(@ai Bundle bundle) {
        super.b(bundle);
        this.at = new Handler();
        this.h = this.O == 0;
        if (bundle != null) {
            this.e = bundle.getInt(ao, 0);
            this.f = bundle.getInt(ap, 0);
            this.g = bundle.getBoolean(aq, true);
            this.h = bundle.getBoolean(ar, this.h);
            this.i = bundle.getInt(as, -1);
        }
    }

    @Override // androidx.fragment.app.d
    @ah
    public LayoutInflater c(@ai Bundle bundle) {
        if (!this.h) {
            return super.c(bundle);
        }
        this.j = a(bundle);
        if (this.j != null) {
            a(this.j, this.e);
            return (LayoutInflater) this.j.getContext().getSystemService("layout_inflater");
        }
        return (LayoutInflater) this.K.l().getSystemService("layout_inflater");
    }

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void a(@ah Dialog dialog, int i) {
        switch (i) {
            case 1:
            case 2:
                break;
            case 3:
                dialog.getWindow().addFlags(24);
                break;
            default:
                return;
        }
        dialog.requestWindowFeature(1);
    }

    @ah
    public Dialog a(@ai Bundle bundle) {
        return new Dialog(z(), h());
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(@ah DialogInterface dialogInterface) {
        if (this.k) {
            return;
        }
        a(true, true);
    }

    @Override // androidx.fragment.app.d
    public void d(@ai Bundle bundle) {
        Bundle bundle2;
        super.d(bundle);
        if (this.h) {
            View X = X();
            if (X != null) {
                if (X.getParent() != null) {
                    throw new IllegalStateException("DialogFragment can not be attached to a container view");
                }
                this.j.setContentView(X);
            }
            e A = A();
            if (A != null) {
                this.j.setOwnerActivity(A);
            }
            this.j.setCancelable(this.g);
            this.j.setOnCancelListener(this);
            this.j.setOnDismissListener(this);
            if (bundle == null || (bundle2 = bundle.getBundle(an)) == null) {
                return;
            }
            this.j.onRestoreInstanceState(bundle2);
        }
    }

    @Override // androidx.fragment.app.d
    public void l() {
        super.l();
        if (this.j != null) {
            this.k = false;
            this.j.show();
        }
    }

    @Override // androidx.fragment.app.d
    public void e(@ah Bundle bundle) {
        Bundle onSaveInstanceState;
        super.e(bundle);
        if (this.j != null && (onSaveInstanceState = this.j.onSaveInstanceState()) != null) {
            bundle.putBundle(an, onSaveInstanceState);
        }
        if (this.e != 0) {
            bundle.putInt(ao, this.e);
        }
        if (this.f != 0) {
            bundle.putInt(ap, this.f);
        }
        if (!this.g) {
            bundle.putBoolean(aq, this.g);
        }
        if (!this.h) {
            bundle.putBoolean(ar, this.h);
        }
        if (this.i != -1) {
            bundle.putInt(as, this.i);
        }
    }

    @Override // androidx.fragment.app.d
    public void m() {
        super.m();
        if (this.j != null) {
            this.j.hide();
        }
    }

    @Override // androidx.fragment.app.d
    public void n() {
        super.n();
        if (this.j != null) {
            this.k = true;
            this.j.setOnDismissListener(null);
            this.j.dismiss();
            if (!this.l) {
                onDismiss(this.j);
            }
            this.j = null;
        }
    }
}
