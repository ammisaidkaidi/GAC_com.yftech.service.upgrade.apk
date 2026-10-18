package androidx.k.b.a;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.util.AttributeSet;
import android.view.InflateException;
import android.view.animation.Interpolator;
import androidx.annotation.ap;
import org.xmlpull.v1.XmlPullParser;

@ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public class g implements Interpolator {

    /* renamed from: a, reason: collision with root package name */
    public static final int f929a = 3000;
    public static final double b = 1.0E-5d;
    private static final float c = 0.002f;
    private float[] d;
    private float[] e;

    public g(Context context, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        this(context.getResources(), context.getTheme(), attributeSet, xmlPullParser);
    }

    public g(Resources resources, Resources.Theme theme, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        TypedArray a2 = androidx.core.b.b.h.a(resources, theme, attributeSet, a.ar);
        a(a2, xmlPullParser);
        a2.recycle();
    }

    private void a(TypedArray typedArray, XmlPullParser xmlPullParser) {
        if (androidx.core.b.b.h.a(xmlPullParser, "pathData")) {
            String a2 = androidx.core.b.b.h.a(typedArray, xmlPullParser, "pathData", 4);
            Path a3 = androidx.core.graphics.h.a(a2);
            if (a3 == null) {
                throw new InflateException("The path is null, which is created from " + a2);
            }
            a(a3);
            return;
        }
        if (!androidx.core.b.b.h.a(xmlPullParser, "controlX1")) {
            throw new InflateException("pathInterpolator requires the controlX1 attribute");
        }
        if (!androidx.core.b.b.h.a(xmlPullParser, "controlY1")) {
            throw new InflateException("pathInterpolator requires the controlY1 attribute");
        }
        float a4 = androidx.core.b.b.h.a(typedArray, xmlPullParser, "controlX1", 0, 0.0f);
        float a5 = androidx.core.b.b.h.a(typedArray, xmlPullParser, "controlY1", 1, 0.0f);
        boolean a6 = androidx.core.b.b.h.a(xmlPullParser, "controlX2");
        if (a6 != androidx.core.b.b.h.a(xmlPullParser, "controlY2")) {
            throw new InflateException("pathInterpolator requires both controlX2 and controlY2 for cubic Beziers.");
        }
        if (!a6) {
            a(a4, a5);
        } else {
            a(a4, a5, androidx.core.b.b.h.a(typedArray, xmlPullParser, "controlX2", 2, 0.0f), androidx.core.b.b.h.a(typedArray, xmlPullParser, "controlY2", 3, 0.0f));
        }
    }

    private void a(float f, float f2) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.quadTo(f, f2, 1.0f, 1.0f);
        a(path);
    }

    private void a(float f, float f2, float f3, float f4) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.cubicTo(f, f2, f3, f4, 1.0f, 1.0f);
        a(path);
    }

    private void a(Path path) {
        int i = 0;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = pathMeasure.getLength();
        int min = Math.min(f929a, ((int) (length / c)) + 1);
        if (min <= 0) {
            throw new IllegalArgumentException("The Path has a invalid length " + length);
        }
        this.d = new float[min];
        this.e = new float[min];
        float[] fArr = new float[2];
        for (int i2 = 0; i2 < min; i2++) {
            pathMeasure.getPosTan((i2 * length) / (min - 1), fArr, null);
            this.d[i2] = fArr[0];
            this.e[i2] = fArr[1];
        }
        if (Math.abs(this.d[0]) <= 1.0E-5d && Math.abs(this.e[0]) <= 1.0E-5d) {
            int i3 = min - 1;
            if (Math.abs(this.d[i3] - 1.0f) <= 1.0E-5d && Math.abs(this.e[i3] - 1.0f) <= 1.0E-5d) {
                float f = 0.0f;
                int i4 = 0;
                while (i < min) {
                    int i5 = i4 + 1;
                    float f2 = this.d[i4];
                    if (f2 < f) {
                        throw new IllegalArgumentException("The Path cannot loop back on itself, x :" + f2);
                    }
                    this.d[i] = f2;
                    i++;
                    f = f2;
                    i4 = i5;
                }
                if (pathMeasure.nextContour()) {
                    throw new IllegalArgumentException("The Path should be continuous, can't have 2+ contours");
                }
                return;
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("The Path must start at (0,0) and end at (1,1) start: ");
        sb.append(this.d[0]);
        sb.append(",");
        sb.append(this.e[0]);
        sb.append(" end:");
        int i6 = min - 1;
        sb.append(this.d[i6]);
        sb.append(",");
        sb.append(this.e[i6]);
        throw new IllegalArgumentException(sb.toString());
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        if (f <= 0.0f) {
            return 0.0f;
        }
        if (f >= 1.0f) {
            return 1.0f;
        }
        int i = 0;
        int length = this.d.length - 1;
        while (length - i > 1) {
            int i2 = (i + length) / 2;
            if (f < this.d[i2]) {
                length = i2;
            } else {
                i = i2;
            }
        }
        float f2 = this.d[length] - this.d[i];
        if (f2 == 0.0f) {
            return this.e[i];
        }
        float f3 = (f - this.d[i]) / f2;
        float f4 = this.e[i];
        return f4 + (f3 * (this.e[length] - f4));
    }
}
