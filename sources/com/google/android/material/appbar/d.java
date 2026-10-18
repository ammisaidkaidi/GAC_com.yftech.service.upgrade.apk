package com.google.android.material.appbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.ah;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* loaded from: /home/user/work/dex/classes.dex */
class d<V extends View> extends CoordinatorLayout.b<V> {

    /* renamed from: a, reason: collision with root package name */
    private e f1171a;
    private int b;
    private int c;

    public d() {
        this.b = 0;
        this.c = 0;
    }

    public d(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = 0;
        this.c = 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public boolean a(@ah CoordinatorLayout coordinatorLayout, @ah V v, int i) {
        b(coordinatorLayout, (CoordinatorLayout) v, i);
        if (this.f1171a == null) {
            this.f1171a = new e(v);
        }
        this.f1171a.a();
        this.f1171a.b();
        if (this.b != 0) {
            this.f1171a.a(this.b);
            this.b = 0;
        }
        if (this.c == 0) {
            return true;
        }
        this.f1171a.b(this.c);
        this.c = 0;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(@ah CoordinatorLayout coordinatorLayout, @ah V v, int i) {
        coordinatorLayout.b(v, i);
    }

    public boolean b(int i) {
        if (this.f1171a != null) {
            return this.f1171a.a(i);
        }
        this.b = i;
        return false;
    }

    public boolean a(int i) {
        if (this.f1171a != null) {
            return this.f1171a.b(i);
        }
        this.c = i;
        return false;
    }

    public int g() {
        if (this.f1171a != null) {
            return this.f1171a.c();
        }
        return 0;
    }

    public int f() {
        if (this.f1171a != null) {
            return this.f1171a.d();
        }
        return 0;
    }

    public void b(boolean z) {
        if (this.f1171a != null) {
            this.f1171a.a(z);
        }
    }

    public boolean e() {
        return this.f1171a != null && this.f1171a.g();
    }

    public void a(boolean z) {
        if (this.f1171a != null) {
            this.f1171a.b(z);
        }
    }

    public boolean d() {
        return this.f1171a != null && this.f1171a.h();
    }
}
