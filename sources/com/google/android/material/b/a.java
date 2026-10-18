package com.google.android.material.b;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.aj;
import androidx.annotation.ap;
import androidx.annotation.as;
import androidx.annotation.at;
import androidx.annotation.au;
import androidx.annotation.az;
import androidx.annotation.f;
import androidx.annotation.k;
import androidx.annotation.p;
import androidx.core.n.af;
import com.google.android.material.a;
import com.google.android.material.internal.q;
import com.google.android.material.internal.s;
import com.google.android.material.q.c;
import com.google.android.material.q.d;
import com.google.android.material.t.j;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;

/* loaded from: /home/user/work/dex/classes.dex */
public class a extends Drawable implements q.a {

    /* renamed from: a, reason: collision with root package name */
    public static final int f1174a = 8388661;
    public static final int b = 8388659;
    public static final int c = 8388693;
    public static final int d = 8388691;
    static final String e = "+";
    private static final int f = 4;
    private static final int g = -1;
    private static final int h = 9;

    @at
    private static final int i = a.n.Widget_MaterialComponents_Badge;

    @f
    private static final int j = a.c.badgeStyle;

    @ah
    private final WeakReference<Context> k;

    @ah
    private final j l;

    @ah
    private final q m;

    @ah
    private final Rect n;
    private final float o;
    private final float p;
    private final float q;

    @ah
    private final b r;
    private float s;
    private float t;
    private int u;
    private float v;
    private float w;
    private float x;

    @ai
    private WeakReference<View> y;

