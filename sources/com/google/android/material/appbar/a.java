package com.google.android.material.appbar;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.am;
import androidx.annotation.ap;
import androidx.annotation.at;
import androidx.annotation.k;
import androidx.annotation.q;
import androidx.annotation.z;
import androidx.appcompat.a;
import androidx.appcompat.widget.Toolbar;
import androidx.core.n.af;
import androidx.core.n.ao;
import androidx.core.n.y;
import com.google.android.material.a;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.internal.s;

/* loaded from: /home/user/work/dex/classes.dex */
public class a extends FrameLayout {
    private static final int e = a.n.Widget_Design_CollapsingToolbar;
    private static final int f = 600;

    /* renamed from: a, reason: collision with root package name */
    @ah
    final com.google.android.material.internal.a f1163a;

    @ai
    Drawable b;
    int c;

    @ai
    ao d;
    private boolean g;
    private int h;

    @ai
    private Toolbar i;

    @ai
    private View j;
    private View k;
    private int l;
    private int m;
    private int n;
    private int o;
    private final Rect p;
    private boolean q;
    private boolean r;

    @ai
    private Drawable s;
    private int t;
    private boolean u;
    private ValueAnimator v;
    private long w;
    private int x;
    private AppBarLayout.c y;

    public a(@ah Context context) {
        this(context, null);
    }

