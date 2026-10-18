package com.google.android.material.e;

import android.R;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.util.AttributeSet;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.am;
import androidx.annotation.ap;
import androidx.annotation.at;
import androidx.annotation.k;
import androidx.annotation.p;
import androidx.annotation.r;
import androidx.core.n.af;
import com.google.android.material.a;
import com.google.android.material.q.c;
import com.google.android.material.t.e;
import com.google.android.material.t.f;
import com.google.android.material.t.j;
import com.google.android.material.t.n;
import com.google.android.material.t.o;

/* JADX INFO: Access modifiers changed from: package-private */
@ap(a = {ap.a.LIBRARY_GROUP})
/* loaded from: /home/user/work/dex/classes.dex */
public class b {
    private static final int b = -1;
    private static final float d = 1.5f;
    private static final int e = 2;

    @ah
    private final a f;

    @ah
    private final j h;

    @ah
    private final j i;

    @p
    private final int j;

    @p
    private final int k;

    @p
    private int l;

    @ai
    private Drawable m;

    @ai
    private Drawable n;

    @ai
    private ColorStateList o;

    @ai
    private ColorStateList p;

    @ai
    private o q;

    @ai
    private ColorStateList r;

    @ai
    private Drawable s;

    @ai
    private LayerDrawable t;

    @ai
    private j u;

    @ai
    private j v;
    private boolean x;

    /* renamed from: a, reason: collision with root package name */
    private static final int[] f1280a = {R.attr.state_checked};
    private static final double c = Math.cos(Math.toRadians(45.0d));

    @ah
    private final Rect g = new Rect();
    private boolean w = false;

