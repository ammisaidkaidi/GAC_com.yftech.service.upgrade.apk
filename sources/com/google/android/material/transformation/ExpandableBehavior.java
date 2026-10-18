package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.i;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.n.af;
import java.util.List;

@Deprecated
/* loaded from: /home/user/work/dex/classes.dex */
public abstract class ExpandableBehavior extends CoordinatorLayout.b<View> {

    /* renamed from: a, reason: collision with root package name */
    private static final int f1470a = 0;
    private static final int b = 1;
    private static final int c = 2;
    private int d;

    protected abstract boolean a(View view, View view2, boolean z, boolean z2);

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public abstract boolean a(CoordinatorLayout coordinatorLayout, View view, View view2);

    public ExpandableBehavior() {
        this.d = 0;
    }

    public ExpandableBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    @i
    public boolean a(@ah CoordinatorLayout coordinatorLayout, @ah final View view, int i) {
        final com.google.android.material.l.b e;
        if (af.ag(view) || (e = e(coordinatorLayout, view)) == null || !a(e.a())) {
            return false;
        }
        this.d = e.a() ? 1 : 2;
        final int i2 = this.d;
        view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.google.android.material.transformation.ExpandableBehavior.1
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                view.getViewTreeObserver().removeOnPreDrawListener(this);
                if (ExpandableBehavior.this.d == i2) {
                    ExpandableBehavior.this.a((View) e, view, e.a(), false);
                }
                return false;
            }
        });
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    @i
    public boolean b(CoordinatorLayout coordinatorLayout, View view, View view2) {
        com.google.android.material.l.b bVar = (com.google.android.material.l.b) view2;
        if (!a(bVar.a())) {
            return false;
        }
        this.d = bVar.a() ? 1 : 2;
        return a((View) bVar, view, bVar.a(), true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @ai
    protected com.google.android.material.l.b e(@ah CoordinatorLayout coordinatorLayout, @ah View view) {
        List<View> c2 = coordinatorLayout.c(view);
        int size = c2.size();
        for (int i = 0; i < size; i++) {
            View view2 = c2.get(i);
            if (a(coordinatorLayout, view, view2)) {
                return (com.google.android.material.l.b) view2;
            }
        }
        return null;
    }

    private boolean a(boolean z) {
        return z ? this.d == 0 || this.d == 2 : this.d == 1;
    }

    @ai
    public static <T extends ExpandableBehavior> T a(@ah View view, @ah Class<T> cls) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof CoordinatorLayout.f)) {
            throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
        }
        CoordinatorLayout.b b2 = ((CoordinatorLayout.f) layoutParams).b();
        if (!(b2 instanceof ExpandableBehavior)) {
            throw new IllegalArgumentException("The view is not associated with ExpandableBehavior");
        }
        return cls.cast(b2);
    }
}