    public a(@ah Context context, @ai AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public a(@ah Context context, @ai AttributeSet attributeSet, int i) {
        super(com.google.android.material.theme.a.a.a(context, attributeSet, i, e), attributeSet, i);
        this.g = true;
        this.p = new Rect();
        this.x = -1;
        Context context2 = getContext();
        this.f1163a = new com.google.android.material.internal.a(this);
        this.f1163a.a(com.google.android.material.a.a.e);
        TypedArray a2 = s.a(context2, attributeSet, a.o.CollapsingToolbarLayout, i, e, new int[0]);
        this.f1163a.a(a2.getInt(a.o.CollapsingToolbarLayout_expandedTitleGravity, com.google.android.material.b.a.d));
        this.f1163a.b(a2.getInt(a.o.CollapsingToolbarLayout_collapsedTitleGravity, 8388627));
        int dimensionPixelSize = a2.getDimensionPixelSize(a.o.CollapsingToolbarLayout_expandedTitleMargin, 0);
        this.o = dimensionPixelSize;
        this.n = dimensionPixelSize;
        this.m = dimensionPixelSize;
        this.l = dimensionPixelSize;
        if (a2.hasValue(a.o.CollapsingToolbarLayout_expandedTitleMarginStart)) {
            this.l = a2.getDimensionPixelSize(a.o.CollapsingToolbarLayout_expandedTitleMarginStart, 0);
        }
        if (a2.hasValue(a.o.CollapsingToolbarLayout_expandedTitleMarginEnd)) {
            this.n = a2.getDimensionPixelSize(a.o.CollapsingToolbarLayout_expandedTitleMarginEnd, 0);
        }
        if (a2.hasValue(a.o.CollapsingToolbarLayout_expandedTitleMarginTop)) {
            this.m = a2.getDimensionPixelSize(a.o.CollapsingToolbarLayout_expandedTitleMarginTop, 0);
        }
        if (a2.hasValue(a.o.CollapsingToolbarLayout_expandedTitleMarginBottom)) {
            this.o = a2.getDimensionPixelSize(a.o.CollapsingToolbarLayout_expandedTitleMarginBottom, 0);
        }
        this.q = a2.getBoolean(a.o.CollapsingToolbarLayout_titleEnabled, true);
        setTitle(a2.getText(a.o.CollapsingToolbarLayout_title));
        this.f1163a.d(a.n.TextAppearance_Design_CollapsingToolbar_Expanded);
        this.f1163a.c(a.l.TextAppearance_AppCompat_Widget_ActionBar_Title);
        if (a2.hasValue(a.o.CollapsingToolbarLayout_expandedTitleTextAppearance)) {
            this.f1163a.d(a2.getResourceId(a.o.CollapsingToolbarLayout_expandedTitleTextAppearance, 0));
        }
        if (a2.hasValue(a.o.CollapsingToolbarLayout_collapsedTitleTextAppearance)) {
            this.f1163a.c(a2.getResourceId(a.o.CollapsingToolbarLayout_collapsedTitleTextAppearance, 0));
        }
        this.x = a2.getDimensionPixelSize(a.o.CollapsingToolbarLayout_scrimVisibleHeightTrigger, -1);
        if (a2.hasValue(a.o.CollapsingToolbarLayout_maxLines)) {
            this.f1163a.e(a2.getInt(a.o.CollapsingToolbarLayout_maxLines, 1));
        }
        this.w = a2.getInt(a.o.CollapsingToolbarLayout_scrimAnimationDuration, f);
        setContentScrim(a2.getDrawable(a.o.CollapsingToolbarLayout_contentScrim));
        setStatusBarScrim(a2.getDrawable(a.o.CollapsingToolbarLayout_statusBarScrim));
        this.h = a2.getResourceId(a.o.CollapsingToolbarLayout_toolbarId, -1);
        a2.recycle();
        setWillNotDraw(false);
        af.a(this, new y() { // from class: com.google.android.material.appbar.a.1
            @Override // androidx.core.n.y
            public ao a(View view, @ah ao aoVar) {
                return a.this.a(aoVar);
            }
        });
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Object parent = getParent();
        if (parent instanceof AppBarLayout) {
            af.b(this, af.U((View) parent));
            if (this.y == null) {
                this.y = new b();
            }
            ((AppBarLayout) parent).a(this.y);
            af.T(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        ViewParent parent = getParent();
        if (this.y != null && (parent instanceof AppBarLayout)) {
            ((AppBarLayout) parent).b(this.y);
        }
        super.onDetachedFromWindow();
    }

    ao a(@ah ao aoVar) {
        ao aoVar2 = af.U(this) ? aoVar : null;
        if (!androidx.core.m.e.a(this.d, aoVar2)) {
            this.d = aoVar2;
            requestLayout();
        }
        return aoVar.i();
    }

    @Override // android.view.View
    public void draw(@ah Canvas canvas) {
        super.draw(canvas);
        d();
        if (this.i == null && this.s != null && this.t > 0) {
            this.s.mutate().setAlpha(this.t);
            this.s.draw(canvas);
        }
        if (this.q && this.r) {
            this.f1163a.a(canvas);
        }
        if (this.b == null || this.t <= 0) {
            return;
        }
        int b2 = this.d != null ? this.d.b() : 0;
        if (b2 > 0) {
            this.b.setBounds(0, -this.c, getWidth(), b2 - this.c);
            this.b.mutate().setAlpha(this.t);
            this.b.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        boolean z;
        if (this.s == null || this.t <= 0 || !c(view)) {
            z = false;
        } else {
            this.s.mutate().setAlpha(this.t);
            this.s.draw(canvas);
            z = true;
        }
        return super.drawChild(canvas, view, j) || z;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (this.s != null) {
            this.s.setBounds(0, 0, i, i2);
        }
    }

    private void d() {
        if (this.g) {
            Toolbar toolbar = null;
            this.i = null;
            this.j = null;
            if (this.h != -1) {
                this.i = (Toolbar) findViewById(this.h);
                if (this.i != null) {
                    this.j = d(this.i);
                }
            }
            if (this.i == null) {
                int childCount = getChildCount();
                int i = 0;
                while (true) {
                    if (i >= childCount) {
                        break;
                    }
                    View childAt = getChildAt(i);
                    if (childAt instanceof Toolbar) {
                        toolbar = (Toolbar) childAt;
                        break;
                    }
                    i++;
                }
                this.i = toolbar;
            }
            e();
            this.g = false;
        }
    }

    private boolean c(View view) {
        if (this.j == null || this.j == this) {
            if (view != this.i) {
                return false;
            }
        } else if (view != this.j) {
            return false;
        }
        return true;
    }

    @ah
    private View d(@ah View view) {
        for (ViewParent parent = view.getParent(); parent != this && parent != null; parent = parent.getParent()) {
            if (parent instanceof View) {
                view = parent;
            }
        }
        return view;
    }

    private void e() {
        if (!this.q && this.k != null) {
            ViewParent parent = this.k.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.k);
            }
        }
        if (!this.q || this.i == null) {
            return;
        }
        if (this.k == null) {
            this.k = new View(getContext());
        }
        if (this.k.getParent() == null) {
            this.i.addView(this.k, -1, -1);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        d();
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i2);
        int b2 = this.d != null ? this.d.b() : 0;
        if (mode != 0 || b2 <= 0) {
            return;
        }
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() + b2, androidx.d.c.b.a.b.b));
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.d != null) {
            int b2 = this.d.b();
            int childCount = getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = getChildAt(i5);
                if (!af.U(childAt) && childAt.getTop() < b2) {
                    af.n(childAt, b2);
                }
            }
        }
        int childCount2 = getChildCount();
        for (int i6 = 0; i6 < childCount2; i6++) {
            a(getChildAt(i6)).a();
        }
        if (this.q && this.k != null) {
            this.r = af.ak(this.k) && this.k.getVisibility() == 0;
            if (this.r) {
                boolean z2 = af.p(this) == 1;
                int b3 = b(this.j != null ? this.j : this.i);
                com.google.android.material.internal.c.b(this, this.k, this.p);
                this.f1163a.b(this.p.left + (z2 ? this.i.getTitleMarginEnd() : this.i.getTitleMarginStart()), this.p.top + b3 + this.i.getTitleMarginTop(), this.p.right - (z2 ? this.i.getTitleMarginStart() : this.i.getTitleMarginEnd()), (this.p.bottom + b3) - this.i.getTitleMarginBottom());
                this.f1163a.a(z2 ? this.n : this.l, this.p.top + this.m, (i3 - i) - (z2 ? this.l : this.n), (i4 - i2) - this.o);
                this.f1163a.n();
            }
        }
        if (this.i != null) {
            if (this.q && TextUtils.isEmpty(this.f1163a.o())) {
                setTitle(this.i.getTitle());
            }
            if (this.j == null || this.j == this) {
                setMinimumHeight(e(this.i));
            } else {
                setMinimumHeight(e(this.j));
            }
        }
        c();
        int childCount3 = getChildCount();
        for (int i7 = 0; i7 < childCount3; i7++) {
            a(getChildAt(i7)).b();
        }
    }

    private static int e(@ah View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            return view.getHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
        }
        return view.getHeight();
    }

    @ah
    static e a(@ah View view) {
        e eVar = (e) view.getTag(a.h.view_offset_helper);
        if (eVar != null) {
            return eVar;
        }
        e eVar2 = new e(view);
        view.setTag(a.h.view_offset_helper, eVar2);
        return eVar2;
    }

    public void setTitle(@ai CharSequence charSequence) {
        this.f1163a.a(charSequence);
        f();
    }

    @ai
    public CharSequence getTitle() {
        if (this.q) {
            return this.f1163a.o();
        }
        return null;
    }

    public void setTitleEnabled(boolean z) {
        if (z != this.q) {
            this.q = z;
            f();
            e();
            requestLayout();
        }
    }

    public boolean a() {
        return this.q;
    }

    public void setScrimsShown(boolean z) {
        a(z, af.ag(this) && !isInEditMode());
    }

    public void a(boolean z, boolean z2) {
        if (this.u != z) {
            if (z2) {
                a(z ? 255 : 0);
            } else {
                setScrimAlpha(z ? 255 : 0);
            }
            this.u = z;
        }
    }

    private void a(int i) {
        d();
        if (this.v == null) {
            this.v = new ValueAnimator();
            this.v.setDuration(this.w);
            this.v.setInterpolator(i > this.t ? com.google.android.material.a.a.c : com.google.android.material.a.a.d);
            this.v.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.appbar.a.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(@ah ValueAnimator valueAnimator) {
                    a.this.setScrimAlpha(((Integer) valueAnimator.getAnimatedValue()).intValue());
                }
            });
        } else if (this.v.isRunning()) {
            this.v.cancel();
        }
        this.v.setIntValues(this.t, i);
        this.v.start();
    }

    void setScrimAlpha(int i) {
        if (i != this.t) {
            if (this.s != null && this.i != null) {
                af.h(this.i);
            }
            this.t = i;
            af.h(this);
        }
    }

    int getScrimAlpha() {
        return this.t;
    }

    public void setContentScrim(@ai Drawable drawable) {
        if (this.s != drawable) {
            if (this.s != null) {
                this.s.setCallback(null);
            }
            this.s = drawable != null ? drawable.mutate() : null;
            if (this.s != null) {
                this.s.setBounds(0, 0, getWidth(), getHeight());
                this.s.setCallback(this);
                this.s.setAlpha(this.t);
            }
            af.h(this);
        }
    }

    public void setContentScrimColor(@k int i) {
        setContentScrim(new ColorDrawable(i));
    }

    public void setContentScrimResource(@q int i) {
        setContentScrim(androidx.core.b.c.a(getContext(), i));
    }

    @ai
    public Drawable getContentScrim() {
        return this.s;
    }

    public void setStatusBarScrim(@ai Drawable drawable) {
        if (this.b != drawable) {
            if (this.b != null) {
                this.b.setCallback(null);
            }
            this.b = drawable != null ? drawable.mutate() : null;
            if (this.b != null) {
                if (this.b.isStateful()) {
                    this.b.setState(getDrawableState());
                }
                androidx.core.graphics.drawable.a.b(this.b, af.p(this));
                this.b.setVisible(getVisibility() == 0, false);
                this.b.setCallback(this);
                this.b.setAlpha(this.t);
            }
            af.h(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.b;
        boolean z = false;
        if (drawable != null && drawable.isStateful()) {
            z = false | drawable.setState(drawableState);
        }
        Drawable drawable2 = this.s;
        if (drawable2 != null && drawable2.isStateful()) {
            z |= drawable2.setState(drawableState);
        }
        if (this.f1163a != null) {
            z |= this.f1163a.a(drawableState);
        }
        if (z) {
            invalidate();
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(@ah Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.s || drawable == this.b;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        if (this.b != null && this.b.isVisible() != z) {
            this.b.setVisible(z, false);
        }
        if (this.s == null || this.s.isVisible() == z) {
            return;
        }
        this.s.setVisible(z, false);
    }

    public void setStatusBarScrimColor(@k int i) {
        setStatusBarScrim(new ColorDrawable(i));
    }

    public void setStatusBarScrimResource(@q int i) {
        setStatusBarScrim(androidx.core.b.c.a(getContext(), i));
    }

    @ai
    public Drawable getStatusBarScrim() {
        return this.b;
    }

    public void setCollapsedTitleTextAppearance(@at int i) {
        this.f1163a.c(i);
    }

    public void setCollapsedTitleTextColor(@k int i) {
        setCollapsedTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setCollapsedTitleTextColor(@ah ColorStateList colorStateList) {
        this.f1163a.a(colorStateList);
    }

    public void setCollapsedTitleGravity(int i) {
        this.f1163a.b(i);
    }

    public int getCollapsedTitleGravity() {
        return this.f1163a.f();
    }

    public void setExpandedTitleTextAppearance(@at int i) {
        this.f1163a.d(i);
    }

    public void setExpandedTitleColor(@k int i) {
        setExpandedTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setExpandedTitleTextColor(@ah ColorStateList colorStateList) {
        this.f1163a.b(colorStateList);
    }

    public void setExpandedTitleGravity(int i) {
        this.f1163a.a(i);
    }

    public int getExpandedTitleGravity() {
        return this.f1163a.e();
    }

    public void setCollapsedTitleTypeface(@ai Typeface typeface) {
        this.f1163a.a(typeface);
    }

    @ah
    public Typeface getCollapsedTitleTypeface() {
        return this.f1163a.g();
    }

    public void setExpandedTitleTypeface(@ai Typeface typeface) {
        this.f1163a.b(typeface);
    }

    @ah
    public Typeface getExpandedTitleTypeface() {
        return this.f1163a.h();
    }

    public void a(int i, int i2, int i3, int i4) {
        this.l = i;
        this.m = i2;
        this.n = i3;
        this.o = i4;
        requestLayout();
    }

    public int getExpandedTitleMarginStart() {
        return this.l;
    }

    public void setExpandedTitleMarginStart(int i) {
        this.l = i;
        requestLayout();
    }

    public int getExpandedTitleMarginTop() {
        return this.m;
    }

    public void setExpandedTitleMarginTop(int i) {
        this.m = i;
        requestLayout();
    }

    public int getExpandedTitleMarginEnd() {
        return this.n;
    }

    public void setExpandedTitleMarginEnd(int i) {
        this.n = i;
        requestLayout();
    }

    public int getExpandedTitleMarginBottom() {
        return this.o;
    }

    public void setExpandedTitleMarginBottom(int i) {
        this.o = i;
        requestLayout();
    }

    @ap(a = {ap.a.LIBRARY_GROUP})
    public void setMaxLines(int i) {
        this.f1163a.e(i);
    }

    @ap(a = {ap.a.LIBRARY_GROUP})
    public int getMaxLines() {
        return this.f1163a.p();
    }

    public void setScrimVisibleHeightTrigger(@z(a = 0) int i) {
        if (this.x != i) {
            this.x = i;
            c();
        }
    }

    public int getScrimVisibleHeightTrigger() {
        if (this.x >= 0) {
            return this.x;
        }
        int b2 = this.d != null ? this.d.b() : 0;
        int E = af.E(this);
        if (E > 0) {
            return Math.min((E * 2) + b2, getHeight());
        }
        return getHeight() / 3;
    }

    public void setScrimAnimationDuration(@z(a = 0) long j) {
        this.w = j;
    }

    public long getScrimAnimationDuration() {
        return this.w;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0082a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.FrameLayout, android.view.ViewGroup
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public C0082a generateDefaultLayoutParams() {
        return new C0082a(-1, -1);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C0082a(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.FrameLayout, android.view.ViewGroup
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new C0082a(layoutParams);
    }

    /* renamed from: com.google.android.material.appbar.a$a, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class C0082a extends FrameLayout.LayoutParams {

        /* renamed from: a, reason: collision with root package name */
        public static final int f1166a = 0;
        public static final int b = 1;
        public static final int c = 2;
        private static final float f = 0.5f;
        int d;
        float e;

        public C0082a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.d = 0;
            this.e = f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.o.CollapsingToolbarLayout_Layout);
            this.d = obtainStyledAttributes.getInt(a.o.CollapsingToolbarLayout_Layout_layout_collapseMode, 0);
            a(obtainStyledAttributes.getFloat(a.o.CollapsingToolbarLayout_Layout_layout_collapseParallaxMultiplier, f));
            obtainStyledAttributes.recycle();
        }

        public C0082a(int i, int i2) {
            super(i, i2);
            this.d = 0;
            this.e = f;
        }

        public C0082a(int i, int i2, int i3) {
            super(i, i2, i3);
            this.d = 0;
            this.e = f;
        }

        public C0082a(@ah ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.d = 0;
            this.e = f;
        }

        public C0082a(@ah ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.d = 0;
            this.e = f;
        }

        @am(a = 19)
        public C0082a(@ah FrameLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.d = 0;
            this.e = f;
        }

        public void a(int i) {
            this.d = i;
        }

        public int a() {
            return this.d;
        }

        public void a(float f2) {
            this.e = f2;
        }

        public float b() {
            return this.e;
        }
    }

    final void c() {
        if (this.s == null && this.b == null) {
            return;
        }
        setScrimsShown(getHeight() + this.c < getScrimVisibleHeightTrigger());
    }

    final int b(@ah View view) {
        return ((getHeight() - a(view).e()) - view.getHeight()) - ((C0082a) view.getLayoutParams()).bottomMargin;
    }

    private void f() {
        setContentDescription(getTitle());
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private class b implements AppBarLayout.c {
        b() {
        }

        @Override // com.google.android.material.appbar.AppBarLayout.c, com.google.android.material.appbar.AppBarLayout.a
        public void a(AppBarLayout appBarLayout, int i) {
            a.this.c = i;
            int b = a.this.d != null ? a.this.d.b() : 0;
            int childCount = a.this.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = a.this.getChildAt(i2);
                C0082a c0082a = (C0082a) childAt.getLayoutParams();
                e a2 = a.a(childAt);
                switch (c0082a.d) {
                    case 1:
                        a2.a(androidx.core.g.a.a(-i, 0, a.this.b(childAt)));
                        break;
                    case 2:
                        a2.a(Math.round((-i) * c0082a.e));
                        break;
                }
            }
            a.this.c();
            if (a.this.b != null && b > 0) {
                af.h(a.this);
            }
            a.this.f1163a.c(Math.abs(i) / ((a.this.getHeight() - af.E(a.this)) - b));
        }
    }
}
