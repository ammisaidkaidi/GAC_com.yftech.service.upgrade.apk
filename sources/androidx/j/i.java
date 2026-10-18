package androidx.j;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.j.aa;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: /home/user/work/dex/classes.dex */
public class i extends ag {
    private static final String p = "android:changeTransform:parent";
    private static final String r = "android:changeTransform:intermediateParentMatrix";
    private static final String s = "android:changeTransform:intermediateMatrix";
    private static final boolean w;

    /* renamed from: a, reason: collision with root package name */
    boolean f895a;
    private boolean x;
    private Matrix y;
    private static final String b = "android:changeTransform:matrix";
    private static final String o = "android:changeTransform:transforms";
    private static final String q = "android:changeTransform:parentMatrix";
    private static final String[] t = {b, o, q};
    private static final Property<b, float[]> u = new Property<b, float[]>(float[].class, "nonTranslations") { // from class: androidx.j.i.1
        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public float[] get(b bVar) {
            return null;
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void set(b bVar, float[] fArr) {
            bVar.a(fArr);
        }
    };
    private static final Property<b, PointF> v = new Property<b, PointF>(PointF.class, "translations") { // from class: androidx.j.i.2
        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(b bVar) {
            return null;
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void set(b bVar, PointF pointF) {
            bVar.a(pointF);
        }
    };

    static {
        w = Build.VERSION.SDK_INT >= 21;
    }

    public i() {
        this.f895a = true;
        this.x = true;
        this.y = new Matrix();
    }

    @SuppressLint({"RestrictedApi"})
    public i(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f895a = true;
        this.x = true;
        this.y = new Matrix();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, af.g);
        XmlPullParser xmlPullParser = (XmlPullParser) attributeSet;
        this.f895a = androidx.core.b.b.h.a(obtainStyledAttributes, xmlPullParser, "reparentWithOverlay", 1, true);
        this.x = androidx.core.b.b.h.a(obtainStyledAttributes, xmlPullParser, "reparent", 0, true);
        obtainStyledAttributes.recycle();
    }

    public boolean b() {
        return this.f895a;
    }

    public void a(boolean z) {
        this.f895a = z;
    }

    public boolean c() {
        return this.x;
    }

    public void b(boolean z) {
        this.x = z;
    }

    @Override // androidx.j.ag
    public String[] a() {
        return t;
    }

    private void d(an anVar) {
        View view = anVar.b;
        if (view.getVisibility() == 8) {
            return;
        }
        anVar.f859a.put(p, view.getParent());
        anVar.f859a.put(o, new c(view));
        Matrix matrix = view.getMatrix();
        anVar.f859a.put(b, (matrix == null || matrix.isIdentity()) ? null : new Matrix(matrix));
        if (this.x) {
            Matrix matrix2 = new Matrix();
            ay.a((ViewGroup) view.getParent(), matrix2);
            matrix2.preTranslate(-r1.getScrollX(), -r1.getScrollY());
            anVar.f859a.put(q, matrix2);
            anVar.f859a.put(s, view.getTag(aa.e.transition_transform));
            anVar.f859a.put(r, view.getTag(aa.e.parent_matrix));
        }
    }

    @Override // androidx.j.ag
    public void a(@androidx.annotation.ah an anVar) {
        d(anVar);
        if (w) {
            return;
        }
        ((ViewGroup) anVar.b.getParent()).startViewTransition(anVar.b);
    }

    @Override // androidx.j.ag
    public void b(@androidx.annotation.ah an anVar) {
        d(anVar);
    }

    @Override // androidx.j.ag
    public Animator a(@androidx.annotation.ah ViewGroup viewGroup, an anVar, an anVar2) {
        if (anVar == null || anVar2 == null || !anVar.f859a.containsKey(p) || !anVar2.f859a.containsKey(p)) {
            return null;
        }
        ViewGroup viewGroup2 = (ViewGroup) anVar.f859a.get(p);
        boolean z = this.x && !a(viewGroup2, (ViewGroup) anVar2.f859a.get(p));
        Matrix matrix = (Matrix) anVar.f859a.get(s);
        if (matrix != null) {
            anVar.f859a.put(b, matrix);
        }
        Matrix matrix2 = (Matrix) anVar.f859a.get(r);
        if (matrix2 != null) {
            anVar.f859a.put(q, matrix2);
        }
        if (z) {
            b(anVar, anVar2);
        }
        ObjectAnimator a2 = a(anVar, anVar2, z);
        if (z && a2 != null && this.f895a) {
            b(viewGroup, anVar, anVar2);
        } else if (!w) {
            viewGroup2.endViewTransition(anVar.b);
        }
        return a2;
    }

    private ObjectAnimator a(an anVar, an anVar2, final boolean z) {
        Matrix matrix = (Matrix) anVar.f859a.get(b);
        Matrix matrix2 = (Matrix) anVar2.f859a.get(b);
        if (matrix == null) {
            matrix = u.f915a;
        }
        if (matrix2 == null) {
            matrix2 = u.f915a;
        }
        final Matrix matrix3 = matrix2;
        if (matrix.equals(matrix3)) {
            return null;
        }
        final c cVar = (c) anVar2.f859a.get(o);
        final View view = anVar2.b;
        a(view);
        float[] fArr = new float[9];
        matrix.getValues(fArr);
        float[] fArr2 = new float[9];
        matrix3.getValues(fArr2);
        final b bVar = new b(view, fArr);
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(bVar, PropertyValuesHolder.ofObject(u, new m(new float[9]), fArr, fArr2), z.a(v, o().a(fArr[2], fArr[5], fArr2[2], fArr2[5])));
        AnimatorListenerAdapter animatorListenerAdapter = new AnimatorListenerAdapter() { // from class: androidx.j.i.3
            private boolean g;
            private Matrix h = new Matrix();

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                this.g = true;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (!this.g) {
                    if (z && i.this.f895a) {
                        a(matrix3);
                    } else {
                        view.setTag(aa.e.transition_transform, null);
                        view.setTag(aa.e.parent_matrix, null);
                    }
                }
                ay.c(view, null);
                cVar.a(view);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
            public void onAnimationPause(Animator animator) {
                a(bVar.a());
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
            public void onAnimationResume(Animator animator) {
                i.a(view);
            }

            private void a(Matrix matrix4) {
                this.h.set(matrix4);
                view.setTag(aa.e.transition_transform, this.h);
                cVar.a(view);
            }
        };
        ofPropertyValuesHolder.addListener(animatorListenerAdapter);
        androidx.j.a.a(ofPropertyValuesHolder, animatorListenerAdapter);
        return ofPropertyValuesHolder;
    }

    private boolean a(ViewGroup viewGroup, ViewGroup viewGroup2) {
        if (b((View) viewGroup) && b((View) viewGroup2)) {
            an d = d(viewGroup, true);
            if (d == null || viewGroup2 != d.b) {
                return false;
            }
        } else if (viewGroup != viewGroup2) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [androidx.j.ag] */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8 */
    private void b(ViewGroup viewGroup, an anVar, an anVar2) {
        View view = anVar2.b;
        Matrix matrix = new Matrix((Matrix) anVar2.f859a.get(q));
        ay.b(viewGroup, matrix);
        o a2 = s.a(view, viewGroup, matrix);
        if (a2 == null) {
            return;
        }
        a2.a((ViewGroup) anVar.f859a.get(p), anVar.b);
        ?? r3 = this;
        while (r3.k != null) {
            r3 = r3.k;
        }
        r3.a(new a(view, a2));
        if (w) {
            if (anVar.b != anVar2.b) {
                ay.a(anVar.b, 0.0f);
            }
            ay.a(view, 1.0f);
        }
    }

    private void b(an anVar, an anVar2) {
        Matrix matrix = (Matrix) anVar2.f859a.get(q);
        anVar2.b.setTag(aa.e.parent_matrix, matrix);
        Matrix matrix2 = this.y;
        matrix2.reset();
        matrix.invert(matrix2);
        Matrix matrix3 = (Matrix) anVar.f859a.get(b);
        if (matrix3 == null) {
            matrix3 = new Matrix();
            anVar.f859a.put(b, matrix3);
        }
        matrix3.postConcat((Matrix) anVar.f859a.get(q));
        matrix3.postConcat(matrix2);
    }

    static void a(View view) {
        a(view, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, 0.0f);
    }

    static void a(View view, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        view.setTranslationX(f);
        view.setTranslationY(f2);
        androidx.core.n.af.n(view, f3);
        view.setScaleX(f4);
        view.setScaleY(f5);
        view.setRotationX(f6);
        view.setRotationY(f7);
        view.setRotation(f8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class c {

        /* renamed from: a, reason: collision with root package name */
        final float f899a;
        final float b;
        final float c;
        final float d;
        final float e;
        final float f;
        final float g;
        final float h;

        c(View view) {
            this.f899a = view.getTranslationX();
            this.b = view.getTranslationY();
            this.c = androidx.core.n.af.Q(view);
            this.d = view.getScaleX();
            this.e = view.getScaleY();
            this.f = view.getRotationX();
            this.g = view.getRotationY();
            this.h = view.getRotation();
        }

        public void a(View view) {
            i.a(view, this.f899a, this.b, this.c, this.d, this.e, this.f, this.g, this.h);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return cVar.f899a == this.f899a && cVar.b == this.b && cVar.c == this.c && cVar.d == this.d && cVar.e == this.e && cVar.f == this.f && cVar.g == this.g && cVar.h == this.h;
        }

        public int hashCode() {
            return ((((((((((((((this.f899a != 0.0f ? Float.floatToIntBits(this.f899a) : 0) * 31) + (this.b != 0.0f ? Float.floatToIntBits(this.b) : 0)) * 31) + (this.c != 0.0f ? Float.floatToIntBits(this.c) : 0)) * 31) + (this.d != 0.0f ? Float.floatToIntBits(this.d) : 0)) * 31) + (this.e != 0.0f ? Float.floatToIntBits(this.e) : 0)) * 31) + (this.f != 0.0f ? Float.floatToIntBits(this.f) : 0)) * 31) + (this.g != 0.0f ? Float.floatToIntBits(this.g) : 0)) * 31) + (this.h != 0.0f ? Float.floatToIntBits(this.h) : 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a extends ai {

        /* renamed from: a, reason: collision with root package name */
        private View f897a;
        private o b;

        a(View view, o oVar) {
            this.f897a = view;
            this.b = oVar;
        }

        @Override // androidx.j.ai, androidx.j.ag.e
        public void b(@androidx.annotation.ah ag agVar) {
            agVar.b(this);
            s.a(this.f897a);
            this.f897a.setTag(aa.e.transition_transform, null);
            this.f897a.setTag(aa.e.parent_matrix, null);
        }

        @Override // androidx.j.ai, androidx.j.ag.e
        public void c(@androidx.annotation.ah ag agVar) {
            this.b.setVisibility(4);
        }

        @Override // androidx.j.ai, androidx.j.ag.e
        public void d(@androidx.annotation.ah ag agVar) {
            this.b.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private final Matrix f898a = new Matrix();
        private final View b;
        private final float[] c;
        private float d;
        private float e;

        b(View view, float[] fArr) {
            this.b = view;
            this.c = (float[]) fArr.clone();
            this.d = this.c[2];
            this.e = this.c[5];
            b();
        }

        void a(float[] fArr) {
            System.arraycopy(fArr, 0, this.c, 0, fArr.length);
            b();
        }

        void a(PointF pointF) {
            this.d = pointF.x;
            this.e = pointF.y;
            b();
        }

        private void b() {
            this.c[2] = this.d;
            this.c[5] = this.e;
            this.f898a.setValues(this.c);
            ay.c(this.b, this.f898a);
        }

        Matrix a() {
            return this.f898a;
        }
    }
}
