package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.Parcelable;
import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.at;
import androidx.appcompat.a;
import androidx.appcompat.view.menu.n;
import androidx.appcompat.widget.al;
import androidx.appcompat.widget.am;
import androidx.core.n.af;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
final class d extends l implements View.OnKeyListener, PopupWindow.OnDismissListener, n {

    /* renamed from: a, reason: collision with root package name */
    static final int f127a = 0;
    static final int b = 1;
    static final int c = 200;
    private static final int j = a.j.abc_cascading_menu_item_layout;
    private boolean B;
    private n.a C;
    private PopupWindow.OnDismissListener D;
    final Handler d;
    View g;
    ViewTreeObserver h;
    boolean i;
    private final Context k;
    private final int l;
    private final int m;
    private final int n;
    private final boolean o;
    private View u;
    private boolean w;
    private boolean x;
    private int y;
    private int z;
    private final List<g> p = new ArrayList();
    final List<a> e = new ArrayList();
    final ViewTreeObserver.OnGlobalLayoutListener f = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.view.menu.d.1
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!d.this.e() || d.this.e.size() <= 0 || d.this.e.get(0).f132a.j()) {
                return;
            }
            View view = d.this.g;
            if (view == null || !view.isShown()) {
                d.this.d();
                return;
            }
            Iterator<a> it = d.this.e.iterator();
            while (it.hasNext()) {
                it.next().f132a.b_();
            }
        }
    };
    private final View.OnAttachStateChangeListener q = new View.OnAttachStateChangeListener() { // from class: androidx.appcompat.view.menu.d.2
        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            if (d.this.h != null) {
                if (!d.this.h.isAlive()) {
                    d.this.h = view.getViewTreeObserver();
                }
                d.this.h.removeGlobalOnLayoutListener(d.this.f);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    };
    private final al r = new al() { // from class: androidx.appcompat.view.menu.d.3
        @Override // androidx.appcompat.widget.al
        public void a(@ah g gVar, @ah MenuItem menuItem) {
            d.this.d.removeCallbacksAndMessages(gVar);
        }

        @Override // androidx.appcompat.widget.al
        public void b(@ah final g gVar, @ah final MenuItem menuItem) {
            d.this.d.removeCallbacksAndMessages(null);
            int size = d.this.e.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    i = -1;
                    break;
                } else if (gVar == d.this.e.get(i).b) {
                    break;
                } else {
                    i++;
                }
            }
            if (i == -1) {
                return;
            }
            int i2 = i + 1;
            final a aVar = i2 < d.this.e.size() ? d.this.e.get(i2) : null;
            d.this.d.postAtTime(new Runnable() { // from class: androidx.appcompat.view.menu.d.3.1
                @Override // java.lang.Runnable
                public void run() {
                    if (aVar != null) {
                        d.this.i = true;
                        aVar.b.b(false);
                        d.this.i = false;
                    }
                    if (menuItem.isEnabled() && menuItem.hasSubMenu()) {
                        gVar.a(menuItem, 4);
                    }
                }
            }, gVar, SystemClock.uptimeMillis() + 200);
        }
    };
    private int s = 0;
    private int t = 0;
    private boolean A = false;
    private int v = k();

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface b {
    }

    @Override // androidx.appcompat.view.menu.n
    public void a(Parcelable parcelable) {
    }

    @Override // androidx.appcompat.view.menu.n
    public boolean b() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.n
    public Parcelable f() {
        return null;
    }

    @Override // androidx.appcompat.view.menu.l
    protected boolean h() {
        return false;
    }

    public d(@ah Context context, @ah View view, @androidx.annotation.f int i, @at int i2, boolean z) {
        this.k = context;
        this.u = view;
        this.m = i;
        this.n = i2;
        this.o = z;
        Resources resources = context.getResources();
        this.l = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(a.e.abc_config_prefDialogWidth));
        this.d = new Handler();
    }

    @Override // androidx.appcompat.view.menu.l
    public void b(boolean z) {
        this.A = z;
    }

    private am j() {
        am amVar = new am(this.k, null, this.m, this.n);
        amVar.a(this.r);
        amVar.a((AdapterView.OnItemClickListener) this);
        amVar.a((PopupWindow.OnDismissListener) this);
        amVar.b(this.u);
        amVar.g(this.t);
        amVar.a(true);
        amVar.l(2);
        return amVar;
    }

    @Override // androidx.appcompat.view.menu.q
    public void b_() {
        if (e()) {
            return;
        }
        Iterator<g> it = this.p.iterator();
        while (it.hasNext()) {
            c(it.next());
        }
        this.p.clear();
        this.g = this.u;
        if (this.g != null) {
            boolean z = this.h == null;
            this.h = this.g.getViewTreeObserver();
            if (z) {
                this.h.addOnGlobalLayoutListener(this.f);
            }
            this.g.addOnAttachStateChangeListener(this.q);
        }
    }

    @Override // androidx.appcompat.view.menu.q
    public void d() {
        int size = this.e.size();
        if (size > 0) {
            a[] aVarArr = (a[]) this.e.toArray(new a[size]);
            for (int i = size - 1; i >= 0; i--) {
                a aVar = aVarArr[i];
                if (aVar.f132a.e()) {
                    aVar.f132a.d();
                }
            }
        }
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i != 82) {
            return false;
        }
        d();
        return true;
    }

    private int k() {
        return af.p(this.u) == 1 ? 0 : 1;
    }

    private int d(int i) {
        ListView a2 = this.e.get(this.e.size() - 1).a();
        int[] iArr = new int[2];
        a2.getLocationOnScreen(iArr);
        Rect rect = new Rect();
        this.g.getWindowVisibleDisplayFrame(rect);
        return this.v == 1 ? (iArr[0] + a2.getWidth()) + i > rect.right ? 0 : 1 : iArr[0] - i < 0 ? 1 : 0;
    }

    @Override // androidx.appcompat.view.menu.l
    public void a(g gVar) {
        gVar.a(this, this.k);
        if (e()) {
            c(gVar);
        } else {
            this.p.add(gVar);
        }
    }

    private void c(@ah g gVar) {
        a aVar;
        View view;
        int i;
        int i2;
        int width;
        LayoutInflater from = LayoutInflater.from(this.k);
        f fVar = new f(gVar, from, this.o, j);
        if (!e() && this.A) {
            fVar.a(true);
        } else if (e()) {
            fVar.a(l.b(gVar));
        }
        int a2 = a(fVar, null, this.k, this.l);
        am j2 = j();
        j2.a((ListAdapter) fVar);
        j2.i(a2);
        j2.g(this.t);
        if (this.e.size() > 0) {
            aVar = this.e.get(this.e.size() - 1);
            view = a(aVar, gVar);
        } else {
            aVar = null;
            view = null;
        }
        if (view != null) {
            j2.e(false);
            j2.a((Object) null);
            int d = d(a2);
            boolean z = d == 1;
            this.v = d;
            if (Build.VERSION.SDK_INT >= 26) {
                j2.b(view);
                i2 = 0;
                i = 0;
            } else {
                int[] iArr = new int[2];
                this.u.getLocationOnScreen(iArr);
                int[] iArr2 = new int[2];
                view.getLocationOnScreen(iArr2);
                if ((this.t & 7) == 5) {
                    iArr[0] = iArr[0] + this.u.getWidth();
                    iArr2[0] = iArr2[0] + view.getWidth();
                }
                i = iArr2[0] - iArr[0];
                i2 = iArr2[1] - iArr[1];
            }
            if ((this.t & 5) == 5) {
                width = z ? i + a2 : i - view.getWidth();
            } else {
                width = z ? i + view.getWidth() : i - a2;
            }
            j2.b(width);
            j2.d(true);
            j2.a(i2);
        } else {
            if (this.w) {
                j2.b(this.y);
            }
            if (this.x) {
                j2.a(this.z);
            }
            j2.a(i());
        }
        this.e.add(new a(j2, gVar, this.v));
        j2.b_();
        ListView c_ = j2.c_();
        c_.setOnKeyListener(this);
        if (aVar == null && this.B && gVar.o() != null) {
            FrameLayout frameLayout = (FrameLayout) from.inflate(a.j.abc_popup_menu_header_item_layout, (ViewGroup) c_, false);
            TextView textView = (TextView) frameLayout.findViewById(R.id.title);
            frameLayout.setEnabled(false);
            textView.setText(gVar.o());
            c_.addHeaderView(frameLayout, null, false);
            j2.b_();
        }
    }

    private MenuItem a(@ah g gVar, @ah g gVar2) {
        int size = gVar.size();
        for (int i = 0; i < size; i++) {
            MenuItem item = gVar.getItem(i);
            if (item.hasSubMenu() && gVar2 == item.getSubMenu()) {
                return item;
            }
        }
        return null;
    }

    @ai
    private View a(@ah a aVar, @ah g gVar) {
        f fVar;
        int i;
        int firstVisiblePosition;
        MenuItem a2 = a(aVar.b, gVar);
        if (a2 == null) {
            return null;
        }
        ListView a3 = aVar.a();
        ListAdapter adapter = a3.getAdapter();
        int i2 = 0;
        if (adapter instanceof HeaderViewListAdapter) {
            HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
            i = headerViewListAdapter.getHeadersCount();
            fVar = (f) headerViewListAdapter.getWrappedAdapter();
        } else {
            fVar = (f) adapter;
            i = 0;
        }
        int count = fVar.getCount();
        while (true) {
            if (i2 >= count) {
                i2 = -1;
                break;
            }
            if (a2 == fVar.getItem(i2)) {
                break;
            }
            i2++;
        }
        if (i2 != -1 && (firstVisiblePosition = (i2 + i) - a3.getFirstVisiblePosition()) >= 0 && firstVisiblePosition < a3.getChildCount()) {
            return a3.getChildAt(firstVisiblePosition);
        }
        return null;
    }

    @Override // androidx.appcompat.view.menu.q
    public boolean e() {
        return this.e.size() > 0 && this.e.get(0).f132a.e();
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        a aVar;
        int size = this.e.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                aVar = null;
                break;
            }
            aVar = this.e.get(i);
            if (!aVar.f132a.e()) {
                break;
            } else {
                i++;
            }
        }
        if (aVar != null) {
            aVar.b.b(false);
        }
    }

    @Override // androidx.appcompat.view.menu.n
    public void a(boolean z) {
        Iterator<a> it = this.e.iterator();
        while (it.hasNext()) {
            a(it.next().a().getAdapter()).notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.n
    public void a(n.a aVar) {
        this.C = aVar;
    }

    @Override // androidx.appcompat.view.menu.n
    public boolean a(s sVar) {
        for (a aVar : this.e) {
            if (sVar == aVar.b) {
                aVar.a().requestFocus();
                return true;
            }
        }
        if (!sVar.hasVisibleItems()) {
            return false;
        }
        a((g) sVar);
        if (this.C != null) {
            this.C.a(sVar);
        }
        return true;
    }

    private int d(@ah g gVar) {
        int size = this.e.size();
        for (int i = 0; i < size; i++) {
            if (gVar == this.e.get(i).b) {
                return i;
            }
        }
        return -1;
    }

    @Override // androidx.appcompat.view.menu.n
    public void a(g gVar, boolean z) {
        int d = d(gVar);
        if (d < 0) {
            return;
        }
        int i = d + 1;
        if (i < this.e.size()) {
            this.e.get(i).b.b(false);
        }
        a remove = this.e.remove(d);
        remove.b.b(this);
        if (this.i) {
            remove.f132a.b((Object) null);
            remove.f132a.f(0);
        }
        remove.f132a.d();
        int size = this.e.size();
        if (size > 0) {
            this.v = this.e.get(size - 1).c;
        } else {
            this.v = k();
        }
        if (size != 0) {
            if (z) {
                this.e.get(0).b.b(false);
                return;
            }
            return;
        }
        d();
        if (this.C != null) {
            this.C.a(gVar, true);
        }
        if (this.h != null) {
            if (this.h.isAlive()) {
                this.h.removeGlobalOnLayoutListener(this.f);
            }
            this.h = null;
        }
        this.g.removeOnAttachStateChangeListener(this.q);
        this.D.onDismiss();
    }

    @Override // androidx.appcompat.view.menu.l
    public void a(int i) {
        if (this.s != i) {
            this.s = i;
            this.t = androidx.core.n.h.a(i, af.p(this.u));
        }
    }

    @Override // androidx.appcompat.view.menu.l
    public void a(@ah View view) {
        if (this.u != view) {
            this.u = view;
            this.t = androidx.core.n.h.a(this.s, af.p(this.u));
        }
    }

    @Override // androidx.appcompat.view.menu.l
    public void a(PopupWindow.OnDismissListener onDismissListener) {
        this.D = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.q
    public ListView c_() {
        if (this.e.isEmpty()) {
            return null;
        }
        return this.e.get(this.e.size() - 1).a();
    }

    @Override // androidx.appcompat.view.menu.l
    public void b(int i) {
        this.w = true;
        this.y = i;
    }

    @Override // androidx.appcompat.view.menu.l
    public void c(int i) {
        this.x = true;
        this.z = i;
    }

    @Override // androidx.appcompat.view.menu.l
    public void c(boolean z) {
        this.B = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public final am f132a;
        public final g b;
        public final int c;

        public a(@ah am amVar, @ah g gVar, int i) {
            this.f132a = amVar;
            this.b = gVar;
            this.c = i;
        }

        public ListView a() {
            return this.f132a.c_();
        }
    }
}
