package androidx.viewpager2.a;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ak;
import androidx.annotation.am;
import androidx.annotation.ap;
import androidx.annotation.z;
import androidx.core.n.a.d;
import androidx.core.n.a.g;
import androidx.core.n.af;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.x;
import androidx.viewpager2.a;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: /home/user/work/dex/classes.dex */
public final class h extends ViewGroup {

    /* renamed from: a, reason: collision with root package name */
    public static final int f1124a = 0;
    public static final int b = 1;
    public static final int c = 0;
    public static final int d = 1;
    public static final int e = 2;
    public static final int f = -1;
    static boolean g = true;
    private int A;
    int h;
    boolean i;
    RecyclerView j;
    androidx.viewpager2.a.g k;
    a l;
    private final Rect m;
    private final Rect n;
    private androidx.viewpager2.a.b o;
    private RecyclerView.c p;
    private LinearLayoutManager q;
    private int r;
    private Parcelable s;
    private x t;
    private androidx.viewpager2.a.b u;
    private androidx.viewpager2.a.d v;
    private androidx.viewpager2.a.f w;
    private RecyclerView.f x;
    private boolean y;
    private boolean z;

    @z(a = 1)
    @Retention(RetentionPolicy.SOURCE)
    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface e {
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class f {
        public void a(int i) {
        }

        public void a(int i, float f, @ak int i2) {
        }

        public void b(int i) {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface g {
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface i {
        void a(@ah View view, float f);
    }

    @Retention(RetentionPolicy.SOURCE)
    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface m {
    }

    public h(@ah Context context) {
        super(context);
        this.m = new Rect();
        this.n = new Rect();
        this.o = new androidx.viewpager2.a.b(3);
        this.i = false;
        this.p = new c() { // from class: androidx.viewpager2.a.h.1
            @Override // androidx.viewpager2.a.h.c, androidx.recyclerview.widget.RecyclerView.c
            public void a() {
                h.this.i = true;
                h.this.k.a();
            }
        };
        this.r = -1;
        this.x = null;
        this.y = false;
        this.z = true;
        this.A = -1;
        a(context, (AttributeSet) null);
    }

    public h(@ah Context context, @ai AttributeSet attributeSet) {
        super(context, attributeSet);
        this.m = new Rect();
        this.n = new Rect();
        this.o = new androidx.viewpager2.a.b(3);
        this.i = false;
        this.p = new c() { // from class: androidx.viewpager2.a.h.1
            @Override // androidx.viewpager2.a.h.c, androidx.recyclerview.widget.RecyclerView.c
            public void a() {
                h.this.i = true;
                h.this.k.a();
            }
        };
        this.r = -1;
        this.x = null;
        this.y = false;
        this.z = true;
        this.A = -1;
        a(context, attributeSet);
    }

    public h(@ah Context context, @ai AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.m = new Rect();
        this.n = new Rect();
        this.o = new androidx.viewpager2.a.b(3);
        this.i = false;
        this.p = new c() { // from class: androidx.viewpager2.a.h.1
            @Override // androidx.viewpager2.a.h.c, androidx.recyclerview.widget.RecyclerView.c
            public void a() {
                h.this.i = true;
                h.this.k.a();
            }
        };
        this.r = -1;
        this.x = null;
        this.y = false;
        this.z = true;
        this.A = -1;
        a(context, attributeSet);
    }

    @am(a = 21)
    public h(@ah Context context, @ai AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.m = new Rect();
        this.n = new Rect();
        this.o = new androidx.viewpager2.a.b(3);
        this.i = false;
        this.p = new c() { // from class: androidx.viewpager2.a.h.1
            @Override // androidx.viewpager2.a.h.c, androidx.recyclerview.widget.RecyclerView.c
            public void a() {
                h.this.i = true;
                h.this.k.a();
            }
        };
        this.r = -1;
        this.x = null;
        this.y = false;
        this.z = true;
        this.A = -1;
        a(context, attributeSet);
    }

    private void a(Context context, AttributeSet attributeSet) {
        this.l = g ? new C0079h() : new b();
        this.j = new k(context);
        this.j.setId(af.a());
        this.j.setDescendantFocusability(131072);
        this.q = new d(context);
        this.j.setLayoutManager(this.q);
        this.j.setScrollingTouchSlop(1);
        b(context, attributeSet);
        this.j.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.j.a(j());
        this.k = new androidx.viewpager2.a.g(this);
        this.v = new androidx.viewpager2.a.d(this, this.k, this.j);
        this.t = new j();
        this.t.a(this.j);
        this.j.a(this.k);
        this.u = new androidx.viewpager2.a.b(3);
        this.k.a(this.u);
        f fVar = new f() { // from class: androidx.viewpager2.a.h.2
            @Override // androidx.viewpager2.a.h.f
            public void b(int i2) {
                if (h.this.h != i2) {
                    h.this.h = i2;
                    h.this.l.e();
                }
            }

            @Override // androidx.viewpager2.a.h.f
            public void a(int i2) {
                if (i2 == 0) {
                    h.this.a();
                }
            }
        };
        f fVar2 = new f() { // from class: androidx.viewpager2.a.h.3
            @Override // androidx.viewpager2.a.h.f
            public void b(int i2) {
                h.this.clearFocus();
                if (h.this.hasFocus()) {
                    h.this.j.requestFocus(2);
                }
            }
        };
        this.u.a(fVar);
        this.u.a(fVar2);
        this.l.a(this.u, this.j);
        this.u.a(this.o);
        this.w = new androidx.viewpager2.a.f(this.q);
        this.u.a(this.w);
        attachViewToParent(this.j, 0, this.j.getLayoutParams());
    }

    private RecyclerView.k j() {
        return new RecyclerView.k() { // from class: androidx.viewpager2.a.h.4
            @Override // androidx.recyclerview.widget.RecyclerView.k
            public void b(@ah View view) {
            }

            @Override // androidx.recyclerview.widget.RecyclerView.k
            public void a(@ah View view) {
                RecyclerView.j jVar = (RecyclerView.j) view.getLayoutParams();
                if (jVar.width != -1 || jVar.height != -1) {
                    throw new IllegalStateException("Pages must fill the whole ViewPager2 (use match_parent)");
                }
            }
        };
    }

    @Override // android.view.ViewGroup, android.view.View
    @am(a = 23)
    public CharSequence getAccessibilityClassName() {
        if (this.l.a()) {
            return this.l.b();
        }
        return super.getAccessibilityClassName();
    }

    private void b(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.j.ViewPager2);
        if (Build.VERSION.SDK_INT >= 29) {
            saveAttributeDataForStyleable(context, a.j.ViewPager2, attributeSet, obtainStyledAttributes, 0, 0);
        }
        try {
            setOrientation(obtainStyledAttributes.getInt(a.j.ViewPager2_android_orientation, 0));
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    @Override // android.view.View
    @ai
    protected Parcelable onSaveInstanceState() {
        l lVar = new l(super.onSaveInstanceState());
        lVar.f1134a = this.j.getId();
        lVar.b = this.r == -1 ? this.h : this.r;
        if (this.s != null) {
            lVar.c = this.s;
        } else {
            Object adapter = this.j.getAdapter();
            if (adapter instanceof androidx.viewpager2.adapter.c) {
                lVar.c = ((androidx.viewpager2.adapter.c) adapter).g();
            }
        }
        return lVar;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof l)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        l lVar = (l) parcelable;
        super.onRestoreInstanceState(lVar.getSuperState());
        this.r = lVar.b;
        this.s = lVar.c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void k() {
        RecyclerView.a adapter;
        if (this.r == -1 || (adapter = getAdapter()) == 0) {
            return;
        }
        if (this.s != null) {
            if (adapter instanceof androidx.viewpager2.adapter.c) {
                ((androidx.viewpager2.adapter.c) adapter).a(this.s);
            }
            this.s = null;
        }
        this.h = Math.max(0, Math.min(this.r, adapter.a() - 1));
        this.r = -1;
        this.j.e(this.h);
        this.l.c();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        Parcelable parcelable = sparseArray.get(getId());
        if (parcelable instanceof l) {
            int i2 = ((l) parcelable).f1134a;
            sparseArray.put(this.j.getId(), sparseArray.get(i2));
            sparseArray.remove(i2);
        }
        super.dispatchRestoreInstanceState(sparseArray);
        k();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class l extends View.BaseSavedState {
        public static final Parcelable.Creator<l> CREATOR = new Parcelable.ClassLoaderCreator<l>() { // from class: androidx.viewpager2.a.h.l.1
            @Override // android.os.Parcelable.ClassLoaderCreator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public l createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return Build.VERSION.SDK_INT >= 24 ? new l(parcel, classLoader) : new l(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public l createFromParcel(Parcel parcel) {
                return createFromParcel(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public l[] newArray(int i) {
                return new l[i];
            }
        };

        /* renamed from: a, reason: collision with root package name */
        int f1134a;
        int b;
        Parcelable c;

        @am(a = 24)
        l(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            a(parcel, classLoader);
        }

        l(Parcel parcel) {
            super(parcel);
            a(parcel, null);
        }

        l(Parcelable parcelable) {
            super(parcelable);
        }

        private void a(Parcel parcel, ClassLoader classLoader) {
            this.f1134a = parcel.readInt();
            this.b = parcel.readInt();
            this.c = parcel.readParcelable(classLoader);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f1134a);
            parcel.writeInt(this.b);
            parcel.writeParcelable(this.c, i);
        }
    }

    public void setAdapter(@ai RecyclerView.a aVar) {
        RecyclerView.a adapter = this.j.getAdapter();
        this.l.b((RecyclerView.a<?>) adapter);
        b((RecyclerView.a<?>) adapter);
        this.j.setAdapter(aVar);
        this.h = 0;
        k();
        this.l.a((RecyclerView.a<?>) aVar);
        a((RecyclerView.a<?>) aVar);
    }

    private void a(@ai RecyclerView.a<?> aVar) {
        if (aVar != null) {
            aVar.a(this.p);
        }
    }

    private void b(@ai RecyclerView.a<?> aVar) {
        if (aVar != null) {
            aVar.b(this.p);
        }
    }

    @ai
    public RecyclerView.a getAdapter() {
        return this.j.getAdapter();
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        throw new IllegalStateException(getClass().getSimpleName() + " does not support direct child views");
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i3) {
        measureChild(this.j, i2, i3);
        int measuredWidth = this.j.getMeasuredWidth();
        int measuredHeight = this.j.getMeasuredHeight();
        int measuredState = this.j.getMeasuredState();
        int paddingLeft = measuredWidth + getPaddingLeft() + getPaddingRight();
        int paddingTop = measuredHeight + getPaddingTop() + getPaddingBottom();
        setMeasuredDimension(resolveSizeAndState(Math.max(paddingLeft, getSuggestedMinimumWidth()), i2, measuredState), resolveSizeAndState(Math.max(paddingTop, getSuggestedMinimumHeight()), i3, measuredState << 16));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        int measuredWidth = this.j.getMeasuredWidth();
        int measuredHeight = this.j.getMeasuredHeight();
        this.m.left = getPaddingLeft();
        this.m.right = (i4 - i2) - getPaddingRight();
        this.m.top = getPaddingTop();
        this.m.bottom = (i5 - i3) - getPaddingBottom();
        Gravity.apply(com.google.android.material.b.a.b, measuredWidth, measuredHeight, this.m, this.n);
        this.j.layout(this.n.left, this.n.top, this.n.right, this.n.bottom);
        if (this.i) {
            a();
        }
    }

    void a() {
        if (this.t == null) {
            throw new IllegalStateException("Design assumption violated.");
        }
        View a2 = this.t.a(this.q);
        if (a2 == null) {
            return;
        }
        int e2 = this.q.e(a2);
        if (e2 != this.h && getScrollState() == 0) {
            this.u.b(e2);
        }
        this.i = false;
    }

    int getPageSize() {
        RecyclerView recyclerView = this.j;
        if (getOrientation() == 0) {
            return (recyclerView.getWidth() - recyclerView.getPaddingLeft()) - recyclerView.getPaddingRight();
        }
        return (recyclerView.getHeight() - recyclerView.getPaddingTop()) - recyclerView.getPaddingBottom();
    }

    public void setOrientation(int i2) {
        this.q.b(i2);
        this.l.d();
    }

    public int getOrientation() {
        return this.q.l();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b() {
        return this.q.E() == 1;
    }

    public void setCurrentItem(int i2) {
        a(i2, true);
    }

    public void a(int i2, boolean z) {
        if (e()) {
            throw new IllegalStateException("Cannot change current item when ViewPager2 is fake dragging");
        }
        b(i2, z);
    }

    void b(int i2, boolean z) {
        RecyclerView.a adapter = getAdapter();
        if (adapter == null) {
            if (this.r != -1) {
                this.r = Math.max(i2, 0);
                return;
            }
            return;
        }
        if (adapter.a() <= 0) {
            return;
        }
        int min = Math.min(Math.max(i2, 0), adapter.a() - 1);
        if (min == this.h && this.k.e()) {
            return;
        }
        if (min == this.h && z) {
            return;
        }
        double d2 = this.h;
        this.h = min;
        this.l.e();
        if (!this.k.e()) {
            d2 = this.k.h();
        }
        this.k.a(min, z);
        if (!z) {
            this.j.e(min);
            return;
        }
        double d3 = min;
        if (Math.abs(d3 - d2) > 3.0d) {
            this.j.e(d3 > d2 ? min - 3 : min + 3);
            this.j.post(new n(min, this.j));
        } else {
            this.j.g(min);
        }
    }

    public int getCurrentItem() {
        return this.h;
    }

    public int getScrollState() {
        return this.k.d();
    }

    public boolean c() {
        return this.v.b();
    }

    public boolean a(@ak @SuppressLint({"SupportAnnotationUsage"}) float f2) {
        return this.v.a(f2);
    }

    public boolean d() {
        return this.v.c();
    }

    public boolean e() {
        return this.v.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f() {
        View a2 = this.t.a(this.q);
        if (a2 == null) {
            return;
        }
        int[] a3 = this.t.a(this.q, a2);
        if (a3[0] == 0 && a3[1] == 0) {
            return;
        }
        this.j.b(a3[0], a3[1]);
    }

    public void setUserInputEnabled(boolean z) {
        this.z = z;
        this.l.f();
    }

    public boolean g() {
        return this.z;
    }

    public void setOffscreenPageLimit(int i2) {
        if (i2 < 1 && i2 != -1) {
            throw new IllegalArgumentException("Offscreen page limit must be OFFSCREEN_PAGE_LIMIT_DEFAULT or a number > 0");
        }
        this.A = i2;
        this.j.requestLayout();
    }

    public int getOffscreenPageLimit() {
        return this.A;
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i2) {
        return this.j.canScrollHorizontally(i2);
    }

    @Override // android.view.View
    public boolean canScrollVertically(int i2) {
        return this.j.canScrollVertically(i2);
    }

    public void a(@ah f fVar) {
        this.o.a(fVar);
    }

    public void b(@ah f fVar) {
        this.o.b(fVar);
    }

    public void setPageTransformer(@ai i iVar) {
        if (iVar != null) {
            if (!this.y) {
                this.x = this.j.getItemAnimator();
                this.y = true;
            }
            this.j.setItemAnimator(null);
        } else if (this.y) {
            this.j.setItemAnimator(this.x);
            this.x = null;
            this.y = false;
        }
        if (iVar == this.w.a()) {
            return;
        }
        this.w.a(iVar);
        h();
    }

    public void h() {
        if (this.w.a() == null) {
            return;
        }
        double h = this.k.h();
        int i2 = (int) h;
        float f2 = (float) (h - i2);
        this.w.a(i2, f2, Math.round(getPageSize() * f2));
    }

    @Override // android.view.View
    @am(a = 17)
    public void setLayoutDirection(int i2) {
        super.setLayoutDirection(i2);
        this.l.g();
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        this.l.a(accessibilityNodeInfo);
    }

    @Override // android.view.View
    @am(a = 16)
    public boolean performAccessibilityAction(int i2, Bundle bundle) {
        if (this.l.a(i2, bundle)) {
            return this.l.b(i2, bundle);
        }
        return super.performAccessibilityAction(i2, bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class k extends RecyclerView {
        k(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
        @am(a = 23)
        public CharSequence getAccessibilityClassName() {
            if (h.this.l.h()) {
                return h.this.l.i();
            }
            return super.getAccessibilityClassName();
        }

        @Override // android.view.View
        public void onInitializeAccessibilityEvent(@ah AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setFromIndex(h.this.h);
            accessibilityEvent.setToIndex(h.this.h);
            h.this.l.a(accessibilityEvent);
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
        @SuppressLint({"ClickableViewAccessibility"})
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return h.this.g() && super.onTouchEvent(motionEvent);
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            return h.this.g() && super.onInterceptTouchEvent(motionEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class d extends LinearLayoutManager {
        @Override // androidx.recyclerview.widget.RecyclerView.i
        public boolean a(@ah RecyclerView recyclerView, @ah View view, @ah Rect rect, boolean z, boolean z2) {
            return false;
        }

        d(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.i
        public boolean a(@ah RecyclerView.q qVar, @ah RecyclerView.w wVar, int i, @ai Bundle bundle) {
            if (h.this.l.a(i)) {
                return h.this.l.b(i);
            }
            return super.a(qVar, wVar, i, bundle);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.i
        public void a(@ah RecyclerView.q qVar, @ah RecyclerView.w wVar, @ah androidx.core.n.a.d dVar) {
            super.a(qVar, wVar, dVar);
            h.this.l.a(dVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.recyclerview.widget.LinearLayoutManager
        public void a(@ah RecyclerView.w wVar, @ah int[] iArr) {
            int offscreenPageLimit = h.this.getOffscreenPageLimit();
            if (offscreenPageLimit == -1) {
                super.a(wVar, iArr);
                return;
            }
            int pageSize = h.this.getPageSize() * offscreenPageLimit;
            iArr[0] = pageSize;
            iArr[1] = pageSize;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class j extends x {
        j() {
        }

        @Override // androidx.recyclerview.widget.x, androidx.recyclerview.widget.ab
        @ai
        public View a(RecyclerView.i iVar) {
            if (h.this.e()) {
                return null;
            }
            return super.a(iVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class n implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        private final int f1135a;
        private final RecyclerView b;

        n(int i, RecyclerView recyclerView) {
            this.f1135a = i;
            this.b = recyclerView;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.b.g(this.f1135a);
        }
    }

    public void a(@ah RecyclerView.h hVar) {
        this.j.a(hVar);
    }

    public void a(@ah RecyclerView.h hVar, int i2) {
        this.j.a(hVar, i2);
    }

    @ah
    public RecyclerView.h a(int i2) {
        return this.j.c(i2);
    }

    public int getItemDecorationCount() {
        return this.j.getItemDecorationCount();
    }

    public void i() {
        this.j.A();
    }

    public void b(int i2) {
        this.j.d(i2);
    }

    public void b(@ah RecyclerView.h hVar) {
        this.j.b(hVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public abstract class a {
        void a(@ah AccessibilityEvent accessibilityEvent) {
        }

        void a(AccessibilityNodeInfo accessibilityNodeInfo) {
        }

        void a(@ah androidx.core.n.a.d dVar) {
        }

        void a(@ai RecyclerView.a<?> aVar) {
        }

        void a(@ah androidx.viewpager2.a.b bVar, @ah RecyclerView recyclerView) {
        }

        boolean a() {
            return false;
        }

        boolean a(int i) {
            return false;
        }

        boolean a(int i, Bundle bundle) {
            return false;
        }

        void b(@ai RecyclerView.a<?> aVar) {
        }

        void c() {
        }

        void d() {
        }

        void e() {
        }

        void f() {
        }

        void g() {
        }

        boolean h() {
            return false;
        }

        private a() {
        }

        String b() {
            throw new IllegalStateException("Not implemented.");
        }

        boolean b(int i, Bundle bundle) {
            throw new IllegalStateException("Not implemented.");
        }

        boolean b(int i) {
            throw new IllegalStateException("Not implemented.");
        }

        CharSequence i() {
            throw new IllegalStateException("Not implemented.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class b extends a {
        @Override // androidx.viewpager2.a.h.a
        public boolean h() {
            return true;
        }

        b() {
            super();
        }

        @Override // androidx.viewpager2.a.h.a
        public boolean a(int i) {
            return (i == 8192 || i == 4096) && !h.this.g();
        }

        @Override // androidx.viewpager2.a.h.a
        public boolean b(int i) {
            if (a(i)) {
                return false;
            }
            throw new IllegalStateException();
        }

        @Override // androidx.viewpager2.a.h.a
        public void a(@ah androidx.core.n.a.d dVar) {
            if (h.this.g()) {
                return;
            }
            dVar.b(d.a.n);
            dVar.b(d.a.m);
            dVar.l(false);
        }

        @Override // androidx.viewpager2.a.h.a
        public CharSequence i() {
            if (h()) {
                return "androidx.viewpager.widget.ViewPager";
            }
            throw new IllegalStateException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.viewpager2.a.h$h, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class C0079h extends a {
        private final androidx.core.n.a.g c;
        private final androidx.core.n.a.g d;
        private RecyclerView.c e;

        @Override // androidx.viewpager2.a.h.a
        public boolean a() {
            return true;
        }

        @Override // androidx.viewpager2.a.h.a
        public boolean a(int i, Bundle bundle) {
            return i == 8192 || i == 4096;
        }

        C0079h() {
            super();
            this.c = new androidx.core.n.a.g() { // from class: androidx.viewpager2.a.h.h.1
                @Override // androidx.core.n.a.g
                public boolean a(@ah View view, @ai g.a aVar) {
                    C0079h.this.c(((h) view).getCurrentItem() + 1);
                    return true;
                }
            };
            this.d = new androidx.core.n.a.g() { // from class: androidx.viewpager2.a.h.h.2
                @Override // androidx.core.n.a.g
                public boolean a(@ah View view, @ai g.a aVar) {
                    C0079h.this.c(((h) view).getCurrentItem() - 1);
                    return true;
                }
            };
        }

        @Override // androidx.viewpager2.a.h.a
        public void a(@ah androidx.viewpager2.a.b bVar, @ah RecyclerView recyclerView) {
            af.e((View) recyclerView, 2);
            this.e = new c() { // from class: androidx.viewpager2.a.h.h.3
                @Override // androidx.viewpager2.a.h.c, androidx.recyclerview.widget.RecyclerView.c
                public void a() {
                    C0079h.this.j();
                }
            };
            if (af.i(h.this) == 0) {
                af.e((View) h.this, 1);
            }
        }

        @Override // androidx.viewpager2.a.h.a
        public String b() {
            if (a()) {
                return "androidx.viewpager.widget.ViewPager";
            }
            throw new IllegalStateException();
        }

        @Override // androidx.viewpager2.a.h.a
        public void c() {
            j();
        }

        @Override // androidx.viewpager2.a.h.a
        public void a(@ai RecyclerView.a<?> aVar) {
            j();
            if (aVar != null) {
                aVar.a(this.e);
            }
        }

        @Override // androidx.viewpager2.a.h.a
        public void b(@ai RecyclerView.a<?> aVar) {
            if (aVar != null) {
                aVar.b(this.e);
            }
        }

        @Override // androidx.viewpager2.a.h.a
        public void d() {
            j();
        }

        @Override // androidx.viewpager2.a.h.a
        public void e() {
            j();
        }

        @Override // androidx.viewpager2.a.h.a
        public void f() {
            j();
            if (Build.VERSION.SDK_INT < 21) {
                h.this.sendAccessibilityEvent(2048);
            }
        }

        @Override // androidx.viewpager2.a.h.a
        public void g() {
            j();
        }

        @Override // androidx.viewpager2.a.h.a
        public void a(AccessibilityNodeInfo accessibilityNodeInfo) {
            b(accessibilityNodeInfo);
            if (Build.VERSION.SDK_INT >= 16) {
                c(accessibilityNodeInfo);
            }
        }

        @Override // androidx.viewpager2.a.h.a
        public boolean b(int i, Bundle bundle) {
            int currentItem;
            if (!a(i, bundle)) {
                throw new IllegalStateException();
            }
            if (i == 8192) {
                currentItem = h.this.getCurrentItem() - 1;
            } else {
                currentItem = h.this.getCurrentItem() + 1;
            }
            c(currentItem);
            return true;
        }

        @Override // androidx.viewpager2.a.h.a
        public void a(@ah AccessibilityEvent accessibilityEvent) {
            accessibilityEvent.setSource(h.this);
            accessibilityEvent.setClassName(b());
        }

        void c(int i) {
            if (h.this.g()) {
                h.this.b(i, true);
            }
        }

        void j() {
            int a2;
            h hVar = h.this;
            int i = R.id.accessibilityActionPageLeft;
            af.f((View) hVar, R.id.accessibilityActionPageLeft);
            af.f((View) hVar, R.id.accessibilityActionPageRight);
            af.f((View) hVar, R.id.accessibilityActionPageUp);
            af.f((View) hVar, R.id.accessibilityActionPageDown);
            if (h.this.getAdapter() == null || (a2 = h.this.getAdapter().a()) == 0 || !h.this.g()) {
                return;
            }
            if (h.this.getOrientation() == 0) {
                boolean b = h.this.b();
                int i2 = b ? 16908360 : 16908361;
                if (b) {
                    i = 16908361;
                }
                if (h.this.h < a2 - 1) {
                    af.a(hVar, new d.a(i2, null), (CharSequence) null, this.c);
                }
                if (h.this.h > 0) {
                    af.a(hVar, new d.a(i, null), (CharSequence) null, this.d);
                    return;
                }
                return;
            }
            if (h.this.h < a2 - 1) {
                af.a(hVar, new d.a(R.id.accessibilityActionPageDown, null), (CharSequence) null, this.c);
            }
            if (h.this.h > 0) {
                af.a(hVar, new d.a(R.id.accessibilityActionPageUp, null), (CharSequence) null, this.d);
            }
        }

        private void b(AccessibilityNodeInfo accessibilityNodeInfo) {
            int i;
            int i2;
            if (h.this.getAdapter() == null) {
                i = 0;
                i2 = 0;
            } else if (h.this.getOrientation() == 1) {
                i = h.this.getAdapter().a();
                i2 = 0;
            } else {
                i2 = h.this.getAdapter().a();
                i = 0;
            }
            androidx.core.n.a.d.a(accessibilityNodeInfo).b(d.b.a(i, i2, false, 0));
        }

        private void c(AccessibilityNodeInfo accessibilityNodeInfo) {
            int a2;
            RecyclerView.a adapter = h.this.getAdapter();
            if (adapter == null || (a2 = adapter.a()) == 0 || !h.this.g()) {
                return;
            }
            if (h.this.h > 0) {
                accessibilityNodeInfo.addAction(8192);
            }
            if (h.this.h < a2 - 1) {
                accessibilityNodeInfo.addAction(4096);
            }
            accessibilityNodeInfo.setScrollable(true);
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static abstract class c extends RecyclerView.c {
        @Override // androidx.recyclerview.widget.RecyclerView.c
        public abstract void a();

        private c() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.c
        public final void a(int i, int i2) {
            a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.c
        public final void a(int i, int i2, @ai Object obj) {
            a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.c
        public final void b(int i, int i2) {
            a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.c
        public final void c(int i, int i2) {
            a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.c
        public final void a(int i, int i2, int i3) {
            a();
        }
    }
}
