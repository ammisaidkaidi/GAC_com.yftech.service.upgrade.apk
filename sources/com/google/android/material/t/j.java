package com.google.android.material.t;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import androidx.annotation.at;
import androidx.annotation.z;
import com.google.android.material.a;
import com.google.android.material.t.o;
import com.google.android.material.t.p;
import com.google.android.material.t.q;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.BitSet;

/* loaded from: /home/user/work/dex/classes.dex */
public class j extends Drawable implements androidx.core.graphics.drawable.e, s {

    /* renamed from: a, reason: collision with root package name */
    public static final int f1412a = 0;
    public static final int b = 1;
    public static final int c = 2;
    private static final String d = "j";
    private static final float e = 0.75f;
    private static final float f = 0.25f;
    private static final Paint g = new Paint(1);

    @ai
    private PorterDuffColorFilter A;

    @ah
    private final RectF B;
    private boolean C;
    private b h;
    private final q.h[] i;
    private final q.h[] j;
    private final BitSet k;
    private boolean l;
    private final Matrix m;
    private final Path n;
    private final Path o;
    private final RectF p;
    private final RectF q;
    private final Region r;
    private final Region s;
    private o t;
    private final Paint u;
    private final Paint v;
    private final com.google.android.material.s.b w;

    @ah
    private final p.a x;
    private final p y;

    @ai
    private PorterDuffColorFilter z;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface a {
    }

