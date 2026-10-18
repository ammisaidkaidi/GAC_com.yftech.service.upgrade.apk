package com.google.android.material.q;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.os.Handler;
import android.text.TextPaint;
import android.util.Log;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import androidx.annotation.at;
import androidx.annotation.ax;
import androidx.annotation.s;
import androidx.core.b.b.g;
import androidx.core.n.af;
import com.google.android.material.a;

@ap(a = {ap.a.LIBRARY_GROUP})
/* loaded from: /home/user/work/dex/classes.dex */
public class d {
    private static final String m = "TextAppearance";
    private static final int n = 1;
    private static final int o = 2;
    private static final int p = 3;

    /* renamed from: a, reason: collision with root package name */
    public final float f1370a;

    @ai
    public final ColorStateList b;

    @ai
    public final ColorStateList c;

    @ai
    public final ColorStateList d;
    public final int e;
    public final int f;

    @ai
    public final String g;
    public final boolean h;

    @ai
    public final ColorStateList i;
    public final float j;
    public final float k;
    public final float l;

    @s
    private final int q;
    private boolean r = false;
    private Typeface s;

    public d(@ah Context context, @at int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, a.o.TextAppearance);
        this.f1370a = obtainStyledAttributes.getDimension(a.o.TextAppearance_android_textSize, 0.0f);
        this.b = c.a(context, obtainStyledAttributes, a.o.TextAppearance_android_textColor);
        this.c = c.a(context, obtainStyledAttributes, a.o.TextAppearance_android_textColorHint);
        this.d = c.a(context, obtainStyledAttributes, a.o.TextAppearance_android_textColorLink);
        this.e = obtainStyledAttributes.getInt(a.o.TextAppearance_android_textStyle, 0);
        this.f = obtainStyledAttributes.getInt(a.o.TextAppearance_android_typeface, 1);
        int a2 = c.a(obtainStyledAttributes, a.o.TextAppearance_fontFamily, a.o.TextAppearance_android_fontFamily);
        this.q = obtainStyledAttributes.getResourceId(a2, 0);
        this.g = obtainStyledAttributes.getString(a2);
        this.h = obtainStyledAttributes.getBoolean(a.o.TextAppearance_textAllCaps, false);
        this.i = c.a(context, obtainStyledAttributes, a.o.TextAppearance_android_shadowColor);
        this.j = obtainStyledAttributes.getFloat(a.o.TextAppearance_android_shadowDx, 0.0f);
        this.k = obtainStyledAttributes.getFloat(a.o.TextAppearance_android_shadowDy, 0.0f);
        this.l = obtainStyledAttributes.getFloat(a.o.TextAppearance_android_shadowRadius, 0.0f);
        obtainStyledAttributes.recycle();
    }

    @ah
    @ax
    public Typeface a(@ah Context context) {
        if (this.r) {
            return this.s;
        }
        if (!context.isRestricted()) {
            try {
                this.s = g.a(context, this.q);
                if (this.s != null) {
                    this.s = Typeface.create(this.s, this.e);
                }
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            } catch (Exception e) {
                Log.d(m, "Error loading font " + this.g, e);
            }
        }
        b();
        this.r = true;
        return this.s;
    }

    public void a(@ah Context context, @ah final f fVar) {
        if (e.a()) {
            a(context);
        } else {
            b();
        }
        if (this.q == 0) {
            this.r = true;
        }
        if (this.r) {
            fVar.a(this.s, true);
            return;
        }
        try {
            g.a(context, this.q, new g.a() { // from class: com.google.android.material.q.d.1
                @Override // androidx.core.b.b.g.a
                public void a(@ah Typeface typeface) {
                    d.this.s = Typeface.create(typeface, d.this.e);
                    d.this.r = true;
                    fVar.a(d.this.s, false);
                }

                @Override // androidx.core.b.b.g.a
                public void a(int i) {
                    d.this.r = true;
                    fVar.a(i);
                }
            }, (Handler) null);
        } catch (Resources.NotFoundException unused) {
            this.r = true;
            fVar.a(1);
        } catch (Exception e) {
            Log.d(m, "Error loading font " + this.g, e);
            this.r = true;
            fVar.a(-3);
        }
    }

    public void a(@ah Context context, @ah final TextPaint textPaint, @ah final f fVar) {
        a(textPaint, a());
        a(context, new f() { // from class: com.google.android.material.q.d.2
            @Override // com.google.android.material.q.f
            public void a(@ah Typeface typeface, boolean z) {
                d.this.a(textPaint, typeface);
                fVar.a(typeface, z);
            }

            @Override // com.google.android.material.q.f
            public void a(int i) {
                fVar.a(i);
            }
        });
    }

    public Typeface a() {
        b();
        return this.s;
    }

    private void b() {
        if (this.s == null && this.g != null) {
            this.s = Typeface.create(this.g, this.e);
        }
        if (this.s == null) {
            switch (this.f) {
                case 1:
                    this.s = Typeface.SANS_SERIF;
                    break;
                case 2:
                    this.s = Typeface.SERIF;
                    break;
                case 3:
                    this.s = Typeface.MONOSPACE;
                    break;
                default:
                    this.s = Typeface.DEFAULT;
                    break;
            }
            this.s = Typeface.create(this.s, this.e);
        }
    }

    public void b(@ah Context context, @ah TextPaint textPaint, @ah f fVar) {
        c(context, textPaint, fVar);
        textPaint.setColor(this.b != null ? this.b.getColorForState(textPaint.drawableState, this.b.getDefaultColor()) : af.s);
        textPaint.setShadowLayer(this.l, this.j, this.k, this.i != null ? this.i.getColorForState(textPaint.drawableState, this.i.getDefaultColor()) : 0);
    }

    public void c(@ah Context context, @ah TextPaint textPaint, @ah f fVar) {
        if (e.a()) {
            a(textPaint, a(context));
        } else {
            a(context, textPaint, fVar);
        }
    }

    public void a(@ah TextPaint textPaint, @ah Typeface typeface) {
        textPaint.setTypeface(typeface);
        int i = (~typeface.getStyle()) & this.e;
        textPaint.setFakeBoldText((i & 1) != 0);
        textPaint.setTextSkewX((i & 2) != 0 ? -0.25f : 0.0f);
        textPaint.setTextSize(this.f1370a);
    }
}
