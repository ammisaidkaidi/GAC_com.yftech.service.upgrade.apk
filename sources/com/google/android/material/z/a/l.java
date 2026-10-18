package com.google.android.material.z.a;

import android.R;
import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.transition.ArcMotion;
import android.transition.PathMotion;
import android.transition.Transition;
import android.transition.TransitionValues;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.am;
import androidx.annotation.ap;
import androidx.annotation.at;
import androidx.core.n.af;
import com.google.android.material.a;
import com.google.android.material.internal.z;
import com.google.android.material.z.a.v;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@am(a = 21)
/* loaded from: /home/user/work/dex/classes.dex */
public final class l extends Transition {

    /* renamed from: a, reason: collision with root package name */
    public static final int f1516a = 0;
    public static final int b = 1;
    public static final int c = 2;
    public static final int d = 0;
    public static final int e = 1;
    public static final int f = 2;
    public static final int g = 3;
    public static final int h = 0;
    public static final int i = 1;
    public static final int j = 2;
    private static final String k = "l";
    private static final d p;
    private static final d r;
    private static final float s = -1.0f;

    @ai
    private View F;

    @ai
    private View G;

    @ai
    private com.google.android.material.t.o H;

    @ai
    private com.google.android.material.t.o I;

    @ai
    private c J;

    @ai
    private c K;

    @ai
    private c L;

    @ai
    private c M;
    private boolean N;
    private float O;
    private float P;
    private static final String l = "materialContainerTransition:bounds";
    private static final String m = "materialContainerTransition:shapeAppearance";
    private static final String[] n = {l, m};
    private static final d o = new d(new c(0.0f, 0.25f), new c(0.0f, 1.0f), new c(0.0f, 1.0f), new c(0.0f, 0.75f));
    private static final d q = new d(new c(0.1f, 0.4f), new c(0.1f, 1.0f), new c(0.1f, 1.0f), new c(0.1f, 0.9f));
    private boolean t = false;
    private boolean u = false;

    @androidx.annotation.w
    private int v = R.id.content;

    @androidx.annotation.w
    private int w = -1;

    @androidx.annotation.w
    private int x = -1;

    @androidx.annotation.k
    private int y = 0;

    @androidx.annotation.k
    private int z = 0;

    @androidx.annotation.k
    private int A = 0;

    @androidx.annotation.k
    private int B = 1375731712;
    private int C = 0;
    private int D = 0;
    private int E = 0;

    @Retention(RetentionPolicy.SOURCE)
    @ap(a = {ap.a.LIBRARY_GROUP})
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface a {
    }

    @Retention(RetentionPolicy.SOURCE)
    @ap(a = {ap.a.LIBRARY_GROUP})
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface b {
    }

    @Retention(RetentionPolicy.SOURCE)
    @ap(a = {ap.a.LIBRARY_GROUP})
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface e {
    }

    static {
        p = new d(new c(0.6f, 0.9f), new c(0.0f, 1.0f), new c(0.0f, 0.9f), new c(0.3f, 0.9f));
        r = new d(new c(0.6f, 0.9f), new c(0.0f, 0.9f), new c(0.0f, 0.9f), new c(0.2f, 0.9f));
    }

    public l() {
        this.N = Build.VERSION.SDK_INT >= 28;
        this.O = s;
        this.P = s;
        setInterpolator(com.google.android.material.a.a.b);
    }

    @androidx.annotation.w
    public int a() {
        return this.w;
    }

    public void a(@androidx.annotation.w int i2) {
        this.w = i2;
    }

    @androidx.annotation.w
    public int b() {
        return this.x;
    }

    public void b(@androidx.annotation.w int i2) {
        this.x = i2;
    }

    @ai
    public View c() {
        return this.F;
    }

    public void a(@ai View view) {
        this.F = view;
    }

    @ai
    public View d() {
        return this.G;
    }

    public void b(@ai View view) {
        this.G = view;
    }

    @ai
    public com.google.android.material.t.o e() {
        return this.H;
    }

