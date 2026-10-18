package com.google.android.material.k;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import androidx.annotation.ah;
import androidx.annotation.k;
import androidx.core.graphics.e;
import com.google.android.material.a;
import com.google.android.material.internal.z;
import com.google.android.material.q.b;

/* loaded from: /home/user/work/dex/classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static final float f1360a = 4.5f;
    private static final float b = 2.0f;
    private final boolean c;
    private final int d;
    private final int e;
    private final float f;

    public a(@ah Context context) {
        this.c = b.a(context, a.c.elevationOverlayEnabled, false);
        this.d = com.google.android.material.h.a.a(context, a.c.elevationOverlayColor, 0);
        this.e = com.google.android.material.h.a.a(context, a.c.colorSurface, 0);
        this.f = context.getResources().getDisplayMetrics().density;
    }

    @k
    public int a(float f, @ah View view) {
        return a(f + a(view));
    }

    @k
    public int a(float f) {
        return a(this.e, f);
    }

    @k
    public int a(@k int i, float f, @ah View view) {
        return a(i, f + a(view));
    }

    @k
    public int a(@k int i, float f) {
        return (this.c && a(i)) ? b(i, f) : i;
    }

    @k
    public int b(@k int i, float f, @ah View view) {
        return b(i, f + a(view));
    }

    @k
    public int b(@k int i, float f) {
        float c = c(f);
        return e.c(com.google.android.material.h.a.a(e.c(i, 255), this.d, c), Color.alpha(i));
    }

    public int b(float f) {
        return Math.round(c(f) * 255.0f);
    }

    public float c(float f) {
        if (this.f <= 0.0f || f <= 0.0f) {
            return 0.0f;
        }
        return Math.min(((((float) Math.log1p(f / this.f)) * f1360a) + b) / 100.0f, 1.0f);
    }

    public boolean a() {
        return this.c;
    }

    @k
    public int b() {
        return this.d;
    }

    @k
    public int c() {
        return this.e;
    }

    public float a(@ah View view) {
        return z.d(view);
    }

    private boolean a(@k int i) {
        return e.c(i, 255) == this.e;
    }
}
