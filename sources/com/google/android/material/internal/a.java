package com.google.android.material.internal;

import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import androidx.core.n.af;
import com.google.android.material.internal.p;
import com.google.android.material.q.a;

@ap(a = {ap.a.LIBRARY_GROUP})
/* loaded from: /home/user/work/dex/classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private static final boolean f1328a;
    private static final String b = "CollapsingTextHelper";
    private static final String c = "…";
    private static final boolean d = false;

    @ah
    private static final Paint e;
    private com.google.android.material.q.a A;
    private com.google.android.material.q.a B;

    @ai
    private CharSequence C;

    @ai
    private CharSequence D;
    private boolean E;
    private boolean F;

    @ai
    private Bitmap G;
    private Paint H;
    private float I;
    private float J;
    private int[] K;
    private boolean L;
    private TimeInterpolator O;
    private TimeInterpolator P;
    private float Q;
    private float R;
    private float S;
    private ColorStateList T;
    private float U;
    private float V;
    private float W;
    private ColorStateList X;
    private StaticLayout Y;
    private float Z;
    private float aa;
    private float ab;
    private CharSequence ac;
    private final View f;
    private boolean g;
    private float h;
    private ColorStateList p;
    private ColorStateList q;
    private float r;
    private float s;
    private float t;
    private float u;
    private float v;
    private float w;
    private Typeface x;
    private Typeface y;
    private Typeface z;
    private int l = 16;
    private int m = 16;
    private float n = 15.0f;
    private float o = 15.0f;
    private int ad = 1;

    @ah
    private final TextPaint M = new TextPaint(129);

    @ah
    private final TextPaint N = new TextPaint(this.M);

    @ah
    private final Rect j = new Rect();

    @ah
    private final Rect i = new Rect();

    @ah
    private final RectF k = new RectF();

    static {
        f1328a = Build.VERSION.SDK_INT < 18;
        e = null;
        if (e != null) {
            e.setAntiAlias(true);
            e.setColor(-65281);
        }
    }

    public a(View view) {
        this.f = view;
    }

    public void a(TimeInterpolator timeInterpolator) {
        this.P = timeInterpolator;
        n();
    }

    public void b(TimeInterpolator timeInterpolator) {
        this.O = timeInterpolator;
        n();
    }

    public void a(float f) {
        if (this.n != f) {
            this.n = f;
            n();
        }
    }

    public void b(float f) {
        if (this.o != f) {
            this.o = f;
            n();
        }
    }

    public void a(ColorStateList colorStateList) {
        if (this.q != colorStateList) {
            this.q = colorStateList;
            n();
        }
    }

    public void b(ColorStateList colorStateList) {
        if (this.p != colorStateList) {
            this.p = colorStateList;
            n();
        }
    }

    public void a(int i, int i2, int i3, int i4) {
        if (a(this.i, i, i2, i3, i4)) {
            return;
        }
        this.i.set(i, i2, i3, i4);
        this.L = true;
        d();
    }

    public void a(@ah Rect rect) {
        a(rect.left, rect.top, rect.right, rect.bottom);
    }

    public void b(int i, int i2, int i3, int i4) {
        if (a(this.j, i, i2, i3, i4)) {
            return;
        }
        this.j.set(i, i2, i3, i4);
        this.L = true;
        d();
    }

    public void b(@ah Rect rect) {
        b(rect.left, rect.top, rect.right, rect.bottom);
    }

    public void a(@ah RectF rectF, int i, int i2) {
        this.E = b(this.C);
        rectF.left = a(i, i2);
        rectF.top = this.j.top;
        rectF.right = b(rectF, i, i2);
        rectF.bottom = this.j.top + c();
    }

    private float a(int i, int i2) {
        if (i2 == 17 || (i2 & 7) == 1) {
            return (i / 2.0f) - (a() / 2.0f);
        }
        return ((i2 & androidx.core.n.h.c) == 8388613 || (i2 & 5) == 5) ? this.E ? this.j.left : this.j.right - a() : this.E ? this.j.right - a() : this.j.left;
    }

    private float b(@ah RectF rectF, int i, int i2) {
        if (i2 == 17 || (i2 & 7) == 1) {
            return (i / 2.0f) + (a() / 2.0f);
        }
        if ((i2 & androidx.core.n.h.c) == 8388613 || (i2 & 5) == 5) {
            return this.E ? rectF.left + a() : this.j.right;
        }
        if (this.E) {
            return this.j.right;
        }
        return a() + rectF.left;
    }

    public float a() {
        if (this.C == null) {
            return 0.0f;
        }
        b(this.N);
        return this.N.measureText(this.C, 0, this.C.length());
    }

    public float b() {
        a(this.N);
        return -this.N.ascent();
    }

    public float c() {
        b(this.N);
        return -this.N.ascent();
    }

    private void a(@ah TextPaint textPaint) {
        textPaint.setTextSize(this.n);
        textPaint.setTypeface(this.y);
    }

    private void b(@ah TextPaint textPaint) {
        textPaint.setTextSize(this.o);
        textPaint.setTypeface(this.x);
    }

    void d() {
        this.g = this.j.width() > 0 && this.j.height() > 0 && this.i.width() > 0 && this.i.height() > 0;
    }

    public void a(int i) {
        if (this.l != i) {
            this.l = i;
            n();
        }
    }

    public int e() {
        return this.l;
    }

    public void b(int i) {
        if (this.m != i) {
            this.m = i;
            n();
        }
    }

    public int f() {
        return this.m;
    }

    public void c(int i) {
        com.google.android.material.q.d dVar = new com.google.android.material.q.d(this.f.getContext(), i);
        if (dVar.b != null) {
            this.q = dVar.b;
        }
        if (dVar.f1370a != 0.0f) {
            this.o = dVar.f1370a;
        }
        if (dVar.i != null) {
            this.T = dVar.i;
        }
        this.R = dVar.j;
        this.S = dVar.k;
        this.Q = dVar.l;
        if (this.B != null) {
            this.B.a();
        }
        this.B = new com.google.android.material.q.a(new a.InterfaceC0092a() { // from class: com.google.android.material.internal.a.1
            @Override // com.google.android.material.q.a.InterfaceC0092a
            public void a(Typeface typeface) {
                a.this.a(typeface);
            }
        }, dVar.a());
        dVar.a(this.f.getContext(), this.B);
        n();
    }

    public void d(int i) {
        com.google.android.material.q.d dVar = new com.google.android.material.q.d(this.f.getContext(), i);
        if (dVar.b != null) {
            this.p = dVar.b;
        }
        if (dVar.f1370a != 0.0f) {
            this.n = dVar.f1370a;
        }
        if (dVar.i != null) {
            this.X = dVar.i;
        }
        this.V = dVar.j;
        this.W = dVar.k;
        this.U = dVar.l;
        if (this.A != null) {
            this.A.a();
        }
        this.A = new com.google.android.material.q.a(new a.InterfaceC0092a() { // from class: com.google.android.material.internal.a.2
            @Override // com.google.android.material.q.a.InterfaceC0092a
            public void a(Typeface typeface) {
                a.this.b(typeface);
            }
        }, dVar.a());
        dVar.a(this.f.getContext(), this.A);
        n();
    }

    public void a(Typeface typeface) {
        if (d(typeface)) {
            n();
        }
    }

    public void b(Typeface typeface) {
        if (e(typeface)) {
            n();
        }
    }

    public void c(Typeface typeface) {
        boolean d2 = d(typeface);
        boolean e2 = e(typeface);
        if (d2 || e2) {
            n();
        }
    }

    private boolean d(Typeface typeface) {
        if (this.B != null) {
            this.B.a();
        }
        if (this.x == typeface) {
            return false;
        }
        this.x = typeface;
        return true;
    }

    private boolean e(Typeface typeface) {
        if (this.A != null) {
            this.A.a();
        }
        if (this.y == typeface) {
            return false;
        }
        this.y = typeface;
        return true;
    }

    public Typeface g() {
        return this.x != null ? this.x : Typeface.DEFAULT;
    }

    public Typeface h() {
        return this.y != null ? this.y : Typeface.DEFAULT;
    }

    public void c(float f) {
        float a2 = androidx.core.g.a.a(f, 0.0f, 1.0f);
        if (a2 != this.h) {
            this.h = a2;
            s();
        }
    }

    public final boolean a(int[] iArr) {
        this.K = iArr;
        if (!i()) {
            return false;
        }
        n();
        return true;
    }

    public final boolean i() {
        return (this.q != null && this.q.isStateful()) || (this.p != null && this.p.isStateful());
    }

    public float j() {
        return this.h;
    }

    public float k() {
        return this.o;
    }

    public float l() {
        return this.n;
    }

    private void s() {
        d(this.h);
    }

    private void d(float f) {
        e(f);
        this.v = a(this.t, this.u, f, this.O);
        this.w = a(this.r, this.s, f, this.O);
        h(a(this.n, this.o, f, this.P));
        f(1.0f - a(0.0f, 1.0f, 1.0f - f, com.google.android.material.a.a.b));
        g(a(1.0f, 0.0f, f, com.google.android.material.a.a.b));
        if (this.q != this.p) {
            this.M.setColor(a(t(), m(), f));
        } else {
            this.M.setColor(m());
        }
        this.M.setShadowLayer(a(this.U, this.Q, f, (TimeInterpolator) null), a(this.V, this.R, f, (TimeInterpolator) null), a(this.W, this.S, f, (TimeInterpolator) null), a(c(this.X), c(this.T), f));
        af.h(this.f);
    }

    @androidx.annotation.k
    private int t() {
        return c(this.p);
    }

    @androidx.annotation.k
    public int m() {
        return c(this.q);
    }

    @androidx.annotation.k
    private int c(@ai ColorStateList colorStateList) {
        if (colorStateList == null) {
            return 0;
        }
        if (this.K != null) {
            return colorStateList.getColorForState(this.K, 0);
        }
        return colorStateList.getDefaultColor();
    }

    private void u() {
        float f = this.J;
        i(this.o);
        if (this.D != null && this.Y != null) {
            this.ac = TextUtils.ellipsize(this.D, this.M, this.Y.getWidth(), TextUtils.TruncateAt.END);
        }
        float measureText = this.ac != null ? this.M.measureText(this.ac, 0, this.ac.length()) : 0.0f;
        int a2 = androidx.core.n.h.a(this.m, this.E ? 1 : 0);
        int i = a2 & 112;
        if (i == 48) {
            this.s = this.j.top;
        } else if (i == 80) {
            this.s = this.j.bottom + this.M.ascent();
        } else {
            this.s = this.j.centerY() - ((this.M.descent() - this.M.ascent()) / 2.0f);
        }
        int i2 = a2 & androidx.core.n.h.d;
        if (i2 == 1) {
            this.u = this.j.centerX() - (measureText / 2.0f);
        } else if (i2 == 5) {
            this.u = this.j.right - measureText;
        } else {
            this.u = this.j.left;
        }
        i(this.n);
        float height = this.Y != null ? this.Y.getHeight() : 0.0f;
        float measureText2 = this.D != null ? this.M.measureText(this.D, 0, this.D.length()) : 0.0f;
        if (this.Y != null && this.ad > 1 && !this.E) {
            measureText2 = this.Y.getWidth();
        }
        this.ab = this.Y != null ? this.Y.getLineLeft(0) : 0.0f;
        int a3 = androidx.core.n.h.a(this.l, this.E ? 1 : 0);
        int i3 = a3 & 112;
        if (i3 == 48) {
            this.r = this.i.top;
        } else if (i3 != 80) {
            this.r = this.i.centerY() - (height / 2.0f);
        } else {
            this.r = (this.i.bottom - height) + this.M.descent();
        }
        int i4 = a3 & androidx.core.n.h.d;
        if (i4 == 1) {
            this.t = this.i.centerX() - (measureText2 / 2.0f);
        } else if (i4 == 5) {
            this.t = this.i.right - measureText2;
        } else {
            this.t = this.i.left;
        }
        y();
        h(f);
    }

    private void e(float f) {
        this.k.left = a(this.i.left, this.j.left, f, this.O);
        this.k.top = a(this.r, this.s, f, this.O);
        this.k.right = a(this.i.right, this.j.right, f, this.O);
        this.k.bottom = a(this.i.bottom, this.j.bottom, f, this.O);
    }

    private void f(float f) {
        this.Z = f;
        af.h(this.f);
    }

    private void g(float f) {
        this.aa = f;
        af.h(this.f);
    }

    public void a(@ah Canvas canvas) {
        int save = canvas.save();
        if (this.D == null || !this.g) {
            return;
        }
        boolean z = false;
        float lineLeft = (this.v + this.Y.getLineLeft(0)) - (this.ab * 2.0f);
        this.M.setTextSize(this.J);
        float f = this.v;
        float f2 = this.w;
        if (this.F && this.G != null) {
            z = true;
        }
        if (this.I != 1.0f) {
            canvas.scale(this.I, this.I, f, f2);
        }
        if (z) {
            canvas.drawBitmap(this.G, f, f2, this.H);
            canvas.restoreToCount(save);
            return;
        }
        if (v()) {
            a(canvas, lineLeft, f2);
        } else {
            canvas.translate(f, f2);
            this.Y.draw(canvas);
        }
        canvas.restoreToCount(save);
    }

    private boolean v() {
        return (this.ad <= 1 || this.E || this.F) ? false : true;
    }

    private void a(@ah Canvas canvas, float f, float f2) {
        int alpha = this.M.getAlpha();
        canvas.translate(f, f2);
        float f3 = alpha;
        this.M.setAlpha((int) (this.aa * f3));
        this.Y.draw(canvas);
        this.M.setAlpha((int) (this.Z * f3));
        float lineBaseline = this.Y.getLineBaseline(0);
        canvas.drawText(this.ac, 0, this.ac.length(), 0.0f, lineBaseline, this.M);
        String trim = this.ac.toString().trim();
        if (trim.endsWith(c)) {
            trim = trim.substring(0, trim.length() - 1);
        }
        String str = trim;
        this.M.setAlpha(alpha);
        canvas.drawText(str, 0, Math.min(this.Y.getLineEnd(0), str.length()), 0.0f, lineBaseline, (Paint) this.M);
    }

    private boolean b(@ah CharSequence charSequence) {
        return (w() ? androidx.core.l.f.d : androidx.core.l.f.c).a(charSequence, 0, charSequence.length());
    }

    private boolean w() {
        return af.p(this.f) == 1;
    }

    private void h(float f) {
        i(f);
        this.F = f1328a && this.I != 1.0f;
        if (this.F) {
            x();
        }
        af.h(this.f);
    }

    private void i(float f) {
        boolean z;
        float f2;
        boolean z2;
        if (this.C == null) {
            return;
        }
        float width = this.j.width();
        float width2 = this.i.width();
        if (a(f, this.o)) {
            f2 = this.o;
            this.I = 1.0f;
            if (this.z != this.x) {
                this.z = this.x;
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            float f3 = this.n;
            if (this.z != this.y) {
                this.z = this.y;
                z = true;
            } else {
                z = false;
            }
            if (a(f, this.n)) {
                this.I = 1.0f;
            } else {
                this.I = f / this.n;
            }
            float f4 = this.o / this.n;
            width = width2 * f4 > width ? Math.min(width / f4, width2) : width2;
            f2 = f3;
            z2 = z;
        }
        if (width > 0.0f) {
            z2 = this.J != f2 || this.L || z2;
            this.J = f2;
            this.L = false;
        }
        if (this.D == null || z2) {
            this.M.setTextSize(this.J);
            this.M.setTypeface(this.z);
            this.M.setLinearText(this.I != 1.0f);
            this.E = b(this.C);
            this.Y = a(v() ? this.ad : 1, width, this.E);
            this.D = this.Y.getText();
        }
    }

    private StaticLayout a(int i, float f, boolean z) {
        StaticLayout staticLayout;
        try {
            staticLayout = p.a(this.C, this.M, (int) f).a(TextUtils.TruncateAt.END).b(z).a(Layout.Alignment.ALIGN_NORMAL).a(false).c(i).a();
        } catch (p.a e2) {
            Log.e(b, e2.getCause().getMessage(), e2);
            staticLayout = null;
        }
        return (StaticLayout) androidx.core.m.i.a(staticLayout);
    }

    private void x() {
        if (this.G != null || this.i.isEmpty() || TextUtils.isEmpty(this.D)) {
            return;
        }
        d(0.0f);
        int width = this.Y.getWidth();
        int height = this.Y.getHeight();
        if (width <= 0 || height <= 0) {
            return;
        }
        this.G = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        this.Y.draw(new Canvas(this.G));
        if (this.H == null) {
            this.H = new Paint(3);
        }
    }

    public void n() {
        if (this.f.getHeight() <= 0 || this.f.getWidth() <= 0) {
            return;
        }
        u();
        s();
    }

    public void a(@ai CharSequence charSequence) {
        if (charSequence == null || !TextUtils.equals(this.C, charSequence)) {
            this.C = charSequence;
            this.D = null;
            y();
            n();
        }
    }

    @ai
    public CharSequence o() {
        return this.C;
    }

    private void y() {
        if (this.G != null) {
            this.G.recycle();
            this.G = null;
        }
    }

    public void e(int i) {
        if (i != this.ad) {
            this.ad = i;
            y();
            n();
        }
    }

    public int p() {
        return this.ad;
    }

    private static boolean a(float f, float f2) {
        return Math.abs(f - f2) < 0.001f;
    }

    public ColorStateList q() {
        return this.p;
    }

    public ColorStateList r() {
        return this.q;
    }

    private static int a(int i, int i2, float f) {
        float f2 = 1.0f - f;
        return Color.argb((int) ((Color.alpha(i) * f2) + (Color.alpha(i2) * f)), (int) ((Color.red(i) * f2) + (Color.red(i2) * f)), (int) ((Color.green(i) * f2) + (Color.green(i2) * f)), (int) ((Color.blue(i) * f2) + (Color.blue(i2) * f)));
    }

    private static float a(float f, float f2, float f3, @ai TimeInterpolator timeInterpolator) {
        if (timeInterpolator != null) {
            f3 = timeInterpolator.getInterpolation(f3);
        }
        return com.google.android.material.a.a.a(f, f2, f3);
    }

    private static boolean a(@ah Rect rect, int i, int i2, int i3, int i4) {
        return rect.left == i && rect.top == i2 && rect.right == i3 && rect.bottom == i4;
    }
}