    public void a(@ai com.google.android.material.t.o oVar) {
        this.H = oVar;
    }

    @ai
    public com.google.android.material.t.o f() {
        return this.I;
    }

    public void b(@ai com.google.android.material.t.o oVar) {
        this.I = oVar;
    }

    public boolean g() {
        return this.N;
    }

    public void a(boolean z) {
        this.N = z;
    }

    public float h() {
        return this.O;
    }

    public void a(float f2) {
        this.O = f2;
    }

    public float i() {
        return this.P;
    }

    public void b(float f2) {
        this.P = f2;
    }

    @androidx.annotation.w
    public int j() {
        return this.v;
    }

    public void c(@androidx.annotation.w int i2) {
        this.v = i2;
    }

    @androidx.annotation.k
    public int k() {
        return this.y;
    }

    public void d(@androidx.annotation.k int i2) {
        this.y = i2;
    }

    @androidx.annotation.k
    public int l() {
        return this.z;
    }

    public void e(@androidx.annotation.k int i2) {
        this.z = i2;
    }

    @androidx.annotation.k
    public int m() {
        return this.A;
    }

    public void f(@androidx.annotation.k int i2) {
        this.A = i2;
    }

    public void g(@androidx.annotation.k int i2) {
        this.y = i2;
        this.z = i2;
        this.A = i2;
    }

    @androidx.annotation.k
    public int n() {
        return this.B;
    }

    public void h(@androidx.annotation.k int i2) {
        this.B = i2;
    }

    public int o() {
        return this.C;
    }

    public void i(int i2) {
        this.C = i2;
    }

    public int p() {
        return this.D;
    }

    public void j(int i2) {
        this.D = i2;
    }

    public int q() {
        return this.E;
    }

    public void k(int i2) {
        this.E = i2;
    }

    @ai
    public c r() {
        return this.J;
    }

    public void a(@ai c cVar) {
        this.J = cVar;
    }

    @ai
    public c s() {
        return this.K;
    }

    public void b(@ai c cVar) {
        this.K = cVar;
    }

    @ai
    public c t() {
        return this.L;
    }

    public void c(@ai c cVar) {
        this.L = cVar;
    }

    @ai
    public c u() {
        return this.M;
    }

    public void d(@ai c cVar) {
        this.M = cVar;
    }

    public boolean v() {
        return this.u;
    }

    public void b(boolean z) {
        this.u = z;
    }

    public boolean w() {
        return this.t;
    }

    public void c(boolean z) {
        this.t = z;
    }

    @Override // android.transition.Transition
    @ai
    public String[] getTransitionProperties() {
        return n;
    }

    @Override // android.transition.Transition
    public void captureStartValues(@ah TransitionValues transitionValues) {
        a(transitionValues, this.F, this.w, this.H);
    }

    @Override // android.transition.Transition
    public void captureEndValues(@ah TransitionValues transitionValues) {
        a(transitionValues, this.G, this.x, this.I);
    }

    private static void a(@ah TransitionValues transitionValues, @ai View view, @androidx.annotation.w int i2, @ai com.google.android.material.t.o oVar) {
        if (i2 != -1) {
            transitionValues.view = v.a(transitionValues.view, i2);
        } else if (view != null) {
            transitionValues.view = view;
        } else if (transitionValues.view.getTag(a.h.mtrl_motion_snapshot_view) instanceof View) {
            View view2 = (View) transitionValues.view.getTag(a.h.mtrl_motion_snapshot_view);
            transitionValues.view.setTag(a.h.mtrl_motion_snapshot_view, null);
            transitionValues.view = view2;
        }
        View view3 = transitionValues.view;
        if (!af.ag(view3) && view3.getWidth() == 0 && view3.getHeight() == 0) {
            return;
        }
        RectF a2 = view3.getParent() == null ? v.a(view3) : v.c(view3);
        transitionValues.values.put(l, a2);
        transitionValues.values.put(m, a(view3, a2, oVar));
    }

