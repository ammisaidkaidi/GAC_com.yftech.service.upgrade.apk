package com.google.android.material.x;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.text.Layout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.ac;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.am;
import androidx.annotation.ap;
import androidx.annotation.as;
import androidx.annotation.p;
import androidx.annotation.q;
import androidx.appcompat.a;
import androidx.appcompat.widget.ActivityChooserView;
import androidx.appcompat.widget.bc;
import androidx.core.m.h;
import androidx.core.n.a.d;
import androidx.core.n.aa;
import androidx.core.n.af;
import androidx.l.a.d;
import com.google.android.material.a;
import com.google.android.material.internal.s;
import com.google.android.material.internal.z;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

@d.a
/* loaded from: /home/user/work/dex/classes.dex */
public class b extends HorizontalScrollView {

    @p(a = 0)
    private static final int M = 72;

    @p(a = 0)
    private static final int N = 48;

    @p(a = 0)
    private static final int O = 56;

    @p(a = 0)
    private static final int P = 24;
    private static final int Q = -1;
    private static final int R = 300;
    private static final String T = "TabLayout";

    /* renamed from: a, reason: collision with root package name */
    @p(a = 0)
    static final int f1490a = 8;

    @p(a = 0)
    static final int b = 16;
    public static final int c = 0;
    public static final int d = 1;
    public static final int e = 2;
    public static final int f = 0;
    public static final int g = 1;
    public static final int h = 0;
    public static final int i = 1;
    public static final int j = 2;
    public static final int k = 0;
    public static final int l = 1;
    public static final int m = 2;
    public static final int n = 3;
    float A;
    final int B;
    int C;
    int D;
    int E;
    int F;
    int G;
    boolean H;
    boolean I;
    boolean J;

    @ai
    androidx.l.a.d K;
    private final ArrayList<h> U;

    @ai
    private h V;
    private final RectF W;
    private final int aa;
    private final int ab;
    private final int ac;
    private int ad;

    @ai
    private InterfaceC0097b ae;
    private final ArrayList<InterfaceC0097b> af;

    @ai
    private InterfaceC0097b ag;
    private ValueAnimator ah;

    @ai
    private androidx.l.a.a ai;
    private DataSetObserver aj;
    private k ak;
    private a al;
    private boolean am;
    private final h.a<l> an;

    @ah
    final g o;
    int p;
    int q;
    int r;
    int s;
    int t;
    ColorStateList u;
    ColorStateList v;
    ColorStateList w;

    @ai
    Drawable x;
    PorterDuff.Mode y;
    float z;
    private static final int L = a.n.Widget_Design_TabLayout;
    private static final h.a<h> S = new h.c(16);

