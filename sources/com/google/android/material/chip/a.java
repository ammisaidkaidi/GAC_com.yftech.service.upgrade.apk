package com.google.android.material.chip;

import android.R;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ak;
import androidx.annotation.as;
import androidx.annotation.at;
import androidx.annotation.az;
import androidx.annotation.f;
import androidx.annotation.k;
import androidx.annotation.m;
import androidx.annotation.o;
import androidx.appcompat.widget.ActivityChooserView;
import androidx.core.graphics.drawable.e;
import androidx.core.n.af;
import com.google.android.material.a;
import com.google.android.material.a.h;
import com.google.android.material.internal.q;
import com.google.android.material.internal.s;
import com.google.android.material.q.c;
import com.google.android.material.q.d;
import com.google.android.material.r.b;
import com.google.android.material.t.j;
import java.lang.ref.WeakReference;
import java.util.Arrays;

/* loaded from: /home/user/work/dex/classes.dex */
public class a extends j implements Drawable.Callback, e, q.a {
    private static final boolean d = false;
    private static final String f = "http://schemas.android.com/apk/res-auto";
    private boolean A;
    private boolean B;

    @ai
    private Drawable C;

    @ai
    private ColorStateList D;

    @ai
    private h E;

    @ai
    private h F;
    private float G;
    private float H;
    private float I;
    private float J;
    private float K;
    private float L;
    private float M;
    private float N;

    @ah
    private final Context O;
    private final Paint P;

    @ai
    private final Paint Q;
    private final Paint.FontMetrics R;
    private final RectF S;
    private final PointF T;
    private final Path U;

    @ah
    private final q V;

    @k
    private int W;

    @k
    private int X;

    @k
    private int Y;

    @k
    private int Z;

    @k
    private int aa;

    @k
    private int ab;
    private boolean ac;

    @k
    private int ad;
    private int ae;

    @ai
    private ColorFilter af;

    @ai
    private PorterDuffColorFilter ag;

    @ai
    private ColorStateList ah;

    @ai
    private PorterDuff.Mode ai;
    private int[] aj;
    private boolean ak;

    @ai
    private ColorStateList al;

    @ah
    private WeakReference<InterfaceC0085a> am;
    private TextUtils.TruncateAt an;
    private boolean ao;
    private int ap;
    private boolean aq;

    @ai
    private ColorStateList h;

    @ai
    private ColorStateList i;
    private float j;
    private float k;

    @ai
    private ColorStateList l;
    private float m;

    @ai
    private ColorStateList n;

    @ai
    private CharSequence o;
    private boolean p;

    @ai
    private Drawable q;

    @ai
    private ColorStateList r;
    private float s;
    private boolean t;
    private boolean u;

    @ai
    private Drawable v;

    @ai
    private Drawable w;

    @ai
    private ColorStateList x;
    private float y;

    @ai
    private CharSequence z;
    private static final int[] e = {R.attr.state_enabled};
    private static final ShapeDrawable g = new ShapeDrawable(new OvalShape());