    private static com.google.android.material.t.o a(@ah View view, @ah RectF rectF, @ai com.google.android.material.t.o oVar) {
        return v.a(a(view, oVar), rectF);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static com.google.android.material.t.o a(@ah View view, @ai com.google.android.material.t.o oVar) {
        if (oVar != null) {
            return oVar;
        }
        if (view.getTag(a.h.mtrl_motion_snapshot_view) instanceof com.google.android.material.t.o) {
            return (com.google.android.material.t.o) view.getTag(a.h.mtrl_motion_snapshot_view);
        }
        Context context = view.getContext();
        int a2 = a(context);
        if (a2 != -1) {
            return com.google.android.material.t.o.a(context, a2, 0).a();
        }
        if (view instanceof com.google.android.material.t.s) {
            return ((com.google.android.material.t.s) view).getShapeAppearanceModel();
        }
        return com.google.android.material.t.o.a().a();
    }

    @at
    private static int a(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{a.c.transitionShapeAppearance});
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        obtainStyledAttributes.recycle();
        return resourceId;
    }

    @Override // android.transition.Transition
    @ai
    public Animator createAnimator(@ah ViewGroup viewGroup, @ai TransitionValues transitionValues, @ai TransitionValues transitionValues2) {
        final View b2;
        if (transitionValues == null || transitionValues2 == null) {
            return null;
        }
        RectF rectF = (RectF) transitionValues.values.get(l);
        com.google.android.material.t.o oVar = (com.google.android.material.t.o) transitionValues.values.get(m);
        if (rectF == null || oVar == null) {
            Log.w(k, "Skipping due to null start bounds. Ensure start view is laid out and measured.");
            return null;
        }
        RectF rectF2 = (RectF) transitionValues2.values.get(l);
        com.google.android.material.t.o oVar2 = (com.google.android.material.t.o) transitionValues2.values.get(m);
        if (rectF2 == null || oVar2 == null) {
            Log.w(k, "Skipping due to null end bounds. Ensure end view is laid out and measured.");
            return null;
        }
        final View view = transitionValues.view;
        final View view2 = transitionValues2.view;
        View view3 = view2.getParent() != null ? view2 : view;
        if (this.v == view3.getId()) {
            b2 = (View) view3.getParent();
        } else {
            b2 = v.b(view3, this.v);
            view3 = null;
        }
        RectF c2 = v.c(b2);
        float f2 = -c2.left;
        float f3 = -c2.top;
        RectF a2 = a(b2, view3, f2, f3);
        rectF.offset(f2, f3);
        rectF2.offset(f2, f3);
        boolean a3 = a(rectF, rectF2);
        final f fVar = new f(getPathMotion(), view, rectF, oVar, a(this.O, view), view2, rectF2, oVar2, a(this.P, view2), this.y, this.z, this.A, this.B, a3, this.N, com.google.android.material.z.a.b.a(this.D, a3), g.a(this.E, a3, rectF, rectF2), d(a3), this.t);
        fVar.setBounds(Math.round(a2.left), Math.round(a2.top), Math.round(a2.right), Math.round(a2.bottom));
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.z.a.l.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                fVar.a(valueAnimator.getAnimatedFraction());
            }
        });
        addListener(new u() { // from class: com.google.android.material.z.a.l.2
            @Override // com.google.android.material.z.a.u, android.transition.Transition.TransitionListener
            public void onTransitionStart(@ah Transition transition) {
                z.e(b2).a(fVar);
                view.setAlpha(0.0f);
                view2.setAlpha(0.0f);
            }

            @Override // com.google.android.material.z.a.u, android.transition.Transition.TransitionListener
            public void onTransitionEnd(@ah Transition transition) {
                l.this.removeListener(this);
                if (l.this.u) {
                    return;
                }
                view.setAlpha(1.0f);
                view2.setAlpha(1.0f);
                z.e(b2).b(fVar);
            }
        });
        return ofFloat;
    }

    private static float a(float f2, View view) {
        return f2 != s ? f2 : af.P(view);
    }

    private static RectF a(View view, @ai View view2, float f2, float f3) {
        if (view2 != null) {
            RectF c2 = v.c(view2);
            c2.offset(f2, f3);
            return c2;
        }
        return new RectF(0.0f, 0.0f, view.getWidth(), view.getHeight());
    }

    private boolean a(@ah RectF rectF, @ah RectF rectF2) {
        switch (this.C) {
            case 0:
                return v.a(rectF2) > v.a(rectF);
            case 1:
                return true;
            case 2:
                return false;
            default:
                throw new IllegalArgumentException("Invalid transition direction: " + this.C);
        }
    }

    private d d(boolean z) {
        PathMotion pathMotion = getPathMotion();
        if ((pathMotion instanceof ArcMotion) || (pathMotion instanceof k)) {
            return a(z, q, r);
        }
        return a(z, o, p);
    }

    private d a(boolean z, d dVar, d dVar2) {
        if (!z) {
            dVar = dVar2;
        }
        return new d((c) v.a(this.J, dVar.f1520a), (c) v.a(this.K, dVar.b), (c) v.a(this.L, dVar.c), (c) v.a(this.M, dVar.d));
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static final class f extends Drawable {

        /* renamed from: a, reason: collision with root package name */
        private static final int f1521a = 754974720;
        private static final int b = -7829368;
        private static final float c = 0.3f;
        private static final float d = 1.5f;
        private final RectF A;
        private final RectF B;
        private final RectF C;
        private final RectF D;
        private final d E;
        private final com.google.android.material.z.a.a F;
        private final com.google.android.material.z.a.f G;
        private final boolean H;
        private final Paint I;
        private final Path J;
        private com.google.android.material.z.a.c K;
        private h L;
        private RectF M;
        private float N;
        private float O;
        private float P;
        private final View e;
        private final RectF f;
        private final com.google.android.material.t.o g;
        private final float h;
        private final View i;
        private final RectF j;
        private final com.google.android.material.t.o k;
        private final float l;
        private final Paint m;
        private final Paint n;
        private final Paint o;
        private final Paint p;
        private final Paint q;
        private final j r;
        private final PathMeasure s;
        private final float t;
        private final float[] u;
        private final boolean v;
        private final float w;
        private final float x;
        private final boolean y;
        private final com.google.android.material.t.j z;

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -3;
        }

        private f(PathMotion pathMotion, View view, RectF rectF, com.google.android.material.t.o oVar, float f, View view2, RectF rectF2, com.google.android.material.t.o oVar2, float f2, @androidx.annotation.k int i, @androidx.annotation.k int i2, @androidx.annotation.k int i3, int i4, boolean z, boolean z2, com.google.android.material.z.a.a aVar, com.google.android.material.z.a.f fVar, d dVar, boolean z3) {
            this.m = new Paint();
            this.n = new Paint();
            this.o = new Paint();
            this.p = new Paint();
            this.q = new Paint();
            this.r = new j();
            this.u = new float[2];
            this.z = new com.google.android.material.t.j();
            this.I = new Paint();
            this.J = new Path();
            this.e = view;
            this.f = rectF;
            this.g = oVar;
            this.h = f;
            this.i = view2;
            this.j = rectF2;
            this.k = oVar2;
            this.l = f2;
            this.v = z;
            this.y = z2;
            this.F = aVar;
            this.G = fVar;
            this.E = dVar;
            this.H = z3;
            WindowManager windowManager = (WindowManager) view.getContext().getSystemService("window");
            windowManager.getDefaultDisplay().getMetrics(new DisplayMetrics());
            this.w = r5.widthPixels;
            this.x = r5.heightPixels;
            this.m.setColor(i);
            this.n.setColor(i2);
            this.o.setColor(i3);
            this.z.g(ColorStateList.valueOf(0));
            this.z.J(2);
            this.z.k(false);
            this.z.O(b);
            this.A = new RectF(rectF);
            this.B = new RectF(this.A);
            this.C = new RectF(this.A);
            this.D = new RectF(this.C);
            PointF a2 = a(rectF);
            PointF a3 = a(rectF2);
            this.s = new PathMeasure(pathMotion.getPath(a2.x, a2.y, a3.x, a3.y), false);
            this.t = this.s.getLength();
            this.u[0] = rectF.centerX();
            this.u[1] = rectF.top;
            this.q.setStyle(Paint.Style.FILL);
            this.q.setShader(v.a(i4));
            this.I.setStyle(Paint.Style.STROKE);
            this.I.setStrokeWidth(10.0f);
            b(0.0f);
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(@ah Canvas canvas) {
            if (this.q.getAlpha() > 0) {
                canvas.drawRect(getBounds(), this.q);
            }
            int save = this.H ? canvas.save() : -1;
            if (this.y && this.N > 0.0f) {
                a(canvas);
            }
            this.r.a(canvas);
            a(canvas, this.m);
            if (this.K.c) {
                d(canvas);
                e(canvas);
            } else {
                e(canvas);
                d(canvas);
            }
            if (this.H) {
                canvas.restoreToCount(save);
                a(canvas, this.A, this.J, -65281);
                a(canvas, this.B, androidx.core.n.i.u);
                a(canvas, this.A, -16711936);
                a(canvas, this.D, -16711681);
                a(canvas, this.C, -16776961);
            }
        }

        private void a(Canvas canvas) {
            canvas.save();
            canvas.clipPath(this.r.a(), Region.Op.DIFFERENCE);
            if (Build.VERSION.SDK_INT > 28) {
                b(canvas);
            } else {
                c(canvas);
            }
            canvas.restore();
        }

        private void b(Canvas canvas) {
            com.google.android.material.t.o b2 = this.r.b();
            if (b2.a(this.M)) {
                float a2 = b2.f().a(this.M);
                canvas.drawRoundRect(this.M, a2, a2, this.p);
            } else {
                canvas.drawPath(this.r.a(), this.p);
            }
        }

        private void c(Canvas canvas) {
            this.z.setBounds((int) this.M.left, (int) this.M.top, (int) this.M.right, (int) this.M.bottom);
            this.z.r(this.N);
            this.z.L((int) this.O);
            this.z.setShapeAppearanceModel(this.r.b());
            this.z.draw(canvas);
        }

        private void d(Canvas canvas) {
            a(canvas, this.n);
            v.a(canvas, getBounds(), this.A.left, this.A.top, this.L.f1514a, this.K.f1508a, new v.a() { // from class: com.google.android.material.z.a.l.f.1
                @Override // com.google.android.material.z.a.v.a
                public void a(Canvas canvas2) {
                    f.this.e.draw(canvas2);
                }
            });
        }

        private void e(Canvas canvas) {
            a(canvas, this.o);
            v.a(canvas, getBounds(), this.C.left, this.C.top, this.L.b, this.K.b, new v.a() { // from class: com.google.android.material.z.a.l.f.2
                @Override // com.google.android.material.z.a.v.a
                public void a(Canvas canvas2) {
                    f.this.i.draw(canvas2);
                }
            });
        }

        private void a(Canvas canvas, Paint paint) {
            if (paint.getColor() == 0 || paint.getAlpha() <= 0) {
                return;
            }
            canvas.drawRect(getBounds(), paint);
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            throw new UnsupportedOperationException("Setting alpha on is not supported");
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(@ai ColorFilter colorFilter) {
            throw new UnsupportedOperationException("Setting a color filter is not supported");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(float f) {
            if (this.P != f) {
                b(f);
            }
        }

        private void b(float f) {
            this.P = f;
            this.q.setAlpha((int) (this.v ? v.a(0.0f, 255.0f, f) : v.a(255.0f, 0.0f, f)));
            this.s.getPosTan(this.t * f, this.u, null);
            float f2 = this.u[0];
            float f3 = this.u[1];
            this.L = this.G.a(f, ((Float) androidx.core.m.i.a(Float.valueOf(this.E.b.f1519a))).floatValue(), ((Float) androidx.core.m.i.a(Float.valueOf(this.E.b.b))).floatValue(), this.f.width(), this.f.height(), this.j.width(), this.j.height());
            this.A.set(f2 - (this.L.c / 2.0f), f3, (this.L.c / 2.0f) + f2, this.L.d + f3);
            this.C.set(f2 - (this.L.e / 2.0f), f3, f2 + (this.L.e / 2.0f), this.L.f + f3);
            this.B.set(this.A);
            this.D.set(this.C);
            float floatValue = ((Float) androidx.core.m.i.a(Float.valueOf(this.E.c.f1519a))).floatValue();
            float floatValue2 = ((Float) androidx.core.m.i.a(Float.valueOf(this.E.c.b))).floatValue();
            boolean a2 = this.G.a(this.L);
            RectF rectF = a2 ? this.B : this.D;
            float a3 = v.a(0.0f, 1.0f, floatValue, floatValue2, f);
            if (!a2) {
                a3 = 1.0f - a3;
            }
            this.G.a(rectF, a3, this.L);
            this.M = new RectF(Math.min(this.B.left, this.D.left), Math.min(this.B.top, this.D.top), Math.max(this.B.right, this.D.right), Math.max(this.B.bottom, this.D.bottom));
            this.r.a(f, this.g, this.k, this.A, this.B, this.D, this.E.d);
            this.N = v.a(this.h, this.l, f);
            float a4 = a(this.M, this.w);
            float b2 = b(this.M, this.x);
            float f4 = (int) (this.N * a4);
            this.O = (int) (this.N * b2);
            this.p.setShadowLayer(this.N, f4, this.O, f1521a);
            this.K = this.F.a(f, ((Float) androidx.core.m.i.a(Float.valueOf(this.E.f1520a.f1519a))).floatValue(), ((Float) androidx.core.m.i.a(Float.valueOf(this.E.f1520a.b))).floatValue());
            if (this.n.getColor() != 0) {
                this.n.setAlpha(this.K.f1508a);
            }
            if (this.o.getColor() != 0) {
                this.o.setAlpha(this.K.b);
            }
            invalidateSelf();
        }

        private static PointF a(RectF rectF) {
            return new PointF(rectF.centerX(), rectF.top);
        }

        private static float a(RectF rectF, float f) {
            return ((rectF.centerX() / (f / 2.0f)) - 1.0f) * c;
        }

        private static float b(RectF rectF, float f) {
            return (rectF.centerY() / f) * d;
        }

        private void a(Canvas canvas, RectF rectF, Path path, @androidx.annotation.k int i) {
            PointF a2 = a(rectF);
            if (this.P == 0.0f) {
                path.reset();
                path.moveTo(a2.x, a2.y);
            } else {
                path.lineTo(a2.x, a2.y);
                this.I.setColor(i);
                canvas.drawPath(path, this.I);
            }
        }

        private void a(Canvas canvas, RectF rectF, @androidx.annotation.k int i) {
            this.I.setColor(i);
            canvas.drawRect(rectF, this.I);
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class c {

        /* renamed from: a, reason: collision with root package name */
        @androidx.annotation.r(a = 0.0d, b = 1.0d)
        private final float f1519a;

        @androidx.annotation.r(a = 0.0d, b = 1.0d)
        private final float b;

        public c(@androidx.annotation.r(a = 0.0d, b = 1.0d) float f, @androidx.annotation.r(a = 0.0d, b = 1.0d) float f2) {
            this.f1519a = f;
            this.b = f2;
        }

        @androidx.annotation.r(a = 0.0d, b = 1.0d)
        public float a() {
            return this.f1519a;
        }

        @androidx.annotation.r(a = 0.0d, b = 1.0d)
        public float b() {
            return this.b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class d {

        /* renamed from: a, reason: collision with root package name */
        @ah
        private final c f1520a;

        @ah
        private final c b;

        @ah
        private final c c;

        @ah
        private final c d;

        private d(@ah c cVar, @ah c cVar2, @ah c cVar3, @ah c cVar4) {
            this.f1520a = cVar;
            this.b = cVar2;
            this.c = cVar3;
            this.d = cVar4;
        }
    }
}