    @Deprecated
    /* renamed from: com.google.android.material.x.b$b, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface InterfaceC0097b<T extends h> {
        void a(T t);

        void b(T t);

        void c(T t);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface c {
    }

    @Retention(RetentionPolicy.SOURCE)
    @ap(a = {ap.a.LIBRARY_GROUP})
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface d {
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface e extends InterfaceC0097b<h> {
    }

    @Retention(RetentionPolicy.SOURCE)
    @ap(a = {ap.a.LIBRARY_GROUP})
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface i {
    }

    @Retention(RetentionPolicy.SOURCE)
    @ap(a = {ap.a.LIBRARY_GROUP})
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface j {
    }

    public b(@ah Context context) {
        this(context, null);
    }

    public b(@ah Context context, @ai AttributeSet attributeSet) {
        this(context, attributeSet, a.c.tabStyle);
    }

    public b(@ah Context context, @ai AttributeSet attributeSet, int i2) {
        super(com.google.android.material.theme.a.a.a(context, attributeSet, i2, L), attributeSet, i2);
        this.U = new ArrayList<>();
        this.W = new RectF();
        this.C = ActivityChooserView.a.f166a;
        this.af = new ArrayList<>();
        this.an = new h.b(12);
        Context context2 = getContext();
        setHorizontalScrollBarEnabled(false);
        this.o = new g(context2);
        super.addView(this.o, 0, new FrameLayout.LayoutParams(-2, -1));
        TypedArray a2 = s.a(context2, attributeSet, a.o.TabLayout, i2, L, a.o.TabLayout_tabTextAppearance);
        if (getBackground() instanceof ColorDrawable) {
            ColorDrawable colorDrawable = (ColorDrawable) getBackground();
            com.google.android.material.t.j jVar = new com.google.android.material.t.j();
            jVar.g(ColorStateList.valueOf(colorDrawable.getColor()));
            jVar.b(context2);
            jVar.r(af.P(this));
            af.a(this, jVar);
        }
        this.o.b(a2.getDimensionPixelSize(a.o.TabLayout_tabIndicatorHeight, -1));
        this.o.a(a2.getColor(a.o.TabLayout_tabIndicatorColor, 0));
        setSelectedTabIndicator(com.google.android.material.q.c.b(context2, a2, a.o.TabLayout_tabIndicator));
        setSelectedTabIndicatorGravity(a2.getInt(a.o.TabLayout_tabIndicatorGravity, 0));
        setTabIndicatorFullWidth(a2.getBoolean(a.o.TabLayout_tabIndicatorFullWidth, true));
        int dimensionPixelSize = a2.getDimensionPixelSize(a.o.TabLayout_tabPadding, 0);
        this.s = dimensionPixelSize;
        this.r = dimensionPixelSize;
        this.q = dimensionPixelSize;
        this.p = dimensionPixelSize;
        this.p = a2.getDimensionPixelSize(a.o.TabLayout_tabPaddingStart, this.p);
        this.q = a2.getDimensionPixelSize(a.o.TabLayout_tabPaddingTop, this.q);
        this.r = a2.getDimensionPixelSize(a.o.TabLayout_tabPaddingEnd, this.r);
        this.s = a2.getDimensionPixelSize(a.o.TabLayout_tabPaddingBottom, this.s);
        this.t = a2.getResourceId(a.o.TabLayout_tabTextAppearance, a.n.TextAppearance_Design_Tab);
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(this.t, a.m.TextAppearance);
        try {
            this.z = obtainStyledAttributes.getDimensionPixelSize(a.m.TextAppearance_android_textSize, 0);
            this.u = com.google.android.material.q.c.a(context2, obtainStyledAttributes, a.m.TextAppearance_android_textColor);
            obtainStyledAttributes.recycle();
            if (a2.hasValue(a.o.TabLayout_tabTextColor)) {
                this.u = com.google.android.material.q.c.a(context2, a2, a.o.TabLayout_tabTextColor);
            }
            if (a2.hasValue(a.o.TabLayout_tabSelectedTextColor)) {
                this.u = b(this.u.getDefaultColor(), a2.getColor(a.o.TabLayout_tabSelectedTextColor, 0));
            }
            this.v = com.google.android.material.q.c.a(context2, a2, a.o.TabLayout_tabIconTint);
            this.y = z.a(a2.getInt(a.o.TabLayout_tabIconTintMode, -1), (PorterDuff.Mode) null);
            this.w = com.google.android.material.q.c.a(context2, a2, a.o.TabLayout_tabRippleColor);
            this.E = a2.getInt(a.o.TabLayout_tabIndicatorAnimationDuration, R);
            this.aa = a2.getDimensionPixelSize(a.o.TabLayout_tabMinWidth, -1);
            this.ab = a2.getDimensionPixelSize(a.o.TabLayout_tabMaxWidth, -1);
            this.B = a2.getResourceId(a.o.TabLayout_tabBackground, 0);
            this.ad = a2.getDimensionPixelSize(a.o.TabLayout_tabContentStart, 0);
            this.G = a2.getInt(a.o.TabLayout_tabMode, 1);
            this.D = a2.getInt(a.o.TabLayout_tabGravity, 0);
            this.H = a2.getBoolean(a.o.TabLayout_tabInlineLabel, false);
            this.J = a2.getBoolean(a.o.TabLayout_tabUnboundedRipple, false);
            a2.recycle();
            Resources resources = getResources();
            this.A = resources.getDimensionPixelSize(a.f.design_tab_text_size_2line);
            this.ac = resources.getDimensionPixelSize(a.f.design_tab_scrollable_min_width);
            l();
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    public void setSelectedTabIndicatorColor(@androidx.annotation.k int i2) {
        this.o.a(i2);
    }

    @Deprecated
    public void setSelectedTabIndicatorHeight(int i2) {
        this.o.b(i2);
    }

    public void a(int i2, float f2, boolean z) {
        a(i2, f2, z, true);
    }

    public void a(int i2, float f2, boolean z, boolean z2) {
        int round = Math.round(i2 + f2);
        if (round < 0 || round >= this.o.getChildCount()) {
            return;
        }
        if (z2) {
            this.o.a(i2, f2);
        }
        if (this.ah != null && this.ah.isRunning()) {
            this.ah.cancel();
        }
        scrollTo(a(i2, f2), 0);
        if (z) {
            setSelectedTabView(round);
        }
    }

    public void a(@ah h hVar) {
        a(hVar, this.U.isEmpty());
    }

    public void a(@ah h hVar, int i2) {
        a(hVar, i2, this.U.isEmpty());
    }

    public void a(@ah h hVar, boolean z) {
        a(hVar, this.U.size(), z);
    }

    public void a(@ah h hVar, int i2, boolean z) {
        if (hVar.b != this) {
            throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
        }
        b(hVar, i2);
        f(hVar);
        if (z) {
            hVar.j();
        }
    }

    private void a(@ah com.google.android.material.x.a aVar) {
        h b2 = b();
        if (aVar.f1489a != null) {
            b2.a(aVar.f1489a);
        }
        if (aVar.b != null) {
            b2.a(aVar.b);
        }
        if (aVar.c != 0) {
            b2.a(aVar.c);
        }
        if (!TextUtils.isEmpty(aVar.getContentDescription())) {
            b2.b(aVar.getContentDescription());
        }
        a(b2);
    }

    @Deprecated
    public void setOnTabSelectedListener(@ai e eVar) {
        setOnTabSelectedListener((InterfaceC0097b) eVar);
    }

    @Deprecated
    public void setOnTabSelectedListener(@ai InterfaceC0097b interfaceC0097b) {
        if (this.ae != null) {
            b(this.ae);
        }
        this.ae = interfaceC0097b;
        if (interfaceC0097b != null) {
            a(interfaceC0097b);
        }
    }

    public void a(@ah e eVar) {
        a((InterfaceC0097b) eVar);
    }

    @Deprecated
    public void a(@ai InterfaceC0097b interfaceC0097b) {
        if (this.af.contains(interfaceC0097b)) {
            return;
        }
        this.af.add(interfaceC0097b);
    }

    public void b(@ah e eVar) {
        b((InterfaceC0097b) eVar);
    }

    @Deprecated
    public void b(@ai InterfaceC0097b interfaceC0097b) {
        this.af.remove(interfaceC0097b);
    }

    public void a() {
        this.af.clear();
    }

    @ah
    public h b() {
        h c2 = c();
        c2.b = this;
        c2.c = e(c2);
        return c2;
    }

    protected h c() {
        h a2 = S.a();
        return a2 == null ? new h() : a2;
    }

    protected boolean b(h hVar) {
        return S.a(hVar);
    }

    public int getTabCount() {
        return this.U.size();
    }

    @ai
    public h a(int i2) {
        if (i2 < 0 || i2 >= getTabCount()) {
            return null;
        }
        return this.U.get(i2);
    }

    public int getSelectedTabPosition() {
        if (this.V != null) {
            return this.V.d();
        }
        return -1;
    }

    public void c(@ah h hVar) {
        if (hVar.b != this) {
            throw new IllegalArgumentException("Tab does not belong to this TabLayout.");
        }
        b(hVar.d());
    }

    public void b(int i2) {
        int d2 = this.V != null ? this.V.d() : 0;
        c(i2);
        h remove = this.U.remove(i2);
        if (remove != null) {
            remove.n();
            b(remove);
        }
        int size = this.U.size();
        for (int i3 = i2; i3 < size; i3++) {
            this.U.get(i3).b(i3);
        }
        if (d2 == i2) {
            d(this.U.isEmpty() ? null : this.U.get(Math.max(0, i2 - 1)));
        }
    }

    public void d() {
        for (int childCount = this.o.getChildCount() - 1; childCount >= 0; childCount--) {
            c(childCount);
        }
        Iterator<h> it = this.U.iterator();
        while (it.hasNext()) {
            h next = it.next();
            it.remove();
            next.n();
            b(next);
        }
        this.V = null;
    }

    public void setTabMode(int i2) {
        if (i2 != this.G) {
            this.G = i2;
            l();
        }
    }

    public int getTabMode() {
        return this.G;
    }

    public void setTabGravity(int i2) {
        if (this.D != i2) {
            this.D = i2;
            l();
        }
    }

    public int getTabGravity() {
        return this.D;
    }

    public void setSelectedTabIndicatorGravity(int i2) {
        if (this.F != i2) {
            this.F = i2;
            af.h(this.o);
        }
    }

    public int getTabIndicatorGravity() {
        return this.F;
    }

    public void setTabIndicatorFullWidth(boolean z) {
        this.I = z;
        af.h(this.o);
    }

    public boolean e() {
        return this.I;
    }

    public void setInlineLabel(boolean z) {
        if (this.H != z) {
            this.H = z;
            for (int i2 = 0; i2 < this.o.getChildCount(); i2++) {
                View childAt = this.o.getChildAt(i2);
                if (childAt instanceof l) {
                    ((l) childAt).c();
                }
            }
            l();
        }
    }

    public void setInlineLabelResource(@androidx.annotation.h int i2) {
        setInlineLabel(getResources().getBoolean(i2));
    }

    public boolean f() {
        return this.H;
    }

    public void setUnboundedRipple(boolean z) {
        if (this.J != z) {
            this.J = z;
            for (int i2 = 0; i2 < this.o.getChildCount(); i2++) {
                View childAt = this.o.getChildAt(i2);
                if (childAt instanceof l) {
                    ((l) childAt).a(getContext());
                }
            }
        }
    }

    public void setUnboundedRippleResource(@androidx.annotation.h int i2) {
        setUnboundedRipple(getResources().getBoolean(i2));
    }

    public boolean g() {
        return this.J;
    }

    public void setTabTextColors(@ai ColorStateList colorStateList) {
        if (this.u != colorStateList) {
            this.u = colorStateList;
            i();
        }
    }

    @ai
    public ColorStateList getTabTextColors() {
        return this.u;
    }

    public void a(int i2, int i3) {
        setTabTextColors(b(i2, i3));
    }

    public void setTabIconTint(@ai ColorStateList colorStateList) {
        if (this.v != colorStateList) {
            this.v = colorStateList;
            i();
        }
    }

    public void setTabIconTintResource(@androidx.annotation.m int i2) {
        setTabIconTint(androidx.appcompat.a.a.a.a(getContext(), i2));
    }

    @ai
    public ColorStateList getTabIconTint() {
        return this.v;
    }

    @ai
    public ColorStateList getTabRippleColor() {
        return this.w;
    }

    public void setTabRippleColor(@ai ColorStateList colorStateList) {
        if (this.w != colorStateList) {
            this.w = colorStateList;
            for (int i2 = 0; i2 < this.o.getChildCount(); i2++) {
                View childAt = this.o.getChildAt(i2);
                if (childAt instanceof l) {
                    ((l) childAt).a(getContext());
                }
            }
        }
    }

    public void setTabRippleColorResource(@androidx.annotation.m int i2) {
        setTabRippleColor(androidx.appcompat.a.a.a.a(getContext(), i2));
    }

    @ai
    public Drawable getTabSelectedIndicator() {
        return this.x;
    }

    public void setSelectedTabIndicator(@ai Drawable drawable) {
        if (this.x != drawable) {
            this.x = drawable;
            af.h(this.o);
        }
    }

    public void setSelectedTabIndicator(@q int i2) {
        if (i2 != 0) {
            setSelectedTabIndicator(androidx.appcompat.a.a.a.b(getContext(), i2));
        } else {
            setSelectedTabIndicator((Drawable) null);
        }
    }

    public void setupWithViewPager(@ai androidx.l.a.d dVar) {
        a(dVar, true);
    }

    public void a(@ai androidx.l.a.d dVar, boolean z) {
        a(dVar, z, false);
    }

    private void a(@ai androidx.l.a.d dVar, boolean z, boolean z2) {
        if (this.K != null) {
            if (this.ak != null) {
                this.K.b(this.ak);
            }
            if (this.al != null) {
                this.K.b(this.al);
            }
        }
        if (this.ag != null) {
            b(this.ag);
            this.ag = null;
        }
        if (dVar != null) {
            this.K = dVar;
            if (this.ak == null) {
                this.ak = new k(this);
            }
            this.ak.a();
            dVar.a(this.ak);
            this.ag = new m(dVar);
            a(this.ag);
            androidx.l.a.a adapter = dVar.getAdapter();
            if (adapter != null) {
                a(adapter, z);
            }
            if (this.al == null) {
                this.al = new a();
            }
            this.al.a(z);
            dVar.a(this.al);
            a(dVar.getCurrentItem(), 0.0f, true);
        } else {
            this.K = null;
            a((androidx.l.a.a) null, false);
        }
        this.am = z2;
    }

    @Deprecated
    public void setTabsFromPagerAdapter(@ai androidx.l.a.a aVar) {
        a(aVar, false);
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return getTabScrollRange() > 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.google.android.material.t.k.a(this);
        if (this.K == null) {
            ViewParent parent = getParent();
            if (parent instanceof androidx.l.a.d) {
                a((androidx.l.a.d) parent, true, true);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.am) {
            setupWithViewPager(null);
            this.am = false;
        }
    }

    private int getTabScrollRange() {
        return Math.max(0, ((this.o.getWidth() - getWidth()) - getPaddingLeft()) - getPaddingRight());
    }

    void a(@ai androidx.l.a.a aVar, boolean z) {
        if (this.ai != null && this.aj != null) {
            this.ai.b(this.aj);
        }
        this.ai = aVar;
        if (z && aVar != null) {
            if (this.aj == null) {
                this.aj = new f();
            }
            aVar.a(this.aj);
        }
        h();
    }

    void h() {
        int currentItem;
        d();
        if (this.ai != null) {
            int b2 = this.ai.b();
            for (int i2 = 0; i2 < b2; i2++) {
                a(b().a(this.ai.c(i2)), false);
            }
            if (this.K == null || b2 <= 0 || (currentItem = this.K.getCurrentItem()) == getSelectedTabPosition() || currentItem >= getTabCount()) {
                return;
            }
            d(a(currentItem));
        }
    }

    private void i() {
        int size = this.U.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.U.get(i2).m();
        }
    }

    @ah
    private l e(@ah h hVar) {
        l a2 = this.an != null ? this.an.a() : null;
        if (a2 == null) {
            a2 = new l(getContext());
        }
        a2.setTab(hVar);
        a2.setFocusable(true);
        a2.setMinimumWidth(getTabMinWidth());
        if (TextUtils.isEmpty(hVar.g)) {
            a2.setContentDescription(hVar.f);
        } else {
            a2.setContentDescription(hVar.g);
        }
        return a2;
    }

    private void b(@ah h hVar, int i2) {
        hVar.b(i2);
        this.U.add(i2, hVar);
        int size = this.U.size();
        while (true) {
            i2++;
            if (i2 >= size) {
                return;
            } else {
                this.U.get(i2).b(i2);
            }
        }
    }

    private void f(@ah h hVar) {
        l lVar = hVar.c;
        lVar.setSelected(false);
        lVar.setActivated(false);
        this.o.addView(lVar, hVar.d(), j());
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view) {
        a(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i2) {
        a(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        a(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        a(view);
    }

    private void a(View view) {
        if (view instanceof com.google.android.material.x.a) {
            a((com.google.android.material.x.a) view);
            return;
        }
        throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
    }

    @ah
    private LinearLayout.LayoutParams j() {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
        a(layoutParams);
        return layoutParams;
    }

    private void a(@ah LinearLayout.LayoutParams layoutParams) {
        if (this.G == 1 && this.D == 0) {
            layoutParams.width = 0;
            layoutParams.weight = 1.0f;
        } else {
            layoutParams.width = -2;
            layoutParams.weight = 0.0f;
        }
    }

    @Override // android.view.View
    @am(a = 21)
    public void setElevation(float f2) {
        super.setElevation(f2);
        com.google.android.material.t.k.a(this, f2);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@ah AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        androidx.core.n.a.d.a(accessibilityNodeInfo).b(d.b.a(1, getTabCount(), false, 1));
    }

    @Override // android.view.View
    protected void onDraw(@ah Canvas canvas) {
        for (int i2 = 0; i2 < this.o.getChildCount(); i2++) {
            View childAt = this.o.getChildAt(i2);
            if (childAt instanceof l) {
                ((l) childAt).a(canvas);
            }
        }
        super.onDraw(canvas);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x007c, code lost:
    
        if (r7.getMeasuredWidth() != getMeasuredWidth()) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x007e, code lost:
    
        r5 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0088, code lost:
    
        if (r7.getMeasuredWidth() < getMeasuredWidth()) goto L26;
     */
    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onMeasure(int i2, int i3) {
        int round = Math.round(z.a(getContext(), getDefaultHeight()));
        int mode = View.MeasureSpec.getMode(i3);
        boolean z = false;
        if (mode != Integer.MIN_VALUE) {
            if (mode == 0) {
                i3 = View.MeasureSpec.makeMeasureSpec(round + getPaddingTop() + getPaddingBottom(), androidx.d.c.b.a.b.b);
            }
        } else if (getChildCount() == 1 && View.MeasureSpec.getSize(i3) >= round) {
            getChildAt(0).setMinimumHeight(round);
        }
        int size = View.MeasureSpec.getSize(i2);
        if (View.MeasureSpec.getMode(i2) != 0) {
            this.C = this.ab > 0 ? this.ab : (int) (size - z.a(getContext(), 56));
        }
        super.onMeasure(i2, i3);
        if (getChildCount() == 1) {
            View childAt = getChildAt(0);
            switch (this.G) {
            }
            if (z) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), androidx.d.c.b.a.b.b), getChildMeasureSpec(i3, getPaddingTop() + getPaddingBottom(), childAt.getLayoutParams().height));
            }
        }
    }

    private void c(int i2) {
        l lVar = (l) this.o.getChildAt(i2);
        this.o.removeViewAt(i2);
        if (lVar != null) {
            lVar.a();
            this.an.a(lVar);
        }
        requestLayout();
    }

    private void d(int i2) {
        if (i2 == -1) {
            return;
        }
        if (getWindowToken() == null || !af.ag(this) || this.o.a()) {
            a(i2, 0.0f, true);
            return;
        }
        int scrollX = getScrollX();
        int a2 = a(i2, 0.0f);
        if (scrollX != a2) {
            k();
            this.ah.setIntValues(scrollX, a2);
            this.ah.start();
        }
        this.o.b(i2, this.E);
    }

    private void k() {
        if (this.ah == null) {
            this.ah = new ValueAnimator();
            this.ah.setInterpolator(com.google.android.material.a.a.b);
            this.ah.setDuration(this.E);
            this.ah.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.x.b.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(@ah ValueAnimator valueAnimator) {
                    b.this.scrollTo(((Integer) valueAnimator.getAnimatedValue()).intValue(), 0);
                }
            });
        }
    }

    void setScrollAnimatorListener(Animator.AnimatorListener animatorListener) {
        k();
        this.ah.addListener(animatorListener);
    }

    private void setSelectedTabView(int i2) {
        int childCount = this.o.getChildCount();
        if (i2 < childCount) {
            int i3 = 0;
            while (i3 < childCount) {
                View childAt = this.o.getChildAt(i3);
                boolean z = true;
                childAt.setSelected(i3 == i2);
                if (i3 != i2) {
                    z = false;
                }
                childAt.setActivated(z);
                i3++;
            }
        }
    }

    public void d(@ai h hVar) {
        b(hVar, true);
    }

    public void b(@ai h hVar, boolean z) {
        h hVar2 = this.V;
        if (hVar2 == hVar) {
            if (hVar2 != null) {
                i(hVar);
                d(hVar.d());
                return;
            }
            return;
        }
        int d2 = hVar != null ? hVar.d() : -1;
        if (z) {
            if ((hVar2 == null || hVar2.d() == -1) && d2 != -1) {
                a(d2, 0.0f, true);
            } else {
                d(d2);
            }
            if (d2 != -1) {
                setSelectedTabView(d2);
            }
        }
        this.V = hVar;
        if (hVar2 != null) {
            h(hVar2);
        }
        if (hVar != null) {
            g(hVar);
        }
    }

    private void g(@ah h hVar) {
        for (int size = this.af.size() - 1; size >= 0; size--) {
            this.af.get(size).a(hVar);
        }
    }

    private void h(@ah h hVar) {
        for (int size = this.af.size() - 1; size >= 0; size--) {
            this.af.get(size).b(hVar);
        }
    }

    private void i(@ah h hVar) {
        for (int size = this.af.size() - 1; size >= 0; size--) {
            this.af.get(size).c(hVar);
        }
    }

    private int a(int i2, float f2) {
        if (this.G != 0 && this.G != 2) {
            return 0;
        }
        View childAt = this.o.getChildAt(i2);
        int i3 = i2 + 1;
        View childAt2 = i3 < this.o.getChildCount() ? this.o.getChildAt(i3) : null;
        int width = childAt != null ? childAt.getWidth() : 0;
        int width2 = childAt2 != null ? childAt2.getWidth() : 0;
        int left = (childAt.getLeft() + (width / 2)) - (getWidth() / 2);
        int i4 = (int) ((width + width2) * 0.5f * f2);
        return af.p(this) == 0 ? left + i4 : left - i4;
    }

    private void l() {
        af.b(this.o, (this.G == 0 || this.G == 2) ? Math.max(0, this.ad - this.p) : 0, 0, 0, 0);
        switch (this.G) {
            case 0:
                e(this.D);
                break;
            case 1:
            case 2:
                if (this.D == 2) {
                    Log.w(T, "GRAVITY_START is not supported with the current tab mode, GRAVITY_CENTER will be used instead");
                }
                this.o.setGravity(1);
                break;
        }
        a(true);
    }

    private void e(int i2) {
        switch (i2) {
            case 0:
                Log.w(T, "MODE_SCROLLABLE + GRAVITY_FILL is not supported, GRAVITY_START will be used instead");
                break;
            case 1:
                this.o.setGravity(1);
                return;
            case 2:
                break;
            default:
                return;
        }
        this.o.setGravity(androidx.core.n.h.b);
    }

    void a(boolean z) {
        for (int i2 = 0; i2 < this.o.getChildCount(); i2++) {
            View childAt = this.o.getChildAt(i2);
            childAt.setMinimumWidth(getTabMinWidth());
            a((LinearLayout.LayoutParams) childAt.getLayoutParams());
            if (z) {
                childAt.requestLayout();
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class h {

        /* renamed from: a, reason: collision with root package name */
        public static final int f1497a = -1;

        @ai
        public b b;

        @ah
        public l c;

        @ai
        private Object d;

        @ai
        private Drawable e;

        @ai
        private CharSequence f;

        @ai
        private CharSequence g;

        @ai
        private View i;
        private int h = -1;

        @c
        private int j = 1;

        @ai
        public Object a() {
            return this.d;
        }

        @ah
        public h a(@ai Object obj) {
            this.d = obj;
            return this;
        }

        @ai
        public View b() {
            return this.i;
        }

        @ah
        public h a(@ai View view) {
            this.i = view;
            m();
            return this;
        }

        @ah
        public h a(@ac int i) {
            return a(LayoutInflater.from(this.c.getContext()).inflate(i, (ViewGroup) this.c, false));
        }

        @ai
        public Drawable c() {
            return this.e;
        }

        public int d() {
            return this.h;
        }

        void b(int i) {
            this.h = i;
        }

        @ai
        public CharSequence e() {
            return this.f;
        }

        @ah
        public h a(@ai Drawable drawable) {
            this.e = drawable;
            if (this.b.D == 1 || this.b.G == 2) {
                this.b.a(true);
            }
            m();
            if (com.google.android.material.b.b.f1176a && this.c.j() && this.c.f.isVisible()) {
                this.c.invalidate();
            }
            return this;
        }

        @ah
        public h c(@q int i) {
            if (this.b == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            return a(androidx.appcompat.a.a.a.b(this.b.getContext(), i));
        }

        @ah
        public h a(@ai CharSequence charSequence) {
            if (TextUtils.isEmpty(this.g) && !TextUtils.isEmpty(charSequence)) {
                this.c.setContentDescription(charSequence);
            }
            this.f = charSequence;
            m();
            return this;
        }

        @ah
        public h d(@as int i) {
            if (this.b == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            return a(this.b.getResources().getText(i));
        }

        @ah
        public com.google.android.material.b.a f() {
            return this.c.getOrCreateBadge();
        }

        public void g() {
            this.c.g();
        }

        @ai
        public com.google.android.material.b.a h() {
            return this.c.getBadge();
        }

        @ah
        public h e(@c int i) {
            this.j = i;
            if (this.b.D == 1 || this.b.G == 2) {
                this.b.a(true);
            }
            m();
            if (com.google.android.material.b.b.f1176a && this.c.j() && this.c.f.isVisible()) {
                this.c.invalidate();
            }
            return this;
        }

        @c
        public int i() {
            return this.j;
        }

        public void j() {
            if (this.b == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            this.b.d(this);
        }

        public boolean k() {
            if (this.b != null) {
                return this.b.getSelectedTabPosition() == this.h;
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        @ah
        public h f(@as int i) {
            if (this.b == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            return b(this.b.getResources().getText(i));
        }

        @ah
        public h b(@ai CharSequence charSequence) {
            this.g = charSequence;
            m();
            return this;
        }

        @ai
        public CharSequence l() {
            if (this.c == null) {
                return null;
            }
            return this.c.getContentDescription();
        }

        void m() {
            if (this.c != null) {
                this.c.b();
            }
        }

        void n() {
            this.b = null;
            this.c = null;
            this.d = null;
            this.e = null;
            this.f = null;
            this.g = null;
            this.h = -1;
            this.i = null;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public final class l extends LinearLayout {
        private h b;
        private TextView c;
        private ImageView d;

        @ai
        private View e;

        @ai
        private com.google.android.material.b.a f;

        @ai
        private View g;

        @ai
        private TextView h;

        @ai
        private ImageView i;

        @ai
        private Drawable j;
        private int k;

        public l(Context context) {
            super(context);
            this.k = 2;
            a(context);
            af.b(this, b.this.p, b.this.q, b.this.r, b.this.s);
            setGravity(17);
            setOrientation(!b.this.H ? 1 : 0);
            setClickable(true);
            af.a(this, aa.a(getContext(), aa.d));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(Context context) {
            if (b.this.B != 0) {
                this.j = androidx.appcompat.a.a.a.b(context, b.this.B);
                if (this.j != null && this.j.isStateful()) {
                    this.j.setState(getDrawableState());
                }
            } else {
                this.j = null;
            }
            Drawable gradientDrawable = new GradientDrawable();
            ((GradientDrawable) gradientDrawable).setColor(0);
            if (b.this.w != null) {
                GradientDrawable gradientDrawable2 = new GradientDrawable();
                gradientDrawable2.setCornerRadius(1.0E-5f);
                gradientDrawable2.setColor(-1);
                ColorStateList a2 = com.google.android.material.r.b.a(b.this.w);
                if (Build.VERSION.SDK_INT >= 21) {
                    if (b.this.J) {
                        gradientDrawable = null;
                    }
                    if (b.this.J) {
                        gradientDrawable2 = null;
                    }
                    gradientDrawable = new RippleDrawable(a2, gradientDrawable, gradientDrawable2);
                } else {
                    Drawable g = androidx.core.graphics.drawable.a.g(gradientDrawable2);
                    androidx.core.graphics.drawable.a.a(g, a2);
                    gradientDrawable = new LayerDrawable(new Drawable[]{gradientDrawable, g});
                }
            }
            af.a(this, gradientDrawable);
            b.this.invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(@ah Canvas canvas) {
            if (this.j != null) {
                this.j.setBounds(getLeft(), getTop(), getRight(), getBottom());
                this.j.draw(canvas);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void drawableStateChanged() {
            super.drawableStateChanged();
            int[] drawableState = getDrawableState();
            boolean z = false;
            if (this.j != null && this.j.isStateful()) {
                z = false | this.j.setState(drawableState);
            }
            if (z) {
                invalidate();
                b.this.invalidate();
            }
        }

        @Override // android.view.View
        public boolean performClick() {
            boolean performClick = super.performClick();
            if (this.b == null) {
                return performClick;
            }
            if (!performClick) {
                playSoundEffect(0);
            }
            this.b.j();
            return true;
        }

        @Override // android.view.View
        public void setSelected(boolean z) {
            boolean z2 = isSelected() != z;
            super.setSelected(z);
            if (z2 && z && Build.VERSION.SDK_INT < 16) {
                sendAccessibilityEvent(4);
            }
            if (this.c != null) {
                this.c.setSelected(z);
            }
            if (this.d != null) {
                this.d.setSelected(z);
            }
            if (this.g != null) {
                this.g.setSelected(z);
            }
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(@ah AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            if (this.f != null && this.f.isVisible()) {
                accessibilityNodeInfo.setContentDescription(((Object) getContentDescription()) + ", " + ((Object) this.f.j()));
            }
            androidx.core.n.a.d a2 = androidx.core.n.a.d.a(accessibilityNodeInfo);
            a2.c(d.c.a(0, 1, this.b.d(), 1, false, isSelected()));
            if (isSelected()) {
                a2.h(false);
                a2.b(d.a.e);
            }
            a2.j("Tab");
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i, int i2) {
            Layout layout;
            int size = View.MeasureSpec.getSize(i);
            int mode = View.MeasureSpec.getMode(i);
            int tabMaxWidth = b.this.getTabMaxWidth();
            if (tabMaxWidth > 0 && (mode == 0 || size > tabMaxWidth)) {
                i = View.MeasureSpec.makeMeasureSpec(b.this.C, Integer.MIN_VALUE);
            }
            super.onMeasure(i, i2);
            if (this.c != null) {
                float f = b.this.z;
                int i3 = this.k;
                boolean z = true;
                if (this.d != null && this.d.getVisibility() == 0) {
                    i3 = 1;
                } else if (this.c != null && this.c.getLineCount() > 1) {
                    f = b.this.A;
                }
                float textSize = this.c.getTextSize();
                int lineCount = this.c.getLineCount();
                int a2 = androidx.core.widget.m.a(this.c);
                if (f != textSize || (a2 >= 0 && i3 != a2)) {
                    if (b.this.G == 1 && f > textSize && lineCount == 1 && ((layout = this.c.getLayout()) == null || a(layout, 0, f) > (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight())) {
                        z = false;
                    }
                    if (z) {
                        this.c.setTextSize(0, f);
                        this.c.setMaxLines(i3);
                        super.onMeasure(i, i2);
                    }
                }
            }
        }

        void setTab(@ai h hVar) {
            if (hVar != this.b) {
                this.b = hVar;
                b();
            }
        }

        void a() {
            setTab(null);
            setSelected(false);
        }

        final void b() {
            h hVar = this.b;
            Drawable drawable = null;
            View b = hVar != null ? hVar.b() : null;
            if (b != null) {
                ViewParent parent = b.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(b);
                    }
                    addView(b);
                }
                this.g = b;
                if (this.c != null) {
                    this.c.setVisibility(8);
                }
                if (this.d != null) {
                    this.d.setVisibility(8);
                    this.d.setImageDrawable(null);
                }
                this.h = (TextView) b.findViewById(R.id.text1);
                if (this.h != null) {
                    this.k = androidx.core.widget.m.a(this.h);
                }
                this.i = (ImageView) b.findViewById(R.id.icon);
            } else {
                if (this.g != null) {
                    removeView(this.g);
                    this.g = null;
                }
                this.h = null;
                this.i = null;
            }
            if (this.g == null) {
                if (this.d == null) {
                    d();
                }
                if (hVar != null && hVar.c() != null) {
                    drawable = androidx.core.graphics.drawable.a.g(hVar.c()).mutate();
                }
                if (drawable != null) {
                    androidx.core.graphics.drawable.a.a(drawable, b.this.v);
                    if (b.this.y != null) {
                        androidx.core.graphics.drawable.a.a(drawable, b.this.y);
                    }
                }
                if (this.c == null) {
                    e();
                    this.k = androidx.core.widget.m.a(this.c);
                }
                androidx.core.widget.m.a(this.c, b.this.t);
                if (b.this.u != null) {
                    this.c.setTextColor(b.this.u);
                }
                a(this.c, this.d);
                h();
                a(this.d);
                a(this.c);
            } else if (this.h != null || this.i != null) {
                a(this.h, this.i);
            }
            if (hVar != null && !TextUtils.isEmpty(hVar.g)) {
                setContentDescription(hVar.g);
            }
            setSelected(hVar != null && hVar.k());
        }

        private void d() {
            FrameLayout frameLayout;
            if (com.google.android.material.b.b.f1176a) {
                frameLayout = f();
                addView(frameLayout, 0);
            } else {
                frameLayout = this;
            }
            this.d = (ImageView) LayoutInflater.from(getContext()).inflate(a.k.design_layout_tab_icon, (ViewGroup) frameLayout, false);
            frameLayout.addView(this.d, 0);
        }

        private void e() {
            FrameLayout frameLayout;
            if (com.google.android.material.b.b.f1176a) {
                frameLayout = f();
                addView(frameLayout);
            } else {
                frameLayout = this;
            }
            this.c = (TextView) LayoutInflater.from(getContext()).inflate(a.k.design_layout_tab_text, (ViewGroup) frameLayout, false);
            frameLayout.addView(this.c);
        }

        @ah
        private FrameLayout f() {
            FrameLayout frameLayout = new FrameLayout(getContext());
            frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
            return frameLayout;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @ah
        public com.google.android.material.b.a getOrCreateBadge() {
            if (this.f == null) {
                this.f = com.google.android.material.b.a.a(getContext());
            }
            h();
            if (this.f == null) {
                throw new IllegalStateException("Unable to create badge");
            }
            return this.f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @ai
        public com.google.android.material.b.a getBadge() {
            return this.f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void g() {
            if (this.e != null) {
                i();
            }
            this.f = null;
        }

        private void a(@ai final View view) {
            if (view == null) {
                return;
            }
            view.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.google.android.material.x.b.l.1
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                    if (view.getVisibility() == 0) {
                        l.this.c(view);
                    }
                }
            });
        }

        private void h() {
            if (j()) {
                if (this.g != null) {
                    i();
                    return;
                }
                if (this.d != null && this.b != null && this.b.c() != null) {
                    if (this.e != this.d) {
                        i();
                        b(this.d);
                        return;
                    } else {
                        c(this.d);
                        return;
                    }
                }
                if (this.c != null && this.b != null && this.b.i() == 1) {
                    if (this.e != this.c) {
                        i();
                        b(this.c);
                        return;
                    } else {
                        c(this.c);
                        return;
                    }
                }
                i();
            }
        }

        private void b(@ai View view) {
            if (j() && view != null) {
                a(false);
                com.google.android.material.b.b.a(this.f, view, d(view));
                this.e = view;
            }
        }

        private void i() {
            if (j()) {
                a(true);
                if (this.e != null) {
                    com.google.android.material.b.b.b(this.f, this.e, d(this.e));
                    this.e = null;
                }
            }
        }

        private void a(boolean z) {
            setClipChildren(z);
            setClipToPadding(z);
            ViewGroup viewGroup = (ViewGroup) getParent();
            if (viewGroup != null) {
                viewGroup.setClipChildren(z);
                viewGroup.setClipToPadding(z);
            }
        }

        final void c() {
            setOrientation(!b.this.H ? 1 : 0);
            if (this.h != null || this.i != null) {
                a(this.h, this.i);
            } else {
                a(this.c, this.d);
            }
        }

        private void a(@ai TextView textView, @ai ImageView imageView) {
            Drawable mutate = (this.b == null || this.b.c() == null) ? null : androidx.core.graphics.drawable.a.g(this.b.c()).mutate();
            CharSequence e = this.b != null ? this.b.e() : null;
            if (imageView != null) {
                if (mutate != null) {
                    imageView.setImageDrawable(mutate);
                    imageView.setVisibility(0);
                    setVisibility(0);
                } else {
                    imageView.setVisibility(8);
                    imageView.setImageDrawable(null);
                }
            }
            boolean z = !TextUtils.isEmpty(e);
            if (textView != null) {
                if (z) {
                    textView.setText(e);
                    if (this.b.j == 1) {
                        textView.setVisibility(0);
                    } else {
                        textView.setVisibility(8);
                    }
                    setVisibility(0);
                } else {
                    textView.setVisibility(8);
                    textView.setText((CharSequence) null);
                }
            }
            if (imageView != null) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
                int a2 = (z && imageView.getVisibility() == 0) ? (int) z.a(getContext(), 8) : 0;
                if (b.this.H) {
                    if (a2 != androidx.core.n.m.b(marginLayoutParams)) {
                        androidx.core.n.m.b(marginLayoutParams, a2);
                        marginLayoutParams.bottomMargin = 0;
                        imageView.setLayoutParams(marginLayoutParams);
                        imageView.requestLayout();
                    }
                } else if (a2 != marginLayoutParams.bottomMargin) {
                    marginLayoutParams.bottomMargin = a2;
                    androidx.core.n.m.b(marginLayoutParams, 0);
                    imageView.setLayoutParams(marginLayoutParams);
                    imageView.requestLayout();
                }
            }
            CharSequence charSequence = this.b != null ? this.b.g : null;
            if (z) {
                charSequence = null;
            }
            bc.a(this, charSequence);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c(@ah View view) {
            if (j() && view == this.e) {
                com.google.android.material.b.b.c(this.f, view, d(view));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean j() {
            return this.f != null;
        }

        @ai
        private FrameLayout d(@ah View view) {
            if ((view == this.d || view == this.c) && com.google.android.material.b.b.f1176a) {
                return (FrameLayout) view.getParent();
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getContentWidth() {
            int i = 0;
            int i2 = 0;
            boolean z = false;
            for (View view : new View[]{this.c, this.d, this.g}) {
                if (view != null && view.getVisibility() == 0) {
                    i2 = z ? Math.min(i2, view.getLeft()) : view.getLeft();
                    i = z ? Math.max(i, view.getRight()) : view.getRight();
                    z = true;
                }
            }
            return i - i2;
        }

        @ai
        public h getTab() {
            return this.b;
        }

        private float a(@ah Layout layout, int i, float f) {
            return layout.getLineWidth(i) * (f / layout.getPaint().getTextSize());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class g extends LinearLayout {

        /* renamed from: a, reason: collision with root package name */
        int f1494a;
        float b;
        int c;
        int d;
        ValueAnimator e;
        private int g;

        @ah
        private final Paint h;

        @ah
        private final GradientDrawable i;
        private int j;
        private int k;
        private int l;

        g(Context context) {
            super(context);
            this.f1494a = -1;
            this.j = -1;
            this.c = -1;
            this.d = -1;
            this.k = -1;
            this.l = -1;
            setWillNotDraw(false);
            this.h = new Paint();
            this.i = new GradientDrawable();
        }

        void a(int i) {
            if (this.h.getColor() != i) {
                this.h.setColor(i);
                af.h(this);
            }
        }

        void b(int i) {
            if (this.g != i) {
                this.g = i;
                af.h(this);
            }
        }

        boolean a() {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                if (getChildAt(i).getWidth() <= 0) {
                    return true;
                }
            }
            return false;
        }

        void a(int i, float f) {
            if (this.e != null && this.e.isRunning()) {
                this.e.cancel();
            }
            this.f1494a = i;
            this.b = f;
            c();
        }

        float b() {
            return this.f1494a + this.b;
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onRtlPropertiesChanged(int i) {
            super.onRtlPropertiesChanged(i);
            if (Build.VERSION.SDK_INT >= 23 || this.j == i) {
                return;
            }
            requestLayout();
            this.j = i;
        }

        @Override // android.widget.LinearLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            boolean z;
            super.onMeasure(i, i2);
            if (View.MeasureSpec.getMode(i) != 1073741824) {
                return;
            }
            if (b.this.D == 1 || b.this.G == 2) {
                int childCount = getChildCount();
                int i3 = 0;
                for (int i4 = 0; i4 < childCount; i4++) {
                    View childAt = getChildAt(i4);
                    if (childAt.getVisibility() == 0) {
                        i3 = Math.max(i3, childAt.getMeasuredWidth());
                    }
                }
                if (i3 <= 0) {
                    return;
                }
                if (i3 * childCount <= getMeasuredWidth() - (((int) z.a(getContext(), 16)) * 2)) {
                    z = false;
                    for (int i5 = 0; i5 < childCount; i5++) {
                        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) getChildAt(i5).getLayoutParams();
                        if (layoutParams.width != i3 || layoutParams.weight != 0.0f) {
                            layoutParams.width = i3;
                            layoutParams.weight = 0.0f;
                            z = true;
                        }
                    }
                } else {
                    b.this.D = 0;
                    b.this.a(false);
                    z = true;
                }
                if (z) {
                    super.onMeasure(i, i2);
                }
            }
        }

        @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            if (this.e != null && this.e.isRunning()) {
                a(false, this.f1494a, -1);
            } else {
                c();
            }
        }

        private void c() {
            int i;
            int i2;
            View childAt = getChildAt(this.f1494a);
            if (childAt == null || childAt.getWidth() <= 0) {
                i = -1;
                i2 = -1;
            } else {
                i = childAt.getLeft();
                i2 = childAt.getRight();
                if (!b.this.I && (childAt instanceof l)) {
                    a((l) childAt, b.this.W);
                    i = (int) b.this.W.left;
                    i2 = (int) b.this.W.right;
                }
                if (this.b > 0.0f && this.f1494a < getChildCount() - 1) {
                    View childAt2 = getChildAt(this.f1494a + 1);
                    int left = childAt2.getLeft();
                    int right = childAt2.getRight();
                    if (!b.this.I && (childAt2 instanceof l)) {
                        a((l) childAt2, b.this.W);
                        left = (int) b.this.W.left;
                        right = (int) b.this.W.right;
                    }
                    i = (int) ((this.b * left) + ((1.0f - this.b) * i));
                    i2 = (int) ((this.b * right) + ((1.0f - this.b) * i2));
                }
            }
            a(i, i2);
        }

        void a(int i, int i2) {
            if (i == this.c && i2 == this.d) {
                return;
            }
            this.c = i;
            this.d = i2;
            af.h(this);
        }

        void b(int i, int i2) {
            if (this.e != null && this.e.isRunning()) {
                this.e.cancel();
            }
            a(true, i, i2);
        }

        private void a(boolean z, final int i, int i2) {
            View childAt = getChildAt(i);
            if (childAt == null) {
                c();
                return;
            }
            final int left = childAt.getLeft();
            final int right = childAt.getRight();
            if (!b.this.I && (childAt instanceof l)) {
                a((l) childAt, b.this.W);
                left = (int) b.this.W.left;
                right = (int) b.this.W.right;
            }
            int i3 = this.c;
            int i4 = this.d;
            if (i3 == left && i4 == right) {
                return;
            }
            if (z) {
                this.k = i3;
                this.l = i4;
            }
            ValueAnimator.AnimatorUpdateListener animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.x.b.g.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(@ah ValueAnimator valueAnimator) {
                    float animatedFraction = valueAnimator.getAnimatedFraction();
                    g.this.a(com.google.android.material.a.a.a(g.this.k, left, animatedFraction), com.google.android.material.a.a.a(g.this.l, right, animatedFraction));
                }
            };
            if (z) {
                ValueAnimator valueAnimator = new ValueAnimator();
                this.e = valueAnimator;
                valueAnimator.setInterpolator(com.google.android.material.a.a.b);
                valueAnimator.setDuration(i2);
                valueAnimator.setFloatValues(0.0f, 1.0f);
                valueAnimator.addUpdateListener(animatorUpdateListener);
                valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.x.b.g.2
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                        g.this.f1494a = i;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        g.this.f1494a = i;
                        g.this.b = 0.0f;
                    }
                });
                valueAnimator.start();
                return;
            }
            this.e.removeAllUpdateListeners();
            this.e.addUpdateListener(animatorUpdateListener);
        }

        private void a(@ah l lVar, @ah RectF rectF) {
            int contentWidth = lVar.getContentWidth();
            int a2 = (int) z.a(getContext(), 24);
            if (contentWidth >= a2) {
                a2 = contentWidth;
            }
            int left = (lVar.getLeft() + lVar.getRight()) / 2;
            int i = a2 / 2;
            rectF.set(left - i, 0.0f, left + i, 0.0f);
        }

        @Override // android.view.View
        public void draw(@ah Canvas canvas) {
            int i = 0;
            int intrinsicHeight = b.this.x != null ? b.this.x.getIntrinsicHeight() : 0;
            if (this.g >= 0) {
                intrinsicHeight = this.g;
            }
            switch (b.this.F) {
                case 0:
                    i = getHeight() - intrinsicHeight;
                    intrinsicHeight = getHeight();
                    break;
                case 1:
                    i = (getHeight() - intrinsicHeight) / 2;
                    intrinsicHeight = (getHeight() + intrinsicHeight) / 2;
                    break;
                case 2:
                    break;
                case 3:
                    intrinsicHeight = getHeight();
                    break;
                default:
                    intrinsicHeight = 0;
                    break;
            }
            if (this.c >= 0 && this.d > this.c) {
                Drawable mutate = androidx.core.graphics.drawable.a.g(b.this.x != null ? b.this.x : this.i).mutate();
                mutate.setBounds(this.c, i, this.d, intrinsicHeight);
                if (this.h != null) {
                    if (Build.VERSION.SDK_INT == 21) {
                        mutate.setColorFilter(this.h.getColor(), PorterDuff.Mode.SRC_IN);
                    } else {
                        androidx.core.graphics.drawable.a.a(mutate, this.h.getColor());
                    }
                }
                mutate.draw(canvas);
            }
            super.draw(canvas);
        }
    }

    @ah
    private static ColorStateList b(int i2, int i3) {
        return new ColorStateList(new int[][]{SELECTED_STATE_SET, EMPTY_STATE_SET}, new int[]{i3, i2});
    }

    @p(a = 0)
    private int getDefaultHeight() {
        int size = this.U.size();
        boolean z = false;
        int i2 = 0;
        while (true) {
            if (i2 < size) {
                h hVar = this.U.get(i2);
                if (hVar != null && hVar.c() != null && !TextUtils.isEmpty(hVar.e())) {
                    z = true;
                    break;
                }
                i2++;
            } else {
                break;
            }
        }
        return (!z || this.H) ? 48 : 72;
    }

    private int getTabMinWidth() {
        if (this.aa != -1) {
            return this.aa;
        }
        if (this.G == 0 || this.G == 2) {
            return this.ac;
        }
        return 0;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    int getTabMaxWidth() {
        return this.C;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class k implements d.f {

        /* renamed from: a, reason: collision with root package name */
        @ah
        private final WeakReference<b> f1498a;
        private int b;
        private int c;

        public k(b bVar) {
            this.f1498a = new WeakReference<>(bVar);
        }

        @Override // androidx.l.a.d.f
        public void b(int i) {
            this.b = this.c;
            this.c = i;
        }

        @Override // androidx.l.a.d.f
        public void a(int i, float f, int i2) {
            b bVar = this.f1498a.get();
            if (bVar != null) {
                bVar.a(i, f, this.c != 2 || this.b == 1, (this.c == 2 && this.b == 0) ? false : true);
            }
        }

        @Override // androidx.l.a.d.f
        public void a(int i) {
            b bVar = this.f1498a.get();
            if (bVar == null || bVar.getSelectedTabPosition() == i || i >= bVar.getTabCount()) {
                return;
            }
            bVar.b(bVar.a(i), this.c == 0 || (this.c == 2 && this.b == 0));
        }

        void a() {
            this.c = 0;
            this.b = 0;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class m implements e {

        /* renamed from: a, reason: collision with root package name */
        private final androidx.l.a.d f1501a;

        @Override // com.google.android.material.x.b.InterfaceC0097b
        public void b(h hVar) {
        }

        @Override // com.google.android.material.x.b.InterfaceC0097b
        public void c(h hVar) {
        }

        public m(androidx.l.a.d dVar) {
            this.f1501a = dVar;
        }

        @Override // com.google.android.material.x.b.InterfaceC0097b
        public void a(@ah h hVar) {
            this.f1501a.setCurrentItem(hVar.d());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class f extends DataSetObserver {
        f() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            b.this.h();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            b.this.h();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class a implements d.e {
        private boolean b;

        a() {
        }

        @Override // androidx.l.a.d.e
        public void a(@ah androidx.l.a.d dVar, @ai androidx.l.a.a aVar, @ai androidx.l.a.a aVar2) {
            if (b.this.K == dVar) {
                b.this.a(aVar2, this.b);
            }
        }

        void a(boolean z) {
            this.b = z;
        }
    }
}
