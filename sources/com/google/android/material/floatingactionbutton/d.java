package com.google.android.material.floatingactionbutton;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.FloatEvaluator;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.util.Property;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.core.m.i;
import androidx.core.n.af;
import com.google.android.material.a;
import com.google.android.material.a.h;
import com.google.android.material.t.j;
import com.google.android.material.t.k;
import com.google.android.material.t.o;
import com.google.android.material.t.s;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public class d {
    private static final float A = 0.0f;
    private static final float B = 0.0f;
    private static final float C = 0.0f;
    private static final float D = 1.0f;
    private static final float E = 1.0f;
    private static final float F = 1.0f;
    static final long b = 100;
    static final long c = 100;
    static final int d = 0;
    static final int e = 1;
    static final int f = 2;
    static final float g = 1.5f;

    @ai
    private h H;

    @ai
    private h I;

    @ai
    private Animator J;

    @ai
    private h K;

    @ai
    private h L;
    private float M;
    private int O;
    private ArrayList<Animator.AnimatorListener> Q;
    private ArrayList<Animator.AnimatorListener> R;
    private ArrayList<InterfaceC0088d> S;

    @ai
    private ViewTreeObserver.OnPreDrawListener X;

    @ai
    o h;

    @ai
    j i;

    @ai
    Drawable j;

    @ai
    com.google.android.material.floatingactionbutton.c k;

    @ai
    Drawable l;
    boolean m;
    float o;
    float p;
    float q;
    int r;
    final FloatingActionButton y;
    final com.google.android.material.s.c z;

    /* renamed from: a, reason: collision with root package name */
    static final TimeInterpolator f1299a = com.google.android.material.a.a.c;
    static final int[] s = {R.attr.state_pressed, R.attr.state_enabled};
    static final int[] t = {R.attr.state_hovered, R.attr.state_focused, R.attr.state_enabled};
    static final int[] u = {R.attr.state_focused, R.attr.state_enabled};
    static final int[] v = {R.attr.state_hovered, R.attr.state_enabled};
    static final int[] w = {R.attr.state_enabled};
    static final int[] x = new int[0];
    boolean n = true;
    private float N = 1.0f;
    private int P = 0;
    private final Rect T = new Rect();
    private final RectF U = new RectF();
    private final RectF V = new RectF();
    private final Matrix W = new Matrix();

    @ah
    private final com.google.android.material.internal.o G = new com.google.android.material.internal.o();

    /* renamed from: com.google.android.material.floatingactionbutton.d$d, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    interface InterfaceC0088d {
        void a();

        void b();
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    interface e {
        void a();

        void b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n() {
    }

    boolean p() {
        return true;
    }

    boolean s() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(FloatingActionButton floatingActionButton, com.google.android.material.s.c cVar) {
        this.y = floatingActionButton;
        this.z = cVar;
        this.G.a(s, a((g) new c()));
        this.G.a(t, a((g) new b()));
        this.G.a(u, a((g) new b()));
        this.G.a(v, a((g) new b()));
        this.G.a(w, a((g) new f()));
        this.G.a(x, a((g) new a()));
        this.M = this.y.getRotation();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(ColorStateList colorStateList, @ai PorterDuff.Mode mode, ColorStateList colorStateList2, int i) {
        this.i = u();
        this.i.setTintList(colorStateList);
        if (mode != null) {
            this.i.setTintMode(mode);
        }
        this.i.O(-12303292);
        this.i.b(this.y.getContext());
        com.google.android.material.r.a aVar = new com.google.android.material.r.a(this.i.getShapeAppearanceModel());
        aVar.setTintList(com.google.android.material.r.b.b(colorStateList2));
        this.j = aVar;
        this.l = new LayerDrawable(new Drawable[]{(Drawable) i.a(this.i), aVar});
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@ai ColorStateList colorStateList) {
        if (this.i != null) {
            this.i.setTintList(colorStateList);
        }
        if (this.k != null) {
            this.k.a(colorStateList);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@ai PorterDuff.Mode mode) {
        if (this.i != null) {
            this.i.setTintMode(mode);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i) {
        this.r = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(@ai ColorStateList colorStateList) {
        if (this.j != null) {
            androidx.core.graphics.drawable.a.a(this.j, com.google.android.material.r.b.b(colorStateList));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(float f2) {
        if (this.o != f2) {
            this.o = f2;
            a(this.o, this.p, this.q);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float a() {
        return this.o;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float b() {
        return this.p;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float c() {
        return this.q;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(float f2) {
        if (this.p != f2) {
            this.p = f2;
            a(this.o, this.p, this.q);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c(float f2) {
        if (this.q != f2) {
            this.q = f2;
            a(this.o, this.p, this.q);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(int i) {
        if (this.O != i) {
            this.O = i;
            d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d() {
        d(this.N);
    }

    final void d(float f2) {
        this.N = f2;
        Matrix matrix = this.W;
        a(f2, matrix);
        this.y.setImageMatrix(matrix);
    }

    private void a(float f2, @ah Matrix matrix) {
        matrix.reset();
        if (this.y.getDrawable() == null || this.O == 0) {
            return;
        }
        RectF rectF = this.U;
        RectF rectF2 = this.V;
        rectF.set(0.0f, 0.0f, r0.getIntrinsicWidth(), r0.getIntrinsicHeight());
        rectF2.set(0.0f, 0.0f, this.O, this.O);
        matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
        matrix.postScale(f2, f2, this.O / 2.0f, this.O / 2.0f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(@ah o oVar) {
        this.h = oVar;
        if (this.i != null) {
            this.i.setShapeAppearanceModel(oVar);
        }
        if (this.j instanceof s) {
            ((s) this.j).setShapeAppearanceModel(oVar);
        }
        if (this.k != null) {
            this.k.a(oVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ai
    public final o e() {
        return this.h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ai
    public final h f() {
        return this.K;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(@ai h hVar) {
        this.K = hVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ai
    public final h g() {
        return this.L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(@ai h hVar) {
        this.L = hVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean h() {
        return !this.m || this.y.getSizeDimension() >= this.r;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean i() {
        return this.m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
        this.m = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(boolean z) {
        this.n = z;
        o();
    }

    void a(float f2, float f3, float f4) {
        o();
        e(f2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(float f2) {
        if (this.i != null) {
            this.i.r(f2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int[] iArr) {
        this.G.a(iArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j() {
        this.G.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@ah Animator.AnimatorListener animatorListener) {
        if (this.Q == null) {
            this.Q = new ArrayList<>();
        }
        this.Q.add(animatorListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(@ah Animator.AnimatorListener animatorListener) {
        if (this.Q == null) {
            return;
        }
        this.Q.remove(animatorListener);
    }

    public void c(@ah Animator.AnimatorListener animatorListener) {
        if (this.R == null) {
            this.R = new ArrayList<>();
        }
        this.R.add(animatorListener);
    }

    public void d(@ah Animator.AnimatorListener animatorListener) {
        if (this.R == null) {
            return;
        }
        this.R.remove(animatorListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@ai final e eVar, final boolean z) {
        if (w()) {
            return;
        }
        if (this.J != null) {
            this.J.cancel();
        }
        if (B()) {
            AnimatorSet a2 = a(this.L != null ? this.L : z(), 0.0f, 0.0f, 0.0f);
            a2.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.floatingactionbutton.d.1
                private boolean d;

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    d.this.y.a(0, z);
                    d.this.P = 1;
                    d.this.J = animator;
                    this.d = false;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    this.d = true;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    d.this.P = 0;
                    d.this.J = null;
                    if (this.d) {
                        return;
                    }
                    d.this.y.a(z ? 8 : 4, z);
                    if (eVar != null) {
                        eVar.b();
                    }
                }
            });
            if (this.R != null) {
                Iterator<Animator.AnimatorListener> it = this.R.iterator();
                while (it.hasNext()) {
                    a2.addListener(it.next());
                }
            }
            a2.start();
            return;
        }
        this.y.a(z ? 8 : 4, z);
        if (eVar != null) {
            eVar.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(@ai final e eVar, final boolean z) {
        if (v()) {
            return;
        }
        if (this.J != null) {
            this.J.cancel();
        }
        if (B()) {
            if (this.y.getVisibility() != 0) {
                this.y.setAlpha(0.0f);
                this.y.setScaleY(0.0f);
                this.y.setScaleX(0.0f);
                d(0.0f);
            }
            AnimatorSet a2 = a(this.K != null ? this.K : y(), 1.0f, 1.0f, 1.0f);
            a2.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.floatingactionbutton.d.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    d.this.y.a(0, z);
                    d.this.P = 2;
                    d.this.J = animator;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    d.this.P = 0;
                    d.this.J = null;
                    if (eVar != null) {
                        eVar.a();
                    }
                }
            });
            if (this.Q != null) {
                Iterator<Animator.AnimatorListener> it = this.Q.iterator();
                while (it.hasNext()) {
                    a2.addListener(it.next());
                }
            }
            a2.start();
            return;
        }
        this.y.a(0, z);
        this.y.setAlpha(1.0f);
        this.y.setScaleY(1.0f);
        this.y.setScaleX(1.0f);
        d(1.0f);
        if (eVar != null) {
            eVar.a();
        }
    }

    private h y() {
        if (this.H == null) {
            this.H = h.a(this.y.getContext(), a.b.design_fab_show_motion_spec);
        }
        return (h) i.a(this.H);
    }

    private h z() {
        if (this.I == null) {
            this.I = h.a(this.y.getContext(), a.b.design_fab_hide_motion_spec);
        }
        return (h) i.a(this.I);
    }

    @ah
    private AnimatorSet a(@ah h hVar, float f2, float f3, float f4) {
        ArrayList arrayList = new ArrayList();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.y, (Property<FloatingActionButton, Float>) View.ALPHA, f2);
        hVar.b("opacity").a((Animator) ofFloat);
        arrayList.add(ofFloat);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.y, (Property<FloatingActionButton, Float>) View.SCALE_X, f3);
        hVar.b("scale").a((Animator) ofFloat2);
        a(ofFloat2);
        arrayList.add(ofFloat2);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.y, (Property<FloatingActionButton, Float>) View.SCALE_Y, f3);
        hVar.b("scale").a((Animator) ofFloat3);
        a(ofFloat3);
        arrayList.add(ofFloat3);
        a(f4, this.W);
        ObjectAnimator ofObject = ObjectAnimator.ofObject(this.y, new com.google.android.material.a.f(), new com.google.android.material.a.g() { // from class: com.google.android.material.floatingactionbutton.d.3
            @Override // com.google.android.material.a.g, android.animation.TypeEvaluator
            /* renamed from: a */
            public Matrix evaluate(float f5, @ah Matrix matrix, @ah Matrix matrix2) {
                d.this.N = f5;
                return super.evaluate(f5, matrix, matrix2);
            }
        }, new Matrix(this.W));
        hVar.b("iconScale").a((Animator) ofObject);
        arrayList.add(ofObject);
        AnimatorSet animatorSet = new AnimatorSet();
        com.google.android.material.a.b.a(animatorSet, arrayList);
        return animatorSet;
    }

    private void a(ObjectAnimator objectAnimator) {
        if (Build.VERSION.SDK_INT != 26) {
            return;
        }
        objectAnimator.setEvaluator(new TypeEvaluator<Float>() { // from class: com.google.android.material.floatingactionbutton.d.4

            /* renamed from: a, reason: collision with root package name */
            FloatEvaluator f1303a = new FloatEvaluator();

            @Override // android.animation.TypeEvaluator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public Float evaluate(float f2, Float f3, Float f4) {
                float floatValue = this.f1303a.evaluate(f2, (Number) f3, (Number) f4).floatValue();
                if (floatValue < 0.1f) {
                    floatValue = 0.0f;
                }
                return Float.valueOf(floatValue);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@ah InterfaceC0088d interfaceC0088d) {
        if (this.S == null) {
            this.S = new ArrayList<>();
        }
        this.S.add(interfaceC0088d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(@ah InterfaceC0088d interfaceC0088d) {
        if (this.S == null) {
            return;
        }
        this.S.remove(interfaceC0088d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k() {
        if (this.S != null) {
            Iterator<InterfaceC0088d> it = this.S.iterator();
            while (it.hasNext()) {
                it.next().a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l() {
        if (this.S != null) {
            Iterator<InterfaceC0088d> it = this.S.iterator();
            while (it.hasNext()) {
                it.next().b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ai
    public final Drawable m() {
        return this.l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void o() {
        Rect rect = this.T;
        a(rect);
        b(rect);
        this.z.a(rect.left, rect.top, rect.right, rect.bottom);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@ah Rect rect) {
        int sizeDimension = this.m ? (this.r - this.y.getSizeDimension()) / 2 : 0;
        int max = Math.max(sizeDimension, (int) Math.ceil(this.n ? a() + this.q : 0.0f));
        int max2 = Math.max(sizeDimension, (int) Math.ceil(r1 * g));
        rect.set(max, max2, max, max2);
    }

    void b(@ah Rect rect) {
        i.a(this.l, "Didn't initialize content background");
        if (p()) {
            this.z.a(new InsetDrawable(this.l, rect.left, rect.top, rect.right, rect.bottom));
        } else {
            this.z.a(this.l);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void q() {
        if (this.i != null) {
            k.a(this.y, this.i);
        }
        if (s()) {
            this.y.getViewTreeObserver().addOnPreDrawListener(A());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void r() {
        ViewTreeObserver viewTreeObserver = this.y.getViewTreeObserver();
        if (this.X != null) {
            viewTreeObserver.removeOnPreDrawListener(this.X);
            this.X = null;
        }
    }

    void t() {
        float rotation = this.y.getRotation();
        if (this.M != rotation) {
            this.M = rotation;
            x();
        }
    }

    @ah
    private ViewTreeObserver.OnPreDrawListener A() {
        if (this.X == null) {
            this.X = new ViewTreeObserver.OnPreDrawListener() { // from class: com.google.android.material.floatingactionbutton.d.5
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    d.this.t();
                    return true;
                }
            };
        }
        return this.X;
    }

    j u() {
        return new j((o) i.a(this.h));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean v() {
        return this.y.getVisibility() != 0 ? this.P == 2 : this.P != 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean w() {
        return this.y.getVisibility() == 0 ? this.P == 1 : this.P != 2;
    }

    @ah
    private ValueAnimator a(@ah g gVar) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setInterpolator(f1299a);
        valueAnimator.setDuration(100L);
        valueAnimator.addListener(gVar);
        valueAnimator.addUpdateListener(gVar);
        valueAnimator.setFloatValues(0.0f, 1.0f);
        return valueAnimator;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private abstract class g extends AnimatorListenerAdapter implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a, reason: collision with root package name */
        private boolean f1309a;
        private float c;
        private float d;

        protected abstract float a();

        private g() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@ah ValueAnimator valueAnimator) {
            if (!this.f1309a) {
                this.c = d.this.i == null ? 0.0f : d.this.i.ag();
                this.d = a();
                this.f1309a = true;
            }
            d.this.e((int) (this.c + ((this.d - this.c) * valueAnimator.getAnimatedFraction())));
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            d.this.e((int) this.d);
            this.f1309a = false;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private class f extends g {
        f() {
            super();
        }

        @Override // com.google.android.material.floatingactionbutton.d.g
        protected float a() {
            return d.this.o;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private class b extends g {
        b() {
            super();
        }

        @Override // com.google.android.material.floatingactionbutton.d.g
        protected float a() {
            return d.this.o + d.this.p;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private class c extends g {
        c() {
            super();
        }

        @Override // com.google.android.material.floatingactionbutton.d.g
        protected float a() {
            return d.this.o + d.this.q;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private class a extends g {
        @Override // com.google.android.material.floatingactionbutton.d.g
        protected float a() {
            return 0.0f;
        }

        a() {
            super();
        }
    }

    private boolean B() {
        return af.ag(this.y) && !this.y.isInEditMode();
    }

    void x() {
        if (Build.VERSION.SDK_INT == 19) {
            if (this.M % 90.0f != 0.0f) {
                if (this.y.getLayerType() != 1) {
                    this.y.setLayerType(1, null);
                }
            } else if (this.y.getLayerType() != 0) {
                this.y.setLayerType(0, null);
            }
        }
        if (this.i != null) {
            this.i.M((int) this.M);
        }
    }
}
