package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.LocaleList;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.annotation.ap;
import androidx.appcompat.a;
import androidx.core.b.b.g;
import java.lang.ref.WeakReference;
import java.util.Locale;

/* loaded from: /home/user/work/dex/classes.dex */
class z {

    /* renamed from: a, reason: collision with root package name */
    private static final int f297a = -1;
    private static final int b = 1;
    private static final int c = 2;
    private static final int d = 3;

    @androidx.annotation.ah
    private final TextView e;
    private ay f;
    private ay g;
    private ay h;
    private ay i;
    private ay j;
    private ay k;
    private ay l;

    @androidx.annotation.ah
    private final ab m;
    private int n = 0;
    private int o = -1;
    private Typeface p;
    private boolean q;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(@androidx.annotation.ah TextView textView) {
        this.e = textView;
        this.m = new ab(this.e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:157:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0126  */
    @SuppressLint({"NewApi"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(@androidx.annotation.ai AttributeSet attributeSet, int i) {
        boolean z;
        boolean z2;
        ColorStateList colorStateList;
        String str;
        ColorStateList colorStateList2;
        String str2;
        ColorStateList colorStateList3;
        boolean z3;
        int i2;
        Context context = this.e.getContext();
        k b2 = k.b();
        ba a2 = ba.a(context, attributeSet, a.m.AppCompatTextHelper, i, 0);
        androidx.core.n.af.a(this.e, this.e.getContext(), a.m.AppCompatTextHelper, attributeSet, a2.a(), i, 0);
        int g = a2.g(a.m.AppCompatTextHelper_android_textAppearance, -1);
        if (a2.j(a.m.AppCompatTextHelper_android_drawableLeft)) {
            this.f = a(context, b2, a2.g(a.m.AppCompatTextHelper_android_drawableLeft, 0));
        }
        if (a2.j(a.m.AppCompatTextHelper_android_drawableTop)) {
            this.g = a(context, b2, a2.g(a.m.AppCompatTextHelper_android_drawableTop, 0));
        }
        if (a2.j(a.m.AppCompatTextHelper_android_drawableRight)) {
            this.h = a(context, b2, a2.g(a.m.AppCompatTextHelper_android_drawableRight, 0));
        }
        if (a2.j(a.m.AppCompatTextHelper_android_drawableBottom)) {
            this.i = a(context, b2, a2.g(a.m.AppCompatTextHelper_android_drawableBottom, 0));
        }
        if (Build.VERSION.SDK_INT >= 17) {
            if (a2.j(a.m.AppCompatTextHelper_android_drawableStart)) {
                this.j = a(context, b2, a2.g(a.m.AppCompatTextHelper_android_drawableStart, 0));
            }
            if (a2.j(a.m.AppCompatTextHelper_android_drawableEnd)) {
                this.k = a(context, b2, a2.g(a.m.AppCompatTextHelper_android_drawableEnd, 0));
            }
        }
        a2.f();
        boolean z4 = this.e.getTransformationMethod() instanceof PasswordTransformationMethod;
        if (g != -1) {
            ba a3 = ba.a(context, g, a.m.TextAppearance);
            if (z4 || !a3.j(a.m.TextAppearance_textAllCaps)) {
                z = false;
                z2 = false;
            } else {
                z2 = a3.a(a.m.TextAppearance_textAllCaps, false);
                z = true;
            }
            a(context, a3);
            if (Build.VERSION.SDK_INT < 23) {
                ColorStateList g2 = a3.j(a.m.TextAppearance_android_textColor) ? a3.g(a.m.TextAppearance_android_textColor) : null;
                colorStateList = a3.j(a.m.TextAppearance_android_textColorHint) ? a3.g(a.m.TextAppearance_android_textColorHint) : null;
                if (a3.j(a.m.TextAppearance_android_textColorLink)) {
                    ColorStateList colorStateList4 = g2;
                    colorStateList3 = a3.g(a.m.TextAppearance_android_textColorLink);
                    colorStateList2 = colorStateList4;
                    str2 = !a3.j(a.m.TextAppearance_textLocale) ? a3.e(a.m.TextAppearance_textLocale) : null;
                    str = (Build.VERSION.SDK_INT >= 26 || !a3.j(a.m.TextAppearance_fontVariationSettings)) ? null : a3.e(a.m.TextAppearance_fontVariationSettings);
                    a3.f();
                } else {
                    colorStateList2 = g2;
                }
            } else {
                colorStateList = null;
                colorStateList2 = null;
            }
            colorStateList3 = null;
            if (!a3.j(a.m.TextAppearance_textLocale)) {
            }
            if (Build.VERSION.SDK_INT >= 26) {
            }
            a3.f();
        } else {
            z = false;
            z2 = false;
            colorStateList = null;
            str = null;
            colorStateList2 = null;
            str2 = null;
            colorStateList3 = null;
        }
        ba a4 = ba.a(context, attributeSet, a.m.TextAppearance, i, 0);
        if (z4 || !a4.j(a.m.TextAppearance_textAllCaps)) {
            z3 = z;
        } else {
            z2 = a4.a(a.m.TextAppearance_textAllCaps, false);
            z3 = true;
        }
        if (Build.VERSION.SDK_INT < 23) {
            if (a4.j(a.m.TextAppearance_android_textColor)) {
                colorStateList2 = a4.g(a.m.TextAppearance_android_textColor);
            }
            if (a4.j(a.m.TextAppearance_android_textColorHint)) {
                colorStateList = a4.g(a.m.TextAppearance_android_textColorHint);
            }
            if (a4.j(a.m.TextAppearance_android_textColorLink)) {
                colorStateList3 = a4.g(a.m.TextAppearance_android_textColorLink);
            }
        }
        if (a4.j(a.m.TextAppearance_textLocale)) {
            str2 = a4.e(a.m.TextAppearance_textLocale);
        }
        if (Build.VERSION.SDK_INT >= 26 && a4.j(a.m.TextAppearance_fontVariationSettings)) {
            str = a4.e(a.m.TextAppearance_fontVariationSettings);
        }
        if (Build.VERSION.SDK_INT >= 28 && a4.j(a.m.TextAppearance_android_textSize) && a4.e(a.m.TextAppearance_android_textSize, -1) == 0) {
            this.e.setTextSize(0, 0.0f);
        }
        a(context, a4);
        a4.f();
        if (colorStateList2 != null) {
            this.e.setTextColor(colorStateList2);
        }
        if (colorStateList != null) {
            this.e.setHintTextColor(colorStateList);
        }
        if (colorStateList3 != null) {
            this.e.setLinkTextColor(colorStateList3);
        }
        if (!z4 && z3) {
            a(z2);
        }
        if (this.p != null) {
            if (this.o == -1) {
                this.e.setTypeface(this.p, this.n);
            } else {
                this.e.setTypeface(this.p);
            }
        }
        if (str != null) {
            this.e.setFontVariationSettings(str);
        }
        if (str2 != null) {
            if (Build.VERSION.SDK_INT >= 24) {
                this.e.setTextLocales(LocaleList.forLanguageTags(str2));
            } else if (Build.VERSION.SDK_INT >= 21) {
                this.e.setTextLocale(Locale.forLanguageTag(str2.substring(0, str2.indexOf(44))));
            }
        }
        this.m.a(attributeSet, i);
        if (androidx.core.widget.b.d && this.m.a() != 0) {
            int[] e = this.m.e();
            if (e.length > 0) {
                if (this.e.getAutoSizeStepGranularity() != -1.0f) {
                    this.e.setAutoSizeTextTypeUniformWithConfiguration(this.m.c(), this.m.d(), this.m.b(), 0);
                } else {
                    this.e.setAutoSizeTextTypeUniformWithPresetSizes(e, 0);
                }
            }
        }
        ba a5 = ba.a(context, attributeSet, a.m.AppCompatTextView);
        int g3 = a5.g(a.m.AppCompatTextView_drawableLeftCompat, -1);
        Drawable a6 = g3 != -1 ? b2.a(context, g3) : null;
        int g4 = a5.g(a.m.AppCompatTextView_drawableTopCompat, -1);
        Drawable a7 = g4 != -1 ? b2.a(context, g4) : null;
        int g5 = a5.g(a.m.AppCompatTextView_drawableRightCompat, -1);
        Drawable a8 = g5 != -1 ? b2.a(context, g5) : null;
        int g6 = a5.g(a.m.AppCompatTextView_drawableBottomCompat, -1);
        Drawable a9 = g6 != -1 ? b2.a(context, g6) : null;
        int g7 = a5.g(a.m.AppCompatTextView_drawableStartCompat, -1);
        Drawable a10 = g7 != -1 ? b2.a(context, g7) : null;
        int g8 = a5.g(a.m.AppCompatTextView_drawableEndCompat, -1);
        a(a6, a7, a8, a9, a10, g8 != -1 ? b2.a(context, g8) : null);
        if (a5.j(a.m.AppCompatTextView_drawableTint)) {
            androidx.core.widget.m.a(this.e, a5.g(a.m.AppCompatTextView_drawableTint));
        }
        if (a5.j(a.m.AppCompatTextView_drawableTintMode)) {
            i2 = -1;
            androidx.core.widget.m.a(this.e, af.a(a5.a(a.m.AppCompatTextView_drawableTintMode, -1), null));
        } else {
            i2 = -1;
        }
        int e2 = a5.e(a.m.AppCompatTextView_firstBaselineToTopHeight, i2);
        int e3 = a5.e(a.m.AppCompatTextView_lastBaselineToBottomHeight, i2);
        int e4 = a5.e(a.m.AppCompatTextView_lineHeight, i2);
        a5.f();
        if (e2 != i2) {
            androidx.core.widget.m.c(this.e, e2);
        }
        if (e3 != i2) {
            androidx.core.widget.m.d(this.e, e3);
        }
        if (e4 != i2) {
            androidx.core.widget.m.e(this.e, e4);
        }
    }

    private void a(Context context, ba baVar) {
        int i;
        String e;
        this.n = baVar.a(a.m.TextAppearance_android_textStyle, this.n);
        if (Build.VERSION.SDK_INT >= 28) {
            this.o = baVar.a(a.m.TextAppearance_android_textFontWeight, -1);
            if (this.o != -1) {
                this.n = (this.n & 2) | 0;
            }
        }
        if (baVar.j(a.m.TextAppearance_android_fontFamily) || baVar.j(a.m.TextAppearance_fontFamily)) {
            this.p = null;
            if (baVar.j(a.m.TextAppearance_fontFamily)) {
                i = a.m.TextAppearance_fontFamily;
            } else {
                i = a.m.TextAppearance_android_fontFamily;
            }
            final int i2 = this.o;
            final int i3 = this.n;
            if (!context.isRestricted()) {
                final WeakReference weakReference = new WeakReference(this.e);
                try {
                    Typeface a2 = baVar.a(i, this.n, new g.a() { // from class: androidx.appcompat.widget.z.1
                        @Override // androidx.core.b.b.g.a
                        public void a(int i4) {
                        }

                        @Override // androidx.core.b.b.g.a
                        public void a(@androidx.annotation.ah Typeface typeface) {
                            if (Build.VERSION.SDK_INT >= 28 && i2 != -1) {
                                typeface = Typeface.create(typeface, i2, (i3 & 2) != 0);
                            }
                            z.this.a(weakReference, typeface);
                        }
                    });
                    if (a2 != null) {
                        if (Build.VERSION.SDK_INT >= 28 && this.o != -1) {
                            this.p = Typeface.create(Typeface.create(a2, 0), this.o, (this.n & 2) != 0);
                        } else {
                            this.p = a2;
                        }
                    }
                    this.q = this.p == null;
                } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
                }
            }
            if (this.p != null || (e = baVar.e(i)) == null) {
                return;
            }
            if (Build.VERSION.SDK_INT >= 28 && this.o != -1) {
                this.p = Typeface.create(Typeface.create(e, 0), this.o, (this.n & 2) != 0);
                return;
            } else {
                this.p = Typeface.create(e, this.n);
                return;
            }
        }
        if (baVar.j(a.m.TextAppearance_android_typeface)) {
            this.q = false;
            switch (baVar.a(a.m.TextAppearance_android_typeface, 1)) {
                case 1:
                    this.p = Typeface.SANS_SERIF;
                    return;
                case 2:
                    this.p = Typeface.SERIF;
                    return;
                case 3:
                    this.p = Typeface.MONOSPACE;
                    return;
                default:
                    return;
            }
        }
    }

    void a(WeakReference<TextView> weakReference, Typeface typeface) {
        if (this.q) {
            this.p = typeface;
            TextView textView = weakReference.get();
            if (textView != null) {
                textView.setTypeface(typeface, this.n);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Context context, int i) {
        String e;
        ColorStateList g;
        ba a2 = ba.a(context, i, a.m.TextAppearance);
        if (a2.j(a.m.TextAppearance_textAllCaps)) {
            a(a2.a(a.m.TextAppearance_textAllCaps, false));
        }
        if (Build.VERSION.SDK_INT < 23 && a2.j(a.m.TextAppearance_android_textColor) && (g = a2.g(a.m.TextAppearance_android_textColor)) != null) {
            this.e.setTextColor(g);
        }
        if (a2.j(a.m.TextAppearance_android_textSize) && a2.e(a.m.TextAppearance_android_textSize, -1) == 0) {
            this.e.setTextSize(0, 0.0f);
        }
        a(context, a2);
        if (Build.VERSION.SDK_INT >= 26 && a2.j(a.m.TextAppearance_fontVariationSettings) && (e = a2.e(a.m.TextAppearance_fontVariationSettings)) != null) {
            this.e.setFontVariationSettings(e);
        }
        a2.f();
        if (this.p != null) {
            this.e.setTypeface(this.p, this.n);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
        this.e.setAllCaps(z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        if (this.f != null || this.g != null || this.h != null || this.i != null) {
            Drawable[] compoundDrawables = this.e.getCompoundDrawables();
            a(compoundDrawables[0], this.f);
            a(compoundDrawables[1], this.g);
            a(compoundDrawables[2], this.h);
            a(compoundDrawables[3], this.i);
        }
        if (Build.VERSION.SDK_INT >= 17) {
            if (this.j == null && this.k == null) {
                return;
            }
            Drawable[] compoundDrawablesRelative = this.e.getCompoundDrawablesRelative();
            a(compoundDrawablesRelative[0], this.j);
            a(compoundDrawablesRelative[2], this.k);
        }
    }

    private void a(Drawable drawable, ay ayVar) {
        if (drawable == null || ayVar == null) {
            return;
        }
        k.a(drawable, ayVar, this.e.getDrawableState());
    }

    private static ay a(Context context, k kVar, int i) {
        ColorStateList b2 = kVar.b(context, i);
        if (b2 == null) {
            return null;
        }
        ay ayVar = new ay();
        ayVar.d = true;
        ayVar.f241a = b2;
        return ayVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void a(boolean z, int i, int i2, int i3, int i4) {
        if (androidx.core.widget.b.d) {
            return;
        }
        c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void a(int i, float f) {
        if (androidx.core.widget.b.d || d()) {
            return;
        }
        b(i, f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void c() {
        this.m.f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public boolean d() {
        return this.m.g();
    }

    private void b(int i, float f) {
        this.m.a(i, f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i) {
        this.m.a(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, int i2, int i3, int i4) {
        this.m.a(i, i2, i3, i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@androidx.annotation.ah int[] iArr, int i) {
        this.m.a(iArr, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int e() {
        return this.m.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int f() {
        return this.m.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int g() {
        return this.m.c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int h() {
        return this.m.d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int[] i() {
        return this.m.e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @androidx.annotation.ai
    public ColorStateList j() {
        if (this.l != null) {
            return this.l.f241a;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@androidx.annotation.ai ColorStateList colorStateList) {
        if (this.l == null) {
            this.l = new ay();
        }
        this.l.f241a = colorStateList;
        this.l.d = colorStateList != null;
        l();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @androidx.annotation.ai
    public PorterDuff.Mode k() {
        if (this.l != null) {
            return this.l.b;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@androidx.annotation.ai PorterDuff.Mode mode) {
        if (this.l == null) {
            this.l = new ay();
        }
        this.l.b = mode;
        this.l.c = mode != null;
        l();
    }

    private void l() {
        this.f = this.l;
        this.g = this.l;
        this.h = this.l;
        this.i = this.l;
        this.j = this.l;
        this.k = this.l;
    }

    private void a(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4, Drawable drawable5, Drawable drawable6) {
        if (Build.VERSION.SDK_INT >= 17 && (drawable5 != null || drawable6 != null)) {
            Drawable[] compoundDrawablesRelative = this.e.getCompoundDrawablesRelative();
            TextView textView = this.e;
            if (drawable5 == null) {
                drawable5 = compoundDrawablesRelative[0];
            }
            if (drawable2 == null) {
                drawable2 = compoundDrawablesRelative[1];
            }
            if (drawable6 == null) {
                drawable6 = compoundDrawablesRelative[2];
            }
            if (drawable4 == null) {
                drawable4 = compoundDrawablesRelative[3];
            }
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable5, drawable2, drawable6, drawable4);
            return;
        }
        if (drawable == null && drawable2 == null && drawable3 == null && drawable4 == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 17) {
            Drawable[] compoundDrawablesRelative2 = this.e.getCompoundDrawablesRelative();
            if (compoundDrawablesRelative2[0] != null || compoundDrawablesRelative2[2] != null) {
                TextView textView2 = this.e;
                Drawable drawable7 = compoundDrawablesRelative2[0];
                if (drawable2 == null) {
                    drawable2 = compoundDrawablesRelative2[1];
                }
                Drawable drawable8 = compoundDrawablesRelative2[2];
                if (drawable4 == null) {
                    drawable4 = compoundDrawablesRelative2[3];
                }
                textView2.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable7, drawable2, drawable8, drawable4);
                return;
            }
        }
        Drawable[] compoundDrawables = this.e.getCompoundDrawables();
        TextView textView3 = this.e;
        if (drawable == null) {
            drawable = compoundDrawables[0];
        }
        if (drawable2 == null) {
            drawable2 = compoundDrawables[1];
        }
        if (drawable3 == null) {
            drawable3 = compoundDrawables[2];
        }
        if (drawable4 == null) {
            drawable4 = compoundDrawables[3];
        }
        textView3.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
    }
}
