package com.google.android.material.c;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import androidx.annotation.at;
import androidx.annotation.ax;
import androidx.annotation.p;
import androidx.appcompat.a;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.j;
import androidx.appcompat.view.menu.o;
import androidx.core.m.h;
import androidx.core.n.a.d;
import androidx.core.n.af;
import androidx.j.aj;
import androidx.j.al;
import com.google.android.material.a;
import com.google.android.material.internal.r;
import java.util.HashSet;

@ap(a = {ap.a.LIBRARY_GROUP})
/* loaded from: /home/user/work/dex/classes.dex */
public class c extends ViewGroup implements o {

    /* renamed from: a, reason: collision with root package name */
    private static final long f1220a = 115;
    private static final int b = 5;
    private static final int[] c = {R.attr.state_checked};
    private static final int[] d = {-16842910};

    @ah
    private SparseArray<com.google.android.material.b.a> A;
    private d B;
    private g C;

    @ah
    private final al e;
    private final int f;
    private final int g;
    private final int h;
    private final int i;
    private final int j;

    @ah
    private final View.OnClickListener k;
    private final h.a<a> l;
    private boolean m;
    private int n;

    @ai
    private a[] o;
    private int p;
    private int q;
    private ColorStateList r;

    @p
    private int s;
    private ColorStateList t;

    @ai
    private final ColorStateList u;

    @at
    private int v;

    @at
    private int w;
    private Drawable x;
    private int y;
    private int[] z;

    private boolean a(int i, int i2) {
        if (i == -1) {
            if (i2 <= 3) {
                return false;
            }
        } else if (i != 0) {
            return false;
        }
        return true;
    }

    private boolean g(int i) {
        return i != -1;
    }

    @Override // androidx.appcompat.view.menu.o
    public int getWindowAnimations() {
        return 0;
    }

    public c(Context context) {
        this(context, null);
    }

