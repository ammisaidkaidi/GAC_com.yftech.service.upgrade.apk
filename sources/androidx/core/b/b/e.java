package androidx.core.b.b;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.LinearGradient;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.util.AttributeSet;
import android.util.Xml;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import androidx.annotation.k;
import androidx.core.a;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: Access modifiers changed from: package-private */
@ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    private static final int f403a = 0;
    private static final int b = 1;
    private static final int c = 2;

    private e() {
    }

    static Shader a(@ah Resources resources, @ah XmlPullParser xmlPullParser, @ai Resources.Theme theme) {
        int next;
        AttributeSet asAttributeSet = Xml.asAttributeSet(xmlPullParser);
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        return a(resources, xmlPullParser, asAttributeSet, theme);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Shader a(@ah Resources resources, @ah XmlPullParser xmlPullParser, @ah AttributeSet attributeSet, @ai Resources.Theme theme) {
        String name = xmlPullParser.getName();
        if (!name.equals("gradient")) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid gradient color tag " + name);
        }
        TypedArray a2 = h.a(resources, theme, attributeSet, a.j.GradientColor);
        float a3 = h.a(a2, xmlPullParser, "startX", a.j.GradientColor_android_startX, 0.0f);
        float a4 = h.a(a2, xmlPullParser, "startY", a.j.GradientColor_android_startY, 0.0f);
        float a5 = h.a(a2, xmlPullParser, "endX", a.j.GradientColor_android_endX, 0.0f);
        float a6 = h.a(a2, xmlPullParser, "endY", a.j.GradientColor_android_endY, 0.0f);
        float a7 = h.a(a2, xmlPullParser, "centerX", a.j.GradientColor_android_centerX, 0.0f);
        float a8 = h.a(a2, xmlPullParser, "centerY", a.j.GradientColor_android_centerY, 0.0f);
        int a9 = h.a(a2, xmlPullParser, "type", a.j.GradientColor_android_type, 0);
        int b2 = h.b(a2, xmlPullParser, "startColor", a.j.GradientColor_android_startColor, 0);
        boolean a10 = h.a(xmlPullParser, "centerColor");
        int b3 = h.b(a2, xmlPullParser, "centerColor", a.j.GradientColor_android_centerColor, 0);
        int b4 = h.b(a2, xmlPullParser, "endColor", a.j.GradientColor_android_endColor, 0);
        int a11 = h.a(a2, xmlPullParser, "tileMode", a.j.GradientColor_android_tileMode, 0);
        float a12 = h.a(a2, xmlPullParser, "gradientRadius", a.j.GradientColor_android_gradientRadius, 0.0f);
        a2.recycle();
        a a13 = a(b(resources, xmlPullParser, attributeSet, theme), b2, b4, a10, b3);
        switch (a9) {
            case 1:
                if (a12 <= 0.0f) {
                    throw new XmlPullParserException("<gradient> tag requires 'gradientRadius' attribute with radial type");
                }
                return new RadialGradient(a7, a8, a12, a13.f404a, a13.b, a(a11));
            case 2:
                return new SweepGradient(a7, a8, a13.f404a, a13.b);
            default:
                return new LinearGradient(a3, a4, a5, a6, a13.f404a, a13.b, a(a11));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0084, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException(r9.getPositionDescription() + ": <item> tag requires a 'color' attribute and a 'offset' attribute!");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static a b(@ah Resources resources, @ah XmlPullParser xmlPullParser, @ah AttributeSet attributeSet, @ai Resources.Theme theme) {
        int depth;
        int depth2 = xmlPullParser.getDepth() + 1;
        ArrayList arrayList = new ArrayList(20);
        ArrayList arrayList2 = new ArrayList(20);
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1 || ((depth = xmlPullParser.getDepth()) < depth2 && next == 3)) {
                break;
            }
            if (next == 2 && depth <= depth2 && xmlPullParser.getName().equals("item")) {
                TypedArray a2 = h.a(resources, theme, attributeSet, a.j.GradientColorItem);
                boolean hasValue = a2.hasValue(a.j.GradientColorItem_android_color);
                boolean hasValue2 = a2.hasValue(a.j.GradientColorItem_android_offset);
                if (!hasValue || !hasValue2) {
                    break;
                }
                int color = a2.getColor(a.j.GradientColorItem_android_color, 0);
                float f = a2.getFloat(a.j.GradientColorItem_android_offset, 0.0f);
                a2.recycle();
                arrayList2.add(Integer.valueOf(color));
                arrayList.add(Float.valueOf(f));
            }
        }
        if (arrayList2.size() > 0) {
            return new a(arrayList2, arrayList);
        }
        return null;
    }

    private static a a(@ai a aVar, @k int i, @k int i2, boolean z, @k int i3) {
        if (aVar != null) {
            return aVar;
        }
        if (z) {
            return new a(i, i3, i2);
        }
        return new a(i, i2);
    }

    private static Shader.TileMode a(int i) {
        switch (i) {
            case 1:
                return Shader.TileMode.REPEAT;
            case 2:
                return Shader.TileMode.MIRROR;
            default:
                return Shader.TileMode.CLAMP;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        final int[] f404a;
        final float[] b;

        a(@ah List<Integer> list, @ah List<Float> list2) {
            int size = list.size();
            this.f404a = new int[size];
            this.b = new float[size];
            for (int i = 0; i < size; i++) {
                this.f404a[i] = list.get(i).intValue();
                this.b[i] = list2.get(i).floatValue();
            }
        }

        a(@k int i, @k int i2) {
            this.f404a = new int[]{i, i2};
            this.b = new float[]{0.0f, 1.0f};
        }

        a(@k int i, @k int i2, @k int i3) {
            this.f404a = new int[]{i, i2, i3};
            this.b = new float[]{0.0f, 0.5f, 1.0f};
        }
    }
}
