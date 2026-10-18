package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ax;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.n.af;
import com.google.android.material.a;
import com.google.android.material.a.h;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.internal.s;
import com.google.android.material.t.o;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class ExtendedFloatingActionButton extends MaterialButton implements CoordinatorLayout.a {
    private static final int i = 0;
    private static final int j = 1;
    private static final int k = 2;
    private int l;
    private final com.google.android.material.floatingactionbutton.a m;

    @ah
    private final f n;

    @ah
    private final f o;
    private final f p;
    private final f q;

    @ah
    private final CoordinatorLayout.b<ExtendedFloatingActionButton> r;
    private boolean s;
    private static final int h = a.n.Widget_MaterialComponents_ExtendedFloatingActionButton_Icon;
    static final Property<View, Float> f = new Property<View, Float>(Float.class, "width") { // from class: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.4
        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void set(@ah View view, @ah Float f2) {
            view.getLayoutParams().width = f2.intValue();
            view.requestLayout();
        }

        @Override // android.util.Property
        @ah
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(@ah View view) {
            return Float.valueOf(view.getLayoutParams().width);
        }
    };
    static final Property<View, Float> g = new Property<View, Float>(Float.class, "height") { // from class: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.5
        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void set(@ah View view, @ah Float f2) {
            view.getLayoutParams().height = f2.intValue();
            view.requestLayout();
        }

        @Override // android.util.Property
        @ah
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(@ah View view) {
            return Float.valueOf(view.getLayoutParams().height);
        }
    };

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class c {
        public void a(ExtendedFloatingActionButton extendedFloatingActionButton) {
        }

        public void b(ExtendedFloatingActionButton extendedFloatingActionButton) {
        }

        public void c(ExtendedFloatingActionButton extendedFloatingActionButton) {
        }

        public void d(ExtendedFloatingActionButton extendedFloatingActionButton) {
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    interface e {
        int a();

        int b();

        ViewGroup.LayoutParams c();
    }

    public ExtendedFloatingActionButton(@ah Context context) {
        this(context, null);
    }

    public ExtendedFloatingActionButton(@ah Context context, @ai AttributeSet attributeSet) {
        this(context, attributeSet, a.c.extendedFloatingActionButtonStyle);
    }

    public ExtendedFloatingActionButton(@ah Context context, @ai AttributeSet attributeSet, int i2) {
        super(com.google.android.material.theme.a.a.a(context, attributeSet, i2, h), attributeSet, i2);
        this.l = 0;
        this.m = new com.google.android.material.floatingactionbutton.a();
        this.p = new d(this.m);
        this.q = new b(this.m);
        this.s = true;
        Context context2 = getContext();
        this.r = new ExtendedFloatingActionButtonBehavior(context2, attributeSet);
        TypedArray a2 = s.a(context2, attributeSet, a.o.ExtendedFloatingActionButton, i2, h, new int[0]);
        h a3 = h.a(context2, a2, a.o.ExtendedFloatingActionButton_showMotionSpec);
        h a4 = h.a(context2, a2, a.o.ExtendedFloatingActionButton_hideMotionSpec);
        h a5 = h.a(context2, a2, a.o.ExtendedFloatingActionButton_extendMotionSpec);
        h a6 = h.a(context2, a2, a.o.ExtendedFloatingActionButton_shrinkMotionSpec);
        com.google.android.material.floatingactionbutton.a aVar = new com.google.android.material.floatingactionbutton.a();
        this.o = new a(aVar, new e() { // from class: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.1
            @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.e
            public int a() {
                return ExtendedFloatingActionButton.this.getMeasuredWidth();
            }

            @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.e
            public int b() {
                return ExtendedFloatingActionButton.this.getMeasuredHeight();
            }

            @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.e
            public ViewGroup.LayoutParams c() {
                return new ViewGroup.LayoutParams(-2, -2);
            }
        }, true);
        this.n = new a(aVar, new e() { // from class: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.2
            @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.e
            public int a() {
                return ExtendedFloatingActionButton.this.getCollapsedSize();
            }

            @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.e
            public int b() {
                return ExtendedFloatingActionButton.this.getCollapsedSize();
            }

            @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.e
            public ViewGroup.LayoutParams c() {
                return new ViewGroup.LayoutParams(a(), b());
            }
        }, false);
        this.p.a(a3);
        this.q.a(a4);
        this.o.a(a5);
        this.n.a(a6);
        a2.recycle();
        setShapeAppearanceModel(o.a(context2, attributeSet, i2, h, o.f1419a).a());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.material.button.MaterialButton, android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.s && TextUtils.isEmpty(getText()) && getIcon() != null) {
            this.s = false;
            this.n.g();
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.a
    @ah
    public CoordinatorLayout.b<ExtendedFloatingActionButton> getBehavior() {
        return this.r;
    }

    public void setExtended(boolean z) {
        if (this.s == z) {
            return;
        }
        f fVar = z ? this.o : this.n;
        if (fVar.i()) {
            return;
        }
        fVar.g();
    }

    public final boolean c() {
        return this.s;
    }

    public void a(@ah Animator.AnimatorListener animatorListener) {
        this.p.a(animatorListener);
    }

    public void b(@ah Animator.AnimatorListener animatorListener) {
        this.p.b(animatorListener);
    }

    public void c(@ah Animator.AnimatorListener animatorListener) {
        this.q.a(animatorListener);
    }

    public void d(@ah Animator.AnimatorListener animatorListener) {
        this.q.b(animatorListener);
    }

    public void e(@ah Animator.AnimatorListener animatorListener) {
        this.n.a(animatorListener);
    }

    public void f(@ah Animator.AnimatorListener animatorListener) {
        this.n.b(animatorListener);
    }

    public void g(@ah Animator.AnimatorListener animatorListener) {
        this.o.a(animatorListener);
    }

    public void h(@ah Animator.AnimatorListener animatorListener) {
        this.o.b(animatorListener);
    }

    public void d() {
        a(this.q, (c) null);
    }

    public void a(@ah c cVar) {
        a(this.q, cVar);
    }

    public void e() {
        a(this.p, (c) null);
    }

    public void b(@ah c cVar) {
        a(this.p, cVar);
    }

    public void f() {
        a(this.o, (c) null);
    }

    public void c(@ah c cVar) {
        a(this.o, cVar);
    }

    public void g() {
        a(this.n, (c) null);
    }

    public void d(@ah c cVar) {
        a(this.n, cVar);
    }

    @ai
    public h getShowMotionSpec() {
        return this.p.c();
    }

    public void setShowMotionSpec(@ai h hVar) {
        this.p.a(hVar);
    }

    public void setShowMotionSpecResource(@androidx.annotation.b int i2) {
        setShowMotionSpec(h.a(getContext(), i2));
    }

    @ai
    public h getHideMotionSpec() {
        return this.q.c();
    }

    public void setHideMotionSpec(@ai h hVar) {
        this.q.a(hVar);
    }

    public void setHideMotionSpecResource(@androidx.annotation.b int i2) {
        setHideMotionSpec(h.a(getContext(), i2));
    }

    @ai
    public h getExtendMotionSpec() {
        return this.o.c();
    }

    public void setExtendMotionSpec(@ai h hVar) {
        this.o.a(hVar);
    }

    public void setExtendMotionSpecResource(@androidx.annotation.b int i2) {
        setExtendMotionSpec(h.a(getContext(), i2));
    }

    @ai
    public h getShrinkMotionSpec() {
        return this.n.c();
    }

    public void setShrinkMotionSpec(@ai h hVar) {
        this.n.a(hVar);
    }

    public void setShrinkMotionSpecResource(@androidx.annotation.b int i2) {
        setShrinkMotionSpec(h.a(getContext(), i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(@ah final f fVar, @ai final c cVar) {
        if (fVar.i()) {
            return;
        }
        if (!j()) {
            fVar.g();
            fVar.a(cVar);
            return;
        }
        measure(0, 0);
        AnimatorSet f2 = fVar.f();
        f2.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.3
            private boolean d;

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                fVar.a(animator);
                this.d = false;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                this.d = true;
                fVar.e();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                fVar.d();
                if (this.d) {
                    return;
                }
                fVar.a(cVar);
            }
        });
        Iterator<Animator.AnimatorListener> it = fVar.b().iterator();
        while (it.hasNext()) {
            f2.addListener(it.next());
        }
        f2.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean h() {
        return getVisibility() != 0 ? this.l == 2 : this.l != 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean i() {
        return getVisibility() == 0 ? this.l == 1 : this.l != 2;
    }

    private boolean j() {
        return af.ag(this) && !isInEditMode();
    }

    @ax
    int getCollapsedSize() {
        return (Math.min(af.w(this), af.x(this)) * 2) + getIconSize();
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    protected static class ExtendedFloatingActionButtonBehavior<T extends ExtendedFloatingActionButton> extends CoordinatorLayout.b<T> {

        /* renamed from: a, reason: collision with root package name */
        private static final boolean f1286a = false;
        private static final boolean b = true;
        private Rect c;

        @ai
        private c d;

        @ai
        private c e;
        private boolean f;
        private boolean g;

        public ExtendedFloatingActionButtonBehavior() {
            this.f = false;
            this.g = b;
        }

        public ExtendedFloatingActionButtonBehavior(@ah Context context, @ai AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.o.ExtendedFloatingActionButton_Behavior_Layout);
            this.f = obtainStyledAttributes.getBoolean(a.o.ExtendedFloatingActionButton_Behavior_Layout_behavior_autoHide, false);
            this.g = obtainStyledAttributes.getBoolean(a.o.ExtendedFloatingActionButton_Behavior_Layout_behavior_autoShrink, b);
            obtainStyledAttributes.recycle();
        }

        public void a(boolean z) {
            this.f = z;
        }

        public boolean b() {
            return this.f;
        }

        public void b(boolean z) {
            this.g = z;
        }

        public boolean c() {
            return this.g;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public boolean a(@ah CoordinatorLayout coordinatorLayout, @ah ExtendedFloatingActionButton extendedFloatingActionButton, @ah Rect rect) {
            return super.a(coordinatorLayout, (CoordinatorLayout) extendedFloatingActionButton, rect);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public void a(@ah CoordinatorLayout.f fVar) {
            if (fVar.h == 0) {
                fVar.h = 80;
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean b(CoordinatorLayout coordinatorLayout, @ah ExtendedFloatingActionButton extendedFloatingActionButton, View view) {
            if (view instanceof AppBarLayout) {
                a(coordinatorLayout, (AppBarLayout) view, extendedFloatingActionButton);
                return false;
            }
            if (!b(view)) {
                return false;
            }
            b(view, extendedFloatingActionButton);
            return false;
        }

        private static boolean b(@ah View view) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.f) {
                return ((CoordinatorLayout.f) layoutParams).b() instanceof BottomSheetBehavior;
            }
            return false;
        }

        @ax
        void a(@ai c cVar) {
            this.d = cVar;
        }

        @ax
        void b(@ai c cVar) {
            this.e = cVar;
        }

        private boolean a(@ah View view, @ah ExtendedFloatingActionButton extendedFloatingActionButton) {
            CoordinatorLayout.f fVar = (CoordinatorLayout.f) extendedFloatingActionButton.getLayoutParams();
            if ((this.f || this.g) && fVar.a() == view.getId()) {
                return b;
            }
            return false;
        }

        private boolean a(CoordinatorLayout coordinatorLayout, @ah AppBarLayout appBarLayout, @ah ExtendedFloatingActionButton extendedFloatingActionButton) {
            if (!a((View) appBarLayout, extendedFloatingActionButton)) {
                return false;
            }
            if (this.c == null) {
                this.c = new Rect();
            }
            Rect rect = this.c;
            com.google.android.material.internal.c.b(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                a(extendedFloatingActionButton);
                return b;
            }
            b(extendedFloatingActionButton);
            return b;
        }

        private boolean b(@ah View view, @ah ExtendedFloatingActionButton extendedFloatingActionButton) {
            if (!a(view, extendedFloatingActionButton)) {
                return false;
            }
            if (view.getTop() < (extendedFloatingActionButton.getHeight() / 2) + ((CoordinatorLayout.f) extendedFloatingActionButton.getLayoutParams()).topMargin) {
                a(extendedFloatingActionButton);
                return b;
            }
            b(extendedFloatingActionButton);
            return b;
        }

        protected void a(@ah ExtendedFloatingActionButton extendedFloatingActionButton) {
            extendedFloatingActionButton.a(this.g ? extendedFloatingActionButton.n : extendedFloatingActionButton.q, this.g ? this.e : this.d);
        }

        protected void b(@ah ExtendedFloatingActionButton extendedFloatingActionButton) {
            extendedFloatingActionButton.a(this.g ? extendedFloatingActionButton.o : extendedFloatingActionButton.p, this.g ? this.e : this.d);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public boolean a(@ah CoordinatorLayout coordinatorLayout, @ah ExtendedFloatingActionButton extendedFloatingActionButton, int i) {
            List<View> c = coordinatorLayout.c(extendedFloatingActionButton);
            int size = c.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view = c.get(i2);
                if (view instanceof AppBarLayout) {
                    if (a(coordinatorLayout, (AppBarLayout) view, extendedFloatingActionButton)) {
                        break;
                    }
                } else {
                    if (b(view) && b(view, extendedFloatingActionButton)) {
                        break;
                    }
                }
            }
            coordinatorLayout.b(extendedFloatingActionButton, i);
            return b;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    class a extends com.google.android.material.floatingactionbutton.b {
        private final e b;
        private final boolean c;

        a(com.google.android.material.floatingactionbutton.a aVar, e eVar, boolean z) {
            super(ExtendedFloatingActionButton.this, aVar);
            this.b = eVar;
            this.c = z;
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public void g() {
            ExtendedFloatingActionButton.this.s = this.c;
            ViewGroup.LayoutParams layoutParams = ExtendedFloatingActionButton.this.getLayoutParams();
            if (layoutParams == null) {
                return;
            }
            layoutParams.width = this.b.c().width;
            layoutParams.height = this.b.c().height;
            ExtendedFloatingActionButton.this.requestLayout();
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public void a(@ai c cVar) {
            if (cVar == null) {
                return;
            }
            if (this.c) {
                cVar.c(ExtendedFloatingActionButton.this);
            } else {
                cVar.d(ExtendedFloatingActionButton.this);
            }
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public int h() {
            return a.b.mtrl_extended_fab_change_size_motion_spec;
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        @ah
        public AnimatorSet f() {
            h a2 = a();
            if (a2.c("width")) {
                PropertyValuesHolder[] d = a2.d("width");
                d[0].setFloatValues(ExtendedFloatingActionButton.this.getWidth(), this.b.a());
                a2.a("width", d);
            }
            if (a2.c("height")) {
                PropertyValuesHolder[] d2 = a2.d("height");
                d2[0].setFloatValues(ExtendedFloatingActionButton.this.getHeight(), this.b.b());
                a2.a("height", d2);
            }
            return super.b(a2);
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public void a(Animator animator) {
            super.a(animator);
            ExtendedFloatingActionButton.this.s = this.c;
            ExtendedFloatingActionButton.this.setHorizontallyScrolling(true);
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public void d() {
            super.d();
            ExtendedFloatingActionButton.this.setHorizontallyScrolling(false);
            ViewGroup.LayoutParams layoutParams = ExtendedFloatingActionButton.this.getLayoutParams();
            if (layoutParams == null) {
                return;
            }
            layoutParams.width = this.b.c().width;
            layoutParams.height = this.b.c().height;
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public boolean i() {
            return this.c == ExtendedFloatingActionButton.this.s || ExtendedFloatingActionButton.this.getIcon() == null || TextUtils.isEmpty(ExtendedFloatingActionButton.this.getText());
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    class d extends com.google.android.material.floatingactionbutton.b {
        public d(com.google.android.material.floatingactionbutton.a aVar) {
            super(ExtendedFloatingActionButton.this, aVar);
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public void g() {
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.setAlpha(1.0f);
            ExtendedFloatingActionButton.this.setScaleY(1.0f);
            ExtendedFloatingActionButton.this.setScaleX(1.0f);
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public void a(@ai c cVar) {
            if (cVar != null) {
                cVar.a(ExtendedFloatingActionButton.this);
            }
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public int h() {
            return a.b.mtrl_extended_fab_show_motion_spec;
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public void a(Animator animator) {
            super.a(animator);
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.l = 2;
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public void d() {
            super.d();
            ExtendedFloatingActionButton.this.l = 0;
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public boolean i() {
            return ExtendedFloatingActionButton.this.h();
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    class b extends com.google.android.material.floatingactionbutton.b {
        private boolean b;

        public b(com.google.android.material.floatingactionbutton.a aVar) {
            super(ExtendedFloatingActionButton.this, aVar);
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public void g() {
            ExtendedFloatingActionButton.this.setVisibility(8);
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public void a(@ai c cVar) {
            if (cVar != null) {
                cVar.b(ExtendedFloatingActionButton.this);
            }
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public boolean i() {
            return ExtendedFloatingActionButton.this.i();
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public int h() {
            return a.b.mtrl_extended_fab_hide_motion_spec;
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public void a(Animator animator) {
            super.a(animator);
            this.b = false;
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.l = 1;
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public void e() {
            super.e();
            this.b = true;
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public void d() {
            super.d();
            ExtendedFloatingActionButton.this.l = 0;
            if (this.b) {
                return;
            }
            ExtendedFloatingActionButton.this.setVisibility(8);
        }
    }
}