    private static int b(int i, int i2) {
        return (i * (i2 + (i2 >>> 7))) >>> 8;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @ah
    public static j a(Context context) {
        return a(context, 0.0f);
    }

    @ah
    public static j a(Context context, float f2) {
        int a2 = com.google.android.material.h.a.a(context, a.c.colorSurface, j.class.getSimpleName());
        j jVar = new j();
        jVar.b(context);
        jVar.g(ColorStateList.valueOf(a2));
        jVar.r(f2);
        return jVar;
    }

    public j() {
        this(new o());
    }

    public j(@ah Context context, @ai AttributeSet attributeSet, @androidx.annotation.f int i, @at int i2) {
        this(o.a(context, attributeSet, i, i2).a());
    }

    @Deprecated
    public j(@ah r rVar) {
        this((o) rVar);
    }

    public j(@ah o oVar) {
        this(new b(oVar, null));
    }

    private j(@ah b bVar) {
        this.i = new q.h[4];
        this.j = new q.h[4];
        this.k = new BitSet(8);
        this.m = new Matrix();
        this.n = new Path();
        this.o = new Path();
        this.p = new RectF();
        this.q = new RectF();
        this.r = new Region();
        this.s = new Region();
        this.u = new Paint(1);
        this.v = new Paint(1);
        this.w = new com.google.android.material.s.b();
        this.y = new p();
        this.B = new RectF();
        this.C = true;
        this.h = bVar;
        this.v.setStyle(Paint.Style.STROKE);
        this.u.setStyle(Paint.Style.FILL);
        g.setColor(-1);
        g.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        g();
        a(getState());
        this.x = new p.a() { // from class: com.google.android.material.t.j.1
            @Override // com.google.android.material.t.p.a
            public void a(@ah q qVar, Matrix matrix, int i) {
                j.this.k.set(i, qVar.a());
                j.this.i[i] = qVar.a(matrix);
            }

            @Override // com.google.android.material.t.p.a
            public void b(@ah q qVar, Matrix matrix, int i) {
                j.this.k.set(i + 4, qVar.a());
                j.this.j[i] = qVar.a(matrix);
            }
        };
    }

    @Override // android.graphics.drawable.Drawable
    @ai
    public Drawable.ConstantState getConstantState() {
        return this.h;
    }

    @Override // android.graphics.drawable.Drawable
    @ah
    public Drawable mutate() {
        this.h = new b(this.h);
        return this;
    }

    @Override // com.google.android.material.t.s
    public void setShapeAppearanceModel(@ah o oVar) {
        this.h.f1415a = oVar;
        invalidateSelf();
    }

    @Override // com.google.android.material.t.s
    @ah
    public o getShapeAppearanceModel() {
        return this.h.f1415a;
    }

    @Deprecated
    public void a(@ah r rVar) {
        setShapeAppearanceModel(rVar);
    }

    @ai
    @Deprecated
    public r T() {
        o shapeAppearanceModel = getShapeAppearanceModel();
        if (shapeAppearanceModel instanceof r) {
            return (r) shapeAppearanceModel;
        }
        return null;
    }

    public void g(@ai ColorStateList colorStateList) {
        if (this.h.d != colorStateList) {
            this.h.d = colorStateList;
            onStateChange(getState());
        }
    }

    @ai
    public ColorStateList U() {
        return this.h.d;
    }

    public void h(@ai ColorStateList colorStateList) {
        if (this.h.e != colorStateList) {
            this.h.e = colorStateList;
            onStateChange(getState());
        }
    }

    @ai
    public ColorStateList V() {
        return this.h.e;
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.e
    public void setTintMode(@ai PorterDuff.Mode mode) {
        if (this.h.h != mode) {
            this.h.h = mode;
            g();
            b();
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.e
    public void setTintList(@ai ColorStateList colorStateList) {
        this.h.g = colorStateList;
        g();
        b();
    }

    @ai
    public ColorStateList W() {
        return this.h.g;
    }

    @ai
    public ColorStateList X() {
        return this.h.f;
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.e
    public void setTint(@androidx.annotation.k int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    public void i(ColorStateList colorStateList) {
        this.h.f = colorStateList;
        g();
        b();
    }

    public void I(@androidx.annotation.k int i) {
        i(ColorStateList.valueOf(i));
    }

    public void a(float f2, @androidx.annotation.k int i) {
        n(f2);
        h(ColorStateList.valueOf(i));
    }

    public void a(float f2, @ai ColorStateList colorStateList) {
        n(f2);
        h(colorStateList);
    }

    public float Y() {
        return this.h.l;
    }

    public void n(float f2) {
        this.h.l = f2;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(@z(a = 0, b = 255) int i) {
        if (this.h.m != i) {
            this.h.m = i;
            b();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@ai ColorFilter colorFilter) {
        this.h.c = colorFilter;
        b();
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        this.r.set(getBounds());
        b(Z(), this.n);
        this.s.setPath(this.n, this.r);
        this.r.op(this.s, Region.Op.DIFFERENCE);
        return this.r;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @ah
    public RectF Z() {
        this.p.set(getBounds());
        return this.p;
    }

    public void o(float f2) {
        setShapeAppearanceModel(this.h.f1415a.a(f2));
    }

    public void a(@ah d dVar) {
        setShapeAppearanceModel(this.h.f1415a.a(dVar));
    }

    public boolean a(int i, int i2) {
        return getTransparentRegion().contains(i, i2);
    }

    public int aa() {
        return this.h.q;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(@ah Rect rect) {
        if (this.h.i != null) {
            rect.set(this.h.i);
            return true;
        }
        return super.getPadding(rect);
    }

    public void a(int i, int i2, int i3, int i4) {
        if (this.h.i == null) {
            this.h.i = new Rect();
        }
        this.h.i.set(i, i2, i3, i4);
        invalidateSelf();
    }

    public void J(int i) {
        if (this.h.q != i) {
            this.h.q = i;
            b();
        }
    }

    @Deprecated
    public boolean ab() {
        return this.h.q == 0 || this.h.q == 2;
    }

    @Deprecated
    public void j(boolean z) {
        J(!z ? 1 : 0);
    }

    public boolean ac() {
        return this.h.b != null && this.h.b.a();
    }

    public boolean ad() {
        return this.h.b != null;
    }

    public void b(Context context) {
        this.h.b = new com.google.android.material.k.a(context);
        a();
    }

    @androidx.annotation.k
    private int a(@androidx.annotation.k int i) {
        return this.h.b != null ? this.h.b.a(i, ai() + af()) : i;
    }

    public float ae() {
        return this.h.k;
    }

    public void p(float f2) {
        if (this.h.k != f2) {
            this.h.k = f2;
            this.l = true;
            invalidateSelf();
        }
    }

    public float af() {
        return this.h.n;
    }

    public void q(float f2) {
        if (this.h.n != f2) {
            this.h.n = f2;
            a();
        }
    }

    public float ag() {
        return this.h.o;
    }

    public void r(float f2) {
        if (this.h.o != f2) {
            this.h.o = f2;
            a();
        }
    }

    public float ah() {
        return this.h.p;
    }

    public void s(float f2) {
        if (this.h.p != f2) {
            this.h.p = f2;
            a();
        }
    }

    public float ai() {
        return ag() + ah();
    }

    public void t(float f2) {
        s(f2 - ag());
    }

    private void a() {
        float ai = ai();
        this.h.r = (int) Math.ceil(e * ai);
        this.h.s = (int) Math.ceil(ai * f);
        g();
        b();
    }

    @Deprecated
    public int aj() {
        return (int) ag();
    }

    @Deprecated
    public void K(int i) {
        r(i);
    }

    @ap(a = {ap.a.LIBRARY_GROUP})
    public int ak() {
        return this.h.s;
    }

    @ap(a = {ap.a.LIBRARY_GROUP})
    public void k(boolean z) {
        this.C = z;
    }

    @ap(a = {ap.a.LIBRARY_GROUP})
    public void l(boolean z) {
        this.y.a(z);
    }

    @ap(a = {ap.a.LIBRARY_GROUP})
    public void L(int i) {
        if (this.h.s != i) {
            this.h.s = i;
            b();
        }
    }

    public int al() {
        return this.h.t;
    }

    public void M(int i) {
        if (this.h.t != i) {
            this.h.t = i;
            b();
        }
    }

    public int am() {
        return this.h.r;
    }

    @Deprecated
    public void N(int i) {
        this.h.r = i;
    }

    public boolean an() {
        return Build.VERSION.SDK_INT < 21 || !(aw() || this.n.isConvex() || Build.VERSION.SDK_INT >= 29);
    }

    public float ao() {
        return this.h.j;
    }

    public void u(float f2) {
        if (this.h.j != f2) {
            this.h.j = f2;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        this.l = true;
        super.invalidateSelf();
    }

    private void b() {
        super.invalidateSelf();
    }

    public void m(boolean z) {
        if (this.h.u != z) {
            this.h.u = z;
            invalidateSelf();
        }
    }

    public void O(int i) {
        this.w.a(i);
        this.h.u = false;
        b();
    }

    public Paint.Style ap() {
        return this.h.v;
    }

    public void a(Paint.Style style) {
        this.h.v = style;
        b();
    }

    private boolean c() {
        return this.h.q != 1 && this.h.r > 0 && (this.h.q == 2 || an());
    }

    private boolean d() {
        return this.h.v == Paint.Style.FILL_AND_STROKE || this.h.v == Paint.Style.FILL;
    }

    private boolean e() {
        return (this.h.v == Paint.Style.FILL_AND_STROKE || this.h.v == Paint.Style.STROKE) && this.v.getStrokeWidth() > 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        this.l = true;
        super.onBoundsChange(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@ah Canvas canvas) {
        this.u.setColorFilter(this.z);
        int alpha = this.u.getAlpha();
        this.u.setAlpha(b(alpha, this.h.m));
        this.v.setColorFilter(this.A);
        this.v.setStrokeWidth(this.h.l);
        int alpha2 = this.v.getAlpha();
        this.v.setAlpha(b(alpha2, this.h.m));
        if (this.l) {
            f();
            b(Z(), this.n);
            this.l = false;
        }
        a(canvas);
        if (d()) {
            b(canvas);
        }
        if (e()) {
            c(canvas);
        }
        this.u.setAlpha(alpha);
        this.v.setAlpha(alpha2);
    }

    private void a(@ah Canvas canvas) {
        if (c()) {
            canvas.save();
            d(canvas);
            if (!this.C) {
                e(canvas);
                canvas.restore();
                return;
            }
            int width = (int) (this.B.width() - getBounds().width());
            int height = (int) (this.B.height() - getBounds().height());
            if (width < 0 || height < 0) {
                throw new IllegalStateException("Invalid shadow bounds. Check that the treatments result in a valid path.");
            }
            Bitmap createBitmap = Bitmap.createBitmap(((int) this.B.width()) + (this.h.r * 2) + width, ((int) this.B.height()) + (this.h.r * 2) + height, Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(createBitmap);
            float f2 = (getBounds().left - this.h.r) - width;
            float f3 = (getBounds().top - this.h.r) - height;
            canvas2.translate(-f2, -f3);
            e(canvas2);
            canvas.drawBitmap(createBitmap, f2, f3, (Paint) null);
            createBitmap.recycle();
            canvas.restore();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @ap(a = {ap.a.LIBRARY_GROUP})
    public void a(@ah Canvas canvas, @ah Paint paint, @ah Path path, @ah RectF rectF) {
        a(canvas, paint, path, this.h.f1415a, rectF);
    }

    private void a(@ah Canvas canvas, @ah Paint paint, @ah Path path, @ah o oVar, @ah RectF rectF) {
        if (oVar.a(rectF)) {
            float a2 = oVar.g().a(rectF) * this.h.k;
            canvas.drawRoundRect(rectF, a2, a2, paint);
        } else {
            canvas.drawPath(path, paint);
        }
    }

    private void b(@ah Canvas canvas) {
        a(canvas, this.u, this.n, this.h.f1415a, Z());
    }

    private void c(@ah Canvas canvas) {
        a(canvas, this.v, this.o, this.t, i());
    }

    private void d(@ah Canvas canvas) {
        int aq = aq();
        int ar = ar();
        if (Build.VERSION.SDK_INT < 21 && this.C) {
            Rect clipBounds = canvas.getClipBounds();
            clipBounds.inset(-this.h.r, -this.h.r);
            clipBounds.offset(aq, ar);
            canvas.clipRect(clipBounds, Region.Op.REPLACE);
        }
        canvas.translate(aq, ar);
    }

    private void e(@ah Canvas canvas) {
        if (this.k.cardinality() > 0) {
            Log.w(d, "Compatibility shadow requested but can't be drawn for all operations in this shape.");
        }
        if (this.h.s != 0) {
            canvas.drawPath(this.n, this.w.a());
        }
        for (int i = 0; i < 4; i++) {
            this.i[i].a(this.w, this.h.r, canvas);
            this.j[i].a(this.w, this.h.r, canvas);
        }
        if (this.C) {
            int aq = aq();
            int ar = ar();
            canvas.translate(-aq, -ar);
            canvas.drawPath(this.n, g);
            canvas.translate(aq, ar);
        }
    }

    public int aq() {
        return (int) (this.h.s * Math.sin(Math.toRadians(this.h.t)));
    }

    public int ar() {
        return (int) (this.h.s * Math.cos(Math.toRadians(this.h.t)));
    }

    @Deprecated
    public void a(int i, int i2, @ah Path path) {
        a(new RectF(0.0f, 0.0f, i, i2), path);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @ap(a = {ap.a.LIBRARY_GROUP})
    public final void a(@ah RectF rectF, @ah Path path) {
        this.y.a(this.h.f1415a, this.h.k, rectF, this.x, path);
    }

    private void f() {
        final float f2 = -h();
        this.t = getShapeAppearanceModel().a(new o.b() { // from class: com.google.android.material.t.j.2
            @Override // com.google.android.material.t.o.b
            @ah
            public d a(@ah d dVar) {
                return dVar instanceof m ? dVar : new com.google.android.material.t.b(f2, dVar);
            }
        });
        this.y.a(this.t, this.h.k, i(), this.o);
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(@ah Outline outline) {
        if (this.h.q == 2) {
            return;
        }
        if (aw()) {
            outline.setRoundRect(getBounds(), as() * this.h.k);
            return;
        }
        b(Z(), this.n);
        if (this.n.isConvex() || Build.VERSION.SDK_INT >= 29) {
            try {
                outline.setConvexPath(this.n);
            } catch (IllegalArgumentException unused) {
            }
        }
    }

    private void b(@ah RectF rectF, @ah Path path) {
        a(rectF, path);
        if (this.h.j != 1.0f) {
            this.m.reset();
            this.m.setScale(this.h.j, this.h.j, rectF.width() / 2.0f, rectF.height() / 2.0f);
            path.transform(this.m);
        }
        path.computeBounds(this.B, true);
    }

    private boolean g() {
        PorterDuffColorFilter porterDuffColorFilter = this.z;
        PorterDuffColorFilter porterDuffColorFilter2 = this.A;
        this.z = a(this.h.g, this.h.h, this.u, true);
        this.A = a(this.h.f, this.h.h, this.v, false);
        if (this.h.u) {
            this.w.a(this.h.g.getColorForState(getState(), 0));
        }
        return (androidx.core.m.e.a(porterDuffColorFilter, this.z) && androidx.core.m.e.a(porterDuffColorFilter2, this.A)) ? false : true;
    }

    @ah
    private PorterDuffColorFilter a(@ai ColorStateList colorStateList, @ai PorterDuff.Mode mode, @ah Paint paint, boolean z) {
        if (colorStateList == null || mode == null) {
            return a(paint, z);
        }
        return a(colorStateList, mode, z);
    }

    @ai
    private PorterDuffColorFilter a(@ah Paint paint, boolean z) {
        int color;
        int a2;
        if (!z || (a2 = a((color = paint.getColor()))) == color) {
            return null;
        }
        return new PorterDuffColorFilter(a2, PorterDuff.Mode.SRC_IN);
    }

    @ah
    private PorterDuffColorFilter a(@ah ColorStateList colorStateList, @ah PorterDuff.Mode mode, boolean z) {
        int colorForState = colorStateList.getColorForState(getState(), 0);
        if (z) {
            colorForState = a(colorForState);
        }
        return new PorterDuffColorFilter(colorForState, mode);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return super.isStateful() || (this.h.g != null && this.h.g.isStateful()) || ((this.h.f != null && this.h.f.isStateful()) || ((this.h.e != null && this.h.e.isStateful()) || (this.h.d != null && this.h.d.isStateful())));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.graphics.drawable.Drawable, com.google.android.material.internal.q.a
    public boolean onStateChange(int[] iArr) {
        boolean z = a(iArr) || g();
        if (z) {
            invalidateSelf();
        }
        return z;
    }

    private boolean a(int[] iArr) {
        boolean z;
        int color;
        int colorForState;
        int color2;
        int colorForState2;
        if (this.h.d == null || color2 == (colorForState2 = this.h.d.getColorForState(iArr, (color2 = this.u.getColor())))) {
            z = false;
        } else {
            this.u.setColor(colorForState2);
            z = true;
        }
        if (this.h.e == null || color == (colorForState = this.h.e.getColorForState(iArr, (color = this.v.getColor())))) {
            return z;
        }
        this.v.setColor(colorForState);
        return true;
    }

    private float h() {
        if (e()) {
            return this.v.getStrokeWidth() / 2.0f;
        }
        return 0.0f;
    }

    @ah
    private RectF i() {
        this.q.set(Z());
        float h = h();
        this.q.inset(h, h);
        return this.q;
    }

    public float as() {
        return this.h.f1415a.f().a(Z());
    }

    public float at() {
        return this.h.f1415a.g().a(Z());
    }

    public float au() {
        return this.h.f1415a.i().a(Z());
    }

    public float av() {
        return this.h.f1415a.h().a(Z());
    }

    @ap(a = {ap.a.LIBRARY_GROUP})
    public boolean aw() {
        return this.h.f1415a.a(Z());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class b extends Drawable.ConstantState {

        /* renamed from: a, reason: collision with root package name */
        @ah
        public o f1415a;

        @ai
        public com.google.android.material.k.a b;

        @ai
        public ColorFilter c;

        @ai
        public ColorStateList d;

        @ai
        public ColorStateList e;

        @ai
        public ColorStateList f;

        @ai
        public ColorStateList g;

        @ai
        public PorterDuff.Mode h;

        @ai
        public Rect i;
        public float j;
        public float k;
        public float l;
        public int m;
        public float n;
        public float o;
        public float p;
        public int q;
        public int r;
        public int s;
        public int t;
        public boolean u;
        public Paint.Style v;

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        public b(o oVar, com.google.android.material.k.a aVar) {
            this.d = null;
            this.e = null;
            this.f = null;
            this.g = null;
            this.h = PorterDuff.Mode.SRC_IN;
            this.i = null;
            this.j = 1.0f;
            this.k = 1.0f;
            this.m = 255;
            this.n = 0.0f;
            this.o = 0.0f;
            this.p = 0.0f;
            this.q = 0;
            this.r = 0;
            this.s = 0;
            this.t = 0;
            this.u = false;
            this.v = Paint.Style.FILL_AND_STROKE;
            this.f1415a = oVar;
            this.b = aVar;
        }

        public b(@ah b bVar) {
            this.d = null;
            this.e = null;
            this.f = null;
            this.g = null;
            this.h = PorterDuff.Mode.SRC_IN;
            this.i = null;
            this.j = 1.0f;
            this.k = 1.0f;
            this.m = 255;
            this.n = 0.0f;
            this.o = 0.0f;
            this.p = 0.0f;
            this.q = 0;
            this.r = 0;
            this.s = 0;
            this.t = 0;
            this.u = false;
            this.v = Paint.Style.FILL_AND_STROKE;
            this.f1415a = bVar.f1415a;
            this.b = bVar.b;
            this.l = bVar.l;
            this.c = bVar.c;
            this.d = bVar.d;
            this.e = bVar.e;
            this.h = bVar.h;
            this.g = bVar.g;
            this.m = bVar.m;
            this.j = bVar.j;
            this.s = bVar.s;
            this.q = bVar.q;
            this.u = bVar.u;
            this.k = bVar.k;
            this.n = bVar.n;
            this.o = bVar.o;
            this.p = bVar.p;
            this.r = bVar.r;
            this.t = bVar.t;
            this.f = bVar.f;
            this.v = bVar.v;
            if (bVar.i != null) {
                this.i = new Rect(bVar.i);
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @ah
        public Drawable newDrawable() {
            j jVar = new j(this);
            jVar.l = true;
            return jVar;
        }
    }
}
