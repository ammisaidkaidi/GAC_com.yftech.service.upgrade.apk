package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Pair;
import android.util.Property;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.i;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.n.af;
import com.google.android.material.a;
import com.google.android.material.a.c;
import com.google.android.material.a.e;
import com.google.android.material.a.h;
import com.google.android.material.a.j;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.g.d;
import com.google.android.material.g.g;
import java.util.ArrayList;
import java.util.List;

@Deprecated
/* loaded from: /home/user/work/dex/classes.dex */
public abstract class FabTransformationBehavior extends ExpandableTransformationBehavior {

    /* renamed from: a, reason: collision with root package name */
    private final Rect f1474a;
    private final RectF b;
    private final RectF c;
    private final int[] d;
    private float e;
    private float f;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        @ai
        public h f1479a;
        public j b;
    }

    protected abstract a a(Context context, boolean z);

    public FabTransformationBehavior() {
        this.f1474a = new Rect();
        this.b = new RectF();
        this.c = new RectF();
        this.d = new int[2];
    }

    public FabTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1474a = new Rect();
        this.b = new RectF();
        this.c = new RectF();
        this.d = new int[2];
    }

    @Override // com.google.android.material.transformation.ExpandableBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.b
    @i
    public boolean a(@ah CoordinatorLayout coordinatorLayout, @ah View view, @ah View view2) {
        if (view.getVisibility() == 8) {
            throw new IllegalStateException("This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead.");
        }
        if (!(view2 instanceof FloatingActionButton)) {
            return false;
        }
        int expandedComponentIdHint = ((FloatingActionButton) view2).getExpandedComponentIdHint();
        return expandedComponentIdHint == 0 || expandedComponentIdHint == view.getId();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    @i
    public void a(@ah CoordinatorLayout.f fVar) {
        if (fVar.h == 0) {
            fVar.h = 80;
        }
    }

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    @ah
    protected AnimatorSet b(@ah final View view, @ah final View view2, final boolean z, boolean z2) {
        a a2 = a(view2.getContext(), z);
        if (z) {
            this.e = view.getTranslationX();
            this.f = view.getTranslationY();
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (Build.VERSION.SDK_INT >= 21) {
            a(view, view2, z, z2, a2, arrayList, arrayList2);
        }
        RectF rectF = this.b;
        a(view, view2, z, z2, a2, arrayList, arrayList2, rectF);
        float width = rectF.width();
        float height = rectF.height();
        a(view, view2, z, a2, arrayList);
        b(view, view2, z, z2, a2, arrayList, arrayList2);
        a(view, view2, z, z2, a2, width, height, arrayList, arrayList2);
        c(view, view2, z, z2, a2, arrayList, arrayList2);
        d(view, view2, z, z2, a2, arrayList, arrayList2);
        AnimatorSet animatorSet = new AnimatorSet();
        com.google.android.material.a.b.a(animatorSet, arrayList);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.transformation.FabTransformationBehavior.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                if (z) {
                    view2.setVisibility(0);
                    view.setAlpha(0.0f);
                    view.setVisibility(4);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (z) {
                    return;
                }
                view2.setVisibility(4);
                view.setAlpha(1.0f);
                view.setVisibility(0);
            }
        });
        int size = arrayList2.size();
        for (int i = 0; i < size; i++) {
            animatorSet.addListener(arrayList2.get(i));
        }
        return animatorSet;
    }

    @TargetApi(21)
    private void a(View view, @ah View view2, boolean z, boolean z2, @ah a aVar, @ah List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator ofFloat;
        float P = af.P(view2) - af.P(view);
        if (z) {
            if (!z2) {
                view2.setTranslationZ(-P);
            }
            ofFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Z, 0.0f);
        } else {
            ofFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Z, -P);
        }
        aVar.f1479a.b("elevation").a((Animator) ofFloat);
        list.add(ofFloat);
    }

    private void a(@ah View view, @ah View view2, boolean z, @ah a aVar, @ah List<Animator> list) {
        float a2 = a(view, view2, aVar.b);
        float b = b(view, view2, aVar.b);
        Pair<com.google.android.material.a.i, com.google.android.material.a.i> a3 = a(a2, b, z, aVar);
        com.google.android.material.a.i iVar = (com.google.android.material.a.i) a3.first;
        com.google.android.material.a.i iVar2 = (com.google.android.material.a.i) a3.second;
        Property property = View.TRANSLATION_X;
        float[] fArr = new float[1];
        if (!z) {
            a2 = this.e;
        }
        fArr[0] = a2;
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) property, fArr);
        Property property2 = View.TRANSLATION_Y;
        float[] fArr2 = new float[1];
        if (!z) {
            b = this.f;
        }
        fArr2[0] = b;
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view, (Property<View, Float>) property2, fArr2);
        iVar.a((Animator) ofFloat);
        iVar2.a((Animator) ofFloat2);
        list.add(ofFloat);
        list.add(ofFloat2);
    }

    private void a(@ah View view, @ah View view2, boolean z, boolean z2, @ah a aVar, @ah List<Animator> list, List<Animator.AnimatorListener> list2, @ah RectF rectF) {
        ObjectAnimator ofFloat;
        ObjectAnimator ofFloat2;
        float a2 = a(view, view2, aVar.b);
        float b = b(view, view2, aVar.b);
        Pair<com.google.android.material.a.i, com.google.android.material.a.i> a3 = a(a2, b, z, aVar);
        com.google.android.material.a.i iVar = (com.google.android.material.a.i) a3.first;
        com.google.android.material.a.i iVar2 = (com.google.android.material.a.i) a3.second;
        if (z) {
            if (!z2) {
                view2.setTranslationX(-a2);
                view2.setTranslationY(-b);
            }
            ofFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_X, 0.0f);
            ofFloat2 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Y, 0.0f);
            a(view2, aVar, iVar, iVar2, -a2, -b, 0.0f, 0.0f, rectF);
        } else {
            ofFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_X, -a2);
            ofFloat2 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Y, -b);
        }
        iVar.a((Animator) ofFloat);
        iVar2.a((Animator) ofFloat2);
        list.add(ofFloat);
        list.add(ofFloat2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void b(View view, final View view2, boolean z, boolean z2, @ah a aVar, @ah List<Animator> list, @ah List<Animator.AnimatorListener> list2) {
        ObjectAnimator ofInt;
        if ((view2 instanceof g) && (view instanceof ImageView)) {
            final g gVar = (g) view2;
            final Drawable drawable = ((ImageView) view).getDrawable();
            if (drawable == null) {
                return;
            }
            drawable.mutate();
            if (z) {
                if (!z2) {
                    drawable.setAlpha(255);
                }
                ofInt = ObjectAnimator.ofInt(drawable, e.f1149a, 0);
            } else {
                ofInt = ObjectAnimator.ofInt(drawable, e.f1149a, 255);
            }
            ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.transformation.FabTransformationBehavior.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    view2.invalidate();
                }
            });
            aVar.f1479a.b("iconFade").a((Animator) ofInt);
            list.add(ofInt);
            list2.add(new AnimatorListenerAdapter() { // from class: com.google.android.material.transformation.FabTransformationBehavior.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    gVar.setCircularRevealOverlayDrawable(drawable);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    gVar.setCircularRevealOverlayDrawable(null);
                }
            });
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void a(@ah View view, View view2, boolean z, boolean z2, @ah a aVar, float f, float f2, @ah List<Animator> list, @ah List<Animator.AnimatorListener> list2) {
        com.google.android.material.a.i iVar;
        Animator animator;
        if (view2 instanceof g) {
            final g gVar = (g) view2;
            float c = c(view, view2, aVar.b);
            float d = d(view, view2, aVar.b);
            ((FloatingActionButton) view).a(this.f1474a);
            float width = this.f1474a.width() / 2.0f;
            com.google.android.material.a.i b = aVar.f1479a.b("expansion");
            if (z) {
                if (!z2) {
                    gVar.setRevealInfo(new g.d(c, d, width));
                }
                float f3 = z2 ? gVar.getRevealInfo().d : width;
                animator = com.google.android.material.g.a.a(gVar, c, d, com.google.android.material.n.a.a(c, d, 0.0f, 0.0f, f, f2));
                animator.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.transformation.FabTransformationBehavior.4
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator2) {
                        g.d revealInfo = gVar.getRevealInfo();
                        revealInfo.d = Float.MAX_VALUE;
                        gVar.setRevealInfo(revealInfo);
                    }
                });
                iVar = b;
                a(view2, b.a(), (int) c, (int) d, f3, list);
            } else {
                iVar = b;
                float f4 = gVar.getRevealInfo().d;
                Animator a2 = com.google.android.material.g.a.a(gVar, c, d, width);
                int i = (int) c;
                int i2 = (int) d;
                a(view2, iVar.a(), i, i2, f4, list);
                a(view2, iVar.a(), iVar.b(), aVar.f1479a.a(), i, i2, width, list);
                animator = a2;
            }
            iVar.a(animator);
            list.add(animator);
            list2.add(com.google.android.material.g.a.a(gVar));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void c(@ah View view, View view2, boolean z, boolean z2, @ah a aVar, @ah List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator ofInt;
        if (view2 instanceof g) {
            g gVar = (g) view2;
            int d = d(view);
            int i = 16777215 & d;
            if (z) {
                if (!z2) {
                    gVar.setCircularRevealScrimColor(d);
                }
                ofInt = ObjectAnimator.ofInt(gVar, g.c.f1318a, i);
            } else {
                ofInt = ObjectAnimator.ofInt(gVar, g.c.f1318a, d);
            }
            ofInt.setEvaluator(c.a());
            aVar.f1479a.b("color").a((Animator) ofInt);
            list.add(ofInt);
        }
    }

    private void d(View view, View view2, boolean z, boolean z2, @ah a aVar, @ah List<Animator> list, List<Animator.AnimatorListener> list2) {
        ViewGroup b;
        ObjectAnimator ofFloat;
        if (view2 instanceof ViewGroup) {
            if (((view2 instanceof g) && d.d == 0) || (b = b(view2)) == null) {
                return;
            }
            if (z) {
                if (!z2) {
                    com.google.android.material.a.d.f1148a.set(b, Float.valueOf(0.0f));
                }
                ofFloat = ObjectAnimator.ofFloat(b, com.google.android.material.a.d.f1148a, 1.0f);
            } else {
                ofFloat = ObjectAnimator.ofFloat(b, com.google.android.material.a.d.f1148a, 0.0f);
            }
            aVar.f1479a.b("contentFade").a((Animator) ofFloat);
            list.add(ofFloat);
        }
    }

    @ah
    private Pair<com.google.android.material.a.i, com.google.android.material.a.i> a(float f, float f2, boolean z, @ah a aVar) {
        com.google.android.material.a.i b;
        com.google.android.material.a.i b2;
        if (f == 0.0f || f2 == 0.0f) {
            b = aVar.f1479a.b("translationXLinear");
            b2 = aVar.f1479a.b("translationYLinear");
        } else if ((z && f2 < 0.0f) || (!z && f2 > 0.0f)) {
            b = aVar.f1479a.b("translationXCurveUpwards");
            b2 = aVar.f1479a.b("translationYCurveUpwards");
        } else {
            b = aVar.f1479a.b("translationXCurveDownwards");
            b2 = aVar.f1479a.b("translationYCurveDownwards");
        }
        return new Pair<>(b, b2);
    }

    private float a(@ah View view, @ah View view2, @ah j jVar) {
        float centerX;
        RectF rectF = this.b;
        RectF rectF2 = this.c;
        b(view, rectF);
        a(view2, rectF2);
        int i = jVar.f1154a & 7;
        if (i == 1) {
            centerX = rectF2.centerX() - rectF.centerX();
        } else if (i == 3) {
            centerX = rectF2.left - rectF.left;
        } else {
            centerX = i != 5 ? 0.0f : rectF2.right - rectF.right;
        }
        return centerX + jVar.b;
    }

    private float b(@ah View view, @ah View view2, @ah j jVar) {
        float centerY;
        RectF rectF = this.b;
        RectF rectF2 = this.c;
        b(view, rectF);
        a(view2, rectF2);
        int i = jVar.f1154a & 112;
        if (i == 16) {
            centerY = rectF2.centerY() - rectF.centerY();
        } else if (i == 48) {
            centerY = rectF2.top - rectF.top;
        } else {
            centerY = i != 80 ? 0.0f : rectF2.bottom - rectF.bottom;
        }
        return centerY + jVar.c;
    }

    private void a(@ah View view, RectF rectF) {
        rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
        view.getLocationInWindow(this.d);
        rectF.offsetTo(r3[0], r3[1]);
        rectF.offset((int) (-view.getTranslationX()), (int) (-view.getTranslationY()));
    }

    private void b(@ah View view, @ah RectF rectF) {
        a(view, rectF);
        rectF.offset(this.e, this.f);
    }

    private float c(@ah View view, @ah View view2, @ah j jVar) {
        RectF rectF = this.b;
        RectF rectF2 = this.c;
        b(view, rectF);
        a(view2, rectF2);
        rectF2.offset(-a(view, view2, jVar), 0.0f);
        return rectF.centerX() - rectF2.left;
    }

    private float d(@ah View view, @ah View view2, @ah j jVar) {
        RectF rectF = this.b;
        RectF rectF2 = this.c;
        b(view, rectF);
        a(view2, rectF2);
        rectF2.offset(0.0f, -b(view, view2, jVar));
        return rectF.centerY() - rectF2.top;
    }

    private void a(@ah View view, @ah a aVar, @ah com.google.android.material.a.i iVar, @ah com.google.android.material.a.i iVar2, float f, float f2, float f3, float f4, @ah RectF rectF) {
        float a2 = a(aVar, iVar, f, f3);
        float a3 = a(aVar, iVar2, f2, f4);
        Rect rect = this.f1474a;
        view.getWindowVisibleDisplayFrame(rect);
        RectF rectF2 = this.b;
        rectF2.set(rect);
        RectF rectF3 = this.c;
        a(view, rectF3);
        rectF3.offset(a2, a3);
        rectF3.intersect(rectF2);
        rectF.set(rectF3);
    }

    private float a(@ah a aVar, @ah com.google.android.material.a.i iVar, float f, float f2) {
        long a2 = iVar.a();
        long b = iVar.b();
        com.google.android.material.a.i b2 = aVar.f1479a.b("expansion");
        return com.google.android.material.a.a.a(f, f2, iVar.c().getInterpolation(((float) (((b2.a() + b2.b()) + 17) - a2)) / ((float) b)));
    }

    @ai
    private ViewGroup b(@ah View view) {
        View findViewById = view.findViewById(a.h.mtrl_child_content_container);
        if (findViewById != null) {
            return c(findViewById);
        }
        if ((view instanceof b) || (view instanceof com.google.android.material.transformation.a)) {
            return c(((ViewGroup) view).getChildAt(0));
        }
        return c(view);
    }

    @ai
    private ViewGroup c(View view) {
        if (view instanceof ViewGroup) {
            return (ViewGroup) view;
        }
        return null;
    }

    private int d(@ah View view) {
        ColorStateList aa = af.aa(view);
        if (aa != null) {
            return aa.getColorForState(view.getDrawableState(), aa.getDefaultColor());
        }
        return 0;
    }

    private void a(View view, long j, int i, int i2, float f, @ah List<Animator> list) {
        if (Build.VERSION.SDK_INT < 21 || j <= 0) {
            return;
        }
        Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(view, i, i2, f, f);
        createCircularReveal.setStartDelay(0L);
        createCircularReveal.setDuration(j);
        list.add(createCircularReveal);
    }

    private void a(View view, long j, long j2, long j3, int i, int i2, float f, @ah List<Animator> list) {
        if (Build.VERSION.SDK_INT >= 21) {
            long j4 = j + j2;
            if (j4 < j3) {
                Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(view, i, i2, f, f);
                createCircularReveal.setStartDelay(j4);
                createCircularReveal.setDuration(j3 - j4);
                list.add(createCircularReveal);
            }
        }
    }
}