    @ai
    private WeakReference<ViewGroup> z;

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: com.google.android.material.b.a$a, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface InterfaceC0083a {
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    @ap(a = {ap.a.LIBRARY_GROUP})
    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class b implements Parcelable {
        public static final Parcelable.Creator<b> CREATOR = new Parcelable.Creator<b>() { // from class: com.google.android.material.b.a.b.1
            @Override // android.os.Parcelable.Creator
            @ah
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public b createFromParcel(@ah Parcel parcel) {
                return new b(parcel);
            }

            @Override // android.os.Parcelable.Creator
            @ah
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public b[] newArray(int i) {
                return new b[i];
            }
        };

        /* renamed from: a, reason: collision with root package name */
        @k
        private int f1175a;

        @k
        private int b;
        private int c;
        private int d;
        private int e;

        @ai
        private CharSequence f;

        @aj
        private int g;

        @as
        private int h;
        private int i;

        @p(a = 1)
        private int j;

        @p(a = 1)
        private int k;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public b(@ah Context context) {
            this.c = 255;
            this.d = -1;
            this.b = new d(context, a.n.TextAppearance_MaterialComponents_Badge).b.getDefaultColor();
            this.f = context.getString(a.m.mtrl_badge_numberless_content_description);
            this.g = a.l.mtrl_badge_content_description;
            this.h = a.m.mtrl_exceed_max_badge_number_content_description;
        }

        protected b(@ah Parcel parcel) {
            this.c = 255;
            this.d = -1;
            this.f1175a = parcel.readInt();
            this.b = parcel.readInt();
            this.c = parcel.readInt();
            this.d = parcel.readInt();
            this.e = parcel.readInt();
            this.f = parcel.readString();
            this.g = parcel.readInt();
            this.i = parcel.readInt();
            this.j = parcel.readInt();
            this.k = parcel.readInt();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@ah Parcel parcel, int i) {
            parcel.writeInt(this.f1175a);
            parcel.writeInt(this.b);
            parcel.writeInt(this.c);
            parcel.writeInt(this.d);
            parcel.writeInt(this.e);
            parcel.writeString(this.f.toString());
            parcel.writeInt(this.g);
            parcel.writeInt(this.i);
            parcel.writeInt(this.j);
            parcel.writeInt(this.k);
        }
    }

    @ah
    public b a() {
        return this.r;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ah
    public static a a(@ah Context context, @ah b bVar) {
        a aVar = new a(context);
        aVar.a(bVar);
        return aVar;
    }

    @ah
    public static a a(@ah Context context) {
        return a(context, null, j, i);
    }

    @ah
    public static a a(@ah Context context, @az int i2) {
        AttributeSet a2 = com.google.android.material.j.a.a(context, i2, "badge");
        int styleAttribute = a2.getStyleAttribute();
        if (styleAttribute == 0) {
            styleAttribute = i;
        }
        return a(context, a2, j, styleAttribute);
    }

    @ah
    private static a a(@ah Context context, AttributeSet attributeSet, @f int i2, @at int i3) {
        a aVar = new a(context);
        aVar.b(context, attributeSet, i2, i3);
        return aVar;
    }

    public void a(boolean z) {
        setVisible(z, false);
    }

    private void a(@ah b bVar) {
        d(bVar.e);
        if (bVar.d != -1) {
            c(bVar.d);
        }
        a(bVar.f1175a);
        b(bVar.b);
        e(bVar.i);
        h(bVar.j);
        i(bVar.k);
    }

    private void b(Context context, AttributeSet attributeSet, @f int i2, @at int i3) {
        TypedArray a2 = s.a(context, attributeSet, a.o.Badge, i2, i3, new int[0]);
        d(a2.getInt(a.o.Badge_maxCharacterCount, 4));
        if (a2.hasValue(a.o.Badge_number)) {
            c(a2.getInt(a.o.Badge_number, 0));
        }
        a(a(context, a2, a.o.Badge_backgroundColor));
        if (a2.hasValue(a.o.Badge_badgeTextColor)) {
            b(a(context, a2, a.o.Badge_badgeTextColor));
        }
        e(a2.getInt(a.o.Badge_badgeGravity, f1174a));
        h(a2.getDimensionPixelOffset(a.o.Badge_horizontalOffset, 0));
        i(a2.getDimensionPixelOffset(a.o.Badge_verticalOffset, 0));
        a2.recycle();
    }

    private static int a(Context context, @ah TypedArray typedArray, @au int i2) {
        return c.a(context, typedArray, i2).getDefaultColor();
    }

    private a(@ah Context context) {
        this.k = new WeakReference<>(context);
        s.b(context);
        Resources resources = context.getResources();
        this.n = new Rect();
        this.l = new j();
        this.o = resources.getDimensionPixelSize(a.f.mtrl_badge_radius);
        this.q = resources.getDimensionPixelSize(a.f.mtrl_badge_long_text_horizontal_padding);
        this.p = resources.getDimensionPixelSize(a.f.mtrl_badge_with_text_radius);
        this.m = new q(this);
        this.m.a().setTextAlign(Paint.Align.CENTER);
        this.r = new b(context);
        j(a.n.TextAppearance_MaterialComponents_Badge);
    }

    public void a(@ah View view, @ai ViewGroup viewGroup) {
        this.y = new WeakReference<>(view);
        this.z = new WeakReference<>(viewGroup);
        m();
        invalidateSelf();
    }

    @k
    public int b() {
        return this.l.U().getDefaultColor();
    }

    public void a(@k int i2) {
        this.r.f1175a = i2;
        ColorStateList valueOf = ColorStateList.valueOf(i2);
        if (this.l.U() != valueOf) {
            this.l.g(valueOf);
            invalidateSelf();
        }
    }

    @k
    public int c() {
        return this.m.a().getColor();
    }

    public void b(@k int i2) {
        this.r.b = i2;
        if (this.m.a().getColor() != i2) {
            this.m.a().setColor(i2);
            invalidateSelf();
        }
    }

    public boolean d() {
        return this.r.d != -1;
    }

    public int e() {
        if (d()) {
            return this.r.d;
        }
        return 0;
    }

    public void c(int i2) {
        int max = Math.max(0, i2);
        if (this.r.d != max) {
            this.r.d = max;
            this.m.a(true);
            m();
            invalidateSelf();
        }
    }

    public void f() {
        this.r.d = -1;
        invalidateSelf();
    }

    public int g() {
        return this.r.e;
    }

    public void d(int i2) {
        if (this.r.e != i2) {
            this.r.e = i2;
            o();
            this.m.a(true);
            m();
            invalidateSelf();
        }
    }

    public int h() {
        return this.r.i;
    }

    public void e(int i2) {
        if (this.r.i != i2) {
            this.r.i = i2;
            if (this.y == null || this.y.get() == null) {
                return;
            }
            a(this.y.get(), this.z != null ? this.z.get() : null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.r.c;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.r.c = i2;
        this.m.a().setAlpha(i2);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.n.height();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.n.width();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@ah Canvas canvas) {
        if (getBounds().isEmpty() || getAlpha() == 0 || !isVisible()) {
            return;
        }
        this.l.draw(canvas);
        if (d()) {
            a(canvas);
        }
    }

    @Override // com.google.android.material.internal.q.a
    @ap(a = {ap.a.LIBRARY_GROUP})
    public void i() {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable, com.google.android.material.internal.q.a
    public boolean onStateChange(int[] iArr) {
        return super.onStateChange(iArr);
    }

    public void a(CharSequence charSequence) {
        this.r.f = charSequence;
    }

    public void f(@as int i2) {
        this.r.g = i2;
    }

    public void g(@as int i2) {
        this.r.h = i2;
    }

    @ai
    public CharSequence j() {
        Context context;
        if (!isVisible()) {
            return null;
        }
        if (d()) {
            if (this.r.g <= 0 || (context = this.k.get()) == null) {
                return null;
            }
            if (e() <= this.u) {
                return context.getResources().getQuantityString(this.r.g, e(), Integer.valueOf(e()));
            }
            return context.getString(this.r.h, Integer.valueOf(this.u));
        }
        return this.r.f;
    }

    public void h(int i2) {
        this.r.j = i2;
        m();
    }

    public int k() {
        return this.r.j;
    }

    public void i(int i2) {
        this.r.k = i2;
        m();
    }

    public int l() {
        return this.r.k;
    }

    private void j(@at int i2) {
        Context context = this.k.get();
        if (context == null) {
            return;
        }
        a(new d(context, i2));
    }

    private void a(@ai d dVar) {
        Context context;
        if (this.m.c() == dVar || (context = this.k.get()) == null) {
            return;
        }
        this.m.a(dVar, context);
        m();
    }

    private void m() {
        Context context = this.k.get();
        View view = this.y != null ? this.y.get() : null;
        if (context == null || view == null) {
            return;
        }
        Rect rect = new Rect();
        rect.set(this.n);
        Rect rect2 = new Rect();
        view.getDrawingRect(rect2);
        ViewGroup viewGroup = this.z != null ? this.z.get() : null;
        if (viewGroup != null || com.google.android.material.b.b.f1176a) {
            if (viewGroup == null) {
                viewGroup = (ViewGroup) view.getParent();
            }
            viewGroup.offsetDescendantRectToMyCoords(view, rect2);
        }
        a(context, rect2, view);
        com.google.android.material.b.b.a(this.n, this.s, this.t, this.w, this.x);
        this.l.o(this.v);
        if (rect.equals(this.n)) {
            return;
        }
        this.l.setBounds(this.n);
    }

    private void a(@ah Context context, @ah Rect rect, @ah View view) {
        int i2 = this.r.i;
        if (i2 == 8388691 || i2 == 8388693) {
            this.t = rect.bottom - this.r.k;
        } else {
            this.t = rect.top + this.r.k;
        }
        if (e() <= 9) {
            this.v = !d() ? this.o : this.p;
            this.x = this.v;
            this.w = this.v;
        } else {
            this.v = this.p;
            this.x = this.v;
            this.w = (this.m.a(n()) / 2.0f) + this.q;
        }
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(d() ? a.f.mtrl_badge_text_horizontal_edge_offset : a.f.mtrl_badge_horizontal_edge_offset);
        int i3 = this.r.i;
        if (i3 == 8388659 || i3 == 8388691) {
            this.s = af.p(view) == 0 ? (rect.left - this.w) + dimensionPixelSize + this.r.j : ((rect.right + this.w) - dimensionPixelSize) - this.r.j;
        } else {
            this.s = af.p(view) == 0 ? ((rect.right + this.w) - dimensionPixelSize) - this.r.j : (rect.left - this.w) + dimensionPixelSize + this.r.j;
        }
    }

    private void a(Canvas canvas) {
        Rect rect = new Rect();
        String n = n();
        this.m.a().getTextBounds(n, 0, n.length(), rect);
        canvas.drawText(n, this.s, this.t + (rect.height() / 2), this.m.a());
    }

    @ah
    private String n() {
        if (e() <= this.u) {
            return Integer.toString(e());
        }
        Context context = this.k.get();
        return context == null ? com.yftech.service.upgrade.a.d : context.getString(a.m.mtrl_exceed_max_badge_number_suffix, Integer.valueOf(this.u), e);
    }

    private void o() {
        this.u = ((int) Math.pow(10.0d, g() - 1.0d)) - 1;
    }
}
