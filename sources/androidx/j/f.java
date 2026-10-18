package androidx.j;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.TypeEvaluator;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: /home/user/work/dex/classes.dex */
public class f extends ag {
    private static final String b = "android:clipBounds:bounds";

    /* renamed from: a, reason: collision with root package name */
    private static final String f890a = "android:clipBounds:clip";
    private static final String[] o = {f890a};

    @Override // androidx.j.ag
    public String[] a() {
        return o;
    }

    public f() {
    }

    public f(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void d(an anVar) {
        View view = anVar.b;
        if (view.getVisibility() == 8) {
            return;
        }
        Rect aj = androidx.core.n.af.aj(view);
        anVar.f859a.put(f890a, aj);
        if (aj == null) {
            anVar.f859a.put(b, new Rect(0, 0, view.getWidth(), view.getHeight()));
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

    @Override // androidx.j.ag
    public Animator a(@androidx.annotation.ah ViewGroup viewGroup, an anVar, an anVar2) {
        if (anVar == null || anVar2 == null || !anVar.f859a.containsKey(f890a) || !anVar2.f859a.containsKey(f890a)) {
            return null;
        }
        Rect rect = (Rect) anVar.f859a.get(f890a);
        Rect rect2 = (Rect) anVar2.f859a.get(f890a);
        boolean z = rect2 == null;
        if (rect == null && rect2 == null) {
            return null;
        }
        if (rect == null) {
            rect = (Rect) anVar.f859a.get(b);
        } else if (rect2 == null) {
            rect2 = (Rect) anVar2.f859a.get(b);
        }
        if (rect.equals(rect2)) {
            return null;
        }
        androidx.core.n.af.a(anVar2.b, rect);
        ObjectAnimator ofObject = ObjectAnimator.ofObject(anVar2.b, (Property<View, V>) ay.b, (TypeEvaluator) new ab(new Rect()), (Object[]) new Rect[]{rect, rect2});
        if (z) {
            final View view = anVar2.b;
            ofObject.addListener(new AnimatorListenerAdapter() { // from class: androidx.j.f.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    androidx.core.n.af.a(view, (Rect) null);
                }
            });
        }
        return ofObject;
    }
}