    public c(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.l = new h.c(5);
        this.p = 0;
        this.q = 0;
        this.A = new SparseArray<>(5);
        Resources resources = getResources();
        this.f = resources.getDimensionPixelSize(a.f.design_bottom_navigation_item_max_width);
        this.g = resources.getDimensionPixelSize(a.f.design_bottom_navigation_item_min_width);
        this.h = resources.getDimensionPixelSize(a.f.design_bottom_navigation_active_item_max_width);
        this.i = resources.getDimensionPixelSize(a.f.design_bottom_navigation_active_item_min_width);
        this.j = resources.getDimensionPixelSize(a.f.design_bottom_navigation_height);
        this.u = a(R.attr.textColorSecondary);
        this.e = new androidx.j.c();
        this.e.a(0);
        this.e.a(f1220a);
        this.e.a(new androidx.h.a.a.b());
        this.e.a(new r());
        this.k = new View.OnClickListener() { // from class: com.google.android.material.c.c.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                j itemData = ((a) view).getItemData();
                if (c.this.C.a(itemData, c.this.B, 0)) {
                    return;
                }
                itemData.setChecked(true);
            }
        };
        this.z = new int[5];
        af.e((View) this, 1);
    }

    @Override // androidx.appcompat.view.menu.o
    public void a(g gVar) {
        this.C = gVar;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int size2 = this.C.k().size();
        int childCount = getChildCount();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.j, androidx.d.c.b.a.b.b);
        if (a(this.n, size2) && this.m) {
            View childAt = getChildAt(this.q);
            int i3 = this.i;
            if (childAt.getVisibility() != 8) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(this.h, Integer.MIN_VALUE), makeMeasureSpec);
                i3 = Math.max(i3, childAt.getMeasuredWidth());
            }
            int i4 = size2 - (childAt.getVisibility() != 8 ? 1 : 0);
            int min = Math.min(size - (this.g * i4), Math.min(i3, this.h));
            int i5 = size - min;
            int min2 = Math.min(i5 / (i4 == 0 ? 1 : i4), this.f);
            int i6 = i5 - (i4 * min2);
            int i7 = 0;
            while (i7 < childCount) {
                if (getChildAt(i7).getVisibility() != 8) {
                    this.z[i7] = i7 == this.q ? min : min2;
                    if (i6 > 0) {
                        int[] iArr = this.z;
                        iArr[i7] = iArr[i7] + 1;
                        i6--;
                    }
                } else {
                    this.z[i7] = 0;
                }
                i7++;
            }
        } else {
            int min3 = Math.min(size / (size2 == 0 ? 1 : size2), this.h);
            int i8 = size - (size2 * min3);
            for (int i9 = 0; i9 < childCount; i9++) {
                if (getChildAt(i9).getVisibility() != 8) {
                    this.z[i9] = min3;
                    if (i8 > 0) {
                        int[] iArr2 = this.z;
                        iArr2[i9] = iArr2[i9] + 1;
                        i8--;
                    }
                } else {
                    this.z[i9] = 0;
                }
            }
        }
        int i10 = 0;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt2 = getChildAt(i11);
            if (childAt2.getVisibility() != 8) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec(this.z[i11], androidx.d.c.b.a.b.b), makeMeasureSpec);
                childAt2.getLayoutParams().width = childAt2.getMeasuredWidth();
                i10 += childAt2.getMeasuredWidth();
            }
        }
        setMeasuredDimension(View.resolveSizeAndState(i10, View.MeasureSpec.makeMeasureSpec(i10, androidx.d.c.b.a.b.b), 0), View.resolveSizeAndState(this.j, makeMeasureSpec, 0));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int i5 = i3 - i;
        int i6 = i4 - i2;
        int i7 = 0;
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                if (af.p(this) == 1) {
                    int i9 = i5 - i7;
                    childAt.layout(i9 - childAt.getMeasuredWidth(), 0, i9, i6);
                } else {
                    childAt.layout(i7, 0, childAt.getMeasuredWidth() + i7, i6);
                }
                i7 += childAt.getMeasuredWidth();
            }
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@ah AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        androidx.core.n.a.d.a(accessibilityNodeInfo).b(d.b.a(1, this.C.k().size(), false, 1));
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.r = colorStateList;
        if (this.o != null) {
            for (a aVar : this.o) {
                aVar.setIconTintList(colorStateList);
            }
        }
    }

    @ai
    public ColorStateList getIconTintList() {
        return this.r;
    }

    public void setItemIconSize(@p int i) {
        this.s = i;
        if (this.o != null) {
            for (a aVar : this.o) {
                aVar.setIconSize(i);
            }
        }
    }

    @p
    public int getItemIconSize() {
        return this.s;
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.t = colorStateList;
        if (this.o != null) {
            for (a aVar : this.o) {
                aVar.setTextColor(colorStateList);
            }
        }
    }

    public ColorStateList getItemTextColor() {
        return this.t;
    }

    public void setItemTextAppearanceInactive(@at int i) {
        this.v = i;
        if (this.o != null) {
            for (a aVar : this.o) {
                aVar.setTextAppearanceInactive(i);
                if (this.t != null) {
                    aVar.setTextColor(this.t);
                }
            }
        }
    }

    @at
    public int getItemTextAppearanceInactive() {
        return this.v;
    }

    public void setItemTextAppearanceActive(@at int i) {
        this.w = i;
        if (this.o != null) {
            for (a aVar : this.o) {
                aVar.setTextAppearanceActive(i);
                if (this.t != null) {
                    aVar.setTextColor(this.t);
                }
            }
        }
    }

    @at
    public int getItemTextAppearanceActive() {
        return this.w;
    }

    public void setItemBackgroundRes(int i) {
        this.y = i;
        if (this.o != null) {
            for (a aVar : this.o) {
                aVar.setItemBackground(i);
            }
        }
    }

    @Deprecated
    public int getItemBackgroundRes() {
        return this.y;
    }

    public void setItemBackground(@ai Drawable drawable) {
        this.x = drawable;
        if (this.o != null) {
            for (a aVar : this.o) {
                aVar.setItemBackground(drawable);
            }
        }
    }

    @ai
    public Drawable getItemBackground() {
        if (this.o != null && this.o.length > 0) {
            return this.o[0].getBackground();
        }
        return this.x;
    }

    public void setLabelVisibilityMode(int i) {
        this.n = i;
    }

    public int getLabelVisibilityMode() {
        return this.n;
    }

    public void setItemHorizontalTranslationEnabled(boolean z) {
        this.m = z;
    }

    public boolean a() {
        return this.m;
    }

    @ai
    public ColorStateList a(int i) {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(i, typedValue, true)) {
            return null;
        }
        ColorStateList a2 = androidx.appcompat.a.a.a.a(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(a.b.colorPrimary, typedValue, true)) {
            return null;
        }
        int i2 = typedValue.data;
        int defaultColor = a2.getDefaultColor();
        return new ColorStateList(new int[][]{d, c, EMPTY_STATE_SET}, new int[]{a2.getColorForState(d, defaultColor), i2, defaultColor});
    }

    public void setPresenter(d dVar) {
        this.B = dVar;
    }

    public void b() {
        removeAllViews();
        if (this.o != null) {
            for (a aVar : this.o) {
                if (aVar != null) {
                    this.l.a(aVar);
                    aVar.b();
                }
            }
        }
        if (this.C.size() == 0) {
            this.p = 0;
            this.q = 0;
            this.o = null;
            return;
        }
        d();
        this.o = new a[this.C.size()];
        boolean a2 = a(this.n, this.C.k().size());
        for (int i = 0; i < this.C.size(); i++) {
            this.B.b(true);
            this.C.getItem(i).setCheckable(true);
            this.B.b(false);
            a newItem = getNewItem();
            this.o[i] = newItem;
            newItem.setIconTintList(this.r);
            newItem.setIconSize(this.s);
            newItem.setTextColor(this.u);
            newItem.setTextAppearanceInactive(this.v);
            newItem.setTextAppearanceActive(this.w);
            newItem.setTextColor(this.t);
            if (this.x != null) {
                newItem.setItemBackground(this.x);
            } else {
                newItem.setItemBackground(this.y);
            }
            newItem.setShifting(a2);
            newItem.setLabelVisibilityMode(this.n);
            newItem.a((j) this.C.getItem(i), 0);
            newItem.setItemPosition(i);
            newItem.setOnClickListener(this.k);
            if (this.p != 0 && this.C.getItem(i).getItemId() == this.p) {
                this.q = i;
            }
            setBadgeIfNeeded(newItem);
            addView(newItem);
        }
        this.q = Math.min(this.C.size() - 1, this.q);
        this.C.getItem(this.q).setChecked(true);
    }

    public void c() {
        if (this.C == null || this.o == null) {
            return;
        }
        int size = this.C.size();
        if (size != this.o.length) {
            b();
            return;
        }
        int i = this.p;
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem item = this.C.getItem(i2);
            if (item.isChecked()) {
                this.p = item.getItemId();
                this.q = i2;
            }
        }
        if (i != this.p) {
            aj.a(this, this.e);
        }
        boolean a2 = a(this.n, this.C.k().size());
        for (int i3 = 0; i3 < size; i3++) {
            this.B.b(true);
            this.o[i3].setLabelVisibilityMode(this.n);
            this.o[i3].setShifting(a2);
            this.o[i3].a((j) this.C.getItem(i3), 0);
            this.B.b(false);
        }
    }

    private a getNewItem() {
        a a2 = this.l.a();
        return a2 == null ? new a(getContext()) : a2;
    }

    public int getSelectedItemId() {
        return this.p;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(int i) {
        int size = this.C.size();
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem item = this.C.getItem(i2);
            if (i == item.getItemId()) {
                this.p = i;
                this.q = i2;
                item.setChecked(true);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SparseArray<com.google.android.material.b.a> getBadgeDrawables() {
        return this.A;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBadgeDrawables(SparseArray<com.google.android.material.b.a> sparseArray) {
        this.A = sparseArray;
        if (this.o != null) {
            for (a aVar : this.o) {
                aVar.setBadge(sparseArray.get(aVar.getId()));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ai
    public com.google.android.material.b.a c(int i) {
        return this.A.get(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com.google.android.material.b.a d(int i) {
        h(i);
        com.google.android.material.b.a aVar = this.A.get(i);
        if (aVar == null) {
            aVar = com.google.android.material.b.a.a(getContext());
            this.A.put(i, aVar);
        }
        a f = f(i);
        if (f != null) {
            f.setBadge(aVar);
        }
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(int i) {
        h(i);
        com.google.android.material.b.a aVar = this.A.get(i);
        a f = f(i);
        if (f != null) {
            f.b();
        }
        if (aVar != null) {
            this.A.remove(i);
        }
    }

    private void setBadgeIfNeeded(@ah a aVar) {
        com.google.android.material.b.a aVar2;
        int id = aVar.getId();
        if (g(id) && (aVar2 = this.A.get(id)) != null) {
            aVar.setBadge(aVar2);
        }
    }

    private void d() {
        HashSet hashSet = new HashSet();
        for (int i = 0; i < this.C.size(); i++) {
            hashSet.add(Integer.valueOf(this.C.getItem(i).getItemId()));
        }
        for (int i2 = 0; i2 < this.A.size(); i2++) {
            int keyAt = this.A.keyAt(i2);
            if (!hashSet.contains(Integer.valueOf(keyAt))) {
                this.A.delete(keyAt);
            }
        }
    }

    @ai
    @ax
    a f(int i) {
        h(i);
        if (this.o == null) {
            return null;
        }
        for (a aVar : this.o) {
            if (aVar.getId() == i) {
                return aVar;
            }
        }
        return null;
    }

    private void h(int i) {
        if (g(i)) {
            return;
        }
        throw new IllegalArgumentException(i + " is not a valid view id");
    }
}
