package androidx.appcompat.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.OverScroller;
import androidx.annotation.ap;
import androidx.appcompat.a;
import androidx.appcompat.view.menu.n;
import androidx.appcompat.widget.ActivityChooserView;
import androidx.core.n.ao;

@SuppressLint({"UnknownNullness"})
@androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public class ActionBarOverlayLayout extends ViewGroup implements ad, androidx.core.n.u, androidx.core.n.v, androidx.core.n.w {
    private static final int D = 600;
    static final int[] e = {a.b.actionBarSize, R.attr.windowContentOverlay};
    private static final String f = "ActionBarOverlayLayout";

    @androidx.annotation.ah
    private androidx.core.n.ao A;

    @androidx.annotation.ah
    private androidx.core.n.ao B;
    private a C;
    private OverScroller E;
    private final Runnable F;
    private final Runnable G;
    private final androidx.core.n.x H;

    /* renamed from: a, reason: collision with root package name */
    ActionBarContainer f152a;
    boolean b;
    ViewPropertyAnimator c;
    final AnimatorListenerAdapter d;
    private int g;
    private int h;
    private ContentFrameLayout i;
    private ae j;
    private Drawable k;
    private boolean l;
    private boolean m;
    private boolean n;
    private boolean o;
    private int p;
    private int q;
    private final Rect r;
    private final Rect s;
    private final Rect t;
    private final Rect u;
    private final Rect v;
    private final Rect w;
    private final Rect x;

    @androidx.annotation.ah
    private androidx.core.n.ao y;

    @androidx.annotation.ah
    private androidx.core.n.ao z;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface a {
        void B();

        void C();

        void D();

        void E();

        void k(boolean z);

        void n(int i);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.n.u
    public boolean onNestedPreFling(View view, float f2, float f3) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.n.u
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
    }

    public void setShowingForActionMode(boolean z) {
    }

    @Override // androidx.appcompat.widget.ad
    public void setUiOptions(int i) {
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public ActionBarOverlayLayout(@androidx.annotation.ah Context context) {
        this(context, null);
    }

    public ActionBarOverlayLayout(@androidx.annotation.ah Context context, @androidx.annotation.ai AttributeSet attributeSet) {
        super(context, attributeSet);
        this.h = 0;
        this.r = new Rect();
        this.s = new Rect();
        this.t = new Rect();
        this.u = new Rect();
        this.v = new Rect();
        this.w = new Rect();
        this.x = new Rect();
        this.y = androidx.core.n.ao.f540a;
        this.z = androidx.core.n.ao.f540a;
        this.A = androidx.core.n.ao.f540a;
        this.B = androidx.core.n.ao.f540a;
        this.d = new AnimatorListenerAdapter() { // from class: androidx.appcompat.widget.ActionBarOverlayLayout.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ActionBarOverlayLayout.this.c = null;
                ActionBarOverlayLayout.this.b = false;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                ActionBarOverlayLayout.this.c = null;
                ActionBarOverlayLayout.this.b = false;
            }
        };
        this.F = new Runnable() { // from class: androidx.appcompat.widget.ActionBarOverlayLayout.2
            @Override // java.lang.Runnable
            public void run() {
                ActionBarOverlayLayout.this.e();
                ActionBarOverlayLayout.this.c = ActionBarOverlayLayout.this.f152a.animate().translationY(0.0f).setListener(ActionBarOverlayLayout.this.d);
            }
        };
        this.G = new Runnable() { // from class: androidx.appcompat.widget.ActionBarOverlayLayout.3
            @Override // java.lang.Runnable
            public void run() {
                ActionBarOverlayLayout.this.e();
                ActionBarOverlayLayout.this.c = ActionBarOverlayLayout.this.f152a.animate().translationY(-ActionBarOverlayLayout.this.f152a.getHeight()).setListener(ActionBarOverlayLayout.this.d);
            }
        };
        a(context);
        this.H = new androidx.core.n.x(this);
    }

    private void a(Context context) {
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(e);
        this.g = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.k = obtainStyledAttributes.getDrawable(1);
        setWillNotDraw(this.k == null);
        obtainStyledAttributes.recycle();
        this.l = context.getApplicationInfo().targetSdkVersion < 19;
        this.E = new OverScroller(context);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        e();
    }

    public void setActionBarVisibilityCallback(a aVar) {
        this.C = aVar;
        if (getWindowToken() != null) {
            this.C.n(this.h);
            if (this.q != 0) {
                onWindowSystemUiVisibilityChanged(this.q);
                androidx.core.n.af.T(this);
            }
        }
    }

    public void setOverlayMode(boolean z) {
        this.m = z;
        this.l = z && getContext().getApplicationInfo().targetSdkVersion < 19;
    }

    public boolean a() {
        return this.m;
    }

    public void setHasNonEmbeddedTabs(boolean z) {
        this.n = z;
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        a(getContext());
        androidx.core.n.af.T(this);
    }

    @Override // android.view.View
    public void onWindowSystemUiVisibilityChanged(int i) {
        if (Build.VERSION.SDK_INT >= 16) {
            super.onWindowSystemUiVisibilityChanged(i);
        }
        c();
        int i2 = this.q ^ i;
        this.q = i;
        boolean z = (i & 4) == 0;
        boolean z2 = (i & 256) != 0;
        if (this.C != null) {
            this.C.k(!z2);
            if (z || !z2) {
                this.C.B();
            } else {
                this.C.C();
            }
        }
        if ((i2 & 256) == 0 || this.C == null) {
            return;
        }
        androidx.core.n.af.T(this);
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        this.h = i;
        if (this.C != null) {
            this.C.n(i);
        }
    }

    private boolean a(@androidx.annotation.ah View view, @androidx.annotation.ah Rect rect, boolean z, boolean z2, boolean z3, boolean z4) {
        boolean z5;
        b bVar = (b) view.getLayoutParams();
        if (!z || bVar.leftMargin == rect.left) {
            z5 = false;
        } else {
            bVar.leftMargin = rect.left;
            z5 = true;
        }
        if (z2 && bVar.topMargin != rect.top) {
            bVar.topMargin = rect.top;
            z5 = true;
        }
        if (z4 && bVar.rightMargin != rect.right) {
            bVar.rightMargin = rect.right;
            z5 = true;
        }
        if (!z3 || bVar.bottomMargin == rect.bottom) {
            return z5;
        }
        bVar.bottomMargin = rect.bottom;
        return true;
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        if (Build.VERSION.SDK_INT >= 21) {
            return super.fitSystemWindows(rect);
        }
        c();
        boolean a2 = a((View) this.f152a, rect, true, true, false, true);
        this.u.set(rect);
        bg.a(this, this.u, this.r);
        if (!this.v.equals(this.u)) {
            this.v.set(this.u);
            a2 = true;
        }
        if (!this.s.equals(this.r)) {
            this.s.set(this.r);
            a2 = true;
        }
        if (a2) {
            requestLayout();
        }
        return true;
    }

    @Override // android.view.View
    @androidx.annotation.am(a = 21)
    public WindowInsets onApplyWindowInsets(@androidx.annotation.ah WindowInsets windowInsets) {
        c();
        androidx.core.n.ao a2 = androidx.core.n.ao.a(windowInsets);
        boolean a3 = a((View) this.f152a, new Rect(a2.a(), a2.b(), a2.c(), a2.d()), true, true, false, true);
        androidx.core.n.af.a(this, a2, this.r);
        this.y = a2.b(this.r.left, this.r.top, this.r.right, this.r.bottom);
        if (!this.z.equals(this.y)) {
            this.z = this.y;
            a3 = true;
        }
        if (!this.s.equals(this.r)) {
            this.s.set(this.r);
            a3 = true;
        }
        if (a3) {
            requestLayout();
        }
        return a2.q().i().o().w();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public b generateDefaultLayoutParams() {
        return new b(-1, -1);
    }

    @Override // android.view.ViewGroup
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public b generateLayoutParams(AttributeSet attributeSet) {
        return new b(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new b(layoutParams);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof b;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int measuredHeight;
        c();
        measureChildWithMargins(this.f152a, i, 0, i2, 0);
        b bVar = (b) this.f152a.getLayoutParams();
        int max = Math.max(0, this.f152a.getMeasuredWidth() + bVar.leftMargin + bVar.rightMargin);
        int max2 = Math.max(0, this.f152a.getMeasuredHeight() + bVar.topMargin + bVar.bottomMargin);
        int combineMeasuredStates = View.combineMeasuredStates(0, this.f152a.getMeasuredState());
        boolean z = (androidx.core.n.af.S(this) & 256) != 0;
        if (z) {
            measuredHeight = this.g;
            if (this.n && this.f152a.getTabContainer() != null) {
                measuredHeight += this.g;
            }
        } else {
            measuredHeight = this.f152a.getVisibility() != 8 ? this.f152a.getMeasuredHeight() : 0;
        }
        this.t.set(this.r);
        if (Build.VERSION.SDK_INT >= 21) {
            this.A = this.y;
        } else {
            this.w.set(this.u);
        }
        if (!this.m && !z) {
            this.t.top += measuredHeight;
            this.t.bottom += 0;
            if (Build.VERSION.SDK_INT >= 21) {
                this.A = this.A.b(0, measuredHeight, 0, 0);
            }
        } else if (Build.VERSION.SDK_INT >= 21) {
            this.A = new ao.a(this.A).a(androidx.core.graphics.f.a(this.A.a(), this.A.b() + measuredHeight, this.A.c(), this.A.d() + 0)).a();
        } else {
            this.w.top += measuredHeight;
            this.w.bottom += 0;
        }
        a((View) this.i, this.t, true, true, true, true);
        if (Build.VERSION.SDK_INT >= 21 && !this.B.equals(this.A)) {
            this.B = this.A;
            androidx.core.n.af.b(this.i, this.A);
        } else if (Build.VERSION.SDK_INT < 21 && !this.x.equals(this.w)) {
            this.x.set(this.w);
            this.i.a(this.w);
        }
        measureChildWithMargins(this.i, i, 0, i2, 0);
        b bVar2 = (b) this.i.getLayoutParams();
        int max3 = Math.max(max, this.i.getMeasuredWidth() + bVar2.leftMargin + bVar2.rightMargin);
        int max4 = Math.max(max2, this.i.getMeasuredHeight() + bVar2.topMargin + bVar2.bottomMargin);
        int combineMeasuredStates2 = View.combineMeasuredStates(combineMeasuredStates, this.i.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(max3 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i, combineMeasuredStates2), View.resolveSizeAndState(Math.max(max4 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i2, combineMeasuredStates2 << 16));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                b bVar = (b) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i6 = bVar.leftMargin + paddingLeft;
                int i7 = bVar.topMargin + paddingTop;
                childAt.layout(i6, i7, measuredWidth + i6, measuredHeight + i7);
            }
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.k == null || this.l) {
            return;
        }
        int bottom = this.f152a.getVisibility() == 0 ? (int) (this.f152a.getBottom() + this.f152a.getTranslationY() + 0.5f) : 0;
        this.k.setBounds(0, bottom, getWidth(), this.k.getIntrinsicHeight() + bottom);
        this.k.draw(canvas);
    }

    @Override // androidx.core.n.w
    public void a(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        a(view, i, i2, i3, i4, i5);
    }

    @Override // androidx.core.n.v
    public boolean a(View view, View view2, int i, int i2) {
        return i2 == 0 && onStartNestedScroll(view, view2, i);
    }

    @Override // androidx.core.n.v
    public void b(View view, View view2, int i, int i2) {
        if (i2 == 0) {
            onNestedScrollAccepted(view, view2, i);
        }
    }

    @Override // androidx.core.n.v
    public void a(View view, int i) {
        if (i == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // androidx.core.n.v
    public void a(View view, int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            onNestedScroll(view, i, i2, i3, i4);
        }
    }

    @Override // androidx.core.n.v
    public void a(View view, int i, int i2, int[] iArr, int i3) {
        if (i3 == 0) {
            onNestedPreScroll(view, i, i2, iArr);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.n.u
    public boolean onStartNestedScroll(View view, View view2, int i) {
        if ((i & 2) == 0 || this.f152a.getVisibility() != 0) {
            return false;
        }
        return this.o;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.n.u
    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.H.a(view, view2, i);
        this.p = getActionBarHideOffset();
        e();
        if (this.C != null) {
            this.C.D();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.n.u
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        this.p += i2;
        setActionBarHideOffset(this.p);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.n.u
    public void onStopNestedScroll(View view) {
        if (this.o && !this.b) {
            if (this.p <= this.f152a.getHeight()) {
                o();
            } else {
                p();
            }
        }
        if (this.C != null) {
            this.C.E();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.n.u
    public boolean onNestedFling(View view, float f2, float f3, boolean z) {
        if (!this.o || !z) {
            return false;
        }
        if (a(f3)) {
            r();
        } else {
            q();
        }
        this.b = true;
        return true;
    }

    @Override // android.view.ViewGroup, androidx.core.n.u
    public int getNestedScrollAxes() {
        return this.H.a();
    }

    void c() {
        if (this.i == null) {
            this.i = (ContentFrameLayout) findViewById(a.g.action_bar_activity_content);
            this.f152a = (ActionBarContainer) findViewById(a.g.action_bar_container);
            this.j = a(findViewById(a.g.action_bar));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ae a(View view) {
        if (view instanceof ae) {
            return (ae) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        throw new IllegalStateException("Can't make a decor toolbar out of " + view.getClass().getSimpleName());
    }

    public void setHideOnContentScrollEnabled(boolean z) {
        if (z != this.o) {
            this.o = z;
            if (z) {
                return;
            }
            e();
            setActionBarHideOffset(0);
        }
    }

    public boolean d() {
        return this.o;
    }

    public int getActionBarHideOffset() {
        if (this.f152a != null) {
            return -((int) this.f152a.getTranslationY());
        }
        return 0;
    }

    public void setActionBarHideOffset(int i) {
        e();
        this.f152a.setTranslationY(-Math.max(0, Math.min(i, this.f152a.getHeight())));
    }

    void e() {
        removeCallbacks(this.F);
        removeCallbacks(this.G);
        if (this.c != null) {
            this.c.cancel();
        }
    }

    private void o() {
        e();
        postDelayed(this.F, 600L);
    }

    private void p() {
        e();
        postDelayed(this.G, 600L);
    }

    private void q() {
        e();
        this.F.run();
    }

    private void r() {
        e();
        this.G.run();
    }

    private boolean a(float f2) {
        this.E.fling(0, 0, 0, (int) f2, 0, 0, Integer.MIN_VALUE, ActivityChooserView.a.f166a);
        return this.E.getFinalY() > this.f152a.getHeight();
    }

    @Override // androidx.appcompat.widget.ad
    public void setWindowCallback(Window.Callback callback) {
        c();
        this.j.a(callback);
    }

    @Override // androidx.appcompat.widget.ad
    public void setWindowTitle(CharSequence charSequence) {
        c();
        this.j.a(charSequence);
    }

    @Override // androidx.appcompat.widget.ad
    public CharSequence getTitle() {
        c();
        return this.j.e();
    }

    @Override // androidx.appcompat.widget.ad
    public void a(int i) {
        c();
        if (i == 2) {
            this.j.g();
        } else if (i == 5) {
            this.j.h();
        } else {
            if (i != 109) {
                return;
            }
            setOverlayMode(true);
        }
    }

    @Override // androidx.appcompat.widget.ad
    public boolean f() {
        c();
        return this.j.i();
    }

    @Override // androidx.appcompat.widget.ad
    public boolean g() {
        c();
        return this.j.j();
    }

    @Override // androidx.appcompat.widget.ad
    public void setIcon(int i) {
        c();
        this.j.a(i);
    }

    @Override // androidx.appcompat.widget.ad
    public void setIcon(Drawable drawable) {
        c();
        this.j.a(drawable);
    }

    @Override // androidx.appcompat.widget.ad
    public void setLogo(int i) {
        c();
        this.j.b(i);
    }

    @Override // androidx.appcompat.widget.ad
    public boolean h() {
        c();
        return this.j.k();
    }

    @Override // androidx.appcompat.widget.ad
    public boolean i() {
        c();
        return this.j.l();
    }

    @Override // androidx.appcompat.widget.ad
    public boolean j() {
        c();
        return this.j.m();
    }

    @Override // androidx.appcompat.widget.ad
    public boolean k() {
        c();
        return this.j.n();
    }

    @Override // androidx.appcompat.widget.ad
    public boolean l() {
        c();
        return this.j.o();
    }

    @Override // androidx.appcompat.widget.ad
    public void m() {
        c();
        this.j.p();
    }

    @Override // androidx.appcompat.widget.ad
    public void a(Menu menu, n.a aVar) {
        c();
        this.j.a(menu, aVar);
    }

    @Override // androidx.appcompat.widget.ad
    public void a(SparseArray<Parcelable> sparseArray) {
        c();
        this.j.a(sparseArray);
    }

    @Override // androidx.appcompat.widget.ad
    public void b(SparseArray<Parcelable> sparseArray) {
        c();
        this.j.b(sparseArray);
    }

    @Override // androidx.appcompat.widget.ad
    public void n() {
        c();
        this.j.q();
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class b extends ViewGroup.MarginLayoutParams {
        public b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public b(int i, int i2) {
            super(i, i2);
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }
}
