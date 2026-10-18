package com.google.android.material.button;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import androidx.core.n.af;
import com.google.android.material.a;
import com.google.android.material.internal.z;
import com.google.android.material.q.c;
import com.google.android.material.t.j;
import com.google.android.material.t.o;
import com.google.android.material.t.s;

/* JADX INFO: Access modifiers changed from: package-private */
@ap(a = {ap.a.LIBRARY_GROUP})
/* loaded from: /home/user/work/dex/classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static final boolean f1211a;
    private final MaterialButton b;

    @ah
    private o c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;
    private int i;

    @ai
    private PorterDuff.Mode j;

    @ai
    private ColorStateList k;

    @ai
    private ColorStateList l;

    @ai
    private ColorStateList m;

    @ai
    private Drawable n;
    private boolean o = false;
    private boolean p = false;
    private boolean q = false;
    private boolean r;
    private LayerDrawable s;

    static {
        f1211a = Build.VERSION.SDK_INT >= 21;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(MaterialButton materialButton, @ah o oVar) {
        this.b = materialButton;
        this.c = oVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@ah TypedArray typedArray) {
        this.d = typedArray.getDimensionPixelOffset(a.o.MaterialButton_android_insetLeft, 0);
        this.e = typedArray.getDimensionPixelOffset(a.o.MaterialButton_android_insetRight, 0);
        this.f = typedArray.getDimensionPixelOffset(a.o.MaterialButton_android_insetTop, 0);
        this.g = typedArray.getDimensionPixelOffset(a.o.MaterialButton_android_insetBottom, 0);
        if (typedArray.hasValue(a.o.MaterialButton_cornerRadius)) {
            this.h = typedArray.getDimensionPixelSize(a.o.MaterialButton_cornerRadius, -1);
            a(this.c.a(this.h));
            this.q = true;
        }
        this.i = typedArray.getDimensionPixelSize(a.o.MaterialButton_strokeWidth, 0);
        this.j = z.a(typedArray.getInt(a.o.MaterialButton_backgroundTintMode, -1), PorterDuff.Mode.SRC_IN);
        this.k = c.a(this.b.getContext(), typedArray, a.o.MaterialButton_backgroundTint);
        this.l = c.a(this.b.getContext(), typedArray, a.o.MaterialButton_strokeColor);
        this.m = c.a(this.b.getContext(), typedArray, a.o.MaterialButton_rippleColor);
        this.r = typedArray.getBoolean(a.o.MaterialButton_android_checkable, false);
        int dimensionPixelSize = typedArray.getDimensionPixelSize(a.o.MaterialButton_elevation, 0);
        int w = af.w(this.b);
        int paddingTop = this.b.getPaddingTop();
        int x = af.x(this.b);
        int paddingBottom = this.b.getPaddingBottom();
        if (typedArray.hasValue(a.o.MaterialButton_android_background)) {
            a();
        } else {
            this.b.setInternalBackground(m());
            j i = i();
            if (i != null) {
                i.r(dimensionPixelSize);
            }
        }
        af.b(this.b, w + this.d, paddingTop + this.f, x + this.e, paddingBottom + this.g);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.p = true;
        this.b.setSupportBackgroundTintList(this.k);
        this.b.setSupportBackgroundTintMode(this.j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b() {
        return this.p;
    }

    @ah
    private InsetDrawable a(Drawable drawable) {
        return new InsetDrawable(drawable, this.d, this.f, this.e, this.g);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@ai ColorStateList colorStateList) {
        if (this.k != colorStateList) {
            this.k = colorStateList;
            if (i() != null) {
                androidx.core.graphics.drawable.a.a(i(), this.k);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ColorStateList c() {
        return this.k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@ai PorterDuff.Mode mode) {
        if (this.j != mode) {
            this.j = mode;
            if (i() == null || this.j == null) {
                return;
            }
            androidx.core.graphics.drawable.a.a(i(), this.j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PorterDuff.Mode d() {
        return this.j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
        this.o = z;
        n();
    }

    private Drawable m() {
        j jVar = new j(this.c);
        jVar.b(this.b.getContext());
        androidx.core.graphics.drawable.a.a(jVar, this.k);
        if (this.j != null) {
            androidx.core.graphics.drawable.a.a(jVar, this.j);
        }
        jVar.a(this.i, this.l);
        j jVar2 = new j(this.c);
        jVar2.setTint(0);
        jVar2.a(this.i, this.o ? com.google.android.material.h.a.a(this.b, a.c.colorSurface) : 0);
        if (f1211a) {
            this.n = new j(this.c);
            androidx.core.graphics.drawable.a.a(this.n, -1);
            this.s = new RippleDrawable(com.google.android.material.r.b.b(this.m), a(new LayerDrawable(new Drawable[]{jVar2, jVar})), this.n);
            return this.s;
        }
        this.n = new com.google.android.material.r.a(this.c);
        androidx.core.graphics.drawable.a.a(this.n, com.google.android.material.r.b.b(this.m));
        this.s = new LayerDrawable(new Drawable[]{jVar2, jVar, this.n});
        return a(this.s);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, int i2) {
        if (this.n != null) {
            this.n.setBounds(this.d, this.f, i2 - this.e, i - this.g);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i) {
        if (i() != null) {
            i().setTint(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(@ai ColorStateList colorStateList) {
        if (this.m != colorStateList) {
            this.m = colorStateList;
            if (f1211a && (this.b.getBackground() instanceof RippleDrawable)) {
                ((RippleDrawable) this.b.getBackground()).setColor(com.google.android.material.r.b.b(colorStateList));
            } else {
                if (f1211a || !(this.b.getBackground() instanceof com.google.android.material.r.a)) {
                    return;
                }
                ((com.google.android.material.r.a) this.b.getBackground()).setTintList(com.google.android.material.r.b.b(colorStateList));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ai
    public ColorStateList e() {
        return this.m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(@ai ColorStateList colorStateList) {
        if (this.l != colorStateList) {
            this.l = colorStateList;
            n();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ai
    public ColorStateList f() {
        return this.l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(int i) {
        if (this.i != i) {
            this.i = i;
            n();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int g() {
        return this.i;
    }

    private void n() {
        j i = i();
        j o = o();
        if (i != null) {
            i.a(this.i, this.l);
            if (o != null) {
                o.a(this.i, this.o ? com.google.android.material.h.a.a(this.b, a.c.colorSurface) : 0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(int i) {
        if (this.q && this.h == i) {
            return;
        }
        this.h = i;
        this.q = true;
        a(this.c.a(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int h() {
        return this.h;
    }

    @ai
    private j c(boolean z) {
        if (this.s == null || this.s.getNumberOfLayers() <= 0) {
            return null;
        }
        if (f1211a) {
            return (j) ((LayerDrawable) ((InsetDrawable) this.s.getDrawable(0)).getDrawable()).getDrawable(!z ? 1 : 0);
        }
        return (j) this.s.getDrawable(!z ? 1 : 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ai
    public j i() {
        return c(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(boolean z) {
        this.r = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean j() {
        return this.r;
    }

    @ai
    private j o() {
        return c(true);
    }

    private void b(@ah o oVar) {
        if (i() != null) {
            i().setShapeAppearanceModel(oVar);
        }
        if (o() != null) {
            o().setShapeAppearanceModel(oVar);
        }
        if (k() != null) {
            k().setShapeAppearanceModel(oVar);
        }
    }

    @ai
    public s k() {
        if (this.s == null || this.s.getNumberOfLayers() <= 1) {
            return null;
        }
        if (this.s.getNumberOfLayers() > 2) {
            return (s) this.s.getDrawable(2);
        }
        return (s) this.s.getDrawable(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@ah o oVar) {
        this.c = oVar;
        b(oVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ah
    public o l() {
        return this.c;
    }
}
