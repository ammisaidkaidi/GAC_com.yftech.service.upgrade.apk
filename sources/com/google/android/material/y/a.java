package com.google.android.material.y;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ak;
import androidx.annotation.ap;
import androidx.annotation.as;
import androidx.annotation.at;
import androidx.annotation.f;
import androidx.core.graphics.e;
import com.google.android.material.a;
import com.google.android.material.internal.q;
import com.google.android.material.internal.s;
import com.google.android.material.q.c;
import com.google.android.material.q.d;
import com.google.android.material.t.g;
import com.google.android.material.t.i;
import com.google.android.material.t.j;
import com.google.android.material.t.l;

@ap(a = {ap.a.LIBRARY_GROUP})
/* loaded from: /home/user/work/dex/classes.dex */
public class a extends j implements q.a {

    @at
    private static final int d = a.n.Widget_MaterialComponents_Tooltip;

    @f
    private static final int e = a.c.tooltipStyle;

    @ai
    private CharSequence f;

    @ah
    private final Context g;

    @ai
    private final Paint.FontMetrics h;

    @ah
    private final q i;

    @ah
    private final View.OnLayoutChangeListener j;

    @ah
    private final Rect k;
    private int l;
    private int m;
    private int n;
    private int o;
    private int p;
    private int q;

    @ah
    public static a a(@ah Context context, @ai AttributeSet attributeSet, @f int i, @at int i2) {
        a aVar = new a(context, attributeSet, i, i2);
        aVar.a(attributeSet, i, i2);
        return aVar;
    }

    @ah
    public static a a(@ah Context context, @ai AttributeSet attributeSet) {
        return a(context, attributeSet, e, d);
    }

    @ah
    public static a c(@ah Context context) {
        return a(context, (AttributeSet) null, e, d);
    }

    private a(@ah Context context, AttributeSet attributeSet, @f int i, @at int i2) {
        super(context, attributeSet, i, i2);
        this.h = new Paint.FontMetrics();
        this.i = new q(this);
        this.j = new View.OnLayoutChangeListener() { // from class: com.google.android.material.y.a.1
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
                a.this.c(view);
            }
        };
        this.k = new Rect();
        this.g = context;
        this.i.a().density = context.getResources().getDisplayMetrics().density;
        this.i.a().setTextAlign(Paint.Align.CENTER);
    }

    private void a(@ai AttributeSet attributeSet, @f int i, @at int i2) {
        TypedArray a2 = s.a(this.g, attributeSet, a.o.Tooltip, i, i2, new int[0]);
        this.p = this.g.getResources().getDimensionPixelSize(a.f.mtrl_tooltip_arrowSize);
        setShapeAppearanceModel(getShapeAppearanceModel().n().e(h()).a());
        a(a2.getText(a.o.Tooltip_android_text));
        a(c.c(this.g, a2, a.o.Tooltip_android_textAppearance));
        g(ColorStateList.valueOf(a2.getColor(a.o.Tooltip_backgroundTint, com.google.android.material.h.a.a(e.c(com.google.android.material.h.a.a(this.g, R.attr.colorBackground, a.class.getCanonicalName()), 229), e.c(com.google.android.material.h.a.a(this.g, a.c.colorOnBackground, a.class.getCanonicalName()), 153)))));
        h(ColorStateList.valueOf(com.google.android.material.h.a.a(this.g, a.c.colorSurface, a.class.getCanonicalName())));
        this.l = a2.getDimensionPixelSize(a.o.Tooltip_android_padding, 0);
        this.m = a2.getDimensionPixelSize(a.o.Tooltip_android_minWidth, 0);
        this.n = a2.getDimensionPixelSize(a.o.Tooltip_android_minHeight, 0);
        this.o = a2.getDimensionPixelSize(a.o.Tooltip_android_layout_margin, 0);
        a2.recycle();
    }

    @ai
    public CharSequence a() {
        return this.f;
    }

    public void a(@as int i) {
        a(this.g.getResources().getString(i));
    }

    public void a(@ai CharSequence charSequence) {
        if (TextUtils.equals(this.f, charSequence)) {
            return;
        }
        this.f = charSequence;
        this.i.a(true);
        invalidateSelf();
    }

    @ai
    public d b() {
        return this.i.c();
    }

    public void b(@at int i) {
        a(new d(this.g, i));
    }

    public void a(@ai d dVar) {
        this.i.a(dVar, this.g);
    }

    public int c() {
        return this.m;
    }

    public void c(@ak int i) {
        this.m = i;
        invalidateSelf();
    }

    public int d() {
        return this.n;
    }

    public void d(@ak int i) {
        this.n = i;
        invalidateSelf();
    }

    public int e() {
        return this.l;
    }

    public void e(@ak int i) {
        this.l = i;
        invalidateSelf();
    }

    public int f() {
        return this.o;
    }

    public void f(@ak int i) {
        this.o = i;
        invalidateSelf();
    }

    public void a(@ai View view) {
        if (view == null) {
            return;
        }
        c(view);
        view.addOnLayoutChangeListener(this.j);
    }

    public void b(@ai View view) {
        if (view == null) {
            return;
        }
        view.removeOnLayoutChangeListener(this.j);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return (int) Math.max((this.l * 2) + j(), this.m);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) Math.max(this.i.a().getTextSize(), this.n);
    }

    @Override // com.google.android.material.t.j, android.graphics.drawable.Drawable
    public void draw(@ah Canvas canvas) {
        canvas.save();
        canvas.translate(g(), (float) (-((this.p * Math.sqrt(2.0d)) - this.p)));
        super.draw(canvas);
        a(canvas);
        canvas.restore();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.material.t.j, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        setShapeAppearanceModel(getShapeAppearanceModel().n().e(h()).a());
    }

    @Override // com.google.android.material.t.j, android.graphics.drawable.Drawable, com.google.android.material.internal.q.a
    public boolean onStateChange(int[] iArr) {
        return super.onStateChange(iArr);
    }

    @Override // com.google.android.material.internal.q.a
    public void i() {
        invalidateSelf();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(@ah View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        this.q = iArr[0];
        view.getWindowVisibleDisplayFrame(this.k);
    }

    private float g() {
        if (((this.k.right - getBounds().right) - this.q) - this.o < 0) {
            return ((this.k.right - getBounds().right) - this.q) - this.o;
        }
        if (((this.k.left - getBounds().left) - this.q) + this.o > 0) {
            return ((this.k.left - getBounds().left) - this.q) + this.o;
        }
        return 0.0f;
    }

    private g h() {
        float f = -g();
        float width = ((float) (getBounds().width() - (this.p * Math.sqrt(2.0d)))) / 2.0f;
        return new l(new i(this.p), Math.min(Math.max(f, -width), width));
    }

    private void a(@ah Canvas canvas) {
        if (this.f == null) {
            return;
        }
        int a2 = (int) a(getBounds());
        if (this.i.c() != null) {
            this.i.a().drawableState = getState();
            this.i.a(this.g);
        }
        canvas.drawText(this.f, 0, this.f.length(), r0.centerX(), a2, this.i.a());
    }

    private float j() {
        if (this.f == null) {
            return 0.0f;
        }
        return this.i.a(this.f.toString());
    }

    private float a(@ah Rect rect) {
        return rect.centerY() - k();
    }

    private float k() {
        this.i.a().getFontMetrics(this.h);
        return (this.h.descent + this.h.ascent) / 2.0f;
    }
}
