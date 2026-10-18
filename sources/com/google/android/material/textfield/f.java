package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.os.Build;
import android.text.TextUtils;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.at;
import androidx.annotation.k;
import androidx.appcompat.widget.aa;
import androidx.core.n.af;
import androidx.core.widget.m;
import com.google.android.material.a;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    static final int f1461a = 0;
    static final int b = 1;
    static final int c = 2;
    private static final int d = 217;
    private static final int e = 167;
    private static final int f = 0;
    private static final int g = 1;
    private static final int h = 2;

    @ai
    private TextView A;
    private int B;

    @ai
    private ColorStateList C;
    private Typeface D;
    private final Context i;

    @ah
    private final TextInputLayout j;
    private LinearLayout k;
    private int l;
    private FrameLayout m;
    private int n;

    @ai
    private Animator o;
    private final float p;
    private int q;
    private int r;

    @ai
    private CharSequence s;
    private boolean t;

    @ai
    private TextView u;

    @ai
    private CharSequence v;
    private int w;

    @ai
    private ColorStateList x;
    private CharSequence y;
    private boolean z;

    boolean a(int i) {
        return i == 0 || i == 1;
    }

    public f(@ah TextInputLayout textInputLayout) {
        this.i = textInputLayout.getContext();
        this.j = textInputLayout;
        this.p = this.i.getResources().getDimensionPixelSize(a.f.design_textinput_caption_translate_y);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(CharSequence charSequence) {
        c();
        this.y = charSequence;
        this.A.setText(charSequence);
        if (this.q != 2) {
            this.r = 2;
        }
        a(this.q, this.r, a(this.A, charSequence));
    }

    void a() {
        c();
        if (this.q == 2) {
            this.r = 0;
        }
        a(this.q, this.r, a(this.A, (CharSequence) null));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(CharSequence charSequence) {
        c();
        this.s = charSequence;
        this.u.setText(charSequence);
        if (this.q != 1) {
            this.r = 1;
        }
        a(this.q, this.r, a(this.u, charSequence));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        this.s = null;
        c();
        if (this.q == 1) {
            if (this.z && !TextUtils.isEmpty(this.y)) {
                this.r = 2;
            } else {
                this.r = 0;
            }
        }
        a(this.q, this.r, a(this.u, (CharSequence) null));
    }

    private boolean a(@ai TextView textView, @ai CharSequence charSequence) {
        return af.ag(this.j) && this.j.isEnabled() && !(this.r == this.q && textView != null && TextUtils.equals(textView.getText(), charSequence));
    }

    private void a(final int i, final int i2, boolean z) {
        if (i == i2) {
            return;
        }
        if (z) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.o = animatorSet;
            ArrayList arrayList = new ArrayList();
            a(arrayList, this.z, this.A, 2, i, i2);
            a(arrayList, this.t, this.u, 1, i, i2);
            com.google.android.material.a.b.a(animatorSet, arrayList);
            final TextView d2 = d(i);
            final TextView d3 = d(i2);
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.textfield.f.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    f.this.q = i2;
                    f.this.o = null;
                    if (d2 != null) {
                        d2.setVisibility(4);
                        if (i == 1 && f.this.u != null) {
                            f.this.u.setText((CharSequence) null);
                        }
                    }
                    if (d3 != null) {
                        d3.setTranslationY(0.0f);
                        d3.setAlpha(1.0f);
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    if (d3 != null) {
                        d3.setVisibility(0);
                    }
                }
            });
            animatorSet.start();
        } else {
            a(i, i2);
        }
        this.j.f();
        this.j.a(z);
        this.j.p();
    }

    private void a(int i, int i2) {
        TextView d2;
        TextView d3;
        if (i == i2) {
            return;
        }
        if (i2 != 0 && (d3 = d(i2)) != null) {
            d3.setVisibility(0);
            d3.setAlpha(1.0f);
        }
        if (i != 0 && (d2 = d(i)) != null) {
            d2.setVisibility(4);
            if (i == 1) {
                d2.setText((CharSequence) null);
            }
        }
        this.q = i2;
    }

    private void a(@ah List<Animator> list, boolean z, @ai TextView textView, int i, int i2, int i3) {
        if (textView == null || !z) {
            return;
        }
        if (i == i3 || i == i2) {
            list.add(a(textView, i3 == i));
            if (i3 == i) {
                list.add(a(textView));
            }
        }
    }

    private ObjectAnimator a(TextView textView, boolean z) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.ALPHA, z ? 1.0f : 0.0f);
        ofFloat.setDuration(167L);
        ofFloat.setInterpolator(com.google.android.material.a.a.f1146a);
        return ofFloat;
    }

    private ObjectAnimator a(TextView textView) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.TRANSLATION_Y, -this.p, 0.0f);
        ofFloat.setDuration(217L);
        ofFloat.setInterpolator(com.google.android.material.a.a.d);
        return ofFloat;
    }

    void c() {
        if (this.o != null) {
            this.o.cancel();
        }
    }

    @ai
    private TextView d(int i) {
        switch (i) {
            case 1:
                return this.u;
            case 2:
                return this.A;
            default:
                return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        if (r()) {
            af.b(this.k, af.w(this.j.getEditText()), 0, af.x(this.j.getEditText()), 0);
        }
    }

    private boolean r() {
        return (this.k == null || this.j.getEditText() == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(TextView textView, int i) {
        if (this.k == null && this.m == null) {
            this.k = new LinearLayout(this.i);
            this.k.setOrientation(0);
            this.j.addView(this.k, -1, -2);
            this.m = new FrameLayout(this.i);
            this.k.addView(this.m, new LinearLayout.LayoutParams(0, -2, 1.0f));
            if (this.j.getEditText() != null) {
                d();
            }
        }
        if (a(i)) {
            this.m.setVisibility(0);
            this.m.addView(textView);
            this.n++;
        } else {
            this.k.addView(textView, new LinearLayout.LayoutParams(-2, -2));
        }
        this.k.setVisibility(0);
        this.l++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(TextView textView, int i) {
        if (this.k == null) {
            return;
        }
        if (a(i) && this.m != null) {
            this.n--;
            a(this.m, this.n);
            this.m.removeView(textView);
        } else {
            this.k.removeView(textView);
        }
        this.l--;
        a(this.k, this.l);
    }

    private void a(@ah ViewGroup viewGroup, int i) {
        if (i == 0) {
            viewGroup.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
        if (this.t == z) {
            return;
        }
        c();
        if (z) {
            this.u = new aa(this.i);
            this.u.setId(a.h.textinput_error);
            if (Build.VERSION.SDK_INT >= 17) {
                this.u.setTextAlignment(5);
            }
            if (this.D != null) {
                this.u.setTypeface(this.D);
            }
            b(this.w);
            a(this.x);
            c(this.v);
            this.u.setVisibility(4);
            af.j((View) this.u, 1);
            a(this.u, 0);
        } else {
            b();
            b(this.u, 0);
            this.u = null;
            this.j.f();
            this.j.p();
        }
        this.t = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean e() {
        return this.t;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean f() {
        return this.z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(boolean z) {
        if (this.z == z) {
            return;
        }
        c();
        if (z) {
            this.A = new aa(this.i);
            this.A.setId(a.h.textinput_helper_text);
            if (Build.VERSION.SDK_INT >= 17) {
                this.A.setTextAlignment(5);
            }
            if (this.D != null) {
                this.A.setTypeface(this.D);
            }
            this.A.setVisibility(4);
            af.j((View) this.A, 1);
            c(this.B);
            b(this.C);
            a(this.A, 1);
        } else {
            a();
            b(this.A, 1);
            this.A = null;
            this.j.f();
            this.j.p();
        }
        this.z = z;
    }

    boolean g() {
        return e(this.q);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean h() {
        return e(this.r);
    }

    private boolean e(int i) {
        return (i != 1 || this.u == null || TextUtils.isEmpty(this.s)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean i() {
        return f(this.q);
    }

    boolean j() {
        return f(this.r);
    }

    private boolean f(int i) {
        return (i != 2 || this.A == null || TextUtils.isEmpty(this.y)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ai
    public CharSequence k() {
        return this.s;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CharSequence l() {
        return this.y;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Typeface typeface) {
        if (typeface != this.D) {
            this.D = typeface;
            a(this.u, typeface);
            a(this.A, typeface);
        }
    }

    private void a(@ai TextView textView, Typeface typeface) {
        if (textView != null) {
            textView.setTypeface(typeface);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @k
    public int m() {
        if (this.u != null) {
            return this.u.getCurrentTextColor();
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ai
    public ColorStateList n() {
        if (this.u != null) {
            return this.u.getTextColors();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@ai ColorStateList colorStateList) {
        this.x = colorStateList;
        if (this.u == null || colorStateList == null) {
            return;
        }
        this.u.setTextColor(colorStateList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(@at int i) {
        this.w = i;
        if (this.u != null) {
            this.j.a(this.u, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(@ai CharSequence charSequence) {
        this.v = charSequence;
        if (this.u != null) {
            this.u.setContentDescription(charSequence);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ai
    public CharSequence o() {
        return this.v;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @k
    public int p() {
        if (this.A != null) {
            return this.A.getCurrentTextColor();
        }
        return -1;
    }

    @ai
    ColorStateList q() {
        if (this.A != null) {
            return this.A.getTextColors();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(@ai ColorStateList colorStateList) {
        this.C = colorStateList;
        if (this.A == null || colorStateList == null) {
            return;
        }
        this.A.setTextColor(colorStateList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(@at int i) {
        this.B = i;
        if (this.A != null) {
            m.a(this.A, i);
        }
    }
}
