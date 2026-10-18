package com.google.android.material.t;

import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ScrollView;
import androidx.annotation.ah;

/* loaded from: /home/user/work/dex/classes.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    private View f1409a;
    private j b;
    private ScrollView c;
    private final int[] d = new int[2];
    private final int[] e = new int[2];
    private final ViewTreeObserver.OnScrollChangedListener f = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.google.android.material.t.h.1
        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            h.this.a();
        }
    };

    public h(View view, j jVar, ScrollView scrollView) {
        this.f1409a = view;
        this.b = jVar;
        this.c = scrollView;
    }

    public void a(j jVar) {
        this.b = jVar;
    }

    public void a(ScrollView scrollView) {
        this.c = scrollView;
    }

    public void a(@ah ViewTreeObserver viewTreeObserver) {
        viewTreeObserver.addOnScrollChangedListener(this.f);
    }

    public void b(@ah ViewTreeObserver viewTreeObserver) {
        viewTreeObserver.removeOnScrollChangedListener(this.f);
    }

    public void a() {
        if (this.c == null) {
            return;
        }
        if (this.c.getChildCount() == 0) {
            throw new IllegalStateException("Scroll bar must contain a child to calculate interpolation.");
        }
        this.c.getLocationInWindow(this.d);
        this.c.getChildAt(0).getLocationInWindow(this.e);
        int top = (this.f1409a.getTop() - this.d[1]) + this.e[1];
        int height = this.f1409a.getHeight();
        int height2 = this.c.getHeight();
        if (top < 0) {
            this.b.p(Math.max(0.0f, Math.min(1.0f, (top / height) + 1.0f)));
            this.f1409a.invalidate();
            return;
        }
        if (top + height > height2) {
            this.b.p(Math.max(0.0f, Math.min(1.0f, 1.0f - ((r0 - height2) / height))));
            this.f1409a.invalidate();
        } else if (this.b.ae() != 1.0f) {
            this.b.p(1.0f);
            this.f1409a.invalidate();
        }
    }
}
