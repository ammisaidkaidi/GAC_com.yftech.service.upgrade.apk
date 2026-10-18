package androidx.viewpager2.a;

import android.view.View;
import android.view.ViewParent;
import androidx.annotation.ah;
import androidx.annotation.ak;
import androidx.core.m.i;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.a.h;

/* loaded from: /home/user/work/dex/classes.dex */
public final class e implements h.i {

    /* renamed from: a, reason: collision with root package name */
    private final int f1120a;

    public e(@ak int i) {
        i.a(i, "Margin must be non-negative");
        this.f1120a = i;
    }

    @Override // androidx.viewpager2.a.h.i
    public void a(@ah View view, float f) {
        h a2 = a(view);
        float f2 = this.f1120a * f;
        if (a2.getOrientation() == 0) {
            if (a2.b()) {
                f2 = -f2;
            }
            view.setTranslationX(f2);
            return;
        }
        view.setTranslationY(f2);
    }

    private h a(@ah View view) {
        ViewParent parent = view.getParent();
        ViewParent parent2 = parent.getParent();
        if ((parent instanceof RecyclerView) && (parent2 instanceof h)) {
            return (h) parent2;
        }
        throw new IllegalStateException("Expected the page view to be managed by a ViewPager2 instance.");
    }
}
