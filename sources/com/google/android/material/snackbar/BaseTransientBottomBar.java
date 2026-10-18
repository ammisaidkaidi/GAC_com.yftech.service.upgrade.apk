package com.google.android.material.snackbar;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
import androidx.annotation.ac;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.am;
import androidx.annotation.ap;
import androidx.annotation.w;
import androidx.annotation.z;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.n.af;
import androidx.core.n.ao;
import androidx.core.n.y;
import com.google.android.material.a;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.internal.s;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.google.android.material.snackbar.b;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class BaseTransientBottomBar<B extends BaseTransientBottomBar<B>> {

    /* renamed from: a, reason: collision with root package name */
    public static final int f1379a = 0;
    public static final int b = 1;
    public static final int c = -2;
    public static final int d = -1;
    public static final int e = 0;
    static final int f = 250;
    static final int g = 180;

    @ah
    static final Handler h;
    static final int i = 0;
    static final int j = 1;
    private static final int m = 150;
    private static final int n = 75;
    private static final float o = 0.8f;
    private static final boolean p;
    private static final int[] q;
    private static final String r;
    private int A;
    private int B;
    private int C;
    private int D;
    private int E;
    private List<b<B>> F;
    private Behavior G;

    @ai
    private final AccessibilityManager H;

    @ah
    protected final h k;

    @ah
    private final ViewGroup s;
    private final Context t;

    @ah
    private final com.google.android.material.snackbar.a u;
    private int v;
    private boolean w;

    @ai
    private View x;

    @ai
    private Rect z;

    @am(a = 29)
    private final Runnable y = new Runnable() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.10
        @Override // java.lang.Runnable
        public void run() {
            int z;
            if (BaseTransientBottomBar.this.k == null || BaseTransientBottomBar.this.t == null || (z = (BaseTransientBottomBar.this.z() - BaseTransientBottomBar.this.y()) + ((int) BaseTransientBottomBar.this.k.getTranslationY())) >= BaseTransientBottomBar.this.D) {
                return;
            }
            ViewGroup.LayoutParams layoutParams = BaseTransientBottomBar.this.k.getLayoutParams();
            if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
                Log.w(BaseTransientBottomBar.r, "Unable to apply gesture inset because layout params are not MarginLayoutParams");
                return;
            }
            ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin += BaseTransientBottomBar.this.D - z;
            BaseTransientBottomBar.this.k.requestLayout();
        }
    };

    @ah
    b.a l = new b.a() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.13
        @Override // com.google.android.material.snackbar.b.a
        public void a() {
            BaseTransientBottomBar.h.sendMessage(BaseTransientBottomBar.h.obtainMessage(0, BaseTransientBottomBar.this));
        }

        @Override // com.google.android.material.snackbar.b.a
        public void a(int i2) {
            BaseTransientBottomBar.h.sendMessage(BaseTransientBottomBar.h.obtainMessage(1, i2, 0, BaseTransientBottomBar.this));
        }
    };

    @Retention(RetentionPolicy.SOURCE)
    @ap(a = {ap.a.LIBRARY_GROUP})
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface a {
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class b<B> {

        /* renamed from: a, reason: collision with root package name */
        public static final int f1397a = 0;
        public static final int b = 1;
        public static final int c = 2;
        public static final int d = 3;
        public static final int e = 4;

        @Retention(RetentionPolicy.SOURCE)
        @ap(a = {ap.a.LIBRARY_GROUP})
        /* loaded from: /home/user/work/dex/classes.dex */
        public @interface a {
        }

        public void a(B b2) {
        }

        public void a(B b2, int i) {
        }
    }

    @Deprecated
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface d extends com.google.android.material.snackbar.a {
    }

    @z(a = 1)
    @Retention(RetentionPolicy.SOURCE)
    @ap(a = {ap.a.LIBRARY_GROUP})
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface e {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @ap(a = {ap.a.LIBRARY_GROUP})
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface f {
        void a(View view);

        void b(View view);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @ap(a = {ap.a.LIBRARY_GROUP})
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface g {
        void a(View view, int i, int i2, int i3, int i4);
    }

    static {
        p = Build.VERSION.SDK_INT >= 16 && Build.VERSION.SDK_INT <= 19;
        q = new int[]{a.c.snackbarStyle};
        r = BaseTransientBottomBar.class.getSimpleName();
        h = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.1
            @Override // android.os.Handler.Callback
            public boolean handleMessage(@ah Message message) {
                switch (message.what) {
                    case 0:
                        ((BaseTransientBottomBar) message.obj).o();
                        return true;
                    case 1:
                        ((BaseTransientBottomBar) message.obj).e(message.arg1);
                        return true;
                    default:
                        return false;
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseTransientBottomBar(@ah ViewGroup viewGroup, @ah View view, @ah com.google.android.material.snackbar.a aVar) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null parent");
        }
        if (view == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null content");
        }
        if (aVar == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null callback");
        }
        this.s = viewGroup;
        this.u = aVar;
        this.t = viewGroup.getContext();
        s.a(this.t);
        this.k = (h) LayoutInflater.from(this.t).inflate(a(), this.s, false);
        if (view instanceof SnackbarContentLayout) {
            ((SnackbarContentLayout) view).a(this.k.getActionTextColorAlpha());
        }
        this.k.addView(view);
        ViewGroup.LayoutParams layoutParams = this.k.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            this.z = new Rect(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
        }
        af.j((View) this.k, 1);
        af.e((View) this.k, 1);
        af.b((View) this.k, true);
        af.a(this.k, new y() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.11
            @Override // androidx.core.n.y
            @ah
            public ao a(View view2, @ah ao aoVar) {
                BaseTransientBottomBar.this.A = aoVar.d();
                BaseTransientBottomBar.this.B = aoVar.a();
                BaseTransientBottomBar.this.C = aoVar.c();
                BaseTransientBottomBar.this.u();
                return aoVar;
            }
        });
        af.a(this.k, new androidx.core.n.a() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.12
            @Override // androidx.core.n.a
            public void a(View view2, @ah androidx.core.n.a.d dVar) {
                super.a(view2, dVar);
                dVar.d(1048576);
                dVar.q(true);
            }

            @Override // androidx.core.n.a
            public boolean a(View view2, int i2, Bundle bundle) {
                if (i2 == 1048576) {
                    BaseTransientBottomBar.this.k();
                    return true;
                }
                return super.a(view2, i2, bundle);
            }
        });
        this.H = (AccessibilityManager) this.t.getSystemService("accessibility");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        ViewGroup.LayoutParams layoutParams = this.k.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams) || this.z == null) {
            Log.w(r, "Unable to update margins because layout params are not MarginLayoutParams");
            return;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        marginLayoutParams.bottomMargin = this.z.bottom + (this.x != null ? this.E : this.A);
        marginLayoutParams.leftMargin = this.z.left + this.B;
        marginLayoutParams.rightMargin = this.z.right + this.C;
        this.k.requestLayout();
        if (Build.VERSION.SDK_INT < 29 || !v()) {
            return;
        }
        this.k.removeCallbacks(this.y);
        this.k.post(this.y);
    }

    private boolean v() {
        return this.D > 0 && !this.w && w();
    }

    private boolean w() {
        ViewGroup.LayoutParams layoutParams = this.k.getLayoutParams();
        return (layoutParams instanceof CoordinatorLayout.f) && (((CoordinatorLayout.f) layoutParams).b() instanceof SwipeDismissBehavior);
    }

    @ac
    protected int a() {
        return b() ? a.k.mtrl_layout_snackbar : a.k.design_layout_snackbar;
    }

    protected boolean b() {
        TypedArray obtainStyledAttributes = this.t.obtainStyledAttributes(q);
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        obtainStyledAttributes.recycle();
        return resourceId != -1;
    }

    @ah
    public B a(int i2) {
        this.v = i2;
        return this;
    }

    public int c() {
        return this.v;
    }

    @ah
    public B a(boolean z) {
        this.w = z;
        return this;
    }

    public boolean d() {
        return this.w;
    }

    public int e() {
        return this.k.getAnimationMode();
    }

    @ah
    public B b(int i2) {
        this.k.setAnimationMode(i2);
        return this;
    }

    @ai
    public View f() {
        return this.x;
    }

    @ah
    public B a(@ai View view) {
        this.x = view;
        return this;
    }

    @ah
    public B c(@w int i2) {
        this.x = this.s.findViewById(i2);
        if (this.x != null) {
            return this;
        }
        throw new IllegalArgumentException("Unable to find anchor view with id: " + i2);
    }

    @ah
    public B a(Behavior behavior) {
        this.G = behavior;
        return this;
    }

    public Behavior g() {
        return this.G;
    }

    @ah
    public Context h() {
        return this.t;
    }

    @ah
    public View i() {
        return this.k;
    }

    public void j() {
        com.google.android.material.snackbar.b.a().a(c(), this.l);
    }

    public void k() {
        d(3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void d(int i2) {
        com.google.android.material.snackbar.b.a().a(this.l, i2);
    }

    @ah
    public B a(@ai b<B> bVar) {
        if (bVar == null) {
            return this;
        }
        if (this.F == null) {
            this.F = new ArrayList();
        }
        this.F.add(bVar);
        return this;
    }

    @ah
    public B b(@ai b<B> bVar) {
        if (bVar == null || this.F == null) {
            return this;
        }
        this.F.remove(bVar);
        return this;
    }

    public boolean l() {
        return com.google.android.material.snackbar.b.a().e(this.l);
    }

    public boolean m() {
        return com.google.android.material.snackbar.b.a().f(this.l);
    }

    @ah
    protected SwipeDismissBehavior<? extends View> n() {
        return new Behavior();
    }

    final void o() {
        this.k.setOnAttachStateChangeListener(new f() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.14
            @Override // com.google.android.material.snackbar.BaseTransientBottomBar.f
            public void a(View view) {
                WindowInsets rootWindowInsets;
                if (Build.VERSION.SDK_INT < 29 || (rootWindowInsets = BaseTransientBottomBar.this.k.getRootWindowInsets()) == null) {
                    return;
                }
                BaseTransientBottomBar.this.D = rootWindowInsets.getMandatorySystemGestureInsets().bottom;
                BaseTransientBottomBar.this.u();
            }

            @Override // com.google.android.material.snackbar.BaseTransientBottomBar.f
            public void b(View view) {
                if (BaseTransientBottomBar.this.m()) {
                    BaseTransientBottomBar.h.post(new Runnable() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.14.1
                        @Override // java.lang.Runnable
                        public void run() {
                            BaseTransientBottomBar.this.f(3);
                        }
                    });
                }
            }
        });
        if (this.k.getParent() == null) {
            ViewGroup.LayoutParams layoutParams = this.k.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.f) {
                a((CoordinatorLayout.f) layoutParams);
            }
            this.E = A();
            u();
            this.k.setVisibility(4);
            this.s.addView(this.k);
        }
        if (af.ag(this.k)) {
            x();
        } else {
            this.k.setOnLayoutChangeListener(new g() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.15
                @Override // com.google.android.material.snackbar.BaseTransientBottomBar.g
                public void a(View view, int i2, int i3, int i4, int i5) {
                    BaseTransientBottomBar.this.k.setOnLayoutChangeListener(null);
                    BaseTransientBottomBar.this.x();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        if (r()) {
            p();
        } else {
            this.k.setVisibility(0);
            q();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int y() {
        int[] iArr = new int[2];
        this.k.getLocationOnScreen(iArr);
        return iArr[1] + this.k.getHeight();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @am(a = 17)
    public int z() {
        WindowManager windowManager = (WindowManager) this.t.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    private void a(CoordinatorLayout.f fVar) {
        SwipeDismissBehavior<? extends View> n2 = this.G == null ? n() : this.G;
        if (n2 instanceof Behavior) {
            ((Behavior) n2).a((BaseTransientBottomBar<?>) this);
        }
        n2.a(new SwipeDismissBehavior.a() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.16
            @Override // com.google.android.material.behavior.SwipeDismissBehavior.a
            public void a(@ah View view) {
                view.setVisibility(8);
                BaseTransientBottomBar.this.d(0);
            }

            @Override // com.google.android.material.behavior.SwipeDismissBehavior.a
            public void a(int i2) {
                switch (i2) {
                    case 0:
                        com.google.android.material.snackbar.b.a().d(BaseTransientBottomBar.this.l);
                        return;
                    case 1:
                    case 2:
                        com.google.android.material.snackbar.b.a().c(BaseTransientBottomBar.this.l);
                        return;
                    default:
                        return;
                }
            }
        });
        fVar.a(n2);
        if (this.x == null) {
            fVar.g = 80;
        }
    }

    private int A() {
        if (this.x == null) {
            return 0;
        }
        int[] iArr = new int[2];
        this.x.getLocationOnScreen(iArr);
        int i2 = iArr[1];
        int[] iArr2 = new int[2];
        this.s.getLocationOnScreen(iArr2);
        return (iArr2[1] + this.s.getHeight()) - i2;
    }

    void p() {
        this.k.post(new Runnable() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.17
            @Override // java.lang.Runnable
            public void run() {
                if (BaseTransientBottomBar.this.k == null) {
                    return;
                }
                BaseTransientBottomBar.this.k.setVisibility(0);
                if (BaseTransientBottomBar.this.k.getAnimationMode() == 1) {
                    BaseTransientBottomBar.this.B();
                } else {
                    BaseTransientBottomBar.this.C();
                }
            }
        });
    }

    private void g(int i2) {
        if (this.k.getAnimationMode() == 1) {
            h(i2);
        } else {
            i(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B() {
        ValueAnimator a2 = a(0.0f, 1.0f);
        ValueAnimator b2 = b(o, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(a2, b2);
        animatorSet.setDuration(150L);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                BaseTransientBottomBar.this.q();
            }
        });
        animatorSet.start();
    }

    private void h(final int i2) {
        ValueAnimator a2 = a(1.0f, 0.0f);
        a2.setDuration(75L);
        a2.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                BaseTransientBottomBar.this.f(i2);
            }
        });
        a2.start();
    }

    private ValueAnimator a(float... fArr) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
        ofFloat.setInterpolator(com.google.android.material.a.a.f1146a);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.4
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(@ah ValueAnimator valueAnimator) {
                BaseTransientBottomBar.this.k.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        return ofFloat;
    }

    private ValueAnimator b(float... fArr) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
        ofFloat.setInterpolator(com.google.android.material.a.a.d);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.5
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(@ah ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                BaseTransientBottomBar.this.k.setScaleX(floatValue);
                BaseTransientBottomBar.this.k.setScaleY(floatValue);
            }
        });
        return ofFloat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C() {
        final int D = D();
        if (p) {
            af.n((View) this.k, D);
        } else {
            this.k.setTranslationY(D);
        }
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(D, 0);
        valueAnimator.setInterpolator(com.google.android.material.a.a.b);
        valueAnimator.setDuration(250L);
        valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                BaseTransientBottomBar.this.u.a(70, BaseTransientBottomBar.g);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                BaseTransientBottomBar.this.q();
            }
        });
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.7
            private int c;

            {
                this.c = D;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(@ah ValueAnimator valueAnimator2) {
                int intValue = ((Integer) valueAnimator2.getAnimatedValue()).intValue();
                if (BaseTransientBottomBar.p) {
                    af.n((View) BaseTransientBottomBar.this.k, intValue - this.c);
                } else {
                    BaseTransientBottomBar.this.k.setTranslationY(intValue);
                }
                this.c = intValue;
            }
        });
        valueAnimator.start();
    }

    private void i(final int i2) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(0, D());
        valueAnimator.setInterpolator(com.google.android.material.a.a.b);
        valueAnimator.setDuration(250L);
        valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.8
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                BaseTransientBottomBar.this.u.b(0, BaseTransientBottomBar.g);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                BaseTransientBottomBar.this.f(i2);
            }
        });
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.9
            private int b = 0;

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(@ah ValueAnimator valueAnimator2) {
                int intValue = ((Integer) valueAnimator2.getAnimatedValue()).intValue();
                if (BaseTransientBottomBar.p) {
                    af.n((View) BaseTransientBottomBar.this.k, intValue - this.b);
                } else {
                    BaseTransientBottomBar.this.k.setTranslationY(intValue);
                }
                this.b = intValue;
            }
        });
        valueAnimator.start();
    }

    private int D() {
        int height = this.k.getHeight();
        ViewGroup.LayoutParams layoutParams = this.k.getLayoutParams();
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? height + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin : height;
    }

    final void e(int i2) {
        if (r() && this.k.getVisibility() == 0) {
            g(i2);
        } else {
            f(i2);
        }
    }

    void q() {
        com.google.android.material.snackbar.b.a().b(this.l);
        if (this.F != null) {
            for (int size = this.F.size() - 1; size >= 0; size--) {
                this.F.get(size).a(this);
            }
        }
    }

    void f(int i2) {
        com.google.android.material.snackbar.b.a().a(this.l);
        if (this.F != null) {
            for (int size = this.F.size() - 1; size >= 0; size--) {
                this.F.get(size).a(this, i2);
            }
        }
        ViewParent parent = this.k.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.k);
        }
    }

    boolean r() {
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList = this.H.getEnabledAccessibilityServiceList(1);
        return enabledAccessibilityServiceList != null && enabledAccessibilityServiceList.isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @ap(a = {ap.a.LIBRARY_GROUP})
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class h extends FrameLayout {

        /* renamed from: a, reason: collision with root package name */
        private static final View.OnTouchListener f1399a = new View.OnTouchListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.h.1
            @Override // android.view.View.OnTouchListener
            @SuppressLint({"ClickableViewAccessibility"})
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        };
        private g b;
        private f c;
        private int d;
        private final float e;
        private final float f;
        private ColorStateList g;
        private PorterDuff.Mode h;

        /* JADX INFO: Access modifiers changed from: protected */
        public h(@ah Context context) {
            this(context, null);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public h(@ah Context context, AttributeSet attributeSet) {
            super(com.google.android.material.theme.a.a.a(context, attributeSet, 0, 0), attributeSet);
            Context context2 = getContext();
            TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, a.o.SnackbarLayout);
            if (obtainStyledAttributes.hasValue(a.o.SnackbarLayout_elevation)) {
                af.m(this, obtainStyledAttributes.getDimensionPixelSize(a.o.SnackbarLayout_elevation, 0));
            }
            this.d = obtainStyledAttributes.getInt(a.o.SnackbarLayout_animationMode, 0);
            this.e = obtainStyledAttributes.getFloat(a.o.SnackbarLayout_backgroundOverlayColorAlpha, 1.0f);
            setBackgroundTintList(com.google.android.material.q.c.a(context2, obtainStyledAttributes, a.o.SnackbarLayout_backgroundTint));
            setBackgroundTintMode(com.google.android.material.internal.z.a(obtainStyledAttributes.getInt(a.o.SnackbarLayout_backgroundTintMode, -1), PorterDuff.Mode.SRC_IN));
            this.f = obtainStyledAttributes.getFloat(a.o.SnackbarLayout_actionTextColorAlpha, 1.0f);
            obtainStyledAttributes.recycle();
            setOnTouchListener(f1399a);
            setFocusable(true);
            if (getBackground() == null) {
                af.a(this, a());
            }
        }

        @Override // android.view.View
        public void setBackground(@ai Drawable drawable) {
            setBackgroundDrawable(drawable);
        }

        @Override // android.view.View
        public void setBackgroundDrawable(@ai Drawable drawable) {
            if (drawable != null && this.g != null) {
                drawable = androidx.core.graphics.drawable.a.g(drawable.mutate());
                androidx.core.graphics.drawable.a.a(drawable, this.g);
                androidx.core.graphics.drawable.a.a(drawable, this.h);
            }
            super.setBackgroundDrawable(drawable);
        }

        @Override // android.view.View
        public void setBackgroundTintList(@ai ColorStateList colorStateList) {
            this.g = colorStateList;
            if (getBackground() != null) {
                Drawable g = androidx.core.graphics.drawable.a.g(getBackground().mutate());
                androidx.core.graphics.drawable.a.a(g, colorStateList);
                androidx.core.graphics.drawable.a.a(g, this.h);
                if (g != getBackground()) {
                    super.setBackgroundDrawable(g);
                }
            }
        }

        @Override // android.view.View
        public void setBackgroundTintMode(@ai PorterDuff.Mode mode) {
            this.h = mode;
            if (getBackground() != null) {
                Drawable g = androidx.core.graphics.drawable.a.g(getBackground().mutate());
                androidx.core.graphics.drawable.a.a(g, mode);
                if (g != getBackground()) {
                    super.setBackgroundDrawable(g);
                }
            }
        }

        @Override // android.view.View
        public void setOnClickListener(@ai View.OnClickListener onClickListener) {
            setOnTouchListener(onClickListener != null ? null : f1399a);
            super.setOnClickListener(onClickListener);
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            if (this.b != null) {
                this.b.a(this, i, i2, i3, i4);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            if (this.c != null) {
                this.c.a(this);
            }
            af.T(this);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            if (this.c != null) {
                this.c.b(this);
            }
        }

        void setOnLayoutChangeListener(g gVar) {
            this.b = gVar;
        }

        void setOnAttachStateChangeListener(f fVar) {
            this.c = fVar;
        }

        int getAnimationMode() {
            return this.d;
        }

        void setAnimationMode(int i) {
            this.d = i;
        }

        float getBackgroundOverlayColorAlpha() {
            return this.e;
        }

        float getActionTextColorAlpha() {
            return this.f;
        }

        @ah
        private Drawable a() {
            float dimension = getResources().getDimension(a.f.mtrl_snackbar_background_corner_radius);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(0);
            gradientDrawable.setCornerRadius(dimension);
            gradientDrawable.setColor(com.google.android.material.h.a.a(this, a.c.colorSurface, a.c.colorOnSurface, getBackgroundOverlayColorAlpha()));
            if (this.g != null) {
                Drawable g = androidx.core.graphics.drawable.a.g(gradientDrawable);
                androidx.core.graphics.drawable.a.a(g, this.g);
                return g;
            }
            return androidx.core.graphics.drawable.a.g(gradientDrawable);
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class Behavior extends SwipeDismissBehavior<View> {

        @ah
        private final c m = new c(this);

        /* JADX INFO: Access modifiers changed from: private */
        public void a(@ah BaseTransientBottomBar<?> baseTransientBottomBar) {
            this.m.a(baseTransientBottomBar);
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior
        public boolean b(View view) {
            return this.m.a(view);
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public boolean a(@ah CoordinatorLayout coordinatorLayout, @ah View view, @ah MotionEvent motionEvent) {
            this.m.a(coordinatorLayout, view, motionEvent);
            return super.a(coordinatorLayout, (CoordinatorLayout) view, motionEvent);
        }
    }

    @ap(a = {ap.a.LIBRARY_GROUP})
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class c {

        /* renamed from: a, reason: collision with root package name */
        private b.a f1398a;

        public c(@ah SwipeDismissBehavior<?> swipeDismissBehavior) {
            swipeDismissBehavior.b(0.1f);
            swipeDismissBehavior.c(0.6f);
            swipeDismissBehavior.a(0);
        }

        public void a(@ah BaseTransientBottomBar<?> baseTransientBottomBar) {
            this.f1398a = baseTransientBottomBar.l;
        }

        public boolean a(View view) {
            return view instanceof h;
        }

        public void a(@ah CoordinatorLayout coordinatorLayout, @ah View view, @ah MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked != 3) {
                switch (actionMasked) {
                    case 0:
                        if (coordinatorLayout.a(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                            com.google.android.material.snackbar.b.a().c(this.f1398a);
                            return;
                        }
                        return;
                    case 1:
                        break;
                    default:
                        return;
                }
            }
            com.google.android.material.snackbar.b.a().d(this.f1398a);
        }
    }
}
