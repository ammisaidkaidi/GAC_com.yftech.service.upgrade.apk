package com.google.android.material.bottomappbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ak;
import androidx.annotation.p;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.n.af;
import androidx.core.n.ao;
import androidx.core.n.h;
import com.google.android.material.a;
import com.google.android.material.a.k;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.internal.s;
import com.google.android.material.internal.z;
import com.google.android.material.t.j;
import com.google.android.material.t.o;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class BottomAppBar extends Toolbar implements CoordinatorLayout.a {
    public static final int e = 0;
    public static final int f = 1;
    public static final int g = 0;
    public static final int h = 1;
    private static final int k = a.n.Widget_MaterialComponents_BottomAppBar;
    private static final long l = 300;
    private int A;
    private int B;
    private int C;

    @ah
    AnimatorListenerAdapter i;

    @ah
    k<FloatingActionButton> j;
    private final int m;
    private final j n;

    @ai
    private Animator o;

    @ai
    private Animator p;
    private int q;
    private int r;
    private boolean s;
    private final boolean t;
    private final boolean u;
    private final boolean v;
    private int w;
    private ArrayList<a> x;
    private boolean y;
    private Behavior z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface a {
        void a(BottomAppBar bottomAppBar);

        void b(BottomAppBar bottomAppBar);
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface b {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface c {
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setSubtitle(CharSequence charSequence) {
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setTitle(CharSequence charSequence) {
    }

    public BottomAppBar(@ah Context context) {
        this(context, null, 0);
    }

    public BottomAppBar(@ah Context context, @ai AttributeSet attributeSet) {
        this(context, attributeSet, a.c.bottomAppBarStyle);
    }

    public BottomAppBar(@ah Context context, @ai AttributeSet attributeSet, int i) {
        super(com.google.android.material.theme.a.a.a(context, attributeSet, i, k), attributeSet, i);
        this.n = new j();
        this.w = 0;
        this.y = true;
        this.i = new AnimatorListenerAdapter() { // from class: com.google.android.material.bottomappbar.BottomAppBar.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                BottomAppBar.this.a(BottomAppBar.this.q, BottomAppBar.this.y);
            }
        };
        this.j = new k<FloatingActionButton>() { // from class: com.google.android.material.bottomappbar.BottomAppBar.2
            @Override // com.google.android.material.a.k
            /* renamed from: a, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
            public void b(@ah FloatingActionButton floatingActionButton) {
                BottomAppBar.this.n.p(floatingActionButton.getVisibility() == 0 ? floatingActionButton.getScaleY() : 0.0f);
            }

            @Override // com.google.android.material.a.k
            /* renamed from: b, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
            public void a(@ah FloatingActionButton floatingActionButton) {
                float translationX = floatingActionButton.getTranslationX();
                if (BottomAppBar.this.getTopEdgeTreatment().b() != translationX) {
                    BottomAppBar.this.getTopEdgeTreatment().b(translationX);
                    BottomAppBar.this.n.invalidateSelf();
                }
                float max = Math.max(0.0f, -floatingActionButton.getTranslationY());
                if (BottomAppBar.this.getTopEdgeTreatment().c() != max) {
                    BottomAppBar.this.getTopEdgeTreatment().c(max);
                    BottomAppBar.this.n.invalidateSelf();
                }
                BottomAppBar.this.n.p(floatingActionButton.getVisibility() == 0 ? floatingActionButton.getScaleY() : 0.0f);
            }
        };
        Context context2 = getContext();
        TypedArray a2 = s.a(context2, attributeSet, a.o.BottomAppBar, i, k, new int[0]);
        ColorStateList a3 = com.google.android.material.q.c.a(context2, a2, a.o.BottomAppBar_backgroundTint);
        int dimensionPixelSize = a2.getDimensionPixelSize(a.o.BottomAppBar_elevation, 0);
        float dimensionPixelOffset = a2.getDimensionPixelOffset(a.o.BottomAppBar_fabCradleMargin, 0);
        float dimensionPixelOffset2 = a2.getDimensionPixelOffset(a.o.BottomAppBar_fabCradleRoundedCornerRadius, 0);
        float dimensionPixelOffset3 = a2.getDimensionPixelOffset(a.o.BottomAppBar_fabCradleVerticalOffset, 0);
        this.q = a2.getInt(a.o.BottomAppBar_fabAlignmentMode, 0);
        this.r = a2.getInt(a.o.BottomAppBar_fabAnimationMode, 0);
        this.s = a2.getBoolean(a.o.BottomAppBar_hideOnScroll, false);
        this.t = a2.getBoolean(a.o.BottomAppBar_paddingBottomSystemWindowInsets, false);
        this.u = a2.getBoolean(a.o.BottomAppBar_paddingLeftSystemWindowInsets, false);
        this.v = a2.getBoolean(a.o.BottomAppBar_paddingRightSystemWindowInsets, false);
        a2.recycle();
        this.m = getResources().getDimensionPixelOffset(a.f.mtrl_bottomappbar_fabOffsetEndMode);
        this.n.setShapeAppearanceModel(o.a().c(new com.google.android.material.bottomappbar.a(dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3)).a());
        this.n.J(2);
        this.n.a(Paint.Style.FILL);
        this.n.b(context2);
        setElevation(dimensionPixelSize);
        androidx.core.graphics.drawable.a.a(this.n, a3);
        af.a(this, this.n);
        z.a(this, attributeSet, i, k, new z.a() { // from class: com.google.android.material.bottomappbar.BottomAppBar.3
            @Override // com.google.android.material.internal.z.a
            @ah
            public ao a(View view, @ah ao aoVar, @ah z.b bVar) {
                boolean z;
                if (BottomAppBar.this.t) {
                    BottomAppBar.this.A = aoVar.d();
                }
                if (BottomAppBar.this.u) {
                    z = BottomAppBar.this.C != aoVar.a();
                    BottomAppBar.this.C = aoVar.a();
                } else {
                    z = false;
                }
                if (BottomAppBar.this.v) {
                    r0 = BottomAppBar.this.B != aoVar.c();
                    BottomAppBar.this.B = aoVar.c();
                }
                if (z || r0) {
                    BottomAppBar.this.u();
                    BottomAppBar.this.v();
                    BottomAppBar.this.w();
                }
                return aoVar;
            }
        });
    }

    public int getFabAlignmentMode() {
        return this.q;
    }

    public void setFabAlignmentMode(int i) {
        d(i);
        a(i, this.y);
        this.q = i;
    }

    public int getFabAnimationMode() {
        return this.r;
    }

    public void setFabAnimationMode(int i) {
        this.r = i;
    }

    public void setBackgroundTint(@ai ColorStateList colorStateList) {
        androidx.core.graphics.drawable.a.a(this.n, colorStateList);
    }

    @ai
    public ColorStateList getBackgroundTint() {
        return this.n.W();
    }

    public float getFabCradleMargin() {
        return getTopEdgeTreatment().d();
    }

    public void setFabCradleMargin(@p float f2) {
        if (f2 != getFabCradleMargin()) {
            getTopEdgeTreatment().d(f2);
            this.n.invalidateSelf();
        }
    }

    @p
    public float getFabCradleRoundedCornerRadius() {
        return getTopEdgeTreatment().e();
    }

    public void setFabCradleRoundedCornerRadius(@p float f2) {
        if (f2 != getFabCradleRoundedCornerRadius()) {
            getTopEdgeTreatment().e(f2);
            this.n.invalidateSelf();
        }
    }

    @p
    public float getCradleVerticalOffset() {
        return getTopEdgeTreatment().c();
    }

    public void setCradleVerticalOffset(@p float f2) {
        if (f2 != getCradleVerticalOffset()) {
            getTopEdgeTreatment().c(f2);
            this.n.invalidateSelf();
            v();
        }
    }

    public boolean getHideOnScroll() {
        return this.s;
    }

    public void setHideOnScroll(boolean z) {
        this.s = z;
    }

    public void n() {
        getBehavior().c((Behavior) this);
    }

    public void o() {
        getBehavior().b((Behavior) this);
    }

    @Override // android.view.View
    public void setElevation(float f2) {
        this.n.r(f2);
        getBehavior().a((Behavior) this, this.n.am() - this.n.ar());
    }

    public void b(@androidx.annotation.af int i) {
        getMenu().clear();
        a(i);
    }

    void a(@ah a aVar) {
        if (this.x == null) {
            this.x = new ArrayList<>();
        }
        this.x.add(aVar);
    }

    void b(@ah a aVar) {
        if (this.x == null) {
            return;
        }
        this.x.remove(aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        int i = this.w;
        this.w = i + 1;
        if (i != 0 || this.x == null) {
            return;
        }
        Iterator<a> it = this.x.iterator();
        while (it.hasNext()) {
            it.next().a(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        int i = this.w - 1;
        this.w = i;
        if (i != 0 || this.x == null) {
            return;
        }
        Iterator<a> it = this.x.iterator();
        while (it.hasNext()) {
            it.next().b(this);
        }
    }

    boolean c(@ak int i) {
        float f2 = i;
        if (f2 == getTopEdgeTreatment().a()) {
            return false;
        }
        getTopEdgeTreatment().a(f2);
        this.n.invalidateSelf();
        return true;
    }

    private void d(int i) {
        if (this.q == i || !af.ag(this)) {
            return;
        }
        if (this.o != null) {
            this.o.cancel();
        }
        ArrayList arrayList = new ArrayList();
        if (this.r == 1) {
            b(i, arrayList);
        } else {
            a(i, arrayList);
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        this.o = animatorSet;
        this.o.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.bottomappbar.BottomAppBar.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                BottomAppBar.this.p();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                BottomAppBar.this.q();
            }
        });
        this.o.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @ai
    public FloatingActionButton r() {
        View s = s();
        if (s instanceof FloatingActionButton) {
            return (FloatingActionButton) s;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @ai
    public View s() {
        if (!(getParent() instanceof CoordinatorLayout)) {
            return null;
        }
        for (View view : ((CoordinatorLayout) getParent()).d(this)) {
            if ((view instanceof FloatingActionButton) || (view instanceof ExtendedFloatingActionButton)) {
                return view;
            }
        }
        return null;
    }

    private boolean t() {
        FloatingActionButton r = r();
        return r != null && r.f();
    }

    protected void a(final int i, List<Animator> list) {
        FloatingActionButton r = r();
        if (r == null || r.e()) {
            return;
        }
        p();
        r.b(new FloatingActionButton.a() { // from class: com.google.android.material.bottomappbar.BottomAppBar.5
            @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.a
            public void a(@ah FloatingActionButton floatingActionButton) {
                floatingActionButton.setTranslationX(BottomAppBar.this.e(i));
                floatingActionButton.a(new FloatingActionButton.a() { // from class: com.google.android.material.bottomappbar.BottomAppBar.5.1
                    @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.a
                    public void b(FloatingActionButton floatingActionButton2) {
                        BottomAppBar.this.q();
                    }
                });
            }
        });
    }

    private void b(int i, @ah List<Animator> list) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(r(), "translationX", e(i));
        ofFloat.setDuration(l);
        list.add(ofFloat);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, boolean z) {
        if (af.ag(this)) {
            if (this.p != null) {
                this.p.cancel();
            }
            ArrayList arrayList = new ArrayList();
            if (!t()) {
                i = 0;
                z = false;
            }
            a(i, z, arrayList);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(arrayList);
            this.p = animatorSet;
            this.p.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.bottomappbar.BottomAppBar.6
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    BottomAppBar.this.p();
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    BottomAppBar.this.q();
                    BottomAppBar.this.p = null;
                }
            });
            this.p.start();
        }
    }

    private void a(final int i, final boolean z, @ah List<Animator> list) {
        final ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView == null) {
            return;
        }
        Animator ofFloat = ObjectAnimator.ofFloat(actionMenuView, "alpha", 1.0f);
        if (Math.abs(actionMenuView.getTranslationX() - a(actionMenuView, i, z)) <= 1.0f) {
            if (actionMenuView.getAlpha() < 1.0f) {
                list.add(ofFloat);
            }
        } else {
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(actionMenuView, "alpha", 0.0f);
            ofFloat2.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.bottomappbar.BottomAppBar.7

                /* renamed from: a, reason: collision with root package name */
                public boolean f1190a;

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    this.f1190a = true;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (this.f1190a) {
                        return;
                    }
                    BottomAppBar.this.b(actionMenuView, i, z);
                }
            });
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.setDuration(150L);
            animatorSet.playSequentially(ofFloat2, ofFloat);
            list.add(animatorSet);
        }
    }

    private float getFabTranslationY() {
        return -getTopEdgeTreatment().c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float e(int i) {
        boolean a2 = z.a(this);
        if (i == 1) {
            return ((getMeasuredWidth() / 2) - (this.m + (a2 ? this.C : this.B))) * (a2 ? -1 : 1);
        }
        return 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getFabTranslationX() {
        return e(this.q);
    }

    @ai
    private ActionMenuView getActionMenuView() {
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof ActionMenuView) {
                return (ActionMenuView) childAt;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(@ah ActionMenuView actionMenuView, int i, boolean z) {
        actionMenuView.setTranslationX(a(actionMenuView, i, z));
    }

    protected int a(@ah ActionMenuView actionMenuView, int i, boolean z) {
        if (i != 1 || !z) {
            return 0;
        }
        boolean a2 = z.a(this);
        int measuredWidth = a2 ? getMeasuredWidth() : 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if ((childAt.getLayoutParams() instanceof Toolbar.b) && (((Toolbar.b) childAt.getLayoutParams()).f46a & h.d) == 8388611) {
                if (a2) {
                    measuredWidth = Math.min(measuredWidth, childAt.getLeft());
                } else {
                    measuredWidth = Math.max(measuredWidth, childAt.getRight());
                }
            }
        }
        return measuredWidth - ((a2 ? actionMenuView.getRight() : actionMenuView.getLeft()) + (a2 ? this.B : -this.C));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        if (this.p != null) {
            this.p.cancel();
        }
        if (this.o != null) {
            this.o.cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            u();
            v();
        }
        w();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @ah
    public com.google.android.material.bottomappbar.a getTopEdgeTreatment() {
        return (com.google.android.material.bottomappbar.a) this.n.getShapeAppearanceModel().k();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v() {
        getTopEdgeTreatment().b(getFabTranslationX());
        View s = s();
        this.n.p((this.y && t()) ? 1.0f : 0.0f);
        if (s != null) {
            s.setTranslationY(getFabTranslationY());
            s.setTranslationX(getFabTranslationX());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView != null) {
            actionMenuView.setAlpha(1.0f);
            if (!t()) {
                b(actionMenuView, 0, false);
            } else {
                b(actionMenuView, this.q, this.y);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(@ah FloatingActionButton floatingActionButton) {
        floatingActionButton.c(this.i);
        floatingActionButton.a(new AnimatorListenerAdapter() { // from class: com.google.android.material.bottomappbar.BottomAppBar.8
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                BottomAppBar.this.i.onAnimationStart(animator);
                FloatingActionButton r = BottomAppBar.this.r();
                if (r != null) {
                    r.setTranslationX(BottomAppBar.this.getFabTranslationX());
                }
            }
        });
        floatingActionButton.a(this.j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getBottomInset() {
        return this.A;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getRightInset() {
        return this.B;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getLeftInset() {
        return this.C;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.a
    @ah
    public Behavior getBehavior() {
        if (this.z == null) {
            this.z = new Behavior();
        }
        return this.z;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.google.android.material.t.k.a(this, this.n);
        if (getParent() instanceof ViewGroup) {
            ((ViewGroup) getParent()).setClipChildren(false);
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class Behavior extends HideBottomViewOnScrollBehavior<BottomAppBar> {

        @ah
        private final Rect c;
        private WeakReference<BottomAppBar> d;
        private int e;
        private final View.OnLayoutChangeListener f;

        public Behavior() {
            this.f = new View.OnLayoutChangeListener() { // from class: com.google.android.material.bottomappbar.BottomAppBar.Behavior.1
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                    BottomAppBar bottomAppBar = (BottomAppBar) Behavior.this.d.get();
                    if (bottomAppBar == null || !(view instanceof FloatingActionButton)) {
                        view.removeOnLayoutChangeListener(this);
                        return;
                    }
                    FloatingActionButton floatingActionButton = (FloatingActionButton) view;
                    floatingActionButton.b(Behavior.this.c);
                    int height = Behavior.this.c.height();
                    bottomAppBar.c(height);
                    CoordinatorLayout.f fVar = (CoordinatorLayout.f) view.getLayoutParams();
                    if (Behavior.this.e == 0) {
                        fVar.bottomMargin = bottomAppBar.getBottomInset() + (bottomAppBar.getResources().getDimensionPixelOffset(a.f.mtrl_bottomappbar_fab_bottom_margin) - ((floatingActionButton.getMeasuredHeight() - height) / 2));
                        fVar.leftMargin = bottomAppBar.getLeftInset();
                        fVar.rightMargin = bottomAppBar.getRightInset();
                        if (z.a(floatingActionButton)) {
                            fVar.leftMargin += bottomAppBar.m;
                        } else {
                            fVar.rightMargin += bottomAppBar.m;
                        }
                    }
                }
            };
            this.c = new Rect();
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f = new View.OnLayoutChangeListener() { // from class: com.google.android.material.bottomappbar.BottomAppBar.Behavior.1
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                    BottomAppBar bottomAppBar = (BottomAppBar) Behavior.this.d.get();
                    if (bottomAppBar == null || !(view instanceof FloatingActionButton)) {
                        view.removeOnLayoutChangeListener(this);
                        return;
                    }
                    FloatingActionButton floatingActionButton = (FloatingActionButton) view;
                    floatingActionButton.b(Behavior.this.c);
                    int height = Behavior.this.c.height();
                    bottomAppBar.c(height);
                    CoordinatorLayout.f fVar = (CoordinatorLayout.f) view.getLayoutParams();
                    if (Behavior.this.e == 0) {
                        fVar.bottomMargin = bottomAppBar.getBottomInset() + (bottomAppBar.getResources().getDimensionPixelOffset(a.f.mtrl_bottomappbar_fab_bottom_margin) - ((floatingActionButton.getMeasuredHeight() - height) / 2));
                        fVar.leftMargin = bottomAppBar.getLeftInset();
                        fVar.rightMargin = bottomAppBar.getRightInset();
                        if (z.a(floatingActionButton)) {
                            fVar.leftMargin += bottomAppBar.m;
                        } else {
                            fVar.rightMargin += bottomAppBar.m;
                        }
                    }
                }
            };
            this.c = new Rect();
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public boolean a(@ah CoordinatorLayout coordinatorLayout, @ah BottomAppBar bottomAppBar, int i) {
            this.d = new WeakReference<>(bottomAppBar);
            View s = bottomAppBar.s();
            if (s != null && !af.ag(s)) {
                CoordinatorLayout.f fVar = (CoordinatorLayout.f) s.getLayoutParams();
                fVar.d = 49;
                this.e = fVar.bottomMargin;
                if (s instanceof FloatingActionButton) {
                    FloatingActionButton floatingActionButton = (FloatingActionButton) s;
                    floatingActionButton.addOnLayoutChangeListener(this.f);
                    bottomAppBar.a(floatingActionButton);
                }
                bottomAppBar.v();
            }
            coordinatorLayout.b(bottomAppBar, i);
            return super.a(coordinatorLayout, (CoordinatorLayout) bottomAppBar, i);
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public boolean a(@ah CoordinatorLayout coordinatorLayout, @ah BottomAppBar bottomAppBar, @ah View view, @ah View view2, int i, int i2) {
            return bottomAppBar.getHideOnScroll() && super.a(coordinatorLayout, (CoordinatorLayout) bottomAppBar, view, view2, i, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    @ah
    public Parcelable onSaveInstanceState() {
        d dVar = new d(super.onSaveInstanceState());
        dVar.f1193a = this.q;
        dVar.b = this.y;
        return dVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof d)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        d dVar = (d) parcelable;
        super.onRestoreInstanceState(dVar.a());
        this.q = dVar.f1193a;
        this.y = dVar.b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class d extends androidx.f.a.a {
        public static final Parcelable.Creator<d> CREATOR = new Parcelable.ClassLoaderCreator<d>() { // from class: com.google.android.material.bottomappbar.BottomAppBar.d.1
            @Override // android.os.Parcelable.ClassLoaderCreator
            @ah
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public d createFromParcel(@ah Parcel parcel, ClassLoader classLoader) {
                return new d(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            @ai
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public d createFromParcel(@ah Parcel parcel) {
                return new d(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            @ah
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public d[] newArray(int i) {
                return new d[i];
            }
        };

        /* renamed from: a, reason: collision with root package name */
        int f1193a;
        boolean b;

        public d(Parcelable parcelable) {
            super(parcelable);
        }

        public d(@ah Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f1193a = parcel.readInt();
            this.b = parcel.readInt() != 0;
        }

        @Override // androidx.f.a.a, android.os.Parcelable
        public void writeToParcel(@ah Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f1193a);
            parcel.writeInt(this.b ? 1 : 0);
        }
    }
}
