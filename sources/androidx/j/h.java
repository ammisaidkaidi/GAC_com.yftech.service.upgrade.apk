package androidx.j;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: /home/user/work/dex/classes.dex */
public class h extends ag {

    /* renamed from: a, reason: collision with root package name */
    private static final String f894a = "android:changeScroll:x";
    private static final String b = "android:changeScroll:y";
    private static final String[] o = {f894a, b};

    public h() {
    }

    public h(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
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
    @androidx.annotation.ai
    public String[] a() {
        return o;
    }

    private void d(an anVar) {
        anVar.f859a.put(f894a, Integer.valueOf(anVar.b.getScrollX()));
        anVar.f859a.put(b, Integer.valueOf(anVar.b.getScrollY()));
    }

    @Override // androidx.j.ag
    @androidx.annotation.ai
    public Animator a(@androidx.annotation.ah ViewGroup viewGroup, @androidx.annotation.ai an anVar, @androidx.annotation.ai an anVar2) {
        ObjectAnimator objectAnimator;
        ObjectAnimator objectAnimator2 = null;
        if (anVar == null || anVar2 == null) {
            return null;
        }
        View view = anVar2.b;
        int intValue = ((Integer) anVar.f859a.get(f894a)).intValue();
        int intValue2 = ((Integer) anVar2.f859a.get(f894a)).intValue();
        int intValue3 = ((Integer) anVar.f859a.get(b)).intValue();
        int intValue4 = ((Integer) anVar2.f859a.get(b)).intValue();
        if (intValue != intValue2) {
            view.setScrollX(intValue);
            objectAnimator = ObjectAnimator.ofInt(view, "scrollX", intValue, intValue2);
        } else {
            objectAnimator = null;
        }
        if (intValue3 != intValue4) {
            view.setScrollY(intValue3);
            objectAnimator2 = ObjectAnimator.ofInt(view, "scrollY", intValue3, intValue4);
        }
        return am.a(objectAnimator, objectAnimator2);
    }
}
