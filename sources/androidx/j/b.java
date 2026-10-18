package androidx.j;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.util.AttributeSet;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: /home/user/work/dex/classes.dex */
public class b extends w {

    /* renamed from: a, reason: collision with root package name */
    private static final float f870a = 0.0f;
    private static final float b = 70.0f;
    private static final float c = (float) Math.tan(Math.toRadians(35.0d));
    private float d;
    private float e;
    private float f;
    private float g;
    private float h;
    private float i;

    public b() {
        this.d = 0.0f;
        this.e = 0.0f;
        this.f = b;
        this.g = 0.0f;
        this.h = 0.0f;
        this.i = c;
    }

    @SuppressLint({"RestrictedApi"})
    public b(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = 0.0f;
        this.e = 0.0f;
        this.f = b;
        this.g = 0.0f;
        this.h = 0.0f;
        this.i = c;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, af.j);
        XmlPullParser xmlPullParser = (XmlPullParser) attributeSet;
        b(androidx.core.b.b.h.a(obtainStyledAttributes, xmlPullParser, "minimumVerticalAngle", 1, 0.0f));
        a(androidx.core.b.b.h.a(obtainStyledAttributes, xmlPullParser, "minimumHorizontalAngle", 0, 0.0f));
        c(androidx.core.b.b.h.a(obtainStyledAttributes, xmlPullParser, "maximumAngle", 2, b));
        obtainStyledAttributes.recycle();
    }

    public void a(float f) {
        this.d = f;
        this.g = d(f);
    }

    public float a() {
        return this.d;
    }

    public void b(float f) {
        this.e = f;
        this.h = d(f);
    }

    public float b() {
        return this.e;
    }

    public void c(float f) {
        this.f = f;
        this.i = d(f);
    }

    public float c() {
        return this.f;
    }

    private static float d(float f) {
        if (f < 0.0f || f > 90.0f) {
            throw new IllegalArgumentException("Arc must be between 0 and 90 degrees");
        }
        return (float) Math.tan(Math.toRadians(f / 2.0f));
    }

    @Override // androidx.j.w
    public Path a(float f, float f2, float f3, float f4) {
        float f5;
        float f6;
        float f7;
        Path path = new Path();
        path.moveTo(f, f2);
        float f8 = f3 - f;
        float f9 = f4 - f2;
        float f10 = (f8 * f8) + (f9 * f9);
        float f11 = (f + f3) / 2.0f;
        float f12 = (f2 + f4) / 2.0f;
        float f13 = 0.25f * f10;
        boolean z = f2 > f4;
        if (Math.abs(f8) < Math.abs(f9)) {
            float abs = Math.abs(f10 / (f9 * 2.0f));
            if (z) {
                f6 = abs + f4;
                f5 = f3;
            } else {
                f6 = abs + f2;
                f5 = f;
            }
            f7 = this.h * f13 * this.h;
        } else {
            float f14 = f10 / (f8 * 2.0f);
            if (z) {
                f6 = f2;
                f5 = f14 + f;
            } else {
                f5 = f3 - f14;
                f6 = f4;
            }
            f7 = this.g * f13 * this.g;
        }
        float f15 = f11 - f5;
        float f16 = f12 - f6;
        float f17 = (f15 * f15) + (f16 * f16);
        float f18 = this.i * f13 * this.i;
        if (f17 < f7) {
            f18 = f7;
        } else if (f17 <= f18) {
            f18 = 0.0f;
        }
        if (f18 != 0.0f) {
            float sqrt = (float) Math.sqrt(f18 / f17);
            f5 = ((f5 - f11) * sqrt) + f11;
            f6 = f12 + (sqrt * (f6 - f12));
        }
        path.cubicTo((f + f5) / 2.0f, (f2 + f6) / 2.0f, (f5 + f3) / 2.0f, (f6 + f4) / 2.0f, f3, f4);
        return path;
    }
}