    public b(@ah a aVar, AttributeSet attributeSet, int i, @at int i2) {
        this.f = aVar;
        this.h = new j(aVar.getContext(), attributeSet, i, i2);
        this.h.b(aVar.getContext());
        this.h.O(-12303292);
        o.a n = this.h.getShapeAppearanceModel().n();
        TypedArray obtainStyledAttributes = aVar.getContext().obtainStyledAttributes(attributeSet, a.o.CardView, i, a.n.CardView);
        if (obtainStyledAttributes.hasValue(a.o.CardView_cardCornerRadius)) {
            n.a(obtainStyledAttributes.getDimension(a.o.CardView_cardCornerRadius, 0.0f));
        }
        this.i = new j();
        a(n.a());
        Resources resources = aVar.getResources();
        this.j = resources.getDimensionPixelSize(a.f.mtrl_card_checked_icon_margin);
        this.k = resources.getDimensionPixelSize(a.f.mtrl_card_checked_icon_size);
        obtainStyledAttributes.recycle();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@ah TypedArray typedArray) {
        this.r = c.a(this.f.getContext(), typedArray, a.o.MaterialCardView_strokeColor);
        if (this.r == null) {
            this.r = ColorStateList.valueOf(-1);
        }
        this.l = typedArray.getDimensionPixelSize(a.o.MaterialCardView_strokeWidth, 0);
        this.x = typedArray.getBoolean(a.o.MaterialCardView_android_checkable, false);
        this.f.setLongClickable(this.x);
        this.p = c.a(this.f.getContext(), typedArray, a.o.MaterialCardView_checkedIconTint);
        a(c.b(this.f.getContext(), typedArray, a.o.MaterialCardView_checkedIcon));
        this.o = c.a(this.f.getContext(), typedArray, a.o.MaterialCardView_rippleColor);
        if (this.o == null) {
            this.o = ColorStateList.valueOf(com.google.android.material.h.a.a(this.f, a.c.colorControlHighlight));
        }
        c(c.a(this.f.getContext(), typedArray, a.o.MaterialCardView_cardForegroundColor));
        F();
        l();
        n();
        this.f.setBackgroundInternal(c(this.h));
        this.m = this.f.isClickable() ? C() : this.i;
        this.f.setForeground(c(this.m));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a() {
        return this.w;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
        this.w = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(ColorStateList colorStateList) {
        if (this.r == colorStateList) {
            return;
        }
        this.r = colorStateList;
        n();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @k
    public int b() {
        if (this.r == null) {
            return -1;
        }
        return this.r.getDefaultColor();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ai
    public ColorStateList c() {
        return this.r;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@p int i) {
        if (i == this.l) {
            return;
        }
        this.l = i;
        n();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @p
    public int d() {
        return this.l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ah
    public j e() {
        return this.h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(ColorStateList colorStateList) {
        this.h.g(colorStateList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ColorStateList f() {
        return this.h.U();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(@ai ColorStateList colorStateList) {
        j jVar = this.i;
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        jVar.g(colorStateList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ColorStateList g() {
        return this.i.U();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, int i2, int i3, int i4) {
        this.g.set(i, i2, i3, i4);
        o();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ah
    public Rect h() {
        return this.g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i() {
        Drawable drawable = this.m;
        this.m = this.f.isClickable() ? C() : this.i;
        if (drawable != this.m) {
            b(this.m);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(float f) {
        a(this.q.a(f));
        this.m.invalidateSelf();
        if (A() || z()) {
            o();
        }
        if (A()) {
            m();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float j() {
        return this.h.as();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(@r(a = 0.0d, b = 1.0d) float f) {
        this.h.p(f);
        if (this.i != null) {
            this.i.p(f);
        }
        if (this.v != null) {
            this.v.p(f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @r(a = c, b = 1.0d)
    public float k() {
        return this.h.ae();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l() {
        this.h.r(this.f.getCardElevation());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m() {
        if (!a()) {
            this.f.setBackgroundInternal(c(this.h));
        }
        this.f.setForeground(c(this.m));
    }

    void n() {
        this.i.a(this.l, this.r);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void o() {
        int B = (int) ((z() || A() ? B() : 0.0f) - y());
        this.f.b(this.g.left + B, this.g.top + B, this.g.right + B, this.g.bottom + B);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(boolean z) {
        this.x = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean p() {
        return this.x;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(@ai ColorStateList colorStateList) {
        this.o = colorStateList;
        F();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(@ai ColorStateList colorStateList) {
        this.p = colorStateList;
        if (this.n != null) {
            androidx.core.graphics.drawable.a.a(this.n, colorStateList);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ai
    public ColorStateList q() {
        return this.p;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ai
    public ColorStateList r() {
        return this.o;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ai
    public Drawable s() {
        return this.n;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@ai Drawable drawable) {
        this.n = drawable;
        if (drawable != null) {
            this.n = androidx.core.graphics.drawable.a.g(drawable.mutate());
            androidx.core.graphics.drawable.a.a(this.n, this.p);
        }
        if (this.t != null) {
            this.t.setDrawableByLayerId(a.h.mtrl_card_checked_layer_id, G());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, int i2) {
        int i3;
        int i4;
        if (this.t != null) {
            int i5 = (i - this.j) - this.k;
            int i6 = (i2 - this.j) - this.k;
            if ((Build.VERSION.SDK_INT < 21) || this.f.getUseCompatPadding()) {
                i6 -= (int) Math.ceil(v() * 2.0f);
                i5 -= (int) Math.ceil(w() * 2.0f);
            }
            int i7 = i6;
            int i8 = this.j;
            if (af.p(this.f) == 1) {
                i4 = i5;
                i3 = i8;
            } else {
                i3 = i5;
                i4 = i8;
            }
            this.t.setLayerInset(2, i3, this.j, i4, i7);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @am(b = 23)
    public void t() {
        if (this.s != null) {
            Rect bounds = this.s.getBounds();
            int i = bounds.bottom;
            this.s.setBounds(bounds.left, bounds.top, bounds.right, i - 1);
            this.s.setBounds(bounds.left, bounds.top, bounds.right, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@ah o oVar) {
        this.q = oVar;
        this.h.setShapeAppearanceModel(oVar);
        this.h.k(!this.h.aw());
        if (this.i != null) {
            this.i.setShapeAppearanceModel(oVar);
        }
        if (this.v != null) {
            this.v.setShapeAppearanceModel(oVar);
        }
        if (this.u != null) {
            this.u.setShapeAppearanceModel(oVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o u() {
        return this.q;
    }

    private void b(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 23 && (this.f.getForeground() instanceof InsetDrawable)) {
            ((InsetDrawable) this.f.getForeground()).setDrawable(drawable);
        } else {
            this.f.setForeground(c(drawable));
        }
    }

    @ah
    private Drawable c(Drawable drawable) {
        int ceil;
        int i;
        if ((Build.VERSION.SDK_INT < 21) || this.f.getUseCompatPadding()) {
            int ceil2 = (int) Math.ceil(v());
            ceil = (int) Math.ceil(w());
            i = ceil2;
        } else {
            ceil = 0;
            i = 0;
        }
        return new InsetDrawable(drawable, ceil, i, ceil, i) { // from class: com.google.android.material.e.b.1
            @Override // android.graphics.drawable.Drawable
            public int getMinimumHeight() {
                return -1;
            }

            @Override // android.graphics.drawable.Drawable
            public int getMinimumWidth() {
                return -1;
            }

            @Override // android.graphics.drawable.InsetDrawable, android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
            public boolean getPadding(Rect rect) {
                return false;
            }
        };
    }

    private float v() {
        return (this.f.getMaxCardElevation() * d) + (A() ? B() : 0.0f);
    }

    private float w() {
        return this.f.getMaxCardElevation() + (A() ? B() : 0.0f);
    }

    private boolean x() {
        return Build.VERSION.SDK_INT >= 21 && this.h.aw();
    }

    private float y() {
        if (!this.f.getPreventCornerOverlap()) {
            return 0.0f;
        }
        if (Build.VERSION.SDK_INT < 21 || this.f.getUseCompatPadding()) {
            return (float) ((1.0d - c) * this.f.getCardViewRadius());
        }
        return 0.0f;
    }

    private boolean z() {
        return this.f.getPreventCornerOverlap() && !x();
    }

    private boolean A() {
        return this.f.getPreventCornerOverlap() && x() && this.f.getUseCompatPadding();
    }

    private float B() {
        return Math.max(Math.max(a(this.q.b(), this.h.as()), a(this.q.c(), this.h.at())), Math.max(a(this.q.d(), this.h.av()), a(this.q.e(), this.h.au())));
    }

    private float a(e eVar, float f) {
        if (eVar instanceof n) {
            return (float) ((1.0d - c) * f);
        }
        if (eVar instanceof f) {
            return f / 2.0f;
        }
        return 0.0f;
    }

    @ah
    private Drawable C() {
        if (this.s == null) {
            this.s = D();
        }
        if (this.t == null) {
            this.t = new LayerDrawable(new Drawable[]{this.s, this.i, G()});
            this.t.setId(2, a.h.mtrl_card_checked_layer_id);
        }
        return this.t;
    }

    @ah
    private Drawable D() {
        if (com.google.android.material.r.b.f1376a) {
            this.v = H();
            return new RippleDrawable(this.o, null, this.v);
        }
        return E();
    }

    @ah
    private Drawable E() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        this.u = H();
        this.u.g(this.o);
        stateListDrawable.addState(new int[]{R.attr.state_pressed}, this.u);
        return stateListDrawable;
    }

    private void F() {
        if (com.google.android.material.r.b.f1376a && this.s != null) {
            ((RippleDrawable) this.s).setColor(this.o);
        } else if (this.u != null) {
            this.u.g(this.o);
        }
    }

    @ah
    private Drawable G() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        if (this.n != null) {
            stateListDrawable.addState(f1280a, this.n);
        }
        return stateListDrawable;
    }

    @ah
    private j H() {
        return new j(this.q);
    }
}