    /* renamed from: com.google.android.material.chip.a$a, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface InterfaceC0085a {
        void a();
    }

    @Override // com.google.android.material.t.j, android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @ah
    public static a a(@ah Context context, @ai AttributeSet attributeSet, @f int i, @at int i2) {
        a aVar = new a(context, attributeSet, i, i2);
        aVar.a(attributeSet, i, i2);
        return aVar;
    }

    @ah
    public static a a(@ah Context context, @az int i) {
        AttributeSet a2 = com.google.android.material.j.a.a(context, i, "chip");
        int styleAttribute = a2.getStyleAttribute();
        if (styleAttribute == 0) {
            styleAttribute = a.n.Widget_MaterialComponents_Chip_Entry;
        }
        return a(context, a2, a.c.chipStandaloneStyle, styleAttribute);
    }

    private a(@ah Context context, AttributeSet attributeSet, @f int i, @at int i2) {
        super(context, attributeSet, i, i2);
        this.k = -1.0f;
        this.P = new Paint(1);
        this.R = new Paint.FontMetrics();
        this.S = new RectF();
        this.T = new PointF();
        this.U = new Path();
        this.ae = 255;
        this.ai = PorterDuff.Mode.SRC_IN;
        this.am = new WeakReference<>(null);
        b(context);
        this.O = context;
        this.V = new q(this);
        this.o = com.yftech.service.upgrade.a.d;
        this.V.a().density = context.getResources().getDisplayMetrics().density;
        this.Q = null;
        if (this.Q != null) {
            this.Q.setStyle(Paint.Style.STROKE);
        }
        setState(e);
        a(e);
        this.ao = true;
        if (b.f1376a) {
            g.setTint(-1);
        }
    }

    private void a(@ai AttributeSet attributeSet, @f int i, @at int i2) {
        TypedArray a2 = s.a(this.O, attributeSet, a.o.Chip, i, i2, new int[0]);
        this.aq = a2.hasValue(a.o.Chip_shapeAppearance);
        k(c.a(this.O, a2, a.o.Chip_chipSurfaceColor));
        a(c.a(this.O, a2, a.o.Chip_chipBackgroundColor));
        a(a2.getDimension(a.o.Chip_chipMinHeight, 0.0f));
        if (a2.hasValue(a.o.Chip_chipCornerRadius)) {
            b(a2.getDimension(a.o.Chip_chipCornerRadius, 0.0f));
        }
        b(c.a(this.O, a2, a.o.Chip_chipStrokeColor));
        c(a2.getDimension(a.o.Chip_chipStrokeWidth, 0.0f));
        c(c.a(this.O, a2, a.o.Chip_rippleColor));
        a(a2.getText(a.o.Chip_android_text));
        a(c.c(this.O, a2, a.o.Chip_android_textAppearance));
        switch (a2.getInt(a.o.Chip_android_ellipsize, 0)) {
            case 1:
                a(TextUtils.TruncateAt.START);
                break;
            case 2:
                a(TextUtils.TruncateAt.MIDDLE);
                break;
            case 3:
                a(TextUtils.TruncateAt.END);
                break;
        }
        b(a2.getBoolean(a.o.Chip_chipIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue(f, "chipIconEnabled") != null && attributeSet.getAttributeValue(f, "chipIconVisible") == null) {
            b(a2.getBoolean(a.o.Chip_chipIconEnabled, false));
        }
        a(c.b(this.O, a2, a.o.Chip_chipIcon));
        if (a2.hasValue(a.o.Chip_chipIconTint)) {
            d(c.a(this.O, a2, a.o.Chip_chipIconTint));
        }
        d(a2.getDimension(a.o.Chip_chipIconSize, 0.0f));
        d(a2.getBoolean(a.o.Chip_closeIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue(f, "closeIconEnabled") != null && attributeSet.getAttributeValue(f, "closeIconVisible") == null) {
            d(a2.getBoolean(a.o.Chip_closeIconEnabled, false));
        }
        b(c.b(this.O, a2, a.o.Chip_closeIcon));
        e(c.a(this.O, a2, a.o.Chip_closeIconTint));
        e(a2.getDimension(a.o.Chip_closeIconSize, 0.0f));
        f(a2.getBoolean(a.o.Chip_android_checkable, false));
        g(a2.getBoolean(a.o.Chip_checkedIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue(f, "checkedIconEnabled") != null && attributeSet.getAttributeValue(f, "checkedIconVisible") == null) {
            g(a2.getBoolean(a.o.Chip_checkedIconEnabled, false));
        }
        c(c.b(this.O, a2, a.o.Chip_checkedIcon));
        if (a2.hasValue(a.o.Chip_checkedIconTint)) {
            f(c.a(this.O, a2, a.o.Chip_checkedIconTint));
        }
        a(h.a(this.O, a2, a.o.Chip_showMotionSpec));
        b(h.a(this.O, a2, a.o.Chip_hideMotionSpec));
        f(a2.getDimension(a.o.Chip_chipStartPadding, 0.0f));
        g(a2.getDimension(a.o.Chip_iconStartPadding, 0.0f));
        h(a2.getDimension(a.o.Chip_iconEndPadding, 0.0f));
        i(a2.getDimension(a.o.Chip_textStartPadding, 0.0f));
        j(a2.getDimension(a.o.Chip_textEndPadding, 0.0f));
        k(a2.getDimension(a.o.Chip_closeIconStartPadding, 0.0f));
        l(a2.getDimension(a.o.Chip_closeIconEndPadding, 0.0f));
        m(a2.getDimension(a.o.Chip_chipEndPadding, 0.0f));
        H(a2.getDimensionPixelSize(a.o.Chip_android_maxWidth, ActivityChooserView.a.f166a));
        a2.recycle();
    }

    public void a(boolean z) {
        if (this.ak != z) {
            this.ak = z;
            aD();
            onStateChange(getState());
        }
    }

    public boolean a() {
        return this.ak;
    }

    public void a(@ai InterfaceC0085a interfaceC0085a) {
        this.am = new WeakReference<>(interfaceC0085a);
    }

    protected void b() {
        InterfaceC0085a interfaceC0085a = this.am.get();
        if (interfaceC0085a != null) {
            interfaceC0085a.a();
        }
    }

    public void a(@ah RectF rectF) {
        d(getBounds(), rectF);
    }

    public void b(@ah RectF rectF) {
        e(getBounds(), rectF);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return Math.min(Math.round(this.G + c() + this.J + this.V.a(o().toString()) + this.K + d() + this.N), this.ap);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) this.j;
    }

    private boolean ax() {
        return this.p && this.q != null;
    }

    private boolean ay() {
        return this.B && this.C != null && this.ac;
    }

    private boolean az() {
        return this.u && this.v != null;
    }

    private boolean aA() {
        return this.B && this.C != null && this.A;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float c() {
        if (ax() || ay()) {
            return this.H + this.s + this.I;
        }
        return 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float d() {
        if (az()) {
            return this.L + this.y + this.M;
        }
        return 0.0f;
    }

    boolean e() {
        return this.aq;
    }

    @Override // com.google.android.material.t.j, android.graphics.drawable.Drawable
    public void draw(@ah Canvas canvas) {
        Rect bounds = getBounds();
        if (bounds.isEmpty() || getAlpha() == 0) {
            return;
        }
        int a2 = this.ae < 255 ? com.google.android.material.d.a.a(canvas, bounds.left, bounds.top, bounds.right, bounds.bottom, this.ae) : 0;
        a(canvas, bounds);
        b(canvas, bounds);
        if (this.aq) {
            super.draw(canvas);
        }
        c(canvas, bounds);
        d(canvas, bounds);
        e(canvas, bounds);
        f(canvas, bounds);
        if (this.ao) {
            g(canvas, bounds);
        }
        h(canvas, bounds);
        i(canvas, bounds);
        if (this.ae < 255) {
            canvas.restoreToCount(a2);
        }
    }

    private void a(@ah Canvas canvas, @ah Rect rect) {
        if (this.aq) {
            return;
        }
        this.P.setColor(this.W);
        this.P.setStyle(Paint.Style.FILL);
        this.S.set(rect);
        canvas.drawRoundRect(this.S, k(), k(), this.P);
    }

    private void b(@ah Canvas canvas, @ah Rect rect) {
        if (this.aq) {
            return;
        }
        this.P.setColor(this.X);
        this.P.setStyle(Paint.Style.FILL);
        this.P.setColorFilter(aC());
        this.S.set(rect);
        canvas.drawRoundRect(this.S, k(), k(), this.P);
    }

    private void c(@ah Canvas canvas, @ah Rect rect) {
        if (this.m <= 0.0f || this.aq) {
            return;
        }
        this.P.setColor(this.Z);
        this.P.setStyle(Paint.Style.STROKE);
        if (!this.aq) {
            this.P.setColorFilter(aC());
        }
        this.S.set(rect.left + (this.m / 2.0f), rect.top + (this.m / 2.0f), rect.right - (this.m / 2.0f), rect.bottom - (this.m / 2.0f));
        float f2 = this.k - (this.m / 2.0f);
        canvas.drawRoundRect(this.S, f2, f2, this.P);
    }

    private void d(@ah Canvas canvas, @ah Rect rect) {
        this.P.setColor(this.aa);
        this.P.setStyle(Paint.Style.FILL);
        this.S.set(rect);
        if (!this.aq) {
            canvas.drawRoundRect(this.S, k(), k(), this.P);
        } else {
            a(new RectF(rect), this.U);
            super.a(canvas, this.P, this.U, Z());
        }
    }

    private void e(@ah Canvas canvas, @ah Rect rect) {
        if (ax()) {
            a(rect, this.S);
            float f2 = this.S.left;
            float f3 = this.S.top;
            canvas.translate(f2, f3);
            this.q.setBounds(0, 0, (int) this.S.width(), (int) this.S.height());
            this.q.draw(canvas);
            canvas.translate(-f2, -f3);
        }
    }

    private void f(@ah Canvas canvas, @ah Rect rect) {
        if (ay()) {
            a(rect, this.S);
            float f2 = this.S.left;
            float f3 = this.S.top;
            canvas.translate(f2, f3);
            this.C.setBounds(0, 0, (int) this.S.width(), (int) this.S.height());
            this.C.draw(canvas);
            canvas.translate(-f2, -f3);
        }
    }

    private void g(@ah Canvas canvas, @ah Rect rect) {
        if (this.o != null) {
            Paint.Align a2 = a(rect, this.T);
            b(rect, this.S);
            if (this.V.c() != null) {
                this.V.a().drawableState = getState();
                this.V.a(this.O);
            }
            this.V.a().setTextAlign(a2);
            int i = 0;
            boolean z = Math.round(this.V.a(o().toString())) > Math.round(this.S.width());
            if (z) {
                i = canvas.save();
                canvas.clipRect(this.S);
            }
            CharSequence charSequence = this.o;
            if (z && this.an != null) {
                charSequence = TextUtils.ellipsize(this.o, this.V.a(), this.S.width(), this.an);
            }
            CharSequence charSequence2 = charSequence;
            canvas.drawText(charSequence2, 0, charSequence2.length(), this.T.x, this.T.y, this.V.a());
            if (z) {
                canvas.restoreToCount(i);
            }
        }
    }

    private void h(@ah Canvas canvas, @ah Rect rect) {
        if (az()) {
            c(rect, this.S);
            float f2 = this.S.left;
            float f3 = this.S.top;
            canvas.translate(f2, f3);
            this.v.setBounds(0, 0, (int) this.S.width(), (int) this.S.height());
            if (b.f1376a) {
                this.w.setBounds(this.v.getBounds());
                this.w.jumpToCurrentState();
                this.w.draw(canvas);
            } else {
                this.v.draw(canvas);
            }
            canvas.translate(-f2, -f3);
        }
    }

    private void i(@ah Canvas canvas, @ah Rect rect) {
        if (this.Q != null) {
            this.Q.setColor(androidx.core.graphics.e.c(af.s, 127));
            canvas.drawRect(rect, this.Q);
            if (ax() || ay()) {
                a(rect, this.S);
                canvas.drawRect(this.S, this.Q);
            }
            if (this.o != null) {
                canvas.drawLine(rect.left, rect.exactCenterY(), rect.right, rect.exactCenterY(), this.Q);
            }
            if (az()) {
                c(rect, this.S);
                canvas.drawRect(this.S, this.Q);
            }
            this.Q.setColor(androidx.core.graphics.e.c(androidx.core.e.a.a.f, 127));
            d(rect, this.S);
            canvas.drawRect(this.S, this.Q);
            this.Q.setColor(androidx.core.graphics.e.c(-16711936, 127));
            e(rect, this.S);
            canvas.drawRect(this.S, this.Q);
        }
    }

    private void a(@ah Rect rect, @ah RectF rectF) {
        rectF.setEmpty();
        if (ax() || ay()) {
            float f2 = this.G + this.H;
            if (androidx.core.graphics.drawable.a.i(this) == 0) {
                rectF.left = rect.left + f2;
                rectF.right = rectF.left + this.s;
            } else {
                rectF.right = rect.right - f2;
                rectF.left = rectF.right - this.s;
            }
            rectF.top = rect.exactCenterY() - (this.s / 2.0f);
            rectF.bottom = rectF.top + this.s;
        }
    }

    @ah
    Paint.Align a(@ah Rect rect, @ah PointF pointF) {
        pointF.set(0.0f, 0.0f);
        Paint.Align align = Paint.Align.LEFT;
        if (this.o != null) {
            float c = this.G + c() + this.J;
            if (androidx.core.graphics.drawable.a.i(this) == 0) {
                pointF.x = rect.left + c;
                align = Paint.Align.LEFT;
            } else {
                pointF.x = rect.right - c;
                align = Paint.Align.RIGHT;
            }
            pointF.y = rect.centerY() - aB();
        }
        return align;
    }

    private float aB() {
        this.V.a().getFontMetrics(this.R);
        return (this.R.descent + this.R.ascent) / 2.0f;
    }

    private void b(@ah Rect rect, @ah RectF rectF) {
        rectF.setEmpty();
        if (this.o != null) {
            float c = this.G + c() + this.J;
            float d2 = this.N + d() + this.K;
            if (androidx.core.graphics.drawable.a.i(this) == 0) {
                rectF.left = rect.left + c;
                rectF.right = rect.right - d2;
            } else {
                rectF.left = rect.left + d2;
                rectF.right = rect.right - c;
            }
            rectF.top = rect.top;
            rectF.bottom = rect.bottom;
        }
    }

    private void c(@ah Rect rect, @ah RectF rectF) {
        rectF.setEmpty();
        if (az()) {
            float f2 = this.N + this.M;
            if (androidx.core.graphics.drawable.a.i(this) == 0) {
                rectF.right = rect.right - f2;
                rectF.left = rectF.right - this.y;
            } else {
                rectF.left = rect.left + f2;
                rectF.right = rectF.left + this.y;
            }
            rectF.top = rect.exactCenterY() - (this.y / 2.0f);
            rectF.bottom = rectF.top + this.y;
        }
    }

    private void d(@ah Rect rect, @ah RectF rectF) {
        rectF.set(rect);
        if (az()) {
            float f2 = this.N + this.M + this.y + this.L + this.K;
            if (androidx.core.graphics.drawable.a.i(this) == 0) {
                rectF.right = rect.right - f2;
            } else {
                rectF.left = rect.left + f2;
            }
        }
    }

    private void e(@ah Rect rect, @ah RectF rectF) {
        rectF.setEmpty();
        if (az()) {
            float f2 = this.N + this.M + this.y + this.L + this.K;
            if (androidx.core.graphics.drawable.a.i(this) == 0) {
                rectF.right = rect.right;
                rectF.left = rectF.right - f2;
            } else {
                rectF.left = rect.left;
                rectF.right = rect.left + f2;
            }
            rectF.top = rect.top;
            rectF.bottom = rect.bottom;
        }
    }

    @Override // com.google.android.material.t.j, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return j(this.h) || j(this.i) || j(this.l) || (this.ak && j(this.al)) || b(this.V.c()) || aA() || d(this.q) || d(this.C) || j(this.ah);
    }

    public boolean f() {
        return d(this.v);
    }

    public boolean a(@ah int[] iArr) {
        if (Arrays.equals(this.aj, iArr)) {
            return false;
        }
        this.aj = iArr;
        if (az()) {
            return a(getState(), iArr);
        }
        return false;
    }

    @ah
    public int[] g() {
        return this.aj;
    }

    @Override // com.google.android.material.internal.q.a
    public void i() {
        b();
        invalidateSelf();
    }

    @Override // com.google.android.material.t.j, android.graphics.drawable.Drawable, com.google.android.material.internal.q.a
    public boolean onStateChange(@ah int[] iArr) {
        if (this.aq) {
            super.onStateChange(iArr);
        }
        return a(iArr, g());
    }

    private boolean a(@ah int[] iArr, @ah int[] iArr2) {
        boolean z;
        boolean onStateChange = super.onStateChange(iArr);
        int colorForState = this.h != null ? this.h.getColorForState(iArr, this.W) : 0;
        if (this.W != colorForState) {
            this.W = colorForState;
            onStateChange = true;
        }
        int colorForState2 = this.i != null ? this.i.getColorForState(iArr, this.X) : 0;
        if (this.X != colorForState2) {
            this.X = colorForState2;
            onStateChange = true;
        }
        int a2 = com.google.android.material.h.a.a(colorForState, colorForState2);
        if ((this.Y != a2) | (U() == null)) {
            this.Y = a2;
            g(ColorStateList.valueOf(this.Y));
            onStateChange = true;
        }
        int colorForState3 = this.l != null ? this.l.getColorForState(iArr, this.Z) : 0;
        if (this.Z != colorForState3) {
            this.Z = colorForState3;
            onStateChange = true;
        }
        int colorForState4 = (this.al == null || !b.a(iArr)) ? 0 : this.al.getColorForState(iArr, this.aa);
        if (this.aa != colorForState4) {
            this.aa = colorForState4;
            if (this.ak) {
                onStateChange = true;
            }
        }
        int colorForState5 = (this.V.c() == null || this.V.c().b == null) ? 0 : this.V.c().b.getColorForState(iArr, this.ab);
        if (this.ab != colorForState5) {
            this.ab = colorForState5;
            onStateChange = true;
        }
        boolean z2 = a(getState(), R.attr.state_checked) && this.A;
        if (this.ac == z2 || this.C == null) {
            z = false;
        } else {
            float c = c();
            this.ac = z2;
            if (c != c()) {
                onStateChange = true;
                z = true;
            } else {
                z = false;
                onStateChange = true;
            }
        }
        int colorForState6 = this.ah != null ? this.ah.getColorForState(iArr, this.ad) : 0;
        if (this.ad != colorForState6) {
            this.ad = colorForState6;
            this.ag = com.google.android.material.j.a.a(this, this.ah, this.ai);
            onStateChange = true;
        }
        if (d(this.q)) {
            onStateChange |= this.q.setState(iArr);
        }
        if (d(this.C)) {
            onStateChange |= this.C.setState(iArr);
        }
        if (d(this.v)) {
            int[] iArr3 = new int[iArr.length + iArr2.length];
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            System.arraycopy(iArr2, 0, iArr3, iArr.length, iArr2.length);
            onStateChange |= this.v.setState(iArr3);
        }
        if (b.f1376a && d(this.w)) {
            onStateChange |= this.w.setState(iArr2);
        }
        if (onStateChange) {
            invalidateSelf();
        }
        if (z) {
            b();
        }
        return onStateChange;
    }

    private static boolean j(@ai ColorStateList colorStateList) {
        return colorStateList != null && colorStateList.isStateful();
    }

    private static boolean d(@ai Drawable drawable) {
        return drawable != null && drawable.isStateful();
    }

    private static boolean b(@ai d dVar) {
        return (dVar == null || dVar.b == null || !dVar.b.isStateful()) ? false : true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i) {
        boolean onLayoutDirectionChanged = super.onLayoutDirectionChanged(i);
        if (ax()) {
            onLayoutDirectionChanged |= androidx.core.graphics.drawable.a.b(this.q, i);
        }
        if (ay()) {
            onLayoutDirectionChanged |= androidx.core.graphics.drawable.a.b(this.C, i);
        }
        if (az()) {
            onLayoutDirectionChanged |= androidx.core.graphics.drawable.a.b(this.v, i);
        }
        if (!onLayoutDirectionChanged) {
            return true;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        boolean onLevelChange = super.onLevelChange(i);
        if (ax()) {
            onLevelChange |= this.q.setLevel(i);
        }
        if (ay()) {
            onLevelChange |= this.C.setLevel(i);
        }
        if (az()) {
            onLevelChange |= this.v.setLevel(i);
        }
        if (onLevelChange) {
            invalidateSelf();
        }
        return onLevelChange;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        if (ax()) {
            visible |= this.q.setVisible(z, z2);
        }
        if (ay()) {
            visible |= this.C.setVisible(z, z2);
        }
        if (az()) {
            visible |= this.v.setVisible(z, z2);
        }
        if (visible) {
            invalidateSelf();
        }
        return visible;
    }

    @Override // com.google.android.material.t.j, android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.ae != i) {
            this.ae = i;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.ae;
    }

    @Override // com.google.android.material.t.j, android.graphics.drawable.Drawable
    public void setColorFilter(@ai ColorFilter colorFilter) {
        if (this.af != colorFilter) {
            this.af = colorFilter;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    @ai
    public ColorFilter getColorFilter() {
        return this.af;
    }

    @Override // com.google.android.material.t.j, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.e
    public void setTintList(@ai ColorStateList colorStateList) {
        if (this.ah != colorStateList) {
            this.ah = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // com.google.android.material.t.j, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.e
    public void setTintMode(@ah PorterDuff.Mode mode) {
        if (this.ai != mode) {
            this.ai = mode;
            this.ag = com.google.android.material.j.a.a(this, this.ah, mode);
            invalidateSelf();
        }
    }

    @Override // com.google.android.material.t.j, android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(@ah Outline outline) {
        if (this.aq) {
            super.getOutline(outline);
            return;
        }
        Rect bounds = getBounds();
        if (!bounds.isEmpty()) {
            outline.setRoundRect(bounds, this.k);
        } else {
            outline.setRoundRect(0, 0, getIntrinsicWidth(), getIntrinsicHeight(), this.k);
        }
        outline.setAlpha(getAlpha() / 255.0f);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@ah Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(@ah Drawable drawable, @ah Runnable runnable, long j) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(@ah Drawable drawable, @ah Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    private void e(@ai Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    private void f(@ai Drawable drawable) {
        if (drawable == null) {
            return;
        }
        drawable.setCallback(this);
        androidx.core.graphics.drawable.a.b(drawable, androidx.core.graphics.drawable.a.i(this));
        drawable.setLevel(getLevel());
        drawable.setVisible(isVisible(), false);
        if (drawable == this.v) {
            if (drawable.isStateful()) {
                drawable.setState(g());
            }
            androidx.core.graphics.drawable.a.a(drawable, this.x);
        } else {
            if (drawable.isStateful()) {
                drawable.setState(getState());
            }
            if (drawable == this.q && this.t) {
                androidx.core.graphics.drawable.a.a(this.q, this.r);
            }
        }
    }

    @ai
    private ColorFilter aC() {
        return this.af != null ? this.af : this.ag;
    }

    private void aD() {
        this.al = this.ak ? b.b(this.n) : null;
    }

    private void k(@ai ColorStateList colorStateList) {
        if (this.h != colorStateList) {
            this.h = colorStateList;
            onStateChange(getState());
        }
    }

    private static boolean a(@ai int[] iArr, @f int i) {
        if (iArr == null) {
            return false;
        }
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    @ai
    public ColorStateList h() {
        return this.i;
    }

    public void a(@m int i) {
        a(androidx.appcompat.a.a.a.a(this.O, i));
    }

    public void a(@ai ColorStateList colorStateList) {
        if (this.i != colorStateList) {
            this.i = colorStateList;
            onStateChange(getState());
        }
    }

    public float j() {
        return this.j;
    }

    public void b(@o int i) {
        a(this.O.getResources().getDimension(i));
    }

    public void a(float f2) {
        if (this.j != f2) {
            this.j = f2;
            invalidateSelf();
            b();
        }
    }

    public float k() {
        return this.aq ? as() : this.k;
    }

    @Deprecated
    public void c(@o int i) {
        b(this.O.getResources().getDimension(i));
    }

    @Deprecated
    public void b(float f2) {
        if (this.k != f2) {
            this.k = f2;
            setShapeAppearanceModel(getShapeAppearanceModel().a(f2));
        }
    }

    @ai
    public ColorStateList l() {
        return this.l;
    }

    public void d(@m int i) {
        b(androidx.appcompat.a.a.a.a(this.O, i));
    }

    public void b(@ai ColorStateList colorStateList) {
        if (this.l != colorStateList) {
            this.l = colorStateList;
            if (this.aq) {
                h(colorStateList);
            }
            onStateChange(getState());
        }
    }

    public float m() {
        return this.m;
    }

    public void e(@o int i) {
        c(this.O.getResources().getDimension(i));
    }

    public void c(float f2) {
        if (this.m != f2) {
            this.m = f2;
            this.P.setStrokeWidth(f2);
            if (this.aq) {
                super.n(f2);
            }
            invalidateSelf();
        }
    }

    @ai
    public ColorStateList n() {
        return this.n;
    }

    public void f(@m int i) {
        c(androidx.appcompat.a.a.a.a(this.O, i));
    }

    public void c(@ai ColorStateList colorStateList) {
        if (this.n != colorStateList) {
            this.n = colorStateList;
            aD();
            onStateChange(getState());
        }
    }

    @ai
    public CharSequence o() {
        return this.o;
    }

    public void g(@as int i) {
        a(this.O.getResources().getString(i));
    }

    public void a(@ai CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = com.yftech.service.upgrade.a.d;
        }
        if (TextUtils.equals(this.o, charSequence)) {
            return;
        }
        this.o = charSequence;
        this.V.a(true);
        invalidateSelf();
        b();
    }

    @ai
    public d p() {
        return this.V.c();
    }

    public void h(@at int i) {
        a(new d(this.O, i));
    }

    public void a(@ai d dVar) {
        this.V.a(dVar, this.O);
    }

    public TextUtils.TruncateAt q() {
        return this.an;
    }

    public void a(@ai TextUtils.TruncateAt truncateAt) {
        this.an = truncateAt;
    }

    public boolean r() {
        return this.p;
    }

    @Deprecated
    public boolean s() {
        return r();
    }

    public void i(@androidx.annotation.h int i) {
        b(this.O.getResources().getBoolean(i));
    }

    public void b(boolean z) {
        if (this.p != z) {
            boolean ax = ax();
            this.p = z;
            boolean ax2 = ax();
            if (ax != ax2) {
                if (ax2) {
                    f(this.q);
                } else {
                    e(this.q);
                }
                invalidateSelf();
                b();
            }
        }
    }

    @Deprecated
    public void j(@androidx.annotation.h int i) {
        i(i);
    }

    @Deprecated
    public void c(boolean z) {
        b(z);
    }

    @ai
    public Drawable t() {
        if (this.q != null) {
            return androidx.core.graphics.drawable.a.h(this.q);
        }
        return null;
    }

    public void k(@androidx.annotation.q int i) {
        a(androidx.appcompat.a.a.a.b(this.O, i));
    }

    public void a(@ai Drawable drawable) {
        Drawable t = t();
        if (t != drawable) {
            float c = c();
            this.q = drawable != null ? androidx.core.graphics.drawable.a.g(drawable).mutate() : null;
            float c2 = c();
            e(t);
            if (ax()) {
                f(this.q);
            }
            invalidateSelf();
            if (c != c2) {
                b();
            }
        }
    }

    @ai
    public ColorStateList u() {
        return this.r;
    }

    public void l(@m int i) {
        d(androidx.appcompat.a.a.a.a(this.O, i));
    }

    public void d(@ai ColorStateList colorStateList) {
        this.t = true;
        if (this.r != colorStateList) {
            this.r = colorStateList;
            if (ax()) {
                androidx.core.graphics.drawable.a.a(this.q, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public float v() {
        return this.s;
    }

    public void m(@o int i) {
        d(this.O.getResources().getDimension(i));
    }

    public void d(float f2) {
        if (this.s != f2) {
            float c = c();
            this.s = f2;
            float c2 = c();
            invalidateSelf();
            if (c != c2) {
                b();
            }
        }
    }

    public boolean w() {
        return this.u;
    }

    @Deprecated
    public boolean x() {
        return w();
    }

    public void n(@androidx.annotation.h int i) {
        d(this.O.getResources().getBoolean(i));
    }

    public void d(boolean z) {
        if (this.u != z) {
            boolean az = az();
            this.u = z;
            boolean az2 = az();
            if (az != az2) {
                if (az2) {
                    f(this.v);
                } else {
                    e(this.v);
                }
                invalidateSelf();
                b();
            }
        }
    }

    @Deprecated
    public void o(@androidx.annotation.h int i) {
        n(i);
    }

    @Deprecated
    public void e(boolean z) {
        d(z);
    }

    @ai
    public Drawable y() {
        if (this.v != null) {
            return androidx.core.graphics.drawable.a.h(this.v);
        }
        return null;
    }

    public void p(@androidx.annotation.q int i) {
        b(androidx.appcompat.a.a.a.b(this.O, i));
    }

    public void b(@ai Drawable drawable) {
        Drawable y = y();
        if (y != drawable) {
            float d2 = d();
            this.v = drawable != null ? androidx.core.graphics.drawable.a.g(drawable).mutate() : null;
            if (b.f1376a) {
                aE();
            }
            float d3 = d();
            e(y);
            if (az()) {
                f(this.v);
            }
            invalidateSelf();
            if (d2 != d3) {
                b();
            }
        }
    }

    @TargetApi(21)
    private void aE() {
        this.w = new RippleDrawable(b.b(n()), this.v, g);
    }

    @ai
    public ColorStateList z() {
        return this.x;
    }

    public void q(@m int i) {
        e(androidx.appcompat.a.a.a.a(this.O, i));
    }

    public void e(@ai ColorStateList colorStateList) {
        if (this.x != colorStateList) {
            this.x = colorStateList;
            if (az()) {
                androidx.core.graphics.drawable.a.a(this.v, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public float A() {
        return this.y;
    }

    public void r(@o int i) {
        e(this.O.getResources().getDimension(i));
    }

    public void e(float f2) {
        if (this.y != f2) {
            this.y = f2;
            invalidateSelf();
            if (az()) {
                b();
            }
        }
    }

    public void b(@ai CharSequence charSequence) {
        if (this.z != charSequence) {
            this.z = androidx.core.l.a.a().b(charSequence);
            invalidateSelf();
        }
    }

    @ai
    public CharSequence B() {
        return this.z;
    }

    public boolean C() {
        return this.A;
    }

    public void s(@androidx.annotation.h int i) {
        f(this.O.getResources().getBoolean(i));
    }

    public void f(boolean z) {
        if (this.A != z) {
            this.A = z;
            float c = c();
            if (!z && this.ac) {
                this.ac = false;
            }
            float c2 = c();
            invalidateSelf();
            if (c != c2) {
                b();
            }
        }
    }

    public boolean D() {
        return this.B;
    }

    @Deprecated
    public boolean E() {
        return D();
    }

    public void t(@androidx.annotation.h int i) {
        g(this.O.getResources().getBoolean(i));
    }

    public void g(boolean z) {
        if (this.B != z) {
            boolean ay = ay();
            this.B = z;
            boolean ay2 = ay();
            if (ay != ay2) {
                if (ay2) {
                    f(this.C);
                } else {
                    e(this.C);
                }
                invalidateSelf();
                b();
            }
        }
    }

    @Deprecated
    public void u(@androidx.annotation.h int i) {
        g(this.O.getResources().getBoolean(i));
    }

    @Deprecated
    public void h(boolean z) {
        g(z);
    }

    @ai
    public Drawable F() {
        return this.C;
    }

    public void v(@androidx.annotation.q int i) {
        c(androidx.appcompat.a.a.a.b(this.O, i));
    }

    public void c(@ai Drawable drawable) {
        if (this.C != drawable) {
            float c = c();
            this.C = drawable;
            float c2 = c();
            e(this.C);
            f(this.C);
            invalidateSelf();
            if (c != c2) {
                b();
            }
        }
    }

    @ai
    public ColorStateList G() {
        return this.D;
    }

    public void w(@m int i) {
        f(androidx.appcompat.a.a.a.a(this.O, i));
    }

    public void f(@ai ColorStateList colorStateList) {
        if (this.D != colorStateList) {
            this.D = colorStateList;
            if (aA()) {
                androidx.core.graphics.drawable.a.a(this.C, colorStateList);
            }
            onStateChange(getState());
        }
    }

    @ai
    public h H() {
        return this.E;
    }

    public void x(@androidx.annotation.b int i) {
        a(h.a(this.O, i));
    }

    public void a(@ai h hVar) {
        this.E = hVar;
    }

    @ai
    public h I() {
        return this.F;
    }

    public void y(@androidx.annotation.b int i) {
        b(h.a(this.O, i));
    }

    public void b(@ai h hVar) {
        this.F = hVar;
    }

    public float J() {
        return this.G;
    }

    public void z(@o int i) {
        f(this.O.getResources().getDimension(i));
    }

    public void f(float f2) {
        if (this.G != f2) {
            this.G = f2;
            invalidateSelf();
            b();
        }
    }

    public float K() {
        return this.H;
    }

    public void A(@o int i) {
        g(this.O.getResources().getDimension(i));
    }

    public void g(float f2) {
        if (this.H != f2) {
            float c = c();
            this.H = f2;
            float c2 = c();
            invalidateSelf();
            if (c != c2) {
                b();
            }
        }
    }

    public float L() {
        return this.I;
    }

    public void B(@o int i) {
        h(this.O.getResources().getDimension(i));
    }

    public void h(float f2) {
        if (this.I != f2) {
            float c = c();
            this.I = f2;
            float c2 = c();
            invalidateSelf();
            if (c != c2) {
                b();
            }
        }
    }

    public float M() {
        return this.J;
    }

    public void C(@o int i) {
        i(this.O.getResources().getDimension(i));
    }

    public void i(float f2) {
        if (this.J != f2) {
            this.J = f2;
            invalidateSelf();
            b();
        }
    }

    public float N() {
        return this.K;
    }

    public void D(@o int i) {
        j(this.O.getResources().getDimension(i));
    }

    public void j(float f2) {
        if (this.K != f2) {
            this.K = f2;
            invalidateSelf();
            b();
        }
    }

    public float O() {
        return this.L;
    }

    public void E(@o int i) {
        k(this.O.getResources().getDimension(i));
    }

    public void k(float f2) {
        if (this.L != f2) {
            this.L = f2;
            invalidateSelf();
            if (az()) {
                b();
            }
        }
    }

    public float P() {
        return this.M;
    }

    public void F(@o int i) {
        l(this.O.getResources().getDimension(i));
    }

    public void l(float f2) {
        if (this.M != f2) {
            this.M = f2;
            invalidateSelf();
            if (az()) {
                b();
            }
        }
    }

    public float Q() {
        return this.N;
    }

    public void G(@o int i) {
        m(this.O.getResources().getDimension(i));
    }

    public void m(float f2) {
        if (this.N != f2) {
            this.N = f2;
            invalidateSelf();
            b();
        }
    }

    @ak
    public int R() {
        return this.ap;
    }

    public void H(@ak int i) {
        this.ap = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean S() {
        return this.ao;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i(boolean z) {
        this.ao = z;
    }
}
