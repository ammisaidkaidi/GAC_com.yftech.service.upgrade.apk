package com.google.android.material.r;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import androidx.annotation.k;
import androidx.core.graphics.drawable.e;
import com.google.android.material.t.j;
import com.google.android.material.t.o;
import com.google.android.material.t.s;

@ap(a = {ap.a.LIBRARY_GROUP})
/* loaded from: /home/user/work/dex/classes.dex */
public class a extends Drawable implements e, s {

    /* renamed from: a, reason: collision with root package name */
    private C0093a f1374a;

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    public a(o oVar) {
        this(new C0093a(new j(oVar)));
    }

    private a(C0093a c0093a) {
        this.f1374a = c0093a;
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.e
    public void setTint(@k int i) {
        this.f1374a.f1375a.setTint(i);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.e
    public void setTintMode(@ai PorterDuff.Mode mode) {
        this.f1374a.f1375a.setTintMode(mode);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.e
    public void setTintList(@ai ColorStateList colorStateList) {
        this.f1374a.f1375a.setTintList(colorStateList);
    }

    @Override // com.google.android.material.t.s
    public void setShapeAppearanceModel(@ah o oVar) {
        this.f1374a.f1375a.setShapeAppearanceModel(oVar);
    }

    @Override // com.google.android.material.t.s
    @ah
    public o getShapeAppearanceModel() {
        return this.f1374a.f1375a.getShapeAppearanceModel();
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(@ah int[] iArr) {
        boolean onStateChange = super.onStateChange(iArr);
        if (this.f1374a.f1375a.setState(iArr)) {
            onStateChange = true;
        }
        boolean a2 = b.a(iArr);
        if (this.f1374a.b == a2) {
            return onStateChange;
        }
        this.f1374a.b = a2;
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f1374a.b) {
            this.f1374a.f1375a.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(@ah Rect rect) {
        super.onBoundsChange(rect);
        this.f1374a.f1375a.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable
    @ai
    public Drawable.ConstantState getConstantState() {
        return this.f1374a;
    }

    @Override // android.graphics.drawable.Drawable
    @ah
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public a mutate() {
        this.f1374a = new C0093a(this.f1374a);
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f1374a.f1375a.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@ai ColorFilter colorFilter) {
        this.f1374a.f1375a.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f1374a.f1375a.getOpacity();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.r.a$a, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class C0093a extends Drawable.ConstantState {

        /* renamed from: a, reason: collision with root package name */
        @ah
        j f1375a;
        boolean b;

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        public C0093a(j jVar) {
            this.f1375a = jVar;
            this.b = false;
        }

        public C0093a(@ah C0093a c0093a) {
            this.f1375a = (j) c0093a.f1375a.getConstantState().newDrawable();
            this.b = c0093a.b;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @ah
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public a newDrawable() {
            return new a(new C0093a(this));
        }
    }
}
