package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.a;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.n;
import androidx.appcompat.view.menu.o;
import androidx.appcompat.widget.ActionMenuView;
import androidx.core.n.b;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public class c extends androidx.appcompat.view.menu.b implements b.a {
    private static final String m = "ActionMenuPresenter";
    private b A;
    d g;
    e h;
    a i;
    RunnableC0018c j;
    final f k;
    int l;
    private Drawable n;
    private boolean o;
    private boolean p;
    private boolean q;
    private int r;
    private int s;
    private int t;
    private boolean u;
    private boolean v;
    private boolean w;
    private boolean x;
    private int y;
    private final SparseBooleanArray z;

    public c(Context context) {
        super(context, a.j.abc_action_menu_layout, a.j.abc_action_menu_item_layout);
        this.z = new SparseBooleanArray();
        this.k = new f();
    }

    @Override // androidx.appcompat.view.menu.b, androidx.appcompat.view.menu.n
    public void a(@androidx.annotation.ah Context context, @androidx.annotation.ai androidx.appcompat.view.menu.g gVar) {
        super.a(context, gVar);
        Resources resources = context.getResources();
        androidx.appcompat.view.a a2 = androidx.appcompat.view.a.a(context);
        if (!this.q) {
            this.p = a2.b();
        }
        if (!this.w) {
            this.r = a2.c();
        }
        if (!this.u) {
            this.t = a2.a();
        }
        int i = this.r;
        if (this.p) {
            if (this.g == null) {
                this.g = new d(this.f125a);
                if (this.o) {
                    this.g.setImageDrawable(this.n);
                    this.n = null;
                    this.o = false;
                }
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.g.measure(makeMeasureSpec, makeMeasureSpec);
            }
            i -= this.g.getMeasuredWidth();
        } else {
            this.g = null;
        }
        this.s = i;
        this.y = (int) (resources.getDisplayMetrics().density * 56.0f);
    }

    public void a(Configuration configuration) {
        if (!this.u) {
            this.t = androidx.appcompat.view.a.a(this.b).a();
        }
        if (this.c != null) {
            this.c.c(true);
        }
    }

    public void a(int i, boolean z) {
        this.r = i;
        this.v = z;
        this.w = true;
    }

    public void b(boolean z) {
        this.p = z;
        this.q = true;
    }

    public void b(int i) {
        this.t = i;
        this.u = true;
    }

    public void c(boolean z) {
        this.x = z;
    }

    public void a(Drawable drawable) {
        if (this.g != null) {
            this.g.setImageDrawable(drawable);
        } else {
            this.o = true;
            this.n = drawable;
        }
    }

    public Drawable d() {
        if (this.g != null) {
            return this.g.getDrawable();
        }
        if (this.o) {
            return this.n;
        }
        return null;
    }

    @Override // androidx.appcompat.view.menu.b, androidx.appcompat.view.menu.n
    public androidx.appcompat.view.menu.o a(ViewGroup viewGroup) {
        androidx.appcompat.view.menu.o oVar = this.f;
        androidx.appcompat.view.menu.o a2 = super.a(viewGroup);
        if (oVar != a2) {
            ((ActionMenuView) a2).setPresenter(this);
        }
        return a2;
    }

    @Override // androidx.appcompat.view.menu.b
    public View a(androidx.appcompat.view.menu.j jVar, View view, ViewGroup viewGroup) {
        View actionView = jVar.getActionView();
        if (actionView == null || jVar.n()) {
            actionView = super.a(jVar, view, viewGroup);
        }
        actionView.setVisibility(jVar.isActionViewExpanded() ? 8 : 0);
        ActionMenuView actionMenuView = (ActionMenuView) viewGroup;
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        if (!actionMenuView.checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(actionMenuView.generateLayoutParams(layoutParams));
        }
        return actionView;
    }

    @Override // androidx.appcompat.view.menu.b
    public void a(androidx.appcompat.view.menu.j jVar, o.a aVar) {
        aVar.a(jVar, 0);
        ActionMenuItemView actionMenuItemView = (ActionMenuItemView) aVar;
        actionMenuItemView.setItemInvoker((ActionMenuView) this.f);
        if (this.A == null) {
            this.A = new b();
        }
        actionMenuItemView.setPopupCallback(this.A);
    }

    @Override // androidx.appcompat.view.menu.b
    public boolean a(int i, androidx.appcompat.view.menu.j jVar) {
        return jVar.k();
    }

    @Override // androidx.appcompat.view.menu.b, androidx.appcompat.view.menu.n
    public void a(boolean z) {
        super.a(z);
        ((View) this.f).requestLayout();
        boolean z2 = false;
        if (this.c != null) {
            ArrayList<androidx.appcompat.view.menu.j> m2 = this.c.m();
            int size = m2.size();
            for (int i = 0; i < size; i++) {
                androidx.core.n.b b2 = m2.get(i).b();
                if (b2 != null) {
                    b2.a(this);
                }
            }
        }
        ArrayList<androidx.appcompat.view.menu.j> n = this.c != null ? this.c.n() : null;
        if (this.p && n != null) {
            int size2 = n.size();
            if (size2 == 1) {
                z2 = !n.get(0).isActionViewExpanded();
            } else if (size2 > 0) {
                z2 = true;
            }
        }
        if (z2) {
            if (this.g == null) {
                this.g = new d(this.f125a);
            }
            ViewGroup viewGroup = (ViewGroup) this.g.getParent();
            if (viewGroup != this.f) {
                if (viewGroup != null) {
                    viewGroup.removeView(this.g);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.f;
                actionMenuView.addView(this.g, actionMenuView.c());
            }
        } else if (this.g != null && this.g.getParent() == this.f) {
            ((ViewGroup) this.f).removeView(this.g);
        }
        ((ActionMenuView) this.f).setOverflowReserved(this.p);
    }

    @Override // androidx.appcompat.view.menu.b
    public boolean a(ViewGroup viewGroup, int i) {
        if (viewGroup.getChildAt(i) == this.g) {
            return false;
        }
        return super.a(viewGroup, i);
    }

    @Override // androidx.appcompat.view.menu.b, androidx.appcompat.view.menu.n
    public boolean a(androidx.appcompat.view.menu.s sVar) {
        boolean z = false;
        if (!sVar.hasVisibleItems()) {
            return false;
        }
        androidx.appcompat.view.menu.s sVar2 = sVar;
        while (sVar2.u() != this.c) {
            sVar2 = (androidx.appcompat.view.menu.s) sVar2.u();
        }
        View a2 = a(sVar2.getItem());
        if (a2 == null) {
            return false;
        }
        this.l = sVar.getItem().getItemId();
        int size = sVar.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                break;
            }
            MenuItem item = sVar.getItem(i);
            if (item.isVisible() && item.getIcon() != null) {
                z = true;
                break;
            }
            i++;
        }
        this.i = new a(this.b, sVar, a2);
        this.i.a(z);
        this.i.c();
        super.a(sVar);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private View a(MenuItem menuItem) {
        ViewGroup viewGroup = (ViewGroup) this.f;
        if (viewGroup == null) {
            return null;
        }
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if ((childAt instanceof o.a) && ((o.a) childAt).getItemData() == menuItem) {
                return childAt;
            }
        }
        return null;
    }

    public boolean e() {
        if (!this.p || j() || this.c == null || this.f == null || this.j != null || this.c.n().isEmpty()) {
            return false;
        }
        this.j = new RunnableC0018c(new e(this.b, this.c, this.g, true));
        ((View) this.f).post(this.j);
        return true;
    }

    public boolean g() {
        if (this.j != null && this.f != null) {
            ((View) this.f).removeCallbacks(this.j);
            this.j = null;
            return true;
        }
        e eVar = this.h;
        if (eVar == null) {
            return false;
        }
        eVar.a();
        return true;
    }

    public boolean h() {
        return i() | g();
    }

    public boolean i() {
        if (this.i == null) {
            return false;
        }
        this.i.a();
        return true;
    }

    public boolean j() {
        return this.h != null && this.h.g();
    }

    public boolean k() {
        return this.j != null || j();
    }

    public boolean l() {
        return this.p;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0102  */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [int] */
    /* JADX WARN: Type inference failed for: r3v15 */
    @Override // androidx.appcompat.view.menu.b, androidx.appcompat.view.menu.n
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean b() {
        ArrayList<androidx.appcompat.view.menu.j> arrayList;
        int i;
        int i2;
        int i3;
        boolean z;
        int i4;
        boolean z2;
        boolean z3;
        c cVar = this;
        View view = null;
        ?? r3 = 0;
        if (cVar.c != null) {
            arrayList = cVar.c.k();
            i = arrayList.size();
        } else {
            arrayList = null;
            i = 0;
        }
        int i5 = cVar.t;
        int i6 = cVar.s;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) cVar.f;
        int i7 = 0;
        boolean z4 = false;
        int i8 = 0;
        int i9 = i5;
        for (int i10 = 0; i10 < i; i10++) {
            androidx.appcompat.view.menu.j jVar = arrayList.get(i10);
            if (jVar.requiresActionButton()) {
                i7++;
            } else if (jVar.l()) {
                i8++;
            } else {
                z4 = true;
            }
            if (cVar.x && jVar.isActionViewExpanded()) {
                i9 = 0;
            }
        }
        if (cVar.p && (z4 || i8 + i7 > i9)) {
            i9--;
        }
        int i11 = i9 - i7;
        SparseBooleanArray sparseBooleanArray = cVar.z;
        sparseBooleanArray.clear();
        if (cVar.v) {
            i2 = i6 / cVar.y;
            i3 = ((i6 % cVar.y) / i2) + cVar.y;
        } else {
            i2 = 0;
            i3 = 0;
        }
        int i12 = 0;
        int i13 = i6;
        int i14 = 0;
        while (i14 < i) {
            androidx.appcompat.view.menu.j jVar2 = arrayList.get(i14);
            if (jVar2.requiresActionButton()) {
                View a2 = cVar.a(jVar2, view, viewGroup);
                if (cVar.v) {
                    i2 -= ActionMenuView.a(a2, i3, i2, makeMeasureSpec, (int) r3);
                } else {
                    a2.measure(makeMeasureSpec, makeMeasureSpec);
                }
                int measuredWidth = a2.getMeasuredWidth();
                i13 -= measuredWidth;
                if (i12 != 0) {
                    measuredWidth = i12;
                }
                int groupId = jVar2.getGroupId();
                if (groupId != 0) {
                    z3 = true;
                    sparseBooleanArray.put(groupId, true);
                } else {
                    z3 = true;
                }
                jVar2.d(z3);
                i12 = measuredWidth;
                z = r3;
                i4 = i;
            } else if (jVar2.l()) {
                int groupId2 = jVar2.getGroupId();
                boolean z5 = sparseBooleanArray.get(groupId2);
                boolean z6 = (i11 > 0 || z5) && i13 > 0 && (!cVar.v || i2 > 0);
                if (z6) {
                    boolean z7 = z6;
                    i4 = i;
                    View a3 = cVar.a(jVar2, null, viewGroup);
                    if (cVar.v) {
                        int a4 = ActionMenuView.a(a3, i3, i2, makeMeasureSpec, 0);
                        i2 -= a4;
                        if (a4 == 0) {
                            z2 = false;
                            int measuredWidth2 = a3.getMeasuredWidth();
                            i13 -= measuredWidth2;
                            if (i12 == 0) {
                                i12 = measuredWidth2;
                            }
                            z6 = cVar.v ? z2 & (i13 + i12 > 0) : z2 & (i13 >= 0);
                        }
                    } else {
                        a3.measure(makeMeasureSpec, makeMeasureSpec);
                    }
                    z2 = z7;
                    int measuredWidth22 = a3.getMeasuredWidth();
                    i13 -= measuredWidth22;
                    if (i12 == 0) {
                    }
                    if (cVar.v) {
                    }
                } else {
                    i4 = i;
                }
                if (z6 && groupId2 != 0) {
                    sparseBooleanArray.put(groupId2, true);
                } else if (z5) {
                    sparseBooleanArray.put(groupId2, false);
                    for (int i15 = 0; i15 < i14; i15++) {
                        androidx.appcompat.view.menu.j jVar3 = arrayList.get(i15);
                        if (jVar3.getGroupId() == groupId2) {
                            if (jVar3.k()) {
                                i11++;
                            }
                            jVar3.d(false);
                        }
                    }
                }
                if (z6) {
                    i11--;
                }
                jVar2.d(z6);
                z = false;
            } else {
                z = r3;
                i4 = i;
                jVar2.d(z);
            }
            i14++;
            r3 = z;
            i = i4;
            cVar = this;
            view = null;
        }
        return true;
    }

    @Override // androidx.appcompat.view.menu.b, androidx.appcompat.view.menu.n
    public void a(androidx.appcompat.view.menu.g gVar, boolean z) {
        h();
        super.a(gVar, z);
    }

    @Override // androidx.appcompat.view.menu.n
    public Parcelable f() {
        g gVar = new g();
        gVar.f261a = this.l;
        return gVar;
    }

    @Override // androidx.appcompat.view.menu.n
    public void a(Parcelable parcelable) {
        MenuItem findItem;
        if (parcelable instanceof g) {
            g gVar = (g) parcelable;
            if (gVar.f261a <= 0 || (findItem = this.c.findItem(gVar.f261a)) == null) {
                return;
            }
            a((androidx.appcompat.view.menu.s) findItem.getSubMenu());
        }
    }

    @Override // androidx.core.n.b.a
    public void d(boolean z) {
        if (z) {
            super.a((androidx.appcompat.view.menu.s) null);
        } else if (this.c != null) {
            this.c.b(false);
        }
    }

    public void a(ActionMenuView actionMenuView) {
        this.f = actionMenuView;
        actionMenuView.a(this.c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"BanParcelableUsage"})
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class g implements Parcelable {
        public static final Parcelable.Creator<g> CREATOR = new Parcelable.Creator<g>() { // from class: androidx.appcompat.widget.c.g.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public g createFromParcel(Parcel parcel) {
                return new g(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public g[] newArray(int i) {
                return new g[i];
            }
        };

        /* renamed from: a, reason: collision with root package name */
        public int f261a;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        g() {
        }

        g(Parcel parcel) {
            this.f261a = parcel.readInt();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f261a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class d extends p implements ActionMenuView.a {
        @Override // androidx.appcompat.widget.ActionMenuView.a
        public boolean d() {
            return false;
        }

        @Override // androidx.appcompat.widget.ActionMenuView.a
        public boolean e() {
            return false;
        }

        public d(Context context) {
            super(context, null, a.b.actionOverflowButtonStyle);
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            bc.a(this, getContentDescription());
            setOnTouchListener(new ai(this) { // from class: androidx.appcompat.widget.c.d.1
                @Override // androidx.appcompat.widget.ai
                public androidx.appcompat.view.menu.q a() {
                    if (c.this.h == null) {
                        return null;
                    }
                    return c.this.h.d();
                }

                @Override // androidx.appcompat.widget.ai
                public boolean b() {
                    c.this.e();
                    return true;
                }

                @Override // androidx.appcompat.widget.ai
                public boolean c() {
                    if (c.this.j != null) {
                        return false;
                    }
                    c.this.g();
                    return true;
                }
            });
        }

        @Override // android.view.View
        public boolean performClick() {
            if (super.performClick()) {
                return true;
            }
            playSoundEffect(0);
            c.this.e();
            return true;
        }

        @Override // android.widget.ImageView
        protected boolean setFrame(int i, int i2, int i3, int i4) {
            boolean frame = super.setFrame(i, i2, i3, i4);
            Drawable drawable = getDrawable();
            Drawable background = getBackground();
            if (drawable != null && background != null) {
                int width = getWidth();
                int height = getHeight();
                int max = Math.max(width, height) / 2;
                int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
                int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
                androidx.core.graphics.drawable.a.a(background, paddingLeft - max, paddingTop - max, paddingLeft + max, paddingTop + max);
            }
            return frame;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class e extends androidx.appcompat.view.menu.m {
        public e(Context context, androidx.appcompat.view.menu.g gVar, View view, boolean z) {
            super(context, gVar, view, z, a.b.actionOverflowMenuStyle);
            a(androidx.core.n.h.c);
            a(c.this.k);
        }

        @Override // androidx.appcompat.view.menu.m
        protected void f() {
            if (c.this.c != null) {
                c.this.c.close();
            }
            c.this.h = null;
            super.f();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class a extends androidx.appcompat.view.menu.m {
        public a(Context context, androidx.appcompat.view.menu.s sVar, View view) {
            super(context, sVar, view, false, a.b.actionOverflowMenuStyle);
            if (!((androidx.appcompat.view.menu.j) sVar.getItem()).k()) {
                a(c.this.g == null ? (View) c.this.f : c.this.g);
            }
            a(c.this.k);
        }

        @Override // androidx.appcompat.view.menu.m
        protected void f() {
            c.this.i = null;
            c.this.l = 0;
            super.f();
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private class f implements n.a {
        f() {
        }

        @Override // androidx.appcompat.view.menu.n.a
        public boolean a(@androidx.annotation.ah androidx.appcompat.view.menu.g gVar) {
            if (gVar == c.this.c) {
                return false;
            }
            c.this.l = ((androidx.appcompat.view.menu.s) gVar).getItem().getItemId();
            n.a a2 = c.this.a();
            if (a2 != null) {
                return a2.a(gVar);
            }
            return false;
        }

        @Override // androidx.appcompat.view.menu.n.a
        public void a(@androidx.annotation.ah androidx.appcompat.view.menu.g gVar, boolean z) {
            if (gVar instanceof androidx.appcompat.view.menu.s) {
                gVar.r().b(false);
            }
            n.a a2 = c.this.a();
            if (a2 != null) {
                a2.a(gVar, z);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.widget.c$c, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class RunnableC0018c implements Runnable {
        private e b;

        public RunnableC0018c(e eVar) {
            this.b = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (c.this.c != null) {
                c.this.c.h();
            }
            View view = (View) c.this.f;
            if (view != null && view.getWindowToken() != null && this.b.e()) {
                c.this.h = this.b;
            }
            c.this.j = null;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private class b extends ActionMenuItemView.b {
        b() {
        }

        @Override // androidx.appcompat.view.menu.ActionMenuItemView.b
        public androidx.appcompat.view.menu.q a() {
            if (c.this.i != null) {
                return c.this.i.d();
            }
            return null;
        }
    }
}
