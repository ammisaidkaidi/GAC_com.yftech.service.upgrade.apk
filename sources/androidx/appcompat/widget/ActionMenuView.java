package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.ap;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.n;
import androidx.appcompat.widget.aj;

/* loaded from: /home/user/work/dex/classes.dex */
public class ActionMenuView extends aj implements g.b, androidx.appcompat.view.menu.o {

    /* renamed from: a, reason: collision with root package name */
    static final int f156a = 56;
    static final int b = 4;
    private static final String k = "ActionMenuView";
    g.a c;
    e d;
    private androidx.appcompat.view.menu.g l;
    private Context m;
    private int n;
    private boolean o;
    private androidx.appcompat.widget.c p;
    private n.a q;
    private boolean r;
    private int s;
    private int t;
    private int u;

    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface a {
        boolean d();

        boolean e();
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface e {
        boolean a(MenuItem menuItem);
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.o
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public int getWindowAnimations() {
        return 0;
    }

    public ActionMenuView(@androidx.annotation.ah Context context) {
        this(context, null);
    }

    public ActionMenuView(@androidx.annotation.ah Context context, @androidx.annotation.ai AttributeSet attributeSet) {
        super(context, attributeSet);
        setBaselineAligned(false);
        float f = context.getResources().getDisplayMetrics().density;
        this.t = (int) (56.0f * f);
        this.u = (int) (f * 4.0f);
        this.m = context;
        this.n = 0;
    }

    public void setPopupTheme(@androidx.annotation.at int i) {
        if (this.n != i) {
            this.n = i;
            if (i == 0) {
                this.m = getContext();
            } else {
                this.m = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public int getPopupTheme() {
        return this.n;
    }

    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void setPresenter(androidx.appcompat.widget.c cVar) {
        this.p = cVar;
        this.p.a(this);
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.p != null) {
            this.p.a(false);
            if (this.p.j()) {
                this.p.g();
                this.p.e();
            }
        }
    }

    public void setOnMenuItemClickListener(e eVar) {
        this.d = eVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.aj, android.view.View
    public void onMeasure(int i, int i2) {
        boolean z = this.r;
        this.r = View.MeasureSpec.getMode(i) == 1073741824;
        if (z != this.r) {
            this.s = 0;
        }
        int size = View.MeasureSpec.getSize(i);
        if (this.r && this.l != null && size != this.s) {
            this.s = size;
            this.l.c(true);
        }
        int childCount = getChildCount();
        if (this.r && childCount > 0) {
            c(i, i2);
            return;
        }
        for (int i3 = 0; i3 < childCount; i3++) {
            c cVar = (c) getChildAt(i3).getLayoutParams();
            cVar.rightMargin = 0;
            cVar.leftMargin = 0;
        }
        super.onMeasure(i, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:148:0x024d A[ADDED_TO_REGION, LOOP:5: B:148:0x024d->B:153:0x026f, LOOP_START, PHI: r3 r32
      0x024d: PHI (r3v8 int) = (r3v7 int), (r3v9 int) binds: [B:147:0x024b, B:153:0x026f] A[DONT_GENERATE, DONT_INLINE]
      0x024d: PHI (r32v1 int) = (r32v0 int), (r32v2 int) binds: [B:147:0x024b, B:153:0x026f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0276  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x027b  */
    /* JADX WARN: Type inference failed for: r2v29 */
    /* JADX WARN: Type inference failed for: r2v30, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v45 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v16, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v20 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void c(int i, int i2) {
        boolean z;
        int i3;
        boolean z2;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        ?? r6;
        int i9;
        int i10;
        ?? r2;
        int i11;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int childMeasureSpec = getChildMeasureSpec(i2, paddingTop, -2);
        int i12 = size - paddingLeft;
        int i13 = i12 / this.t;
        int i14 = i12 % this.t;
        if (i13 == 0) {
            setMeasuredDimension(i12, 0);
            return;
        }
        int i15 = this.t + (i14 / i13);
        int childCount = getChildCount();
        int i16 = i13;
        int i17 = 0;
        int i18 = 0;
        boolean z3 = false;
        int i19 = 0;
        int i20 = 0;
        int i21 = 0;
        long j = 0;
        while (i17 < childCount) {
            View childAt = getChildAt(i17);
            int i22 = size2;
            if (childAt.getVisibility() == 8) {
                i9 = i12;
            } else {
                boolean z4 = childAt instanceof ActionMenuItemView;
                int i23 = i19 + 1;
                if (z4) {
                    i10 = i23;
                    i9 = i12;
                    r2 = 0;
                    childAt.setPadding(this.u, 0, this.u, 0);
                } else {
                    i9 = i12;
                    i10 = i23;
                    r2 = 0;
                }
                c cVar = (c) childAt.getLayoutParams();
                cVar.f = r2;
                cVar.c = r2;
                cVar.b = r2;
                cVar.d = r2;
                cVar.leftMargin = r2;
                cVar.rightMargin = r2;
                cVar.e = z4 && ((ActionMenuItemView) childAt).b();
                int a2 = a(childAt, i15, cVar.f157a ? 1 : i16, childMeasureSpec, paddingTop);
                int max = Math.max(i20, a2);
                if (cVar.d) {
                    i21++;
                }
                if (cVar.f157a) {
                    z3 = true;
                }
                i16 -= a2;
                i18 = Math.max(i18, childAt.getMeasuredHeight());
                if (a2 == 1) {
                    i11 = max;
                    j |= 1 << i17;
                } else {
                    i11 = max;
                }
                i19 = i10;
                i20 = i11;
            }
            i17++;
            size2 = i22;
            i12 = i9;
        }
        int i24 = i12;
        int i25 = size2;
        boolean z5 = z3 && i19 == 2;
        boolean z6 = false;
        while (i21 > 0 && i16 > 0) {
            int i26 = Integer.MAX_VALUE;
            int i27 = 0;
            int i28 = 0;
            long j2 = 0;
            while (i27 < childCount) {
                c cVar2 = (c) getChildAt(i27).getLayoutParams();
                boolean z7 = z6;
                if (cVar2.d) {
                    if (cVar2.b < i26) {
                        j2 = 1 << i27;
                        i26 = cVar2.b;
                        i28 = 1;
                    } else if (cVar2.b == i26) {
                        j2 |= 1 << i27;
                        i28++;
                    }
                }
                i27++;
                z6 = z7;
            }
            z = z6;
            j |= j2;
            if (i28 > i16) {
                break;
            }
            int i29 = i26 + 1;
            int i30 = 0;
            while (i30 < childCount) {
                View childAt2 = getChildAt(i30);
                c cVar3 = (c) childAt2.getLayoutParams();
                int i31 = i18;
                int i32 = childMeasureSpec;
                int i33 = childCount;
                long j3 = 1 << i30;
                if ((j2 & j3) == 0) {
                    if (cVar3.b == i29) {
                        j |= j3;
                    }
                } else {
                    if (z5 && cVar3.e) {
                        r6 = 1;
                        r6 = 1;
                        if (i16 == 1) {
                            childAt2.setPadding(this.u + i15, 0, this.u, 0);
                        }
                    } else {
                        r6 = 1;
                    }
                    cVar3.b += r6;
                    cVar3.f = r6;
                    i16--;
                }
                i30++;
                i18 = i31;
                childMeasureSpec = i32;
                childCount = i33;
            }
            z6 = true;
        }
        z = z6;
        int i34 = childMeasureSpec;
        int i35 = childCount;
        int i36 = i18;
        if (z3) {
            i3 = 1;
        } else {
            i3 = 1;
            if (i19 == 1) {
                z2 = true;
                if (i16 > 0 || j == 0 || (i16 >= i19 - i3 && !z2 && i20 <= i3)) {
                    i4 = i35;
                    i5 = 0;
                } else {
                    float bitCount = Long.bitCount(j);
                    if (z2) {
                        i5 = 0;
                    } else {
                        if ((j & 1) != 0) {
                            i5 = 0;
                            if (!((c) getChildAt(0).getLayoutParams()).e) {
                                bitCount -= 0.5f;
                            }
                        } else {
                            i5 = 0;
                        }
                        int i37 = i35 - 1;
                        if ((j & (1 << i37)) != 0 && !((c) getChildAt(i37).getLayoutParams()).e) {
                            bitCount -= 0.5f;
                        }
                    }
                    int i38 = bitCount > 0.0f ? (int) ((i16 * i15) / bitCount) : i5;
                    boolean z8 = z;
                    i4 = i35;
                    for (int i39 = i5; i39 < i4; i39++) {
                        if ((j & (1 << i39)) != 0) {
                            View childAt3 = getChildAt(i39);
                            c cVar4 = (c) childAt3.getLayoutParams();
                            if (childAt3 instanceof ActionMenuItemView) {
                                cVar4.c = i38;
                                cVar4.f = true;
                                if (i39 == 0 && !cVar4.e) {
                                    cVar4.leftMargin = (-i38) / 2;
                                }
                                z8 = true;
                            } else if (cVar4.f157a) {
                                cVar4.c = i38;
                                cVar4.f = true;
                                cVar4.rightMargin = (-i38) / 2;
                                z8 = true;
                            } else {
                                if (i39 != 0) {
                                    cVar4.leftMargin = i38 / 2;
                                }
                                if (i39 != i4 - 1) {
                                    cVar4.rightMargin = i38 / 2;
                                }
                            }
                        }
                    }
                    z = z8;
                }
                if (z) {
                    while (i5 < i4) {
                        View childAt4 = getChildAt(i5);
                        c cVar5 = (c) childAt4.getLayoutParams();
                        if (cVar5.f) {
                            i8 = i34;
                            childAt4.measure(View.MeasureSpec.makeMeasureSpec((cVar5.b * i15) + cVar5.c, androidx.d.c.b.a.b.b), i8);
                        } else {
                            i8 = i34;
                        }
                        i5++;
                        i34 = i8;
                    }
                }
                if (mode == 1073741824) {
                    i7 = i24;
                    i6 = i36;
                } else {
                    i6 = i25;
                    i7 = i24;
                }
                setMeasuredDimension(i7, i6);
            }
        }
        z2 = false;
        if (i16 > 0) {
        }
        i4 = i35;
        i5 = 0;
        if (z) {
        }
        if (mode == 1073741824) {
        }
        setMeasuredDimension(i7, i6);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(View view, int i, int i2, int i3, int i4) {
        c cVar = (c) view.getLayoutParams();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i3) - i4, View.MeasureSpec.getMode(i3));
        ActionMenuItemView actionMenuItemView = view instanceof ActionMenuItemView ? (ActionMenuItemView) view : null;
        boolean z = actionMenuItemView != null && actionMenuItemView.b();
        int i5 = 2;
        if (i2 <= 0 || (z && i2 < 2)) {
            i5 = 0;
        } else {
            view.measure(View.MeasureSpec.makeMeasureSpec(i2 * i, Integer.MIN_VALUE), makeMeasureSpec);
            int measuredWidth = view.getMeasuredWidth();
            int i6 = measuredWidth / i;
            if (measuredWidth % i != 0) {
                i6++;
            }
            if (!z || i6 >= 2) {
                i5 = i6;
            }
        }
        cVar.d = !cVar.f157a && z;
        cVar.b = i5;
        view.measure(View.MeasureSpec.makeMeasureSpec(i * i5, androidx.d.c.b.a.b.b), makeMeasureSpec);
        return i5;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.aj, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int width;
        int i7;
        if (!this.r) {
            super.onLayout(z, i, i2, i3, i4);
            return;
        }
        int childCount = getChildCount();
        int i8 = (i4 - i2) / 2;
        int dividerWidth = getDividerWidth();
        int i9 = i3 - i;
        int paddingRight = (i9 - getPaddingRight()) - getPaddingLeft();
        boolean a2 = bg.a(this);
        int i10 = paddingRight;
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt = getChildAt(i13);
            if (childAt.getVisibility() != 8) {
                c cVar = (c) childAt.getLayoutParams();
                if (cVar.f157a) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    if (a(i13)) {
                        measuredWidth += dividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (a2) {
                        i7 = getPaddingLeft() + cVar.leftMargin;
                        width = i7 + measuredWidth;
                    } else {
                        width = (getWidth() - getPaddingRight()) - cVar.rightMargin;
                        i7 = width - measuredWidth;
                    }
                    int i14 = i8 - (measuredHeight / 2);
                    childAt.layout(i7, i14, width, measuredHeight + i14);
                    i10 -= measuredWidth;
                    i11 = 1;
                } else {
                    i10 -= (childAt.getMeasuredWidth() + cVar.leftMargin) + cVar.rightMargin;
                    a(i13);
                    i12++;
                }
            }
        }
        if (childCount == 1 && i11 == 0) {
            View childAt2 = getChildAt(0);
            int measuredWidth2 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i15 = (i9 / 2) - (measuredWidth2 / 2);
            int i16 = i8 - (measuredHeight2 / 2);
            childAt2.layout(i15, i16, measuredWidth2 + i15, measuredHeight2 + i16);
            return;
        }
        int i17 = i12 - (i11 ^ 1);
        if (i17 > 0) {
            i6 = i10 / i17;
            i5 = 0;
        } else {
            i5 = 0;
            i6 = 0;
        }
        int max = Math.max(i5, i6);
        if (a2) {
            int width2 = getWidth() - getPaddingRight();
            while (i5 < childCount) {
                View childAt3 = getChildAt(i5);
                c cVar2 = (c) childAt3.getLayoutParams();
                if (childAt3.getVisibility() != 8 && !cVar2.f157a) {
                    int i18 = width2 - cVar2.rightMargin;
                    int measuredWidth3 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i19 = i8 - (measuredHeight3 / 2);
                    childAt3.layout(i18 - measuredWidth3, i19, i18, measuredHeight3 + i19);
                    width2 = i18 - ((measuredWidth3 + cVar2.leftMargin) + max);
                }
                i5++;
            }
            return;
        }
        int paddingLeft = getPaddingLeft();
        while (i5 < childCount) {
            View childAt4 = getChildAt(i5);
            c cVar3 = (c) childAt4.getLayoutParams();
            if (childAt4.getVisibility() != 8 && !cVar3.f157a) {
                int i20 = paddingLeft + cVar3.leftMargin;
                int measuredWidth4 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i21 = i8 - (measuredHeight4 / 2);
                childAt4.layout(i20, i21, i20 + measuredWidth4, measuredHeight4 + i21);
                paddingLeft = i20 + measuredWidth4 + cVar3.rightMargin + max;
            }
            i5++;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        i();
    }

    public void setOverflowIcon(@androidx.annotation.ai Drawable drawable) {
        getMenu();
        this.p.a(drawable);
    }

    @androidx.annotation.ai
    public Drawable getOverflowIcon() {
        getMenu();
        return this.p.d();
    }

    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public boolean a() {
        return this.o;
    }

    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void setOverflowReserved(boolean z) {
        this.o = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.aj
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public c generateDefaultLayoutParams() {
        c cVar = new c(-2, -2);
        cVar.h = 16;
        return cVar;
    }

    @Override // androidx.appcompat.widget.aj, android.view.ViewGroup
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public c generateLayoutParams(AttributeSet attributeSet) {
        return new c(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.aj, android.view.ViewGroup
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public c generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        c cVar;
        if (layoutParams != null) {
            if (layoutParams instanceof c) {
                cVar = new c((c) layoutParams);
            } else {
                cVar = new c(layoutParams);
            }
            if (cVar.h <= 0) {
                cVar.h = 16;
            }
            return cVar;
        }
        return generateDefaultLayoutParams();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.aj, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof c;
    }

    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public c c() {
        c generateDefaultLayoutParams = generateDefaultLayoutParams();
        generateDefaultLayoutParams.f157a = true;
        return generateDefaultLayoutParams;
    }

    @Override // androidx.appcompat.view.menu.g.b
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public boolean a(androidx.appcompat.view.menu.j jVar) {
        return this.l.a(jVar, 0);
    }

    @Override // androidx.appcompat.view.menu.o
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void a(androidx.appcompat.view.menu.g gVar) {
        this.l = gVar;
    }

    public Menu getMenu() {
        if (this.l == null) {
            Context context = getContext();
            this.l = new androidx.appcompat.view.menu.g(context);
            this.l.a(new d());
            this.p = new androidx.appcompat.widget.c(context);
            this.p.b(true);
            this.p.a(this.q != null ? this.q : new b());
            this.l.a(this.p, this.m);
            this.p.a(this);
        }
        return this.l;
    }

    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void a(n.a aVar, g.a aVar2) {
        this.q = aVar;
        this.c = aVar2;
    }

    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public androidx.appcompat.view.menu.g d() {
        return this.l;
    }

    public boolean e() {
        return this.p != null && this.p.e();
    }

    public boolean f() {
        return this.p != null && this.p.g();
    }

    public boolean g() {
        return this.p != null && this.p.j();
    }

    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public boolean h() {
        return this.p != null && this.p.k();
    }

    public void i() {
        if (this.p != null) {
            this.p.h();
        }
    }

    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    protected boolean a(int i) {
        boolean z = false;
        if (i == 0) {
            return false;
        }
        KeyEvent.Callback childAt = getChildAt(i - 1);
        KeyEvent.Callback childAt2 = getChildAt(i);
        if (i < getChildCount() && (childAt instanceof a)) {
            z = false | ((a) childAt).e();
        }
        return (i <= 0 || !(childAt2 instanceof a)) ? z : z | ((a) childAt2).d();
    }

    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void setExpandedActionViewsExclusive(boolean z) {
        this.p.c(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class d implements g.a {
        d() {
        }

        @Override // androidx.appcompat.view.menu.g.a
        public boolean a(@androidx.annotation.ah androidx.appcompat.view.menu.g gVar, @androidx.annotation.ah MenuItem menuItem) {
            return ActionMenuView.this.d != null && ActionMenuView.this.d.a(menuItem);
        }

        @Override // androidx.appcompat.view.menu.g.a
        public void a(@androidx.annotation.ah androidx.appcompat.view.menu.g gVar) {
            if (ActionMenuView.this.c != null) {
                ActionMenuView.this.c.a(gVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class b implements n.a {
        @Override // androidx.appcompat.view.menu.n.a
        public void a(@androidx.annotation.ah androidx.appcompat.view.menu.g gVar, boolean z) {
        }

        @Override // androidx.appcompat.view.menu.n.a
        public boolean a(@androidx.annotation.ah androidx.appcompat.view.menu.g gVar) {
            return false;
        }

        b() {
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class c extends aj.b {

        /* renamed from: a, reason: collision with root package name */
        @ViewDebug.ExportedProperty
        public boolean f157a;

        @ViewDebug.ExportedProperty
        public int b;

        @ViewDebug.ExportedProperty
        public int c;

        @ViewDebug.ExportedProperty
        public boolean d;

        @ViewDebug.ExportedProperty
        public boolean e;
        boolean f;

        public c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public c(c cVar) {
            super((ViewGroup.LayoutParams) cVar);
            this.f157a = cVar.f157a;
        }

        public c(int i, int i2) {
            super(i, i2);
            this.f157a = false;
        }

        c(int i, int i2, boolean z) {
            super(i, i2);
            this.f157a = z;
        }
    }
}
