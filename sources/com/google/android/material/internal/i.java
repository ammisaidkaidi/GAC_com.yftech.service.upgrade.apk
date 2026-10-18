package com.google.android.material.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.ac;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import androidx.annotation.at;
import androidx.appcompat.view.menu.n;
import androidx.core.n.a.d;
import androidx.core.n.af;
import androidx.core.n.ao;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.a;
import java.util.ArrayList;

@ap(a = {ap.a.LIBRARY_GROUP})
/* loaded from: /home/user/work/dex/classes.dex */
public class i implements androidx.appcompat.view.menu.n {
    private static final String q = "android:menu:list";
    private static final String r = "android:menu:adapter";
    private static final String s = "android:menu:header";

    /* renamed from: a, reason: collision with root package name */
    LinearLayout f1336a;
    androidx.appcompat.view.menu.g b;
    b c;
    LayoutInflater d;
    int e;
    boolean f;
    ColorStateList g;
    ColorStateList h;
    Drawable i;
    int j;
    int k;
    int l;
    boolean m;
    int o;
    private NavigationMenuView t;
    private n.a u;
    private int v;
    private int w;
    private int x;
    boolean n = true;
    private int y = -1;
    final View.OnClickListener p = new View.OnClickListener() { // from class: com.google.android.material.internal.i.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            boolean z = true;
            i.this.b(true);
            androidx.appcompat.view.menu.j itemData = ((NavigationMenuItemView) view).getItemData();
            boolean a2 = i.this.b.a(itemData, i.this, 0);
            if (itemData != null && itemData.isCheckable() && a2) {
                i.this.c.a(itemData);
            } else {
                z = false;
            }
            i.this.b(false);
            if (z) {
                i.this.a(false);
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface d {
    }

    @Override // androidx.appcompat.view.menu.n
    public boolean a(androidx.appcompat.view.menu.g gVar, androidx.appcompat.view.menu.j jVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.n
    public boolean a(androidx.appcompat.view.menu.s sVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.n
    public boolean b() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.n
    public boolean b(androidx.appcompat.view.menu.g gVar, androidx.appcompat.view.menu.j jVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.n
    public void a(@ah Context context, @ah androidx.appcompat.view.menu.g gVar) {
        this.d = LayoutInflater.from(context);
        this.b = gVar;
        this.o = context.getResources().getDimensionPixelOffset(a.f.design_navigation_separator_vertical_padding);
    }

    @Override // androidx.appcompat.view.menu.n
    public androidx.appcompat.view.menu.o a(ViewGroup viewGroup) {
        if (this.t == null) {
            this.t = (NavigationMenuView) this.d.inflate(a.k.design_navigation_menu, viewGroup, false);
            this.t.setAccessibilityDelegateCompat(new g(this.t));
            if (this.c == null) {
                this.c = new b();
            }
            if (this.y != -1) {
                this.t.setOverScrollMode(this.y);
            }
            this.f1336a = (LinearLayout) this.d.inflate(a.k.design_navigation_item_header, (ViewGroup) this.t, false);
            this.t.setAdapter(this.c);
        }
        return this.t;
    }

    @Override // androidx.appcompat.view.menu.n
    public void a(boolean z) {
        if (this.c != null) {
            this.c.b();
        }
    }

    @Override // androidx.appcompat.view.menu.n
    public void a(n.a aVar) {
        this.u = aVar;
    }

    @Override // androidx.appcompat.view.menu.n
    public void a(androidx.appcompat.view.menu.g gVar, boolean z) {
        if (this.u != null) {
            this.u.a(gVar, z);
        }
    }

    @Override // androidx.appcompat.view.menu.n
    public int c() {
        return this.v;
    }

    public void a(int i) {
        this.v = i;
    }

    @Override // androidx.appcompat.view.menu.n
    @ah
    public Parcelable f() {
        Bundle bundle = new Bundle();
        if (this.t != null) {
            SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
            this.t.saveHierarchyState(sparseArray);
            bundle.putSparseParcelableArray("android:menu:list", sparseArray);
        }
        if (this.c != null) {
            bundle.putBundle(r, this.c.g());
        }
        if (this.f1336a != null) {
            SparseArray<? extends Parcelable> sparseArray2 = new SparseArray<>();
            this.f1336a.saveHierarchyState(sparseArray2);
            bundle.putSparseParcelableArray(s, sparseArray2);
        }
        return bundle;
    }

    @Override // androidx.appcompat.view.menu.n
    public void a(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            SparseArray sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:list");
            if (sparseParcelableArray != null) {
                this.t.restoreHierarchyState(sparseParcelableArray);
            }
            Bundle bundle2 = bundle.getBundle(r);
            if (bundle2 != null) {
                this.c.a(bundle2);
            }
            SparseArray sparseParcelableArray2 = bundle.getSparseParcelableArray(s);
            if (sparseParcelableArray2 != null) {
                this.f1336a.restoreHierarchyState(sparseParcelableArray2);
            }
        }
    }

    public void a(@ah androidx.appcompat.view.menu.j jVar) {
        this.c.a(jVar);
    }

    @ai
    public androidx.appcompat.view.menu.j a() {
        return this.c.f();
    }

    public View b(@ac int i) {
        View inflate = this.d.inflate(i, (ViewGroup) this.f1336a, false);
        a(inflate);
        return inflate;
    }

    public void a(@ah View view) {
        this.f1336a.addView(view);
        this.t.setPadding(0, 0, 0, this.t.getPaddingBottom());
    }

    public void b(@ah View view) {
        this.f1336a.removeView(view);
        if (this.f1336a.getChildCount() == 0) {
            this.t.setPadding(0, this.x, 0, this.t.getPaddingBottom());
        }
    }

    public int d() {
        return this.f1336a.getChildCount();
    }

    public View c(int i) {
        return this.f1336a.getChildAt(i);
    }

    @ai
    public ColorStateList e() {
        return this.h;
    }

    public void a(@ai ColorStateList colorStateList) {
        this.h = colorStateList;
        a(false);
    }

    @ai
    public ColorStateList g() {
        return this.g;
    }

    public void b(@ai ColorStateList colorStateList) {
        this.g = colorStateList;
        a(false);
    }

    public void d(@at int i) {
        this.e = i;
        this.f = true;
        a(false);
    }

    @ai
    public Drawable h() {
        return this.i;
    }

    public void a(@ai Drawable drawable) {
        this.i = drawable;
        a(false);
    }

    public int i() {
        return this.j;
    }

    public void e(int i) {
        this.j = i;
        a(false);
    }

    public int j() {
        return this.k;
    }

    public void f(int i) {
        this.k = i;
        a(false);
    }

    public void g(int i) {
        this.w = i;
        a(false);
    }

    public int k() {
        return this.w;
    }

    public void h(@androidx.annotation.p int i) {
        if (this.l != i) {
            this.l = i;
            this.m = true;
            a(false);
        }
    }

    public void b(boolean z) {
        if (this.c != null) {
            this.c.b(z);
        }
    }

    public void c(boolean z) {
        if (this.n != z) {
            this.n = z;
            m();
        }
    }

    public boolean l() {
        return this.n;
    }

    private void m() {
        this.t.setPadding(0, (this.f1336a.getChildCount() == 0 && this.n) ? this.x : 0, 0, this.t.getPaddingBottom());
    }

    public void a(@ah ao aoVar) {
        int b2 = aoVar.b();
        if (this.x != b2) {
            this.x = b2;
            m();
        }
        this.t.setPadding(0, this.t.getPaddingTop(), 0, aoVar.d());
        af.b(this.f1336a, aoVar);
    }

    public void i(int i) {
        this.y = i;
        if (this.t != null) {
            this.t.setOverScrollMode(i);
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static abstract class k extends RecyclerView.z {
        public k(View view) {
            super(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class h extends k {
        public h(@ah LayoutInflater layoutInflater, ViewGroup viewGroup, View.OnClickListener onClickListener) {
            super(layoutInflater.inflate(a.k.design_navigation_item, viewGroup, false));
            this.f1016a.setOnClickListener(onClickListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class j extends k {
        public j(@ah LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(a.k.design_navigation_item_subheader, viewGroup, false));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.material.internal.i$i, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class C0089i extends k {
        public C0089i(@ah LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(a.k.design_navigation_item_separator, viewGroup, false));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a extends k {
        public a(View view) {
            super(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class b extends RecyclerView.a<k> {
        private static final String b = "android:menu:checked";
        private static final String c = "android:menu:action_views";
        private static final int d = 0;
        private static final int e = 1;
        private static final int f = 2;
        private static final int g = 3;
        private final ArrayList<d> h = new ArrayList<>();
        private androidx.appcompat.view.menu.j i;
        private boolean j;

        @Override // androidx.recyclerview.widget.RecyclerView.a
        public long c(int i) {
            return i;
        }

        b() {
            i();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.a
        public int a() {
            return this.h.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.a
        public int b(int i) {
            d dVar = this.h.get(i);
            if (dVar instanceof e) {
                return 2;
            }
            if (dVar instanceof c) {
                return 3;
            }
            if (dVar instanceof f) {
                return ((f) dVar).a().hasSubMenu() ? 1 : 0;
            }
            throw new RuntimeException("Unknown item type.");
        }

        @Override // androidx.recyclerview.widget.RecyclerView.a
        @ai
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public k a(ViewGroup viewGroup, int i) {
            switch (i) {
                case 0:
                    return new h(i.this.d, viewGroup, i.this.p);
                case 1:
                    return new j(i.this.d, viewGroup);
                case 2:
                    return new C0089i(i.this.d, viewGroup);
                case 3:
                    return new a(i.this.f1336a);
                default:
                    return null;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.a
        public void a(@ah k kVar, int i) {
            switch (b(i)) {
                case 0:
                    NavigationMenuItemView navigationMenuItemView = (NavigationMenuItemView) kVar.f1016a;
                    navigationMenuItemView.setIconTintList(i.this.h);
                    if (i.this.f) {
                        navigationMenuItemView.setTextAppearance(i.this.e);
                    }
                    if (i.this.g != null) {
                        navigationMenuItemView.setTextColor(i.this.g);
                    }
                    af.a(navigationMenuItemView, i.this.i != null ? i.this.i.getConstantState().newDrawable() : null);
                    f fVar = (f) this.h.get(i);
                    navigationMenuItemView.setNeedsEmptyIcon(fVar.f1340a);
                    navigationMenuItemView.setHorizontalPadding(i.this.j);
                    navigationMenuItemView.setIconPadding(i.this.k);
                    if (i.this.m) {
                        navigationMenuItemView.setIconSize(i.this.l);
                    }
                    navigationMenuItemView.setMaxLines(i.this.w);
                    navigationMenuItemView.a(fVar.a(), 0);
                    return;
                case 1:
                    ((TextView) kVar.f1016a).setText(((f) this.h.get(i)).a().getTitle());
                    return;
                case 2:
                    e eVar = (e) this.h.get(i);
                    kVar.f1016a.setPadding(0, eVar.a(), 0, eVar.b());
                    return;
                default:
                    return;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.a
        public void a(k kVar) {
            if (kVar instanceof h) {
                ((NavigationMenuItemView) kVar.f1016a).b();
            }
        }

        public void b() {
            i();
            e();
        }

        private void i() {
            if (this.j) {
                return;
            }
            boolean z = true;
            this.j = true;
            this.h.clear();
            this.h.add(new c());
            int size = i.this.b.k().size();
            int i = -1;
            int i2 = 0;
            boolean z2 = false;
            int i3 = 0;
            while (i2 < size) {
                androidx.appcompat.view.menu.j jVar = i.this.b.k().get(i2);
                if (jVar.isChecked()) {
                    a(jVar);
                }
                if (jVar.isCheckable()) {
                    jVar.a(false);
                }
                if (jVar.hasSubMenu()) {
                    SubMenu subMenu = jVar.getSubMenu();
                    if (subMenu.hasVisibleItems()) {
                        if (i2 != 0) {
                            this.h.add(new e(i.this.o, 0));
                        }
                        this.h.add(new f(jVar));
                        int size2 = this.h.size();
                        int size3 = subMenu.size();
                        int i4 = 0;
                        boolean z3 = false;
                        while (i4 < size3) {
                            androidx.appcompat.view.menu.j jVar2 = (androidx.appcompat.view.menu.j) subMenu.getItem(i4);
                            if (jVar2.isVisible()) {
                                if (!z3 && jVar2.getIcon() != null) {
                                    z3 = z;
                                }
                                if (jVar2.isCheckable()) {
                                    jVar2.a(false);
                                }
                                if (jVar.isChecked()) {
                                    a(jVar);
                                }
                                this.h.add(new f(jVar2));
                            }
                            i4++;
                            z = true;
                        }
                        if (z3) {
                            e(size2, this.h.size());
                        }
                    }
                } else {
                    int groupId = jVar.getGroupId();
                    if (groupId != i) {
                        i3 = this.h.size();
                        boolean z4 = jVar.getIcon() != null;
                        if (i2 != 0) {
                            i3++;
                            this.h.add(new e(i.this.o, i.this.o));
                        }
                        z2 = z4;
                    } else if (!z2 && jVar.getIcon() != null) {
                        e(i3, this.h.size());
                        z2 = true;
                    }
                    f fVar = new f(jVar);
                    fVar.f1340a = z2;
                    this.h.add(fVar);
                    i = groupId;
                }
                i2++;
                z = true;
            }
            this.j = false;
        }

        private void e(int i, int i2) {
            while (i < i2) {
                ((f) this.h.get(i)).f1340a = true;
                i++;
            }
        }

        public void a(@ah androidx.appcompat.view.menu.j jVar) {
            if (this.i == jVar || !jVar.isCheckable()) {
                return;
            }
            if (this.i != null) {
                this.i.setChecked(false);
            }
            this.i = jVar;
            jVar.setChecked(true);
        }

        public androidx.appcompat.view.menu.j f() {
            return this.i;
        }

        @ah
        public Bundle g() {
            Bundle bundle = new Bundle();
            if (this.i != null) {
                bundle.putInt(b, this.i.getItemId());
            }
            SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
            int size = this.h.size();
            for (int i = 0; i < size; i++) {
                d dVar = this.h.get(i);
                if (dVar instanceof f) {
                    androidx.appcompat.view.menu.j a2 = ((f) dVar).a();
                    View actionView = a2 != null ? a2.getActionView() : null;
                    if (actionView != null) {
                        com.google.android.material.internal.k kVar = new com.google.android.material.internal.k();
                        actionView.saveHierarchyState(kVar);
                        sparseArray.put(a2.getItemId(), kVar);
                    }
                }
            }
            bundle.putSparseParcelableArray(c, sparseArray);
            return bundle;
        }

        public void a(@ah Bundle bundle) {
            androidx.appcompat.view.menu.j a2;
            View actionView;
            com.google.android.material.internal.k kVar;
            androidx.appcompat.view.menu.j a3;
            int i = bundle.getInt(b, 0);
            if (i != 0) {
                this.j = true;
                int size = this.h.size();
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        break;
                    }
                    d dVar = this.h.get(i2);
                    if ((dVar instanceof f) && (a3 = ((f) dVar).a()) != null && a3.getItemId() == i) {
                        a(a3);
                        break;
                    }
                    i2++;
                }
                this.j = false;
                i();
            }
            SparseArray sparseParcelableArray = bundle.getSparseParcelableArray(c);
            if (sparseParcelableArray != null) {
                int size2 = this.h.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    d dVar2 = this.h.get(i3);
                    if ((dVar2 instanceof f) && (a2 = ((f) dVar2).a()) != null && (actionView = a2.getActionView()) != null && (kVar = (com.google.android.material.internal.k) sparseParcelableArray.get(a2.getItemId())) != null) {
                        actionView.restoreHierarchyState(kVar);
                    }
                }
            }
        }

        public void b(boolean z) {
            this.j = z;
        }

        int h() {
            int i = i.this.f1336a.getChildCount() == 0 ? 0 : 1;
            for (int i2 = 0; i2 < i.this.c.a(); i2++) {
                if (i.this.c.b(i2) == 0) {
                    i++;
                }
            }
            return i;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class f implements d {

        /* renamed from: a, reason: collision with root package name */
        boolean f1340a;
        private final androidx.appcompat.view.menu.j b;

        f(androidx.appcompat.view.menu.j jVar) {
            this.b = jVar;
        }

        public androidx.appcompat.view.menu.j a() {
            return this.b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class e implements d {

        /* renamed from: a, reason: collision with root package name */
        private final int f1339a;
        private final int b;

        public e(int i, int i2) {
            this.f1339a = i;
            this.b = i2;
        }

        public int a() {
            return this.f1339a;
        }

        public int b() {
            return this.b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class c implements d {
        c() {
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private class g extends androidx.recyclerview.widget.y {
        g(RecyclerView recyclerView) {
            super(recyclerView);
        }

        @Override // androidx.recyclerview.widget.y, androidx.core.n.a
        public void a(View view, @ah androidx.core.n.a.d dVar) {
            super.a(view, dVar);
            dVar.b(d.b.a(i.this.c.h(), 0, false));
        }
    }
}
