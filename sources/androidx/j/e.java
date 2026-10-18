package androidx.j;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: /home/user/work/dex/classes.dex */
public class e extends ag {
    private boolean A;
    private int[] y;
    private boolean z;

    /* renamed from: a, reason: collision with root package name */
    private static final String f883a = "android:changeBounds:bounds";
    private static final String b = "android:changeBounds:clip";
    private static final String o = "android:changeBounds:parent";
    private static final String p = "android:changeBounds:windowX";
    private static final String q = "android:changeBounds:windowY";
    private static final String[] r = {f883a, b, o, p, q};
    private static final Property<Drawable, PointF> s = new Property<Drawable, PointF>(PointF.class, "boundsOrigin") { // from class: androidx.j.e.1

        /* renamed from: a, reason: collision with root package name */
        private Rect f884a = new Rect();

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void set(Drawable drawable, PointF pointF) {
            drawable.copyBounds(this.f884a);
            this.f884a.offsetTo(Math.round(pointF.x), Math.round(pointF.y));
            drawable.setBounds(this.f884a);
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(Drawable drawable) {
            drawable.copyBounds(this.f884a);
            return new PointF(this.f884a.left, this.f884a.top);
        }
    };
    private static final Property<a, PointF> t = new Property<a, PointF>(PointF.class, "topLeft") { // from class: androidx.j.e.3
        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(a aVar) {
            return null;
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void set(a aVar, PointF pointF) {
            aVar.a(pointF);
        }
    };
    private static final Property<a, PointF> u = new Property<a, PointF>(PointF.class, "bottomRight") { // from class: androidx.j.e.4
        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(a aVar) {
            return null;
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void set(a aVar, PointF pointF) {
            aVar.b(pointF);
        }
    };
    private static final Property<View, PointF> v = new Property<View, PointF>(PointF.class, "bottomRight") { // from class: androidx.j.e.5
        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void set(View view, PointF pointF) {
            ay.a(view, view.getLeft(), view.getTop(), Math.round(pointF.x), Math.round(pointF.y));
        }
    };
    private static final Property<View, PointF> w = new Property<View, PointF>(PointF.class, "topLeft") { // from class: androidx.j.e.6
        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void set(View view, PointF pointF) {
            ay.a(view, Math.round(pointF.x), Math.round(pointF.y), view.getRight(), view.getBottom());
        }
    };
    private static final Property<View, PointF> x = new Property<View, PointF>(PointF.class, "position") { // from class: androidx.j.e.7
        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void set(View view, PointF pointF) {
            int round = Math.round(pointF.x);
            int round2 = Math.round(pointF.y);
            ay.a(view, round, round2, view.getWidth() + round, view.getHeight() + round2);
        }
    };
    private static ab B = new ab();

    public e() {
        this.y = new int[2];
        this.z = false;
        this.A = false;
    }

    @SuppressLint({"RestrictedApi"})
    public e(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.y = new int[2];
        this.z = false;
        this.A = false;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, af.d);
        boolean a2 = androidx.core.b.b.h.a(obtainStyledAttributes, (XmlPullParser) attributeSet, "resizeClip", 0, false);
        obtainStyledAttributes.recycle();
        a(a2);
    }

    @Override // androidx.j.ag
    @androidx.annotation.ai
    public String[] a() {
        return r;
    }

    public void a(boolean z) {
        this.z = z;
    }

    public boolean b() {
        return this.z;
    }

    private void d(an anVar) {
        View view = anVar.b;
        if (!androidx.core.n.af.ag(view) && view.getWidth() == 0 && view.getHeight() == 0) {
            return;
        }
        anVar.f859a.put(f883a, new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        anVar.f859a.put(o, anVar.b.getParent());
        if (this.A) {
            anVar.b.getLocationInWindow(this.y);
            anVar.f859a.put(p, Integer.valueOf(this.y[0]));
            anVar.f859a.put(q, Integer.valueOf(this.y[1]));
        }
        if (this.z) {
            anVar.f859a.put(b, androidx.core.n.af.aj(view));
        }
    }

    @Override // androidx.j.ag
    public void a(@androidx.annotation.ah an anVar) {
        d(anVar);
    }

    @Override // androidx.j.ag
    public void b(@androidx.annotation.ah an anVar) {
        d(anVar);
    }

    private boolean a(View view, View view2) {
        if (!this.A) {
            return true;
        }
        an d = d(view, true);
        if (d == null) {
            if (view == view2) {
                return true;
            }
        } else if (view2 == d.b) {
            return true;
        }
        return false;
    }

    @Override // androidx.j.ag
    @androidx.annotation.ai
    public Animator a(@androidx.annotation.ah final ViewGroup viewGroup, @androidx.annotation.ai an anVar, @androidx.annotation.ai an anVar2) {
        int i;
        final View view;
        int i2;
        Rect rect;
        ObjectAnimator objectAnimator;
        Animator a2;
        if (anVar == null || anVar2 == null) {
            return null;
        }
        Map<String, Object> map = anVar.f859a;
        Map<String, Object> map2 = anVar2.f859a;
        ViewGroup viewGroup2 = (ViewGroup) map.get(o);
        ViewGroup viewGroup3 = (ViewGroup) map2.get(o);
        if (viewGroup2 == null || viewGroup3 == null) {
            return null;
        }
        final View view2 = anVar2.b;
        if (a(viewGroup2, viewGroup3)) {
            Rect rect2 = (Rect) anVar.f859a.get(f883a);
            Rect rect3 = (Rect) anVar2.f859a.get(f883a);
            int i3 = rect2.left;
            final int i4 = rect3.left;
            int i5 = rect2.top;
            final int i6 = rect3.top;
            int i7 = rect2.right;
            final int i8 = rect3.right;
            int i9 = rect2.bottom;
            final int i10 = rect3.bottom;
            int i11 = i7 - i3;
            int i12 = i9 - i5;
            int i13 = i8 - i4;
            int i14 = i10 - i6;
            Rect rect4 = (Rect) anVar.f859a.get(b);
            final Rect rect5 = (Rect) anVar2.f859a.get(b);
            if ((i11 == 0 || i12 == 0) && (i13 == 0 || i14 == 0)) {
                i = 0;
            } else {
                i = (i3 == i4 && i5 == i6) ? 0 : 1;
                if (i7 != i8 || i9 != i10) {
                    i++;
                }
            }
            if ((rect4 != null && !rect4.equals(rect5)) || (rect4 == null && rect5 != null)) {
                i++;
            }
            if (i <= 0) {
                return null;
            }
            if (!this.z) {
                view = view2;
                ay.a(view, i3, i5, i7, i9);
                if (i == 2) {
                    if (i11 == i13 && i12 == i14) {
                        a2 = v.a(view, x, o().a(i3, i5, i4, i6));
                    } else {
                        final a aVar = new a(view);
                        ObjectAnimator a3 = v.a(aVar, t, o().a(i3, i5, i4, i6));
                        ObjectAnimator a4 = v.a(aVar, u, o().a(i7, i9, i8, i10));
                        AnimatorSet animatorSet = new AnimatorSet();
                        animatorSet.playTogether(a3, a4);
                        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: androidx.j.e.8
                            private a mViewBounds;

                            {
                                this.mViewBounds = aVar;
                            }
                        });
                        a2 = animatorSet;
                    }
                } else if (i3 != i4 || i5 != i6) {
                    a2 = v.a(view, w, o().a(i3, i5, i4, i6));
                } else {
                    a2 = v.a(view, v, o().a(i7, i9, i8, i10));
                }
            } else {
                view = view2;
                ay.a(view, i3, i5, Math.max(i11, i13) + i3, Math.max(i12, i14) + i5);
                ObjectAnimator a5 = (i3 == i4 && i5 == i6) ? null : v.a(view, x, o().a(i3, i5, i4, i6));
                if (rect4 == null) {
                    i2 = 0;
                    rect = new Rect(0, 0, i11, i12);
                } else {
                    i2 = 0;
                    rect = rect4;
                }
                Rect rect6 = rect5 == null ? new Rect(i2, i2, i13, i14) : rect5;
                if (rect.equals(rect6)) {
                    objectAnimator = null;
                } else {
                    androidx.core.n.af.a(view, rect);
                    ab abVar = B;
                    Object[] objArr = new Object[2];
                    objArr[i2] = rect;
                    objArr[1] = rect6;
                    objectAnimator = ObjectAnimator.ofObject(view, "clipBounds", abVar, objArr);
                    objectAnimator.addListener(new AnimatorListenerAdapter() { // from class: androidx.j.e.9
                        private boolean h;

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationCancel(Animator animator) {
                            this.h = true;
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            if (this.h) {
                                return;
                            }
                            androidx.core.n.af.a(view, rect5);
                            ay.a(view, i4, i6, i8, i10);
                        }
                    });
                }
                a2 = am.a(a5, objectAnimator);
            }
            if (view.getParent() instanceof ViewGroup) {
                final ViewGroup viewGroup4 = (ViewGroup) view.getParent();
                at.a(viewGroup4, true);
                a(new ai() { // from class: androidx.j.e.10

                    /* renamed from: a, reason: collision with root package name */
                    boolean f885a = false;

                    @Override // androidx.j.ai, androidx.j.ag.e
                    public void a(@androidx.annotation.ah ag agVar) {
                        at.a(viewGroup4, false);
                        this.f885a = true;
                    }

                    @Override // androidx.j.ai, androidx.j.ag.e
                    public void b(@androidx.annotation.ah ag agVar) {
                        if (!this.f885a) {
                            at.a(viewGroup4, false);
                        }
                        agVar.b(this);
                    }

                    @Override // androidx.j.ai, androidx.j.ag.e
                    public void c(@androidx.annotation.ah ag agVar) {
                        at.a(viewGroup4, false);
                    }

                    @Override // androidx.j.ai, androidx.j.ag.e
                    public void d(@androidx.annotation.ah ag agVar) {
                        at.a(viewGroup4, true);
                    }
                });
            }
            return a2;
        }
        int intValue = ((Integer) anVar.f859a.get(p)).intValue();
        int intValue2 = ((Integer) anVar.f859a.get(q)).intValue();
        int intValue3 = ((Integer) anVar2.f859a.get(p)).intValue();
        int intValue4 = ((Integer) anVar2.f859a.get(q)).intValue();
        if (intValue == intValue3 && intValue2 == intValue4) {
            return null;
        }
        viewGroup.getLocationInWindow(this.y);
        Bitmap createBitmap = Bitmap.createBitmap(view2.getWidth(), view2.getHeight(), Bitmap.Config.ARGB_8888);
        view2.draw(new Canvas(createBitmap));
        final BitmapDrawable bitmapDrawable = new BitmapDrawable(createBitmap);
        final float c = ay.c(view2);
        ay.a(view2, 0.0f);
        ay.a(viewGroup).a(bitmapDrawable);
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(bitmapDrawable, z.a(s, o().a(intValue - this.y[0], intValue2 - this.y[1], intValue3 - this.y[0], intValue4 - this.y[1])));
        ofPropertyValuesHolder.addListener(new AnimatorListenerAdapter() { // from class: androidx.j.e.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ay.a(viewGroup).b(bitmapDrawable);
                ay.a(view2, c);
            }
        });
        return ofPropertyValuesHolder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private int f889a;
        private int b;
        private int c;
        private int d;
        private View e;
        private int f;
        private int g;

        a(View view) {
            this.e = view;
        }

        void a(PointF pointF) {
            this.f889a = Math.round(pointF.x);
            this.b = Math.round(pointF.y);
            this.f++;
            if (this.f == this.g) {
                a();
            }
        }

        void b(PointF pointF) {
            this.c = Math.round(pointF.x);
            this.d = Math.round(pointF.y);
            this.g++;
            if (this.f == this.g) {
                a();
            }
        }

        private void a() {
            ay.a(this.e, this.f889a, this.b, this.c, this.d);
            this.f = 0;
            this.g = 0;
        }
    }
}
