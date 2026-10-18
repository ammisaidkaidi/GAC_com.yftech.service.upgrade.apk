package com.google.android.material.z.a;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.am;

@am(a = 21)
/* loaded from: /home/user/work/dex/classes.dex */
public final class s implements w {

    /* renamed from: a, reason: collision with root package name */
    private float f1533a;
    private float b;
    private float c;
    private float d;
    private boolean e;
    private boolean f;

    public s() {
        this(true);
    }

    public s(boolean z) {
        this.f1533a = 1.0f;
        this.b = 1.1f;
        this.c = 0.8f;
        this.d = 1.0f;
        this.f = true;
        this.e = z;
    }

    public boolean a() {
        return this.e;
    }

    public void a(boolean z) {
        this.e = z;
    }

    public boolean b() {
        return this.f;
    }

    public void b(boolean z) {
        this.f = z;
    }

    public float c() {
        return this.f1533a;
    }

    public void a(float f) {
        this.f1533a = f;
    }

    public float d() {
        return this.b;
    }

    public void b(float f) {
        this.b = f;
    }

    public float e() {
        return this.c;
    }

    public void c(float f) {
        this.c = f;
    }

    public float f() {
        return this.d;
    }

    public void d(float f) {
        this.d = f;
    }

    @Override // com.google.android.material.z.a.w
    @ai
    public Animator a(@ah ViewGroup viewGroup, @ah View view) {
        if (this.e) {
            return a(view, this.c, this.d);
        }
        return a(view, this.b, this.f1533a);
    }

    @Override // com.google.android.material.z.a.w
    @ai
    public Animator b(@ah ViewGroup viewGroup, @ah View view) {
        if (!this.f) {
            return null;
        }
        if (this.e) {
            return a(view, this.f1533a, this.b);
        }
        return a(view, this.d, this.c);
    }

    private static Animator a(View view, float f, float f2) {
        return ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat((Property<?, Float>) View.SCALE_X, f, f2), PropertyValuesHolder.ofFloat((Property<?, Float>) View.SCALE_Y, f, f2));
    }
}
