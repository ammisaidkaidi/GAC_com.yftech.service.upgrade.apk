package com.google.android.material.g;

import android.animation.TypeEvaluator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.Property;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.k;
import com.google.android.material.g.d;

/* loaded from: /home/user/work/dex/classes.dex */
public interface g extends d.a {
    void a();

    void draw(Canvas canvas);

    void g_();

    @ai
    Drawable getCircularRevealOverlayDrawable();

    @k
    int getCircularRevealScrimColor();

    @ai
    d getRevealInfo();

    boolean isOpaque();

    void setCircularRevealOverlayDrawable(@ai Drawable drawable);

    void setCircularRevealScrimColor(@k int i);

    void setRevealInfo(@ai d dVar);

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class d {

        /* renamed from: a, reason: collision with root package name */
        public static final float f1319a = Float.MAX_VALUE;
        public float b;
        public float c;
        public float d;

        private d() {
        }

        public d(float f, float f2, float f3) {
            this.b = f;
            this.c = f2;
            this.d = f3;
        }

        public d(@ah d dVar) {
            this(dVar.b, dVar.c, dVar.d);
        }

        public void a(float f, float f2, float f3) {
            this.b = f;
            this.c = f2;
            this.d = f3;
        }

        public void a(@ah d dVar) {
            a(dVar.b, dVar.c, dVar.d);
        }

        public boolean a() {
            return this.d == Float.MAX_VALUE;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class b extends Property<g, d> {

        /* renamed from: a, reason: collision with root package name */
        public static final Property<g, d> f1317a = new b("circularReveal");

        private b(String str) {
            super(d.class, str);
        }

        @Override // android.util.Property
        @ai
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public d get(@ah g gVar) {
            return gVar.getRevealInfo();
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void set(@ah g gVar, @ai d dVar) {
            gVar.setRevealInfo(dVar);
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a implements TypeEvaluator<d> {

        /* renamed from: a, reason: collision with root package name */
        public static final TypeEvaluator<d> f1316a = new a();
        private final d b = new d();

        @Override // android.animation.TypeEvaluator
        @ah
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public d evaluate(float f, @ah d dVar, @ah d dVar2) {
            this.b.a(com.google.android.material.n.a.a(dVar.b, dVar2.b, f), com.google.android.material.n.a.a(dVar.c, dVar2.c, f), com.google.android.material.n.a.a(dVar.d, dVar2.d, f));
            return this.b;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class c extends Property<g, Integer> {

        /* renamed from: a, reason: collision with root package name */
        public static final Property<g, Integer> f1318a = new c("circularRevealScrimColor");

        private c(String str) {
            super(Integer.class, str);
        }

        @Override // android.util.Property
        @ah
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Integer get(@ah g gVar) {
            return Integer.valueOf(gVar.getCircularRevealScrimColor());
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void set(@ah g gVar, @ah Integer num) {
            gVar.setCircularRevealScrimColor(num.intValue());
        }
    }
}
