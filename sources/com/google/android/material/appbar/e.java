package com.google.android.material.appbar;

import android.view.View;
import androidx.core.n.af;

/* loaded from: /home/user/work/dex/classes.dex */
class e {

    /* renamed from: a, reason: collision with root package name */
    private final View f1172a;
    private int b;
    private int c;
    private int d;
    private int e;
    private boolean f = true;
    private boolean g = true;

    public e(View view) {
        this.f1172a = view;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.b = this.f1172a.getTop();
        this.c = this.f1172a.getLeft();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        af.n(this.f1172a, this.d - (this.f1172a.getTop() - this.b));
        af.o(this.f1172a, this.e - (this.f1172a.getLeft() - this.c));
    }

    public boolean a(int i) {
        if (!this.f || this.d == i) {
            return false;
        }
        this.d = i;
        b();
        return true;
    }

    public boolean b(int i) {
        if (!this.g || this.e == i) {
            return false;
        }
        this.e = i;
        b();
        return true;
    }

    public int c() {
        return this.d;
    }

    public int d() {
        return this.e;
    }

    public int e() {
        return this.b;
    }

    public int f() {
        return this.c;
    }

    public void a(boolean z) {
        this.f = z;
    }

    public boolean g() {
        return this.f;
    }

    public void b(boolean z) {
        this.g = z;
    }

    public boolean h() {
        return this.g;
    }
}
