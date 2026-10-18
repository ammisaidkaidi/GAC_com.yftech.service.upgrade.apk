package com.google.android.material.appbar;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.n.af;
import androidx.core.n.ao;
import androidx.core.n.h;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public abstract class c extends d<View> {

    /* renamed from: a, reason: collision with root package name */
    final Rect f1170a;
    final Rect b;
    private int c;
    private int d;

    private static int d(int i) {
        return i == 0 ? com.google.android.material.b.a.b : i;
    }

    float b(View view) {
        return 1.0f;
    }

    @ai
    abstract View b(List<View> list);

    protected boolean b() {
        return false;
    }

    public c() {
        this.f1170a = new Rect();
        this.b = new Rect();
        this.c = 0;
    }

    public c(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1170a = new Rect();
        this.b = new Rect();
        this.c = 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public boolean a(@ah CoordinatorLayout coordinatorLayout, @ah View view, int i, int i2, int i3, int i4) {
        View b;
        ao lastWindowInsets;
        int i5 = view.getLayoutParams().height;
        if ((i5 != -1 && i5 != -2) || (b = b(coordinatorLayout.c(view))) == null) {
            return false;
        }
        int size = View.MeasureSpec.getSize(i3);
        if (size > 0) {
            if (af.U(b) && (lastWindowInsets = coordinatorLayout.getLastWindowInsets()) != null) {
                size += lastWindowInsets.b() + lastWindowInsets.d();
            }
        } else {
            size = coordinatorLayout.getHeight();
        }
        int c = size + c(b);
        int measuredHeight = b.getMeasuredHeight();
        if (b()) {
            view.setTranslationY(-measuredHeight);
        } else {
            c -= measuredHeight;
        }
        coordinatorLayout.a(view, i, i2, View.MeasureSpec.makeMeasureSpec(c, i5 == -1 ? androidx.d.c.b.a.b.b : Integer.MIN_VALUE), i4);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.material.appbar.d
    public void b(@ah CoordinatorLayout coordinatorLayout, @ah View view, int i) {
        View b = b(coordinatorLayout.c(view));
        if (b != null) {
            CoordinatorLayout.f fVar = (CoordinatorLayout.f) view.getLayoutParams();
            Rect rect = this.f1170a;
            rect.set(coordinatorLayout.getPaddingLeft() + fVar.leftMargin, b.getBottom() + fVar.topMargin, (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - fVar.rightMargin, ((coordinatorLayout.getHeight() + b.getBottom()) - coordinatorLayout.getPaddingBottom()) - fVar.bottomMargin);
            ao lastWindowInsets = coordinatorLayout.getLastWindowInsets();
            if (lastWindowInsets != null && af.U(coordinatorLayout) && !af.U(view)) {
                rect.left += lastWindowInsets.a();
                rect.right -= lastWindowInsets.c();
            }
            Rect rect2 = this.b;
            h.a(d(fVar.c), view.getMeasuredWidth(), view.getMeasuredHeight(), rect, rect2, i);
            int d = d(b);
            view.layout(rect2.left, rect2.top - d, rect2.right, rect2.bottom - d);
            this.c = rect2.top - b.getBottom();
            return;
        }
        super.b(coordinatorLayout, (CoordinatorLayout) view, i);
        this.c = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int d(View view) {
        if (this.d == 0) {
            return 0;
        }
        return androidx.core.g.a.a((int) (b(view) * this.d), 0, this.d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c(@ah View view) {
        return view.getMeasuredHeight();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int c() {
        return this.c;
    }

    public final void c(int i) {
        this.d = i;
    }

    public final int h() {
        return this.d;
    }
}
