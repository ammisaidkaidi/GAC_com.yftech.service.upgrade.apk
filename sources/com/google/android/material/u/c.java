package com.google.android.material.u;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.SeekBar;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ax;
import androidx.annotation.k;
import androidx.annotation.o;
import androidx.annotation.p;
import androidx.annotation.z;
import androidx.appcompat.widget.ActivityChooserView;
import androidx.core.n.a.d;
import androidx.core.n.af;
import com.google.android.material.a;
import com.google.android.material.internal.s;
import com.google.android.material.internal.y;
import com.google.android.material.t.j;
import com.google.android.material.u.a;
import com.google.android.material.u.b;
import com.google.android.material.u.c;
import java.math.BigDecimal;
import java.math.MathContext;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public abstract class c<S extends c<S, L, T>, L extends com.google.android.material.u.a<S>, T extends com.google.android.material.u.b<S>> extends View {

    /* renamed from: a, reason: collision with root package name */
    private static final String f1483a = "c";
    private static final String b = "Slider value(%s) must be greater or equal to valueFrom(%s), and lower or equal to valueTo(%s)";
    private static final String c = "Value(%s) must be equal to valueFrom(%s) plus a multiple of stepSize(%s) when using stepSize(%s)";
    private static final String d = "valueFrom(%s) must be smaller than valueTo(%s)";
    private static final String e = "valueTo(%s) must be greater than valueFrom(%s)";
    private static final String f = "The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range";
    private static final String g = "Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the  value correctly.";
    private static final int h = 200;
    private static final int i = 63;
    private static final double j = 1.0E-4d;
    private static final int k = a.n.Widget_MaterialComponents_Slider;
    private int A;
    private int B;
    private int C;
    private int D;
    private int E;
    private int F;
    private int G;
    private float H;
    private MotionEvent I;
    private e J;
    private boolean K;
    private float L;
    private float M;
    private ArrayList<Float> N;
    private int O;
    private int P;
    private float Q;
    private float[] R;
    private int S;
    private boolean T;
    private boolean U;
    private boolean V;

    @ah
    private ColorStateList W;

    @ah
    private ColorStateList aa;

    @ah
    private ColorStateList ab;

    @ah
    private ColorStateList ac;

    @ah
    private ColorStateList ad;

    @ah
    private final j ae;
    private float af;

    @ah
    private final Paint l;

    @ah
    private final Paint m;

    @ah
    private final Paint n;

    @ah
    private final Paint o;

    @ah
    private final Paint p;

    @ah
    private final Paint q;

    @ah
    private final b r;
    private final AccessibilityManager s;
    private c<S, L, T>.a t;

    @ah
    private final d u;

    @ah
    private final List<com.google.android.material.y.a> v;

    @ah
    private final List<L> w;

    @ah
    private final List<T> x;
    private final int y;
    private int z;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface d {
        com.google.android.material.y.a a();
    }

    public c(@ah Context context) {
        this(context, null);
    }

    public c(@ah Context context, @ai AttributeSet attributeSet) {
        this(context, attributeSet, a.c.sliderStyle);
    }

    public c(@ah Context context, @ai final AttributeSet attributeSet, final int i2) {
        super(com.google.android.material.theme.a.a.a(context, attributeSet, i2, k), attributeSet, i2);
        this.v = new ArrayList();
        this.w = new ArrayList();
        this.x = new ArrayList();
        this.K = false;
        this.N = new ArrayList<>();
        this.O = -1;
        this.P = -1;
        this.Q = 0.0f;
        this.U = false;
        this.ae = new j();
        Context context2 = getContext();
        this.l = new Paint();
        this.l.setStyle(Paint.Style.STROKE);
        this.l.setStrokeCap(Paint.Cap.ROUND);
        this.m = new Paint();
        this.m.setStyle(Paint.Style.STROKE);
        this.m.setStrokeCap(Paint.Cap.ROUND);
        this.n = new Paint(1);
        this.n.setStyle(Paint.Style.FILL);
        this.n.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        this.o = new Paint(1);
        this.o.setStyle(Paint.Style.FILL);
        this.p = new Paint();
        this.p.setStyle(Paint.Style.STROKE);
        this.p.setStrokeCap(Paint.Cap.ROUND);
        this.q = new Paint();
        this.q.setStyle(Paint.Style.STROKE);
        this.q.setStrokeCap(Paint.Cap.ROUND);
        a(context2.getResources());
        this.u = new d() { // from class: com.google.android.material.u.c.1
            @Override // com.google.android.material.u.c.d
            public com.google.android.material.y.a a() {
                TypedArray a2 = s.a(c.this.getContext(), attributeSet, a.o.Slider, i2, c.k, new int[0]);
                com.google.android.material.y.a b2 = c.b(c.this.getContext(), a2);
                a2.recycle();
                return b2;
            }
        };
        a(context2, attributeSet, i2);
        setFocusable(true);
        setClickable(true);
        this.ae.J(2);
        this.y = ViewConfiguration.get(context2).getScaledTouchSlop();
        this.r = new b(this);
        af.a(this, this.r);
        this.s = (AccessibilityManager) getContext().getSystemService("accessibility");
    }

    private void a(@ah Resources resources) {
        this.z = resources.getDimensionPixelSize(a.f.mtrl_slider_widget_height);
        this.C = resources.getDimensionPixelOffset(a.f.mtrl_slider_track_side_padding);
        this.D = resources.getDimensionPixelOffset(a.f.mtrl_slider_track_top);
        this.G = resources.getDimensionPixelSize(a.f.mtrl_slider_label_padding);
    }

    private void a(Context context, AttributeSet attributeSet, int i2) {
        TypedArray a2 = s.a(context, attributeSet, a.o.Slider, i2, k, new int[0]);
        this.L = a2.getFloat(a.o.Slider_android_valueFrom, 0.0f);
        this.M = a2.getFloat(a.o.Slider_android_valueTo, 1.0f);
        setValues(Float.valueOf(this.L));
        this.Q = a2.getFloat(a.o.Slider_android_stepSize, 0.0f);
        boolean hasValue = a2.hasValue(a.o.Slider_trackColor);
        int i3 = hasValue ? a.o.Slider_trackColor : a.o.Slider_trackColorInactive;
        int i4 = hasValue ? a.o.Slider_trackColor : a.o.Slider_trackColorActive;
        ColorStateList a3 = com.google.android.material.q.c.a(context, a2, i3);
        if (a3 == null) {
            a3 = androidx.appcompat.a.a.a.a(context, a.e.material_slider_inactive_track_color);
        }
        setTrackInactiveTintList(a3);
        ColorStateList a4 = com.google.android.material.q.c.a(context, a2, i4);
        if (a4 == null) {
            a4 = androidx.appcompat.a.a.a.a(context, a.e.material_slider_active_track_color);
        }
        setTrackActiveTintList(a4);
        this.ae.g(com.google.android.material.q.c.a(context, a2, a.o.Slider_thumbColor));
        ColorStateList a5 = com.google.android.material.q.c.a(context, a2, a.o.Slider_haloColor);
        if (a5 == null) {
            a5 = androidx.appcompat.a.a.a.a(context, a.e.material_slider_halo_color);
        }
        setHaloTintList(a5);
        boolean hasValue2 = a2.hasValue(a.o.Slider_tickColor);
        int i5 = hasValue2 ? a.o.Slider_tickColor : a.o.Slider_tickColorInactive;
        int i6 = hasValue2 ? a.o.Slider_tickColor : a.o.Slider_tickColorActive;
        ColorStateList a6 = com.google.android.material.q.c.a(context, a2, i5);
        if (a6 == null) {
            a6 = androidx.appcompat.a.a.a.a(context, a.e.material_slider_inactive_tick_marks_color);
        }
        setTickInactiveTintList(a6);
        ColorStateList a7 = com.google.android.material.q.c.a(context, a2, i6);
        if (a7 == null) {
            a7 = androidx.appcompat.a.a.a.a(context, a.e.material_slider_active_tick_marks_color);
        }
        setTickActiveTintList(a7);
        setThumbRadius(a2.getDimensionPixelSize(a.o.Slider_thumbRadius, 0));
        setHaloRadius(a2.getDimensionPixelSize(a.o.Slider_haloRadius, 0));
        setThumbElevation(a2.getDimension(a.o.Slider_thumbElevation, 0.0f));
        setTrackHeight(a2.getDimensionPixelSize(a.o.Slider_trackHeight, 0));
        this.A = a2.getInt(a.o.Slider_labelBehavior, 0);
        if (!a2.getBoolean(a.o.Slider_android_enabled, true)) {
            setEnabled(false);
        }
        a2.recycle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @ah
    public static com.google.android.material.y.a b(@ah Context context, @ah TypedArray typedArray) {
        return com.google.android.material.y.a.a(context, (AttributeSet) null, 0, typedArray.getResourceId(a.o.Slider_labelStyle, a.n.Widget_MaterialComponents_Tooltip));
    }

    private void g() {
        if (this.L >= this.M) {
            throw new IllegalStateException(String.format(d, Float.toString(this.L), Float.toString(this.M)));
        }
    }

    private void h() {
        if (this.M <= this.L) {
            throw new IllegalStateException(String.format(e, Float.toString(this.M), Float.toString(this.L)));
        }
    }

    private boolean a(float f2) {
        double doubleValue = new BigDecimal(Float.toString(f2)).subtract(new BigDecimal(Float.toString(this.L))).divide(new BigDecimal(Float.toString(this.Q)), MathContext.DECIMAL64).doubleValue();
        return Math.abs(((double) Math.round(doubleValue)) - doubleValue) < j;
    }

    private void i() {
        if (this.Q > 0.0f && !a(this.M)) {
            throw new IllegalStateException(String.format(f, Float.toString(this.Q), Float.toString(this.L), Float.toString(this.M)));
        }
    }

    private void j() {
        Iterator<Float> it = this.N.iterator();
        while (it.hasNext()) {
            Float next = it.next();
            if (next.floatValue() < this.L || next.floatValue() > this.M) {
                throw new IllegalStateException(String.format(b, Float.toString(next.floatValue()), Float.toString(this.L), Float.toString(this.M)));
            }
            if (this.Q > 0.0f && !a(next.floatValue())) {
                throw new IllegalStateException(String.format(c, Float.toString(next.floatValue()), Float.toString(this.L), Float.toString(this.Q), Float.toString(this.Q)));
            }
        }
    }

    private void k() {
        if (this.Q == 0.0f) {
            return;
        }
        if (((int) this.Q) != this.Q) {
            Log.w(f1483a, String.format(g, "stepSize", Float.valueOf(this.Q)));
        }
        if (((int) this.L) != this.L) {
            Log.w(f1483a, String.format(g, "valueFrom", Float.valueOf(this.L)));
        }
        if (((int) this.M) != this.M) {
            Log.w(f1483a, String.format(g, "valueTo", Float.valueOf(this.M)));
        }
    }

    private void l() {
        if (this.V) {
            g();
            h();
            i();
            j();
            k();
            this.V = false;
        }
    }

    public float getValueFrom() {
        return this.L;
    }

    public void setValueFrom(float f2) {
        this.L = f2;
        this.V = true;
        postInvalidate();
    }

    public float getValueTo() {
        return this.M;
    }

    public void setValueTo(float f2) {
        this.M = f2;
        this.V = true;
        postInvalidate();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ah
    public List<Float> getValues() {
        return new ArrayList(this.N);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setValues(@ah Float... fArr) {
        ArrayList<Float> arrayList = new ArrayList<>();
        Collections.addAll(arrayList, fArr);
        setValuesInternal(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setValues(@ah List<Float> list) {
        setValuesInternal(new ArrayList<>(list));
    }

    private void setValuesInternal(@ah ArrayList<Float> arrayList) {
        if (arrayList.isEmpty()) {
            throw new IllegalArgumentException("At least one value must be set");
        }
        Collections.sort(arrayList);
        if (this.N.size() == arrayList.size() && this.N.equals(arrayList)) {
            return;
        }
        this.N = arrayList;
        this.V = true;
        this.P = 0;
        o();
        m();
        v();
        postInvalidate();
    }

    private void m() {
        if (this.v.size() > this.N.size()) {
            List<com.google.android.material.y.a> subList = this.v.subList(this.N.size(), this.v.size());
            for (com.google.android.material.y.a aVar : subList) {
                if (af.ak(this)) {
                    b(aVar);
                }
            }
            subList.clear();
        }
        while (this.v.size() < this.N.size()) {
            com.google.android.material.y.a a2 = this.u.a();
            this.v.add(a2);
            if (af.ak(this)) {
                a(a2);
            }
        }
        int i2 = this.v.size() == 1 ? 0 : 1;
        Iterator<com.google.android.material.y.a> it = this.v.iterator();
        while (it.hasNext()) {
            it.next().n(i2);
        }
    }

    public float getStepSize() {
        return this.Q;
    }

    public void setStepSize(float f2) {
        if (f2 < 0.0f) {
            throw new IllegalArgumentException(String.format(f, Float.toString(f2), Float.toString(this.L), Float.toString(this.M)));
        }
        if (this.Q != f2) {
            this.Q = f2;
            this.V = true;
            postInvalidate();
        }
    }

    public int getFocusedThumbIndex() {
        return this.P;
    }

    public void setFocusedThumbIndex(int i2) {
        if (i2 < 0 || i2 >= this.N.size()) {
            throw new IllegalArgumentException("index out of range");
        }
        this.P = i2;
        this.r.c(this.P);
        postInvalidate();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setActiveThumbIndex(int i2) {
        this.O = i2;
    }

    public int getActiveThumbIndex() {
        return this.O;
    }

    public void a(@ai L l) {
        this.w.add(l);
    }

    public void b(@ah L l) {
        this.w.remove(l);
    }

    public void a() {
        this.w.clear();
    }

    public void a(@ah T t) {
        this.x.add(t);
    }

    public void b(@ah T t) {
        this.x.remove(t);
    }

    public void b() {
        this.x.clear();
    }

    public boolean c() {
        return this.J != null;
    }

    public void setLabelFormatter(@ai e eVar) {
        this.J = eVar;
    }

    public float getThumbElevation() {
        return this.ae.ag();
    }

    public void setThumbElevation(float f2) {
        this.ae.r(f2);
    }

    public void setThumbElevationResource(@o int i2) {
        setThumbElevation(getResources().getDimension(i2));
    }

    @p
    public int getThumbRadius() {
        return this.E;
    }

    public void setThumbRadius(@p @z(a = 0) int i2) {
        if (i2 == this.E) {
            return;
        }
        this.E = i2;
        this.ae.setShapeAppearanceModel(com.google.android.material.t.o.a().a(0, this.E).a());
        this.ae.setBounds(0, 0, this.E * 2, this.E * 2);
        postInvalidate();
    }

    public void setThumbRadiusResource(@o int i2) {
        setThumbRadius(getResources().getDimensionPixelSize(i2));
    }

    @p
    public int getHaloRadius() {
        return this.F;
    }

    public void setHaloRadius(@p @z(a = 0) int i2) {
        if (i2 == this.F) {
            return;
        }
        this.F = i2;
        Drawable background = getBackground();
        if (!q() && (background instanceof RippleDrawable)) {
            com.google.android.material.j.a.a((RippleDrawable) background, this.F);
        } else {
            postInvalidate();
        }
    }

    public void setHaloRadiusResource(@o int i2) {
        setHaloRadius(getResources().getDimensionPixelSize(i2));
    }

    public int getLabelBehavior() {
        return this.A;
    }

    public void setLabelBehavior(int i2) {
        if (this.A != i2) {
            this.A = i2;
            requestLayout();
        }
    }

    @p
    public int getTrackSidePadding() {
        return this.C;
    }

    @p
    public int getTrackWidth() {
        return this.S;
    }

    @p
    public int getTrackHeight() {
        return this.B;
    }

    public void setTrackHeight(@p @z(a = 0) int i2) {
        if (this.B != i2) {
            this.B = i2;
            t();
            postInvalidate();
        }
    }

    @ah
    public ColorStateList getHaloTintList() {
        return this.W;
    }

    public void setHaloTintList(@ah ColorStateList colorStateList) {
        if (colorStateList.equals(this.W)) {
            return;
        }
        this.W = colorStateList;
        Drawable background = getBackground();
        if (!q() && (background instanceof RippleDrawable)) {
            ((RippleDrawable) background).setColor(colorStateList);
            return;
        }
        this.o.setColor(a(colorStateList));
        this.o.setAlpha(63);
        invalidate();
    }

    @ah
    public ColorStateList getThumbTintList() {
        return this.ae.U();
    }

    public void setThumbTintList(@ah ColorStateList colorStateList) {
        this.ae.g(colorStateList);
    }

    @ah
    public ColorStateList getTickTintList() {
        if (!this.ab.equals(this.aa)) {
            throw new IllegalStateException("The inactive and active ticks are different colors. Use the getTickColorInactive() and getTickColorActive() methods instead.");
        }
        return this.aa;
    }

    public void setTickTintList(@ah ColorStateList colorStateList) {
        setTickInactiveTintList(colorStateList);
        setTickActiveTintList(colorStateList);
    }

    @ah
    public ColorStateList getTickActiveTintList() {
        return this.aa;
    }

    public void setTickActiveTintList(@ah ColorStateList colorStateList) {
        if (colorStateList.equals(this.aa)) {
            return;
        }
        this.aa = colorStateList;
        this.q.setColor(a(this.aa));
        invalidate();
    }

    @ah
    public ColorStateList getTickInactiveTintList() {
        return this.ab;
    }

    public void setTickInactiveTintList(@ah ColorStateList colorStateList) {
        if (colorStateList.equals(this.ab)) {
            return;
        }
        this.ab = colorStateList;
        this.p.setColor(a(this.ab));
        invalidate();
    }

    @ah
    public ColorStateList getTrackTintList() {
        if (!this.ad.equals(this.ac)) {
            throw new IllegalStateException("The inactive and active parts of the track are different colors. Use the getInactiveTrackColor() and getActiveTrackColor() methods instead.");
        }
        return this.ac;
    }

    public void setTrackTintList(@ah ColorStateList colorStateList) {
        setTrackInactiveTintList(colorStateList);
        setTrackActiveTintList(colorStateList);
    }

    @ah
    public ColorStateList getTrackActiveTintList() {
        return this.ac;
    }

    public void setTrackActiveTintList(@ah ColorStateList colorStateList) {
        if (colorStateList.equals(this.ac)) {
            return;
        }
        this.ac = colorStateList;
        this.m.setColor(a(this.ac));
        invalidate();
    }

    @ah
    public ColorStateList getTrackInactiveTintList() {
        return this.ad;
    }

    public void setTrackInactiveTintList(@ah ColorStateList colorStateList) {
        if (colorStateList.equals(this.ad)) {
            return;
        }
        this.ad = colorStateList;
        this.l.setColor(a(this.ad));
        invalidate();
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        setLayerType(z ? 0 : 2, null);
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Iterator<com.google.android.material.y.a> it = this.v.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
    }

    private void a(com.google.android.material.y.a aVar) {
        aVar.a(com.google.android.material.internal.z.f(this));
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        if (this.t != null) {
            removeCallbacks(this.t);
        }
        Iterator<com.google.android.material.y.a> it = this.v.iterator();
        while (it.hasNext()) {
            b(it.next());
        }
        super.onDetachedFromWindow();
    }

    private void b(com.google.android.material.y.a aVar) {
        y g2 = com.google.android.material.internal.z.g(this);
        if (g2 != null) {
            g2.b(aVar);
            aVar.b(com.google.android.material.internal.z.f(this));
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i3) {
        super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(this.z + (this.A == 1 ? this.v.get(0).getIntrinsicHeight() : 0), androidx.d.c.b.a.b.b));
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i3, int i4, int i5) {
        this.S = Math.max(i2 - (this.C * 2), 0);
        if (this.Q > 0.0f) {
            n();
        }
        o();
    }

    private void n() {
        l();
        int min = Math.min((int) (((this.M - this.L) / this.Q) + 1.0f), (this.S / (this.B * 2)) + 1);
        if (this.R == null || this.R.length != min * 2) {
            this.R = new float[min * 2];
        }
        float f2 = this.S / (min - 1);
        for (int i2 = 0; i2 < min * 2; i2 += 2) {
            this.R[i2] = this.C + ((i2 / 2) * f2);
            this.R[i2 + 1] = p();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        if (q() || getMeasuredWidth() <= 0) {
            return;
        }
        Drawable background = getBackground();
        if (background instanceof RippleDrawable) {
            int b2 = (int) ((b(this.N.get(this.P).floatValue()) * this.S) + this.C);
            int p = p();
            androidx.core.graphics.drawable.a.a(background, b2 - this.F, p - this.F, b2 + this.F, p + this.F);
        }
    }

    private int p() {
        return this.D + (this.A == 1 ? this.v.get(0).getIntrinsicHeight() : 0);
    }

    @Override // android.view.View
    protected void onDraw(@ah Canvas canvas) {
        if (this.V) {
            l();
            if (this.Q > 0.0f) {
                n();
            }
        }
        super.onDraw(canvas);
        int p = p();
        a(canvas, this.S, p);
        if (((Float) Collections.max(getValues())).floatValue() > this.L) {
            b(canvas, this.S, p);
        }
        if (this.Q > 0.0f) {
            a(canvas);
        }
        if ((this.K || isFocused()) && isEnabled()) {
            d(canvas, this.S, p);
            if (this.O != -1) {
                s();
            }
        }
        c(canvas, this.S, p);
    }

    private float[] getActiveRange() {
        float floatValue = ((Float) Collections.max(getValues())).floatValue();
        float floatValue2 = ((Float) Collections.min(getValues())).floatValue();
        if (this.N.size() == 1) {
            floatValue2 = this.L;
        }
        float b2 = b(floatValue2);
        float b3 = b(floatValue);
        return e() ? new float[]{b3, b2} : new float[]{b2, b3};
    }

    private void a(@ah Canvas canvas, int i2, int i3) {
        float[] activeRange = getActiveRange();
        float f2 = i2;
        float f3 = this.C + (activeRange[1] * f2);
        if (f3 < this.C + i2) {
            float f4 = i3;
            canvas.drawLine(f3, f4, this.C + i2, f4, this.l);
        }
        float f5 = this.C + (activeRange[0] * f2);
        if (f5 > this.C) {
            float f6 = i3;
            canvas.drawLine(this.C, f6, f5, f6, this.l);
        }
    }

    private float b(float f2) {
        float f3 = (f2 - this.L) / (this.M - this.L);
        return e() ? 1.0f - f3 : f3;
    }

    private void b(@ah Canvas canvas, int i2, int i3) {
        float[] activeRange = getActiveRange();
        float f2 = i2;
        float f3 = i3;
        canvas.drawLine(this.C + (activeRange[0] * f2), f3, this.C + (activeRange[1] * f2), f3, this.m);
    }

    private void a(@ah Canvas canvas) {
        float[] activeRange = getActiveRange();
        int a2 = a(this.R, activeRange[0]);
        int a3 = a(this.R, activeRange[1]);
        int i2 = a2 * 2;
        canvas.drawPoints(this.R, 0, i2, this.p);
        int i3 = a3 * 2;
        canvas.drawPoints(this.R, i2, i3 - i2, this.q);
        canvas.drawPoints(this.R, i3, this.R.length - i3, this.p);
    }

    private void c(@ah Canvas canvas, int i2, int i3) {
        if (!isEnabled()) {
            Iterator<Float> it = this.N.iterator();
            while (it.hasNext()) {
                canvas.drawCircle(this.C + (b(it.next().floatValue()) * i2), i3, this.E, this.n);
            }
        }
        Iterator<Float> it2 = this.N.iterator();
        while (it2.hasNext()) {
            Float next = it2.next();
            canvas.save();
            canvas.translate((this.C + ((int) (b(next.floatValue()) * i2))) - this.E, i3 - this.E);
            this.ae.draw(canvas);
            canvas.restore();
        }
    }

    private void d(@ah Canvas canvas, int i2, int i3) {
        if (q()) {
            int b2 = (int) (this.C + (b(this.N.get(this.P).floatValue()) * i2));
            if (Build.VERSION.SDK_INT < 28) {
                canvas.clipRect(b2 - this.F, i3 - this.F, this.F + b2, this.F + i3, Region.Op.UNION);
            }
            canvas.drawCircle(b2, i3, this.F, this.o);
        }
    }

    private boolean q() {
        return this.T || Build.VERSION.SDK_INT < 21 || !(getBackground() instanceof RippleDrawable);
    }

    @Override // android.view.View
    public boolean onTouchEvent(@ah MotionEvent motionEvent) {
        if (!isEnabled()) {
            return false;
        }
        float x = motionEvent.getX();
        this.af = (x - this.C) / this.S;
        this.af = Math.max(0.0f, this.af);
        this.af = Math.min(1.0f, this.af);
        switch (motionEvent.getActionMasked()) {
            case 0:
                this.H = x;
                if (!u()) {
                    getParent().requestDisallowInterceptTouchEvent(true);
                    if (d()) {
                        requestFocus();
                        this.K = true;
                        r();
                        o();
                        invalidate();
                        w();
                        break;
                    }
                }
                break;
            case 1:
                this.K = false;
                if (this.I != null && this.I.getActionMasked() == 0 && Math.abs(this.I.getX() - motionEvent.getX()) <= this.y && Math.abs(this.I.getY() - motionEvent.getY()) <= this.y) {
                    d();
                }
                if (this.O != -1) {
                    r();
                    this.O = -1;
                }
                Iterator<com.google.android.material.y.a> it = this.v.iterator();
                while (it.hasNext()) {
                    com.google.android.material.internal.z.g(this).b(it.next());
                }
                x();
                invalidate();
                break;
            case 2:
                if (!this.K) {
                    if (Math.abs(x - this.H) < this.y) {
                        return false;
                    }
                    getParent().requestDisallowInterceptTouchEvent(true);
                    w();
                }
                if (d()) {
                    this.K = true;
                    r();
                    o();
                    invalidate();
                    break;
                }
                break;
        }
        setPressed(this.K);
        this.I = MotionEvent.obtain(motionEvent);
        return true;
    }

    private static int a(float[] fArr, float f2) {
        return Math.round(f2 * ((fArr.length / 2) - 1));
    }

    private double c(float f2) {
        if (this.Q <= 0.0f) {
            return f2;
        }
        return Math.round(f2 * r2) / ((int) ((this.M - this.L) / this.Q));
    }

    protected boolean d() {
        if (this.O != -1) {
            return true;
        }
        float valueOfTouchPositionAbsolute = getValueOfTouchPositionAbsolute();
        float e2 = e(valueOfTouchPositionAbsolute);
        this.O = 0;
        float abs = Math.abs(this.N.get(this.O).floatValue() - valueOfTouchPositionAbsolute);
        for (int i2 = 1; i2 < this.N.size(); i2++) {
            float abs2 = Math.abs(this.N.get(i2).floatValue() - valueOfTouchPositionAbsolute);
            float e3 = e(this.N.get(i2).floatValue());
            if (Float.compare(abs2, abs) > 1) {
                break;
            }
            boolean z = !e() ? e3 - e2 >= 0.0f : e3 - e2 <= 0.0f;
            if (Float.compare(abs2, abs) < 0) {
                this.O = i2;
            } else {
                if (Float.compare(abs2, abs) != 0) {
                    continue;
                } else {
                    if (Math.abs(e3 - e2) < this.y) {
                        this.O = -1;
                        return false;
                    }
                    if (z) {
                        this.O = i2;
                    }
                }
            }
            abs = abs2;
        }
        return this.O != -1;
    }

    private float getValueOfTouchPositionAbsolute() {
        float f2 = this.af;
        if (e()) {
            f2 = 1.0f - f2;
        }
        return (f2 * (this.M - this.L)) + this.L;
    }

    private boolean r() {
        return d(getValueOfTouchPosition());
    }

    private boolean d(float f2) {
        return a(this.O, f2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(int i2, float f2) {
        if (Math.abs(f2 - this.N.get(i2).floatValue()) < j) {
            return false;
        }
        this.N.set(i2, Float.valueOf(b(i2, f2)));
        this.P = i2;
        a(i2);
        return true;
    }

    private float b(int i2, float f2) {
        int i3 = i2 + 1;
        int i4 = i2 - 1;
        return androidx.core.g.a.a(f2, i4 < 0 ? this.L : this.N.get(i4).floatValue(), i3 >= this.N.size() ? this.M : this.N.get(i3).floatValue());
    }

    private float getValueOfTouchPosition() {
        double c2 = c(this.af);
        if (e()) {
            c2 = 1.0d - c2;
        }
        return (float) ((c2 * (this.M - this.L)) + this.L);
    }

    private float e(float f2) {
        return (b(f2) * this.S) + this.C;
    }

    private void s() {
        if (this.A == 2) {
            return;
        }
        Iterator<com.google.android.material.y.a> it = this.v.iterator();
        for (int i2 = 0; i2 < this.N.size() && it.hasNext(); i2++) {
            if (i2 != this.P) {
                a(it.next(), this.N.get(i2).floatValue());
            }
        }
        if (!it.hasNext()) {
            throw new IllegalStateException(String.format("Not enough labels(%d) to display all the values(%d)", Integer.valueOf(this.v.size()), Integer.valueOf(this.N.size())));
        }
        a(it.next(), this.N.get(this.P).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String f(float f2) {
        if (c()) {
            return this.J.a(f2);
        }
        return String.format(((float) ((int) f2)) == f2 ? "%.0f" : "%.2f", Float.valueOf(f2));
    }

    private void a(com.google.android.material.y.a aVar, float f2) {
        aVar.a(f(f2));
        int b2 = (this.C + ((int) (b(f2) * this.S))) - (aVar.getIntrinsicWidth() / 2);
        int p = p() - (this.G + this.E);
        aVar.setBounds(b2, p - aVar.getIntrinsicHeight(), aVar.getIntrinsicWidth() + b2, p);
        Rect rect = new Rect(aVar.getBounds());
        com.google.android.material.internal.c.a(com.google.android.material.internal.z.f(this), this, rect);
        aVar.setBounds(rect);
        com.google.android.material.internal.z.g(this).a(aVar);
    }

    private void t() {
        this.l.setStrokeWidth(this.B);
        this.m.setStrokeWidth(this.B);
        this.p.setStrokeWidth(this.B / 2.0f);
        this.q.setStrokeWidth(this.B / 2.0f);
    }

    private boolean u() {
        for (ViewParent parent = getParent(); parent instanceof ViewGroup; parent = parent.getParent()) {
            if (((ViewGroup) parent).shouldDelayChildPressedState()) {
                return true;
            }
        }
        return false;
    }

    private void v() {
        for (L l : this.w) {
            Iterator<Float> it = this.N.iterator();
            while (it.hasNext()) {
                l.a(this, it.next().floatValue(), false);
            }
        }
    }

    private void a(int i2) {
        Iterator<L> it = this.w.iterator();
        while (it.hasNext()) {
            it.next().a(this, this.N.get(i2).floatValue(), true);
        }
        if (this.s == null || !this.s.isEnabled()) {
            return;
        }
        g(i2);
    }

    private void w() {
        Iterator<T> it = this.x.iterator();
        while (it.hasNext()) {
            it.next().a(this);
        }
    }

    private void x() {
        Iterator<T> it = this.x.iterator();
        while (it.hasNext()) {
            it.next().b(this);
        }
    }

    @Override // android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        this.l.setColor(a(this.ad));
        this.m.setColor(a(this.ac));
        this.p.setColor(a(this.ab));
        this.q.setColor(a(this.aa));
        for (com.google.android.material.y.a aVar : this.v) {
            if (aVar.isStateful()) {
                aVar.setState(getDrawableState());
            }
        }
        if (this.ae.isStateful()) {
            this.ae.setState(getDrawableState());
        }
        this.o.setColor(a(this.W));
        this.o.setAlpha(63);
    }

    @k
    private int a(@ah ColorStateList colorStateList) {
        return colorStateList.getColorForState(getDrawableState(), colorStateList.getDefaultColor());
    }

    @ax
    void a(boolean z) {
        this.T = z;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, @ah KeyEvent keyEvent) {
        if (!isEnabled()) {
            return super.onKeyDown(i2, keyEvent);
        }
        if (this.N.size() == 1) {
            this.O = 0;
        }
        if (this.O == -1) {
            Boolean a2 = a(i2, keyEvent);
            return a2 != null ? a2.booleanValue() : super.onKeyDown(i2, keyEvent);
        }
        this.U |= keyEvent.isLongPress();
        Float d2 = d(i2);
        if (d2 != null) {
            if (d(this.N.get(this.O).floatValue() + d2.floatValue())) {
                o();
                postInvalidate();
            }
            return true;
        }
        if (i2 != 23) {
            if (i2 == 61) {
                if (keyEvent.hasNoModifiers()) {
                    return b(1);
                }
                if (keyEvent.isShiftPressed()) {
                    return b(-1);
                }
                return false;
            }
            if (i2 != 66) {
                return super.onKeyDown(i2, keyEvent);
            }
        }
        this.O = -1;
        Iterator<com.google.android.material.y.a> it = this.v.iterator();
        while (it.hasNext()) {
            com.google.android.material.internal.z.g(this).b(it.next());
        }
        postInvalidate();
        return true;
    }

    private Boolean a(int i2, @ah KeyEvent keyEvent) {
        if (i2 == 61) {
            if (keyEvent.hasNoModifiers()) {
                return Boolean.valueOf(b(1));
            }
            if (keyEvent.isShiftPressed()) {
                return Boolean.valueOf(b(-1));
            }
            return false;
        }
        if (i2 != 66) {
            if (i2 != 81) {
                switch (i2) {
                    case 21:
                        c(-1);
                        return true;
                    case 22:
                        c(1);
                        return true;
                    case 23:
                        break;
                    default:
                        switch (i2) {
                            case 69:
                                b(-1);
                                return true;
                            case 70:
                                break;
                            default:
                                return null;
                        }
                }
            }
            b(1);
            return true;
        }
        this.O = this.P;
        postInvalidate();
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, @ah KeyEvent keyEvent) {
        this.U = false;
        return super.onKeyUp(i2, keyEvent);
    }

    final boolean e() {
        return af.p(this) == 1;
    }

    private boolean b(int i2) {
        int i3 = this.P;
        this.P = (int) androidx.core.g.a.a(i3 + i2, 0L, this.N.size() - 1);
        if (this.P == i3) {
            return false;
        }
        if (this.O != -1) {
            this.O = this.P;
        }
        o();
        postInvalidate();
        return true;
    }

    private boolean c(int i2) {
        if (e()) {
            i2 = i2 == Integer.MIN_VALUE ? ActivityChooserView.a.f166a : -i2;
        }
        return b(i2);
    }

    private Float d(int i2) {
        float e2 = this.U ? e(20) : y();
        switch (i2) {
            case 21:
                if (!e()) {
                    e2 = -e2;
                }
                return Float.valueOf(e2);
            case 22:
                if (e()) {
                    e2 = -e2;
                }
                return Float.valueOf(e2);
            case 69:
                return Float.valueOf(-e2);
            case 70:
            case 81:
                return Float.valueOf(e2);
            default:
                return null;
        }
    }

    private float y() {
        if (this.Q == 0.0f) {
            return 1.0f;
        }
        return this.Q;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float e(int i2) {
        float y = y();
        return (this.M - this.L) / y <= i2 ? y : Math.round(r1 / r2) * y;
    }

    @Override // android.view.View
    protected void onFocusChanged(boolean z, int i2, @ai Rect rect) {
        super.onFocusChanged(z, i2, rect);
        if (!z) {
            this.O = -1;
            Iterator<com.google.android.material.y.a> it = this.v.iterator();
            while (it.hasNext()) {
                com.google.android.material.internal.z.g(this).b(it.next());
            }
            this.r.d(this.P);
            return;
        }
        f(i2);
        this.r.c(this.P);
    }

    private void f(int i2) {
        if (i2 == 17) {
            c(ActivityChooserView.a.f166a);
            return;
        }
        if (i2 != 66) {
            switch (i2) {
                case 1:
                    b(ActivityChooserView.a.f166a);
                    return;
                case 2:
                    b(Integer.MIN_VALUE);
                    return;
                default:
                    return;
            }
        }
        c(Integer.MIN_VALUE);
    }

    @ax
    final int getAccessibilityFocusedVirtualViewId() {
        return this.r.b();
    }

    @Override // android.view.View
    @ah
    public CharSequence getAccessibilityClassName() {
        return SeekBar.class.getName();
    }

    @Override // android.view.View
    public boolean dispatchHoverEvent(@ah MotionEvent motionEvent) {
        return this.r.a(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean dispatchKeyEvent(@ah KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    private void g(int i2) {
        if (this.t == null) {
            this.t = new a();
        } else {
            removeCallbacks(this.t);
        }
        this.t.a(i2);
        postDelayed(this.t, 200L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        int f1485a;

        private a() {
            this.f1485a = -1;
        }

        void a(int i) {
            this.f1485a = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.r.a(this.f1485a, 4);
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        C0096c c0096c = new C0096c(super.onSaveInstanceState());
        c0096c.f1486a = this.L;
        c0096c.b = this.M;
        c0096c.c = new ArrayList<>(this.N);
        c0096c.d = this.Q;
        c0096c.e = hasFocus();
        return c0096c;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        C0096c c0096c = (C0096c) parcelable;
        super.onRestoreInstanceState(c0096c.getSuperState());
        this.L = c0096c.f1486a;
        this.M = c0096c.b;
        setValuesInternal(c0096c.c);
        this.Q = c0096c.d;
        if (c0096c.e) {
            requestFocus();
        }
        v();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.u.c$c, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class C0096c extends View.BaseSavedState {
        public static final Parcelable.Creator<C0096c> CREATOR = new Parcelable.Creator<C0096c>() { // from class: com.google.android.material.u.c.c.1
            @Override // android.os.Parcelable.Creator
            @ah
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public C0096c createFromParcel(@ah Parcel parcel) {
                return new C0096c(parcel);
            }

            @Override // android.os.Parcelable.Creator
            @ah
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public C0096c[] newArray(int i) {
                return new C0096c[i];
            }
        };

        /* renamed from: a, reason: collision with root package name */
        float f1486a;
        float b;
        ArrayList<Float> c;
        float d;
        boolean e;

        C0096c(Parcelable parcelable) {
            super(parcelable);
        }

        private C0096c(@ah Parcel parcel) {
            super(parcel);
            this.f1486a = parcel.readFloat();
            this.b = parcel.readFloat();
            this.c = new ArrayList<>();
            parcel.readList(this.c, Float.class.getClassLoader());
            this.d = parcel.readFloat();
            this.e = parcel.createBooleanArray()[0];
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@ah Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeFloat(this.f1486a);
            parcel.writeFloat(this.b);
            parcel.writeList(this.c);
            parcel.writeFloat(this.d);
            parcel.writeBooleanArray(new boolean[]{this.e});
        }
    }

    void a(int i2, Rect rect) {
        int b2 = this.C + ((int) (b(getValues().get(i2).floatValue()) * this.S));
        int p = p();
        rect.set(b2 - this.E, p - this.E, b2 + this.E, p + this.E);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class b extends androidx.f.b.a {
        Rect e;
        private final c<?, ?, ?> f;

        b(c<?, ?, ?> cVar) {
            super(cVar);
            this.e = new Rect();
            this.f = cVar;
        }

        @Override // androidx.f.b.a
        protected int a(float f, float f2) {
            for (int i = 0; i < this.f.getValues().size(); i++) {
                this.f.a(i, this.e);
                if (this.e.contains((int) f, (int) f2)) {
                    return i;
                }
            }
            return -1;
        }

        @Override // androidx.f.b.a
        protected void a(List<Integer> list) {
            for (int i = 0; i < this.f.getValues().size(); i++) {
                list.add(Integer.valueOf(i));
            }
        }

        @Override // androidx.f.b.a
        protected void a(int i, androidx.core.n.a.d dVar) {
            dVar.a(d.a.H);
            List<Float> values = this.f.getValues();
            float floatValue = values.get(i).floatValue();
            float valueFrom = this.f.getValueFrom();
            float valueTo = this.f.getValueTo();
            if (this.f.isEnabled()) {
                if (floatValue > valueFrom) {
                    dVar.d(8192);
                }
                if (floatValue < valueTo) {
                    dVar.d(4096);
                }
            }
            dVar.a(d.C0041d.a(1, valueFrom, valueTo, floatValue));
            dVar.b((CharSequence) SeekBar.class.getName());
            StringBuilder sb = new StringBuilder();
            if (this.f.getContentDescription() != null) {
                sb.append(this.f.getContentDescription());
                sb.append(",");
            }
            if (values.size() > 1) {
                sb.append(e(i));
                sb.append(this.f.f(floatValue));
            }
            dVar.e(sb.toString());
            this.f.a(i, this.e);
            dVar.b(this.e);
        }

        @ah
        private String e(int i) {
            if (i == this.f.getValues().size() - 1) {
                return this.f.getContext().getString(a.m.material_slider_range_end);
            }
            return i == 0 ? this.f.getContext().getString(a.m.material_slider_range_start) : com.yftech.service.upgrade.a.d;
        }

        @Override // androidx.f.b.a
        protected boolean b(int i, int i2, Bundle bundle) {
            if (!this.f.isEnabled()) {
                return false;
            }
            if (i2 == 4096 || i2 == 8192) {
                float e = this.f.e(20);
                if (i2 == 8192) {
                    e = -e;
                }
                if (this.f.e()) {
                    e = -e;
                }
                if (!this.f.a(i, androidx.core.g.a.a(this.f.getValues().get(i).floatValue() + e, this.f.getValueFrom(), this.f.getValueTo()))) {
                    return false;
                }
                this.f.o();
                this.f.postInvalidate();
                a(i);
                return true;
            }
            if (i2 != 16908349 || bundle == null || !bundle.containsKey(androidx.core.n.a.d.F)) {
                return false;
            }
            if (!this.f.a(i, bundle.getFloat(androidx.core.n.a.d.F))) {
                return false;
            }
            this.f.o();
            this.f.postInvalidate();
            a(i);
            return true;
        }
    }
}
