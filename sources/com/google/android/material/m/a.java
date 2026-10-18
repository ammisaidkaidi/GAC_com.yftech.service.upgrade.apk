package com.google.android.material.m;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.m;
import androidx.appcompat.widget.p;
import com.google.android.material.a;
import com.google.android.material.q.c;
import com.google.android.material.t.j;
import com.google.android.material.t.o;
import com.google.android.material.t.s;

/* loaded from: /home/user/work/dex/classes.dex */
public class a extends p implements s {

    /* renamed from: a, reason: collision with root package name */
    private static final int f1362a = a.n.Widget_MaterialComponents_ShapeableImageView;
    private final com.google.android.material.t.p b;
    private final RectF c;
    private final RectF d;
    private final Paint e;
    private final Paint f;
    private final Path g;
    private ColorStateList h;
    private o i;

    @androidx.annotation.p
    private float j;
    private Path k;
    private final j l;

    public a(Context context) {
        this(context, null, 0);
    }

    public a(Context context, @ai AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public a(Context context, @ai AttributeSet attributeSet, int i) {
        super(com.google.android.material.theme.a.a.a(context, attributeSet, i, f1362a), attributeSet, i);
        this.b = new com.google.android.material.t.p();
        this.g = new Path();
        Context context2 = getContext();
        this.f = new Paint();
        this.f.setAntiAlias(true);
        this.f.setColor(-1);
        this.f.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        this.c = new RectF();
        this.d = new RectF();
        this.k = new Path();
        this.h = c.a(context2, context2.obtainStyledAttributes(attributeSet, a.o.ShapeableImageView, i, f1362a), a.o.ShapeableImageView_strokeColor);
        this.j = r0.getDimensionPixelSize(a.o.ShapeableImageView_strokeWidth, 0);
        this.e = new Paint();
        this.e.setStyle(Paint.Style.STROKE);
        this.e.setAntiAlias(true);
        this.i = o.a(context2, attributeSet, i, f1362a).a();
        this.l = new j(this.i);
        if (Build.VERSION.SDK_INT >= 21) {
            setOutlineProvider(new C0090a());
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        setLayerType(0, null);
        super.onDetachedFromWindow();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        setLayerType(2, null);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawPath(this.k, this.f);
        a(canvas);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        a(i, i2);
    }

    @Override // com.google.android.material.t.s
    public void setShapeAppearanceModel(@ah o oVar) {
        this.i = oVar;
        this.l.setShapeAppearanceModel(oVar);
        a(getWidth(), getHeight());
        invalidate();
    }

    @Override // com.google.android.material.t.s
    @ah
    public o getShapeAppearanceModel() {
        return this.i;
    }

    private void a(int i, int i2) {
        this.c.set(getPaddingLeft(), getPaddingTop(), i - getPaddingRight(), i2 - getPaddingBottom());
        this.b.a(this.i, 1.0f, this.c, this.g);
        this.k.rewind();
        this.k.addPath(this.g);
        this.d.set(0.0f, 0.0f, i, i2);
        this.k.addRect(this.d, Path.Direction.CCW);
    }

    private void a(Canvas canvas) {
        if (this.h == null) {
            return;
        }
        this.e.setStrokeWidth(this.j);
        int colorForState = this.h.getColorForState(getDrawableState(), this.h.getDefaultColor());
        if (this.j <= 0.0f || colorForState == 0) {
            return;
        }
        this.e.setColor(colorForState);
        canvas.drawPath(this.g, this.e);
    }

    public void setStrokeColorResource(@m int i) {
        setStrokeColor(androidx.appcompat.a.a.a.a(getContext(), i));
    }

    @ai
    public ColorStateList getStrokeColor() {
        return this.h;
    }

    public void setStrokeWidth(@androidx.annotation.p float f) {
        if (this.j != f) {
            this.j = f;
            invalidate();
        }
    }

    public void setStrokeWidthResource(@androidx.annotation.o int i) {
        setStrokeWidth(getResources().getDimensionPixelSize(i));
    }

    @androidx.annotation.p
    public float getStrokeWidth() {
        return this.j;
    }

    public void setStrokeColor(@ai ColorStateList colorStateList) {
        this.h = colorStateList;
        invalidate();
    }

    @TargetApi(21)
    /* renamed from: com.google.android.material.m.a$a, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    class C0090a extends ViewOutlineProvider {
        private final Rect b = new Rect();

        C0090a() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            if (a.this.i == null) {
                return;
            }
            a.this.c.round(this.b);
            a.this.l.setBounds(this.b);
            a.this.l.getOutline(outline);
        }
    }
}
