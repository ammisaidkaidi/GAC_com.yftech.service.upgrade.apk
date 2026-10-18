package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.ListView;
import android.widget.PopupWindow;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import androidx.annotation.at;
import androidx.appcompat.a;
import androidx.appcompat.view.menu.n;
import androidx.core.n.af;

@ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public class m implements i {

    /* renamed from: a, reason: collision with root package name */
    private static final int f145a = 48;
    private final Context b;
    private final g c;
    private final boolean d;
    private final int e;
    private final int f;
    private View g;
    private int h;
    private boolean i;
    private n.a j;
    private l k;
    private PopupWindow.OnDismissListener l;
    private final PopupWindow.OnDismissListener m;

    public m(@ah Context context, @ah g gVar) {
        this(context, gVar, null, false, a.b.popupMenuStyle, 0);
    }

    public m(@ah Context context, @ah g gVar, @ah View view) {
        this(context, gVar, view, false, a.b.popupMenuStyle, 0);
    }

    public m(@ah Context context, @ah g gVar, @ah View view, boolean z, @androidx.annotation.f int i) {
        this(context, gVar, view, z, i, 0);
    }

    public m(@ah Context context, @ah g gVar, @ah View view, boolean z, @androidx.annotation.f int i, @at int i2) {
        this.h = androidx.core.n.h.b;
        this.m = new PopupWindow.OnDismissListener() { // from class: androidx.appcompat.view.menu.m.1
            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                m.this.f();
            }
        };
        this.b = context;
        this.c = gVar;
        this.g = view;
        this.d = z;
        this.e = i;
        this.f = i2;
    }

    public void a(@ai PopupWindow.OnDismissListener onDismissListener) {
        this.l = onDismissListener;
    }

    public void a(@ah View view) {
        this.g = view;
    }

    public void a(boolean z) {
        this.i = z;
        if (this.k != null) {
            this.k.b(z);
        }
    }

    public void a(int i) {
        this.h = i;
    }

    public int b() {
        return this.h;
    }

    public void c() {
        if (!e()) {
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
    }

    public void a(int i, int i2) {
        if (!b(i, i2)) {
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
    }

    @ah
    public l d() {
        if (this.k == null) {
            this.k = i();
        }
        return this.k;
    }

    public boolean e() {
        if (g()) {
            return true;
        }
        if (this.g == null) {
            return false;
        }
        a(0, 0, false, false);
        return true;
    }

    public boolean b(int i, int i2) {
        if (g()) {
            return true;
        }
        if (this.g == null) {
            return false;
        }
        a(i, i2, true, true);
        return true;
    }

    @ah
    private l i() {
        l rVar;
        Display defaultDisplay = ((WindowManager) this.b.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        if (Build.VERSION.SDK_INT >= 17) {
            defaultDisplay.getRealSize(point);
        } else {
            defaultDisplay.getSize(point);
        }
        if (Math.min(point.x, point.y) >= this.b.getResources().getDimensionPixelSize(a.e.abc_cascading_menus_min_smallest_width)) {
            rVar = new d(this.b, this.g, this.e, this.f, this.d);
        } else {
            rVar = new r(this.b, this.c, this.g, this.e, this.f, this.d);
        }
        rVar.a(this.c);
        rVar.a(this.m);
        rVar.a(this.g);
        rVar.a(this.j);
        rVar.b(this.i);
        rVar.a(this.h);
        return rVar;
    }

    private void a(int i, int i2, boolean z, boolean z2) {
        l d = d();
        d.c(z2);
        if (z) {
            if ((androidx.core.n.h.a(this.h, af.p(this.g)) & 7) == 5) {
                i -= this.g.getWidth();
            }
            d.b(i);
            d.c(i2);
            int i3 = (int) ((this.b.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            d.a(new Rect(i - i3, i2 - i3, i + i3, i2 + i3));
        }
        d.b_();
    }

    @Override // androidx.appcompat.view.menu.i
    public void a() {
        if (g()) {
            this.k.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void f() {
        this.k = null;
        if (this.l != null) {
            this.l.onDismiss();
        }
    }

    public boolean g() {
        return this.k != null && this.k.e();
    }

    @Override // androidx.appcompat.view.menu.i
    public void a(@ai n.a aVar) {
        this.j = aVar;
        if (this.k != null) {
            this.k.a(aVar);
        }
    }

    public ListView h() {
        return d().c_();
    }
}
