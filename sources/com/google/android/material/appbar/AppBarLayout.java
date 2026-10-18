package com.google.android.material.appbar;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ScrollView;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.am;
import androidx.annotation.ap;
import androidx.annotation.ax;
import androidx.annotation.k;
import androidx.annotation.q;
import androidx.annotation.w;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.n.a.d;
import androidx.core.n.a.g;
import androidx.core.n.af;
import androidx.core.n.ao;
import androidx.core.n.y;
import com.google.android.material.a;
import com.google.android.material.internal.s;
import com.google.android.material.t.j;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class AppBarLayout extends LinearLayout implements CoordinatorLayout.a {

    /* renamed from: a, reason: collision with root package name */
    static final int f1155a = 0;
    static final int b = 1;
    static final int c = 2;
    static final int d = 4;
    static final int e = 8;
    private static final int f = a.n.Widget_Design_AppBarLayout;
    private static final int g = -1;
    private int h;
    private int i;
    private int j;
    private int k;
    private boolean l;
    private int m;

    @ai
    private ao n;
    private List<a> o;
    private boolean p;
    private boolean q;
    private boolean r;
    private boolean s;

    @w
    private int t;

    @ai
    private WeakReference<View> u;

    @ai
    private ValueAnimator v;
    private int[] w;

    @ai
    private Drawable x;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface a<T extends AppBarLayout> {
        void a(T t, int i);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface c extends a<AppBarLayout> {
        @Override // com.google.android.material.appbar.AppBarLayout.a
        void a(AppBarLayout appBarLayout, int i);
    }

    @Deprecated
    public float getTargetElevation() {
        return 0.0f;
    }

    public AppBarLayout(@ah Context context) {
        this(context, null);
    }

    public AppBarLayout(@ah Context context, @ai AttributeSet attributeSet) {
        this(context, attributeSet, a.c.appBarLayoutStyle);
    }

    public AppBarLayout(@ah Context context, @ai AttributeSet attributeSet, int i) {
        super(com.google.android.material.theme.a.a.a(context, attributeSet, i, f), attributeSet, i);
        this.i = -1;
        this.j = -1;
        this.k = -1;
        this.m = 0;
        Context context2 = getContext();
        setOrientation(1);
        if (Build.VERSION.SDK_INT >= 21) {
            f.a(this);
            f.a(this, attributeSet, i, f);
        }
        TypedArray a2 = s.a(context2, attributeSet, a.o.AppBarLayout, i, f, new int[0]);
        af.a(this, a2.getDrawable(a.o.AppBarLayout_android_background));
        if (getBackground() instanceof ColorDrawable) {
            ColorDrawable colorDrawable = (ColorDrawable) getBackground();
            j jVar = new j();
            jVar.g(ColorStateList.valueOf(colorDrawable.getColor()));
            jVar.b(context2);
            af.a(this, jVar);
        }
        if (a2.hasValue(a.o.AppBarLayout_expanded)) {
            a(a2.getBoolean(a.o.AppBarLayout_expanded, false), false, false);
        }
        if (Build.VERSION.SDK_INT >= 21 && a2.hasValue(a.o.AppBarLayout_elevation)) {
            f.a(this, a2.getDimensionPixelSize(a.o.AppBarLayout_elevation, 0));
        }
        if (Build.VERSION.SDK_INT >= 26) {
            if (a2.hasValue(a.o.AppBarLayout_android_keyboardNavigationCluster)) {
                setKeyboardNavigationCluster(a2.getBoolean(a.o.AppBarLayout_android_keyboardNavigationCluster, false));
            }
            if (a2.hasValue(a.o.AppBarLayout_android_touchscreenBlocksFocus)) {
                setTouchscreenBlocksFocus(a2.getBoolean(a.o.AppBarLayout_android_touchscreenBlocksFocus, false));
            }
        }
        this.s = a2.getBoolean(a.o.AppBarLayout_liftOnScroll, false);
        this.t = a2.getResourceId(a.o.AppBarLayout_liftOnScrollTargetViewId, -1);
        setStatusBarForeground(a2.getDrawable(a.o.AppBarLayout_statusBarForeground));
        a2.recycle();
        af.a(this, new y() { // from class: com.google.android.material.appbar.AppBarLayout.1
            @Override // androidx.core.n.y
            public ao a(View view, ao aoVar) {
                return AppBarLayout.this.a(aoVar);
            }
        });
    }

    public void a(@ai a aVar) {
        if (this.o == null) {
            this.o = new ArrayList();
        }
        if (aVar == null || this.o.contains(aVar)) {
            return;
        }
        this.o.add(aVar);
    }

    public void a(c cVar) {
        a((a) cVar);
    }

    public void b(@ai a aVar) {
        if (this.o == null || aVar == null) {
            return;
        }
        this.o.remove(aVar);
    }

    public void b(c cVar) {
        b((a) cVar);
    }

    public void setStatusBarForeground(@ai Drawable drawable) {
        if (this.x != drawable) {
            if (this.x != null) {
                this.x.setCallback(null);
            }
            this.x = drawable != null ? drawable.mutate() : null;
            if (this.x != null) {
                if (this.x.isStateful()) {
                    this.x.setState(getDrawableState());
                }
                androidx.core.graphics.drawable.a.b(this.x, af.p(this));
                this.x.setVisible(getVisibility() == 0, false);
                this.x.setCallback(this);
            }
            f();
            af.h(this);
        }
    }

    public void setStatusBarForegroundColor(@k int i) {
        setStatusBarForeground(new ColorDrawable(i));
    }

    public void setStatusBarForegroundResource(@q int i) {
        setStatusBarForeground(androidx.appcompat.a.a.a.b(getContext(), i));
    }

    @ai
    public Drawable getStatusBarForeground() {
        return this.x;
    }

    @Override // android.view.View
    public void draw(@ah Canvas canvas) {
        super.draw(canvas);
        if (g()) {
            int save = canvas.save();
            canvas.translate(0.0f, -this.h);
            this.x.draw(canvas);
            canvas.restoreToCount(save);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.x;
        if (drawable != null && drawable.isStateful() && drawable.setState(drawableState)) {
            invalidateDrawable(drawable);
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(@ah Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.x;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        if (this.x != null) {
            this.x.setVisible(z, false);
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i2);
        if (mode != 1073741824 && af.U(this) && k()) {
            int measuredHeight = getMeasuredHeight();
            if (mode == Integer.MIN_VALUE) {
                measuredHeight = androidx.core.g.a.a(getMeasuredHeight() + getTopInset(), 0, View.MeasureSpec.getSize(i2));
            } else if (mode == 0) {
                measuredHeight += getTopInset();
            }
            setMeasuredDimension(getMeasuredWidth(), measuredHeight);
        }
        i();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (af.U(this) && k()) {
            int topInset = getTopInset();
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                af.n(getChildAt(childCount), topInset);
            }
        }
        i();
        this.l = false;
        int childCount2 = getChildCount();
        int i5 = 0;
        while (true) {
            if (i5 >= childCount2) {
                break;
            }
            if (((b) getChildAt(i5).getLayoutParams()).b() != null) {
                this.l = true;
                break;
            }
            i5++;
        }
        if (this.x != null) {
            this.x.setBounds(0, 0, getWidth(), getTopInset());
        }
        if (this.p) {
            return;
        }
        d(this.s || h());
    }

    private void f() {
        setWillNotDraw(!g());
    }

    private boolean g() {
        return this.x != null && getTopInset() > 0;
    }

    private boolean h() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (((b) getChildAt(i).getLayoutParams()).c()) {
                return true;
            }
        }
        return false;
    }

    private void i() {
        this.i = -1;
        this.j = -1;
        this.k = -1;
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i) {
        if (i != 1) {
            throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
        }
        super.setOrientation(i);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.google.android.material.t.k.a(this);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.a
    @ah
    public CoordinatorLayout.b<AppBarLayout> getBehavior() {
        return new Behavior();
    }

    @Override // android.view.View
    @am(a = 21)
    public void setElevation(float f2) {
        super.setElevation(f2);
        com.google.android.material.t.k.a(this, f2);
    }

    public void setExpanded(boolean z) {
        a(z, af.ag(this));
    }

    public void a(boolean z, boolean z2) {
        a(z, z2, true);
    }

    private void a(boolean z, boolean z2, boolean z3) {
        this.m = (z ? 1 : 2) | (z2 ? 4 : 0) | (z3 ? 8 : 0);
        requestLayout();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public b generateDefaultLayoutParams() {
        return new b(-1, -2);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public b generateLayoutParams(AttributeSet attributeSet) {
        return new b(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public b generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (Build.VERSION.SDK_INT >= 19 && (layoutParams instanceof LinearLayout.LayoutParams)) {
            return new b((LinearLayout.LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new b((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new b(layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        j();
    }

    boolean b() {
        return this.l;
    }

    public final int getTotalScrollRange() {
        if (this.i != -1) {
            return this.i;
        }
        int childCount = getChildCount();
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i >= childCount) {
                break;
            }
            View childAt = getChildAt(i);
            b bVar = (b) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i3 = bVar.k;
            if ((i3 & 1) == 0) {
                break;
            }
            i2 += measuredHeight + bVar.topMargin + bVar.bottomMargin;
            if (i == 0 && af.U(childAt)) {
                i2 -= getTopInset();
            }
            if ((i3 & 2) != 0) {
                i2 -= af.E(childAt);
                break;
            }
            i++;
        }
        int max = Math.max(0, i2);
        this.i = max;
        return max;
    }

    boolean c() {
        return getTotalScrollRange() != 0;
    }

    int getUpNestedPreScrollRange() {
        return getTotalScrollRange();
    }

    int getDownNestedPreScrollRange() {
        int E;
        if (this.j != -1) {
            return this.j;
        }
        int i = 0;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            b bVar = (b) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i2 = bVar.k;
            if ((i2 & 5) != 5) {
                if (i > 0) {
                    break;
                }
            } else {
                int i3 = bVar.topMargin + bVar.bottomMargin;
                if ((i2 & 8) != 0) {
                    E = i3 + af.E(childAt);
                } else {
                    E = (i2 & 2) != 0 ? i3 + (measuredHeight - af.E(childAt)) : i3 + measuredHeight;
                }
                if (childCount == 0 && af.U(childAt)) {
                    E = Math.min(E, measuredHeight - getTopInset());
                }
                i += E;
            }
        }
        int max = Math.max(0, i);
        this.j = max;
        return max;
    }

    int getDownNestedScrollRange() {
        if (this.k != -1) {
            return this.k;
        }
        int childCount = getChildCount();
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i >= childCount) {
                break;
            }
            View childAt = getChildAt(i);
            b bVar = (b) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight() + bVar.topMargin + bVar.bottomMargin;
            int i3 = bVar.k;
            if ((i3 & 1) == 0) {
                break;
            }
            i2 += measuredHeight;
            if ((i3 & 2) != 0) {
                i2 -= af.E(childAt);
                break;
            }
            i++;
        }
        int max = Math.max(0, i2);
        this.k = max;
        return max;
    }

    void a(int i) {
        this.h = i;
        if (!willNotDraw()) {
            af.h(this);
        }
        if (this.o != null) {
            int size = this.o.size();
            for (int i2 = 0; i2 < size; i2++) {
                a aVar = this.o.get(i2);
                if (aVar != null) {
                    aVar.a(this, i);
                }
            }
        }
    }

    public final int getMinimumHeightForVisibleOverlappingContent() {
        int topInset = getTopInset();
        int E = af.E(this);
        if (E != 0) {
            return (E * 2) + topInset;
        }
        int childCount = getChildCount();
        int E2 = childCount >= 1 ? af.E(getChildAt(childCount - 1)) : 0;
        return E2 != 0 ? (E2 * 2) + topInset : getHeight() / 3;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i) {
        if (this.w == null) {
            this.w = new int[4];
        }
        int[] iArr = this.w;
        int[] onCreateDrawableState = super.onCreateDrawableState(i + iArr.length);
        iArr[0] = this.q ? a.c.state_liftable : -a.c.state_liftable;
        iArr[1] = (this.q && this.r) ? a.c.state_lifted : -a.c.state_lifted;
        iArr[2] = this.q ? a.c.state_collapsible : -a.c.state_collapsible;
        iArr[3] = (this.q && this.r) ? a.c.state_collapsed : -a.c.state_collapsed;
        return mergeDrawableStates(onCreateDrawableState, iArr);
    }

    public boolean a(boolean z) {
        this.p = true;
        return d(z);
    }

    private boolean d(boolean z) {
        if (this.q == z) {
            return false;
        }
        this.q = z;
        refreshDrawableState();
        return true;
    }

    public boolean b(boolean z) {
        return c(z);
    }

    boolean c(boolean z) {
        if (this.r == z) {
            return false;
        }
        this.r = z;
        refreshDrawableState();
        if (!this.s || !(getBackground() instanceof j)) {
            return true;
        }
        a((j) getBackground(), z);
        return true;
    }

    private void a(@ah final j jVar, boolean z) {
        float dimension = getResources().getDimension(a.f.design_appbar_elevation);
        float f2 = z ? 0.0f : dimension;
        if (!z) {
            dimension = 0.0f;
        }
        if (this.v != null) {
            this.v.cancel();
        }
        this.v = ValueAnimator.ofFloat(f2, dimension);
        this.v.setDuration(getResources().getInteger(a.i.app_bar_elevation_anim_duration));
        this.v.setInterpolator(com.google.android.material.a.a.f1146a);
        this.v.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.appbar.AppBarLayout.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(@ah ValueAnimator valueAnimator) {
                jVar.r(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        this.v.start();
    }

    public void setLiftOnScroll(boolean z) {
        this.s = z;
    }

    public boolean d() {
        return this.s;
    }

    public void setLiftOnScrollTargetViewId(@w int i) {
        this.t = i;
        j();
    }

    @w
    public int getLiftOnScrollTargetViewId() {
        return this.t;
    }

    boolean a(@ai View view) {
        View b2 = b(view);
        if (b2 == null) {
            b2 = view;
        }
        return b2 != null && (b2.canScrollVertically(-1) || b2.getScrollY() > 0);
    }

    @ai
    private View b(@ai View view) {
        if (this.u == null && this.t != -1) {
            View findViewById = view != null ? view.findViewById(this.t) : null;
            if (findViewById == null && (getParent() instanceof ViewGroup)) {
                findViewById = ((ViewGroup) getParent()).findViewById(this.t);
            }
            if (findViewById != null) {
                this.u = new WeakReference<>(findViewById);
            }
        }
        if (this.u != null) {
            return this.u.get();
        }
        return null;
    }

    private void j() {
        if (this.u != null) {
            this.u.clear();
        }
        this.u = null;
    }

    @Deprecated
    public void setTargetElevation(float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            f.a(this, f2);
        }
    }

    int getPendingAction() {
        return this.m;
    }

    void e() {
        this.m = 0;
    }

    @ax
    final int getTopInset() {
        if (this.n != null) {
            return this.n.b();
        }
        return 0;
    }

    private boolean k() {
        if (getChildCount() <= 0) {
            return false;
        }
        View childAt = getChildAt(0);
        return (childAt.getVisibility() == 8 || af.U(childAt)) ? false : true;
    }

    ao a(ao aoVar) {
        ao aoVar2 = af.U(this) ? aoVar : null;
        if (!androidx.core.m.e.a(this.n, aoVar2)) {
            this.n = aoVar2;
            f();
            requestLayout();
        }
        return aoVar;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class b extends LinearLayout.LayoutParams {

        /* renamed from: a, reason: collision with root package name */
        public static final int f1162a = 0;
        public static final int b = 1;
        public static final int c = 2;
        public static final int d = 4;
        public static final int e = 8;
        public static final int f = 16;
        public static final int g = 32;
        static final int h = 5;
        static final int i = 17;
        static final int j = 10;
        int k;
        Interpolator l;

        @Retention(RetentionPolicy.SOURCE)
        @ap(a = {ap.a.LIBRARY_GROUP})
        /* loaded from: /home/user/work/dex/classes.dex */
        public @interface a {
        }

        public b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.k = 1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.o.AppBarLayout_Layout);
            this.k = obtainStyledAttributes.getInt(a.o.AppBarLayout_Layout_layout_scrollFlags, 0);
            if (obtainStyledAttributes.hasValue(a.o.AppBarLayout_Layout_layout_scrollInterpolator)) {
                this.l = AnimationUtils.loadInterpolator(context, obtainStyledAttributes.getResourceId(a.o.AppBarLayout_Layout_layout_scrollInterpolator, 0));
            }
            obtainStyledAttributes.recycle();
        }

        public b(int i2, int i3) {
            super(i2, i3);
            this.k = 1;
        }

        public b(int i2, int i3, float f2) {
            super(i2, i3, f2);
            this.k = 1;
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.k = 1;
        }

        public b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.k = 1;
        }

        @am(a = 19)
        public b(LinearLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.k = 1;
        }

        @am(a = 19)
        public b(@ah b bVar) {
            super((LinearLayout.LayoutParams) bVar);
            this.k = 1;
            this.k = bVar.k;
            this.l = bVar.l;
        }

        public void a(int i2) {
            this.k = i2;
        }

        public int a() {
            return this.k;
        }

        public void a(Interpolator interpolator) {
            this.l = interpolator;
        }

        public Interpolator b() {
            return this.l;
        }

        boolean c() {
            return (this.k & 1) == 1 && (this.k & 10) != 0;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class Behavior extends BaseBehavior<AppBarLayout> {

        /* loaded from: /home/user/work/dex/classes.dex */
        public static abstract class a extends BaseBehavior.a<AppBarLayout> {
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void a(@ah CoordinatorLayout coordinatorLayout, @ah AppBarLayout appBarLayout, Parcelable parcelable) {
            super.a(coordinatorLayout, (CoordinatorLayout) appBarLayout, parcelable);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void a(CoordinatorLayout coordinatorLayout, @ah AppBarLayout appBarLayout, View view, int i) {
            super.a(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, i);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void a(CoordinatorLayout coordinatorLayout, @ah AppBarLayout appBarLayout, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
            super.a(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, i, i2, i3, i4, i5, iArr);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void a(CoordinatorLayout coordinatorLayout, @ah AppBarLayout appBarLayout, View view, int i, int i2, int[] iArr, int i3) {
            super.a(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, i, i2, iArr, i3);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void a(@ai BaseBehavior.a aVar) {
            super.a(aVar);
        }

        @Override // com.google.android.material.appbar.d
        public /* bridge */ /* synthetic */ void a(boolean z) {
            super.a(z);
        }

        @Override // com.google.android.material.appbar.d
        public /* bridge */ /* synthetic */ boolean a(int i) {
            return super.a(i);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ boolean a(@ah CoordinatorLayout coordinatorLayout, @ah AppBarLayout appBarLayout, int i) {
            return super.a(coordinatorLayout, (CoordinatorLayout) appBarLayout, i);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ boolean a(@ah CoordinatorLayout coordinatorLayout, @ah AppBarLayout appBarLayout, int i, int i2, int i3, int i4) {
            return super.a(coordinatorLayout, (CoordinatorLayout) appBarLayout, i, i2, i3, i4);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ boolean a(@ah CoordinatorLayout coordinatorLayout, @ah AppBarLayout appBarLayout, @ah View view, View view2, int i, int i2) {
            return super.a(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, view2, i, i2);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* renamed from: b */
        public /* bridge */ /* synthetic */ Parcelable d(@ah CoordinatorLayout coordinatorLayout, @ah AppBarLayout appBarLayout) {
            return super.d(coordinatorLayout, (CoordinatorLayout) appBarLayout);
        }

        @Override // com.google.android.material.appbar.d
        public /* bridge */ /* synthetic */ void b(boolean z) {
            super.b(z);
        }

        @Override // com.google.android.material.appbar.d
        public /* bridge */ /* synthetic */ boolean b(int i) {
            return super.b(i);
        }

        @Override // com.google.android.material.appbar.d
        public /* bridge */ /* synthetic */ boolean d() {
            return super.d();
        }

        @Override // com.google.android.material.appbar.d
        public /* bridge */ /* synthetic */ boolean e() {
            return super.e();
        }

        @Override // com.google.android.material.appbar.d
        public /* bridge */ /* synthetic */ int f() {
            return super.f();
        }

        @Override // com.google.android.material.appbar.d
        public /* bridge */ /* synthetic */ int g() {
            return super.g();
        }

        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class BaseBehavior<T extends AppBarLayout> extends com.google.android.material.appbar.b<T> {
        private static final int b = 600;
        private static final int c = -1;
        private int d;
        private int e;
        private ValueAnimator f;
        private int g;
        private boolean h;
        private float i;

        @ai
        private WeakReference<View> j;
        private a k;

        /* loaded from: /home/user/work/dex/classes.dex */
        public static abstract class a<T extends AppBarLayout> {
            public abstract boolean a(@ah T t);
        }

        private static boolean a(int i, int i2) {
            return (i & i2) == i2;
        }

        public BaseBehavior() {
            this.g = -1;
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.g = -1;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public boolean a(@ah CoordinatorLayout coordinatorLayout, @ah T t, @ah View view, View view2, int i, int i2) {
            boolean z = (i & 2) != 0 && (t.d() || a(coordinatorLayout, (CoordinatorLayout) t, view));
            if (z && this.f != null) {
                this.f.cancel();
            }
            this.j = null;
            this.e = i2;
            return z;
        }

        private boolean a(@ah CoordinatorLayout coordinatorLayout, @ah T t, @ah View view) {
            return t.c() && coordinatorLayout.getHeight() - view.getHeight() <= t.getHeight();
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public void a(CoordinatorLayout coordinatorLayout, @ah T t, View view, int i, int i2, int[] iArr, int i3) {
            int i4;
            int i5;
            if (i2 != 0) {
                if (i2 < 0) {
                    i4 = -t.getTotalScrollRange();
                    i5 = t.getDownNestedPreScrollRange() + i4;
                } else {
                    i4 = -t.getUpNestedPreScrollRange();
                    i5 = 0;
                }
                int i6 = i4;
                int i7 = i5;
                if (i6 != i7) {
                    iArr[1] = b(coordinatorLayout, (CoordinatorLayout) t, i2, i6, i7);
                }
            }
            if (t.d()) {
                t.c(t.a(view));
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public void a(CoordinatorLayout coordinatorLayout, @ah T t, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
            if (i4 < 0) {
                iArr[1] = b(coordinatorLayout, (CoordinatorLayout) t, i4, -t.getDownNestedScrollRange(), 0);
            }
            if (i4 == 0) {
                d(coordinatorLayout, (CoordinatorLayout) t);
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public void a(CoordinatorLayout coordinatorLayout, @ah T t, View view, int i) {
            if (this.e == 0 || i == 1) {
                c(coordinatorLayout, (CoordinatorLayout) t);
                if (t.d()) {
                    t.c(t.a(view));
                }
            }
            this.j = new WeakReference<>(view);
        }

        public void a(@ai a aVar) {
            this.k = aVar;
        }

        private void a(CoordinatorLayout coordinatorLayout, @ah T t, int i, float f) {
            int height;
            int abs = Math.abs(c() - i);
            float abs2 = Math.abs(f);
            if (abs2 > 0.0f) {
                height = Math.round((abs / abs2) * 1000.0f) * 3;
            } else {
                height = (int) (((abs / t.getHeight()) + 1.0f) * 150.0f);
            }
            a(coordinatorLayout, (CoordinatorLayout) t, i, height);
        }

        private void a(final CoordinatorLayout coordinatorLayout, final T t, int i, int i2) {
            int c2 = c();
            if (c2 == i) {
                if (this.f == null || !this.f.isRunning()) {
                    return;
                }
                this.f.cancel();
                return;
            }
            if (this.f == null) {
                this.f = new ValueAnimator();
                this.f.setInterpolator(com.google.android.material.a.a.e);
                this.f.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.appbar.AppBarLayout.BaseBehavior.1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(@ah ValueAnimator valueAnimator) {
                        BaseBehavior.this.a_(coordinatorLayout, t, ((Integer) valueAnimator.getAnimatedValue()).intValue());
                    }
                });
            } else {
                this.f.cancel();
            }
            this.f.setDuration(Math.min(i2, b));
            this.f.setIntValues(c2, i);
            this.f.start();
        }

        private int a(@ah T t, int i) {
            int childCount = t.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = t.getChildAt(i2);
                int top = childAt.getTop();
                int bottom = childAt.getBottom();
                b bVar = (b) childAt.getLayoutParams();
                if (a(bVar.a(), 32)) {
                    top -= bVar.topMargin;
                    bottom += bVar.bottomMargin;
                }
                int i3 = -i;
                if (top <= i3 && bottom >= i3) {
                    return i2;
                }
            }
            return -1;
        }

        private void c(CoordinatorLayout coordinatorLayout, @ah T t) {
            int c2 = c();
            int a2 = a((BaseBehavior<T>) t, c2);
            if (a2 >= 0) {
                View childAt = t.getChildAt(a2);
                b bVar = (b) childAt.getLayoutParams();
                int a3 = bVar.a();
                if ((a3 & 17) == 17) {
                    int i = -childAt.getTop();
                    int i2 = -childAt.getBottom();
                    if (a2 == t.getChildCount() - 1) {
                        i2 += t.getTopInset();
                    }
                    if (a(a3, 2)) {
                        i2 += af.E(childAt);
                    } else if (a(a3, 5)) {
                        int E = af.E(childAt) + i2;
                        if (c2 < E) {
                            i = E;
                        } else {
                            i2 = E;
                        }
                    }
                    if (a(a3, 32)) {
                        i += bVar.topMargin;
                        i2 -= bVar.bottomMargin;
                    }
                    if (c2 < (i2 + i) / 2) {
                        i = i2;
                    }
                    a(coordinatorLayout, (CoordinatorLayout) t, androidx.core.g.a.a(i, -t.getTotalScrollRange(), 0), 0.0f);
                }
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public boolean a(@ah CoordinatorLayout coordinatorLayout, @ah T t, int i, int i2, int i3, int i4) {
            if (((CoordinatorLayout.f) t.getLayoutParams()).height == -2) {
                coordinatorLayout.a(t, i, i2, View.MeasureSpec.makeMeasureSpec(0, 0), i4);
                return true;
            }
            return super.a(coordinatorLayout, (CoordinatorLayout) t, i, i2, i3, i4);
        }

        @Override // com.google.android.material.appbar.d, androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public boolean a(@ah CoordinatorLayout coordinatorLayout, @ah T t, int i) {
            int round;
            boolean a2 = super.a(coordinatorLayout, (CoordinatorLayout) t, i);
            int pendingAction = t.getPendingAction();
            if (this.g >= 0 && (pendingAction & 8) == 0) {
                View childAt = t.getChildAt(this.g);
                int i2 = -childAt.getBottom();
                if (this.h) {
                    round = i2 + af.E(childAt) + t.getTopInset();
                } else {
                    round = i2 + Math.round(childAt.getHeight() * this.i);
                }
                a_(coordinatorLayout, t, round);
            } else if (pendingAction != 0) {
                boolean z = (pendingAction & 4) != 0;
                if ((pendingAction & 2) != 0) {
                    int i3 = -t.getUpNestedPreScrollRange();
                    if (z) {
                        a(coordinatorLayout, (CoordinatorLayout) t, i3, 0.0f);
                    } else {
                        a_(coordinatorLayout, t, i3);
                    }
                } else if ((pendingAction & 1) != 0) {
                    if (z) {
                        a(coordinatorLayout, (CoordinatorLayout) t, 0, 0.0f);
                    } else {
                        a_(coordinatorLayout, t, 0);
                    }
                }
            }
            t.e();
            this.g = -1;
            b(androidx.core.g.a.a(g(), -t.getTotalScrollRange(), 0));
            a(coordinatorLayout, (CoordinatorLayout) t, g(), 0, true);
            t.a(g());
            d(coordinatorLayout, (CoordinatorLayout) t);
            return a2;
        }

        private void d(CoordinatorLayout coordinatorLayout, @ah T t) {
            af.f((View) coordinatorLayout, d.a.m.a());
            af.f((View) coordinatorLayout, d.a.n.a());
            View a2 = a(coordinatorLayout);
            if (a2 == null || t.getTotalScrollRange() == 0 || !(((CoordinatorLayout.f) a2.getLayoutParams()).b() instanceof ScrollingViewBehavior)) {
                return;
            }
            b(coordinatorLayout, (CoordinatorLayout) t, a2);
        }

        private void b(final CoordinatorLayout coordinatorLayout, @ah final T t, @ah final View view) {
            if (c() != (-t.getTotalScrollRange()) && view.canScrollVertically(1)) {
                a(coordinatorLayout, (CoordinatorLayout) t, d.a.m, false);
            }
            if (c() != 0) {
                if (view.canScrollVertically(-1)) {
                    final int i = -t.getDownNestedPreScrollRange();
                    if (i != 0) {
                        af.a(coordinatorLayout, d.a.n, (CharSequence) null, new g() { // from class: com.google.android.material.appbar.AppBarLayout.BaseBehavior.2
                            /* JADX WARN: Multi-variable type inference failed */
                            @Override // androidx.core.n.a.g
                            public boolean a(@ah View view2, @ai g.a aVar) {
                                BaseBehavior.this.a(coordinatorLayout, (CoordinatorLayout) t, view, 0, i, new int[]{0, 0}, 1);
                                return true;
                            }
                        });
                        return;
                    }
                    return;
                }
                a(coordinatorLayout, (CoordinatorLayout) t, d.a.n, true);
            }
        }

        private void a(CoordinatorLayout coordinatorLayout, @ah final T t, @ah d.a aVar, final boolean z) {
            af.a(coordinatorLayout, aVar, (CharSequence) null, new g() { // from class: com.google.android.material.appbar.AppBarLayout.BaseBehavior.3
                @Override // androidx.core.n.a.g
                public boolean a(@ah View view, @ai g.a aVar2) {
                    t.setExpanded(z);
                    return true;
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.b
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean d(T t) {
            if (this.k != null) {
                return this.k.a(t);
            }
            if (this.j == null) {
                return true;
            }
            View view = this.j.get();
            return (view == null || !view.isShown() || view.canScrollVertically(-1)) ? false : true;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.b
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void e(@ah CoordinatorLayout coordinatorLayout, @ah T t) {
            c(coordinatorLayout, (CoordinatorLayout) t);
            if (t.d()) {
                t.c(t.a(a(coordinatorLayout)));
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.b
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public int c(@ah T t) {
            return -t.getDownNestedScrollRange();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.b
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public int b(@ah T t) {
            return t.getTotalScrollRange();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.b
        public int a(@ah CoordinatorLayout coordinatorLayout, @ah T t, int i, int i2, int i3) {
            int c2 = c();
            int i4 = 0;
            if (i2 != 0 && c2 >= i2 && c2 <= i3) {
                int a2 = androidx.core.g.a.a(i, i2, i3);
                if (c2 != a2) {
                    int b2 = t.b() ? b((BaseBehavior<T>) t, a2) : a2;
                    boolean b3 = b(b2);
                    i4 = c2 - a2;
                    this.d = a2 - b2;
                    if (!b3 && t.b()) {
                        coordinatorLayout.b(t);
                    }
                    t.a(g());
                    a(coordinatorLayout, (CoordinatorLayout) t, a2, a2 < c2 ? -1 : 1, false);
                }
            } else {
                this.d = 0;
            }
            d(coordinatorLayout, (CoordinatorLayout) t);
            return i4;
        }

        @ax
        boolean b() {
            return this.f != null && this.f.isRunning();
        }

        private int b(@ah T t, int i) {
            int abs = Math.abs(i);
            int childCount = t.getChildCount();
            int i2 = 0;
            int i3 = 0;
            while (true) {
                if (i3 >= childCount) {
                    break;
                }
                View childAt = t.getChildAt(i3);
                b bVar = (b) childAt.getLayoutParams();
                Interpolator b2 = bVar.b();
                if (abs < childAt.getTop() || abs > childAt.getBottom()) {
                    i3++;
                } else if (b2 != null) {
                    int a2 = bVar.a();
                    if ((a2 & 1) != 0) {
                        i2 = 0 + childAt.getHeight() + bVar.topMargin + bVar.bottomMargin;
                        if ((a2 & 2) != 0) {
                            i2 -= af.E(childAt);
                        }
                    }
                    if (af.U(childAt)) {
                        i2 -= t.getTopInset();
                    }
                    if (i2 > 0) {
                        float f = i2;
                        return Integer.signum(i) * (childAt.getTop() + Math.round(f * b2.getInterpolation((abs - childAt.getTop()) / f)));
                    }
                }
            }
            return i;
        }

        private void a(@ah CoordinatorLayout coordinatorLayout, @ah T t, int i, int i2, boolean z) {
            View c2 = c(t, i);
            if (c2 != null) {
                int a2 = ((b) c2.getLayoutParams()).a();
                boolean z2 = false;
                if ((a2 & 1) != 0) {
                    int E = af.E(c2);
                    if (i2 <= 0 || (a2 & 12) == 0 ? !((a2 & 2) == 0 || (-i) < (c2.getBottom() - E) - t.getTopInset()) : (-i) >= (c2.getBottom() - E) - t.getTopInset()) {
                        z2 = true;
                    }
                }
                if (t.d()) {
                    z2 = t.a(a(coordinatorLayout));
                }
                boolean c3 = t.c(z2);
                if (z || (c3 && e(coordinatorLayout, (CoordinatorLayout) t))) {
                    t.jumpDrawablesToCurrentState();
                }
            }
        }

        private boolean e(@ah CoordinatorLayout coordinatorLayout, @ah T t) {
            List<View> d = coordinatorLayout.d(t);
            int size = d.size();
            for (int i = 0; i < size; i++) {
                CoordinatorLayout.b b2 = ((CoordinatorLayout.f) d.get(i).getLayoutParams()).b();
                if (b2 instanceof ScrollingViewBehavior) {
                    return ((ScrollingViewBehavior) b2).h() != 0;
                }
            }
            return false;
        }

        @ai
        private static View c(@ah AppBarLayout appBarLayout, int i) {
            int abs = Math.abs(i);
            int childCount = appBarLayout.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = appBarLayout.getChildAt(i2);
                if (abs >= childAt.getTop() && abs <= childAt.getBottom()) {
                    return childAt;
                }
            }
            return null;
        }

        @ai
        private View a(@ah CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                if ((childAt instanceof androidx.core.n.q) || (childAt instanceof ListView) || (childAt instanceof ScrollView)) {
                    return childAt;
                }
            }
            return null;
        }

        @Override // com.google.android.material.appbar.b
        int c() {
            return g() + this.d;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public Parcelable d(@ah CoordinatorLayout coordinatorLayout, @ah T t) {
            Parcelable d = super.d(coordinatorLayout, (CoordinatorLayout) t);
            int g = g();
            int childCount = t.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = t.getChildAt(i);
                int bottom = childAt.getBottom() + g;
                if (childAt.getTop() + g <= 0 && bottom >= 0) {
                    b bVar = new b(d);
                    bVar.f1161a = i;
                    bVar.d = bottom == af.E(childAt) + t.getTopInset();
                    bVar.b = bottom / childAt.getHeight();
                    return bVar;
                }
            }
            return d;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public void a(@ah CoordinatorLayout coordinatorLayout, @ah T t, Parcelable parcelable) {
            if (parcelable instanceof b) {
                b bVar = (b) parcelable;
                super.a(coordinatorLayout, (CoordinatorLayout) t, bVar.a());
                this.g = bVar.f1161a;
                this.i = bVar.b;
                this.h = bVar.d;
                return;
            }
            super.a(coordinatorLayout, (CoordinatorLayout) t, parcelable);
            this.g = -1;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* loaded from: /home/user/work/dex/classes.dex */
        public static class b extends androidx.f.a.a {
            public static final Parcelable.Creator<b> CREATOR = new Parcelable.ClassLoaderCreator<b>() { // from class: com.google.android.material.appbar.AppBarLayout.BaseBehavior.b.1
                @Override // android.os.Parcelable.ClassLoaderCreator
                @ah
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public b createFromParcel(@ah Parcel parcel, ClassLoader classLoader) {
                    return new b(parcel, classLoader);
                }

                @Override // android.os.Parcelable.Creator
                @ai
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public b createFromParcel(@ah Parcel parcel) {
                    return new b(parcel, null);
                }

                @Override // android.os.Parcelable.Creator
                @ah
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public b[] newArray(int i) {
                    return new b[i];
                }
            };

            /* renamed from: a, reason: collision with root package name */
            int f1161a;
            float b;
            boolean d;

            public b(@ah Parcel parcel, ClassLoader classLoader) {
                super(parcel, classLoader);
                this.f1161a = parcel.readInt();
                this.b = parcel.readFloat();
                this.d = parcel.readByte() != 0;
            }

            public b(Parcelable parcelable) {
                super(parcelable);
            }

            @Override // androidx.f.a.a, android.os.Parcelable
            public void writeToParcel(@ah Parcel parcel, int i) {
                super.writeToParcel(parcel, i);
                parcel.writeInt(this.f1161a);
                parcel.writeFloat(this.b);
                parcel.writeByte(this.d ? (byte) 1 : (byte) 0);
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class ScrollingViewBehavior extends com.google.android.material.appbar.c {
        @Override // com.google.android.material.appbar.d
        public /* bridge */ /* synthetic */ void a(boolean z) {
            super.a(z);
        }

        @Override // com.google.android.material.appbar.d
        public /* bridge */ /* synthetic */ boolean a(int i) {
            return super.a(i);
        }

        @Override // com.google.android.material.appbar.d, androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public /* bridge */ /* synthetic */ boolean a(@ah CoordinatorLayout coordinatorLayout, @ah View view, int i) {
            return super.a(coordinatorLayout, (CoordinatorLayout) view, i);
        }

        @Override // com.google.android.material.appbar.c, androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public /* bridge */ /* synthetic */ boolean a(@ah CoordinatorLayout coordinatorLayout, @ah View view, int i, int i2, int i3, int i4) {
            return super.a(coordinatorLayout, view, i, i2, i3, i4);
        }

        @Override // com.google.android.material.appbar.c
        @ai
        /* synthetic */ View b(@ah List list) {
            return a((List<View>) list);
        }

        @Override // com.google.android.material.appbar.d
        public /* bridge */ /* synthetic */ void b(boolean z) {
            super.b(z);
        }

        @Override // com.google.android.material.appbar.d
        public /* bridge */ /* synthetic */ boolean b(int i) {
            return super.b(i);
        }

        @Override // com.google.android.material.appbar.d
        public /* bridge */ /* synthetic */ boolean d() {
            return super.d();
        }

        @Override // com.google.android.material.appbar.d
        public /* bridge */ /* synthetic */ boolean e() {
            return super.e();
        }

        @Override // com.google.android.material.appbar.d
        public /* bridge */ /* synthetic */ int f() {
            return super.f();
        }

        @Override // com.google.android.material.appbar.d
        public /* bridge */ /* synthetic */ int g() {
            return super.g();
        }

        public ScrollingViewBehavior() {
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.o.ScrollingViewBehavior_Layout);
            c(obtainStyledAttributes.getDimensionPixelSize(a.o.ScrollingViewBehavior_Layout_behavior_overlapTop, 0));
            obtainStyledAttributes.recycle();
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public boolean a(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return view2 instanceof AppBarLayout;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public boolean b(@ah CoordinatorLayout coordinatorLayout, @ah View view, @ah View view2) {
            a(view, view2);
            b(view, view2);
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public void c(@ah CoordinatorLayout coordinatorLayout, @ah View view, @ah View view2) {
            if (view2 instanceof AppBarLayout) {
                af.f((View) coordinatorLayout, d.a.m.a());
                af.f((View) coordinatorLayout, d.a.n.a());
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public boolean a(@ah CoordinatorLayout coordinatorLayout, @ah View view, @ah Rect rect, boolean z) {
            AppBarLayout a2 = a(coordinatorLayout.c(view));
            if (a2 != null) {
                rect.offset(view.getLeft(), view.getTop());
                Rect rect2 = this.f1170a;
                rect2.set(0, 0, coordinatorLayout.getWidth(), coordinatorLayout.getHeight());
                if (!rect2.contains(rect)) {
                    a2.a(false, !z);
                    return true;
                }
            }
            return false;
        }

        private void a(@ah View view, @ah View view2) {
            CoordinatorLayout.b b = ((CoordinatorLayout.f) view2.getLayoutParams()).b();
            if (b instanceof BaseBehavior) {
                af.n(view, (((view2.getBottom() - view.getTop()) + ((BaseBehavior) b).d) + c()) - d(view2));
            }
        }

        @Override // com.google.android.material.appbar.c
        float b(View view) {
            int i;
            if (view instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view;
                int totalScrollRange = appBarLayout.getTotalScrollRange();
                int downNestedPreScrollRange = appBarLayout.getDownNestedPreScrollRange();
                int a2 = a(appBarLayout);
                if ((downNestedPreScrollRange == 0 || totalScrollRange + a2 > downNestedPreScrollRange) && (i = totalScrollRange - downNestedPreScrollRange) != 0) {
                    return (a2 / i) + 1.0f;
                }
            }
            return 0.0f;
        }

        private static int a(@ah AppBarLayout appBarLayout) {
            CoordinatorLayout.b b = ((CoordinatorLayout.f) appBarLayout.getLayoutParams()).b();
            if (b instanceof BaseBehavior) {
                return ((BaseBehavior) b).c();
            }
            return 0;
        }

        @ai
        AppBarLayout a(@ah List<View> list) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                View view = list.get(i);
                if (view instanceof AppBarLayout) {
                    return (AppBarLayout) view;
                }
            }
            return null;
        }

        @Override // com.google.android.material.appbar.c
        int c(View view) {
            if (view instanceof AppBarLayout) {
                return ((AppBarLayout) view).getTotalScrollRange();
            }
            return super.c(view);
        }

        private void b(View view, View view2) {
            if (view2 instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view2;
                if (appBarLayout.d()) {
                    appBarLayout.c(appBarLayout.a(view));
                }
            }
        }
    }
}
