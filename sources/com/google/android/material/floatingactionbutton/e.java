package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.Property;
import android.view.View;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.am;
import androidx.core.m.i;
import com.google.android.material.a;
import com.google.android.material.t.j;
import com.google.android.material.t.o;
import java.util.ArrayList;

@am(a = 21)
/* loaded from: /home/user/work/dex/classes.dex */
class e extends d {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.floatingactionbutton.d
    public void j() {
    }

    @Override // com.google.android.material.floatingactionbutton.d
    boolean s() {
        return false;
    }

    @Override // com.google.android.material.floatingactionbutton.d
    void x() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(FloatingActionButton floatingActionButton, com.google.android.material.s.c cVar) {
        super(floatingActionButton, cVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.floatingactionbutton.d
    public void a(ColorStateList colorStateList, @ai PorterDuff.Mode mode, ColorStateList colorStateList2, int i) {
        Drawable drawable;
        this.i = u();
        this.i.setTintList(colorStateList);
        if (mode != null) {
            this.i.setTintMode(mode);
        }
        this.i.b(this.y.getContext());
        if (i > 0) {
            this.k = a(i, colorStateList);
            drawable = new LayerDrawable(new Drawable[]{(Drawable) i.a(this.k), (Drawable) i.a(this.i)});
        } else {
            this.k = null;
            drawable = this.i;
        }
        this.j = new RippleDrawable(com.google.android.material.r.b.b(colorStateList2), drawable, null);
        this.l = this.j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.floatingactionbutton.d
    public void b(@ai ColorStateList colorStateList) {
        if (this.j instanceof RippleDrawable) {
            ((RippleDrawable) this.j).setColor(com.google.android.material.r.b.b(colorStateList));
        } else {
            super.b(colorStateList);
        }
    }

    @Override // com.google.android.material.floatingactionbutton.d
    void a(float f, float f2, float f3) {
        if (Build.VERSION.SDK_INT == 21) {
            this.y.refreshDrawableState();
        } else {
            StateListAnimator stateListAnimator = new StateListAnimator();
            stateListAnimator.addState(s, a(f, f3));
            stateListAnimator.addState(t, a(f, f2));
            stateListAnimator.addState(u, a(f, f2));
            stateListAnimator.addState(v, a(f, f2));
            AnimatorSet animatorSet = new AnimatorSet();
            ArrayList arrayList = new ArrayList();
            arrayList.add(ObjectAnimator.ofFloat(this.y, "elevation", f).setDuration(0L));
            if (Build.VERSION.SDK_INT >= 22 && Build.VERSION.SDK_INT <= 24) {
                arrayList.add(ObjectAnimator.ofFloat(this.y, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, this.y.getTranslationZ()).setDuration(100L));
            }
            arrayList.add(ObjectAnimator.ofFloat(this.y, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, 0.0f).setDuration(100L));
            animatorSet.playSequentially((Animator[]) arrayList.toArray(new Animator[0]));
            animatorSet.setInterpolator(f1299a);
            stateListAnimator.addState(w, animatorSet);
            stateListAnimator.addState(x, a(0.0f, 0.0f));
            this.y.setStateListAnimator(stateListAnimator);
        }
        if (p()) {
            o();
        }
    }

    @ah
    private Animator a(float f, float f2) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ObjectAnimator.ofFloat(this.y, "elevation", f).setDuration(0L)).with(ObjectAnimator.ofFloat(this.y, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, f2).setDuration(100L));
        animatorSet.setInterpolator(f1299a);
        return animatorSet;
    }

    @Override // com.google.android.material.floatingactionbutton.d
    public float a() {
        return this.y.getElevation();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.floatingactionbutton.d
    public void n() {
        o();
    }

    @Override // com.google.android.material.floatingactionbutton.d
    boolean p() {
        return this.z.b() || !h();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.floatingactionbutton.d
    public void a(int[] iArr) {
        if (Build.VERSION.SDK_INT == 21) {
            if (this.y.isEnabled()) {
                this.y.setElevation(this.o);
                if (this.y.isPressed()) {
                    this.y.setTranslationZ(this.q);
                    return;
                } else if (this.y.isFocused() || this.y.isHovered()) {
                    this.y.setTranslationZ(this.p);
                    return;
                } else {
                    this.y.setTranslationZ(0.0f);
                    return;
                }
            }
            this.y.setElevation(0.0f);
            this.y.setTranslationZ(0.0f);
        }
    }

    @ah
    c a(int i, ColorStateList colorStateList) {
        Context context = this.y.getContext();
        c cVar = new c((o) i.a(this.h));
        cVar.a(androidx.core.b.c.c(context, a.e.design_fab_stroke_top_outer_color), androidx.core.b.c.c(context, a.e.design_fab_stroke_top_inner_color), androidx.core.b.c.c(context, a.e.design_fab_stroke_end_inner_color), androidx.core.b.c.c(context, a.e.design_fab_stroke_end_outer_color));
        cVar.a(i);
        cVar.a(colorStateList);
        return cVar;
    }

    @Override // com.google.android.material.floatingactionbutton.d
    @ah
    j u() {
        return new a((o) i.a(this.h));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.floatingactionbutton.d
    public void a(@ah Rect rect) {
        if (this.z.b()) {
            super.a(rect);
        } else if (!h()) {
            int sizeDimension = (this.r - this.y.getSizeDimension()) / 2;
            rect.set(sizeDimension, sizeDimension, sizeDimension, sizeDimension);
        } else {
            rect.set(0, 0, 0, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a extends j {
        @Override // com.google.android.material.t.j, android.graphics.drawable.Drawable
        public boolean isStateful() {
            return true;
        }

        a(o oVar) {
            super(oVar);
        }
    }
}
