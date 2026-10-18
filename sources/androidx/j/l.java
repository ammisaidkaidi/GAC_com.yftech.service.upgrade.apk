package androidx.j;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: /home/user/work/dex/classes.dex */
public class l extends bf {

    /* renamed from: a, reason: collision with root package name */
    public static final int f902a = 1;
    public static final int b = 2;
    private static final String r = "android:fade:transitionAlpha";
    private static final String s = "Fade";

    public l(int i) {
        d(i);
    }

    public l() {
    }

    @SuppressLint({"RestrictedApi"})
    public l(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, af.f);
        d(androidx.core.b.b.h.a(obtainStyledAttributes, (XmlPullParser) attributeSet, "fadingMode", 0, c()));
        obtainStyledAttributes.recycle();
    }

    @Override // androidx.j.bf, androidx.j.ag
    public void a(@androidx.annotation.ah an anVar) {
        super.a(anVar);
        anVar.f859a.put(r, Float.valueOf(ay.c(anVar.b)));
    }

    private Animator a(final View view, float f, float f2) {
        if (f == f2) {
            return null;
        }
        ay.a(view, f);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, ay.f868a, f2);
        ofFloat.addListener(new a(view));
        a(new ai() { // from class: androidx.j.l.1
            @Override // androidx.j.ai, androidx.j.ag.e
            public void b(@androidx.annotation.ah ag agVar) {
                ay.a(view, 1.0f);
                ay.e(view);
                agVar.b(this);
            }
        });
        return ofFloat;
    }

    @Override // androidx.j.bf
    public Animator a(ViewGroup viewGroup, View view, an anVar, an anVar2) {
        float a2 = a(anVar, 0.0f);
        return a(view, a2 != 1.0f ? a2 : 0.0f, 1.0f);
    }

    @Override // androidx.j.bf
    public Animator b(ViewGroup viewGroup, View view, an anVar, an anVar2) {
        ay.d(view);
        return a(view, a(anVar, 1.0f), 0.0f);
    }

    private static float a(an anVar, float f) {
        Float f2;
        return (anVar == null || (f2 = (Float) anVar.f859a.get(r)) == null) ? f : f2.floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a extends AnimatorListenerAdapter {

        /* renamed from: a, reason: collision with root package name */
        private final View f904a;
        private boolean b = false;

        a(View view) {
            this.f904a = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (androidx.core.n.af.Y(this.f904a) && this.f904a.getLayerType() == 0) {
                this.b = true;
                this.f904a.setLayerType(2, null);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ay.a(this.f904a, 1.0f);
            if (this.b) {
                this.f904a.setLayerType(0, null);
            }
        }
    }
}
