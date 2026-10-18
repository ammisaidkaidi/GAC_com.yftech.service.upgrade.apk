package androidx.core.b.b;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.Base64;
import android.util.TypedValue;
import android.util.Xml;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import androidx.core.a;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

@ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    public static final int f399a = 0;
    public static final int b = 1;
    public static final int c = -1;
    private static final int d = 400;
    private static final int e = 1;
    private static final int f = 500;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface a {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface b {
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class e implements a {

        /* renamed from: a, reason: collision with root package name */
        @ah
        private final androidx.core.j.a f402a;
        private final int b;
        private final int c;

        public e(@ah androidx.core.j.a aVar, int i, int i2) {
            this.f402a = aVar;
            this.c = i;
            this.b = i2;
        }

        @ah
        public androidx.core.j.a a() {
            return this.f402a;
        }

        public int b() {
            return this.c;
        }

        public int c() {
            return this.b;
        }
    }

    /* renamed from: androidx.core.b.b.d$d, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class C0027d {

        /* renamed from: a, reason: collision with root package name */
        @ah
        private final String f401a;
        private int b;
        private boolean c;
        private String d;
        private int e;
        private int f;

        public C0027d(@ah String str, int i, boolean z, @ai String str2, int i2, int i3) {
            this.f401a = str;
            this.b = i;
            this.c = z;
            this.d = str2;
            this.e = i2;
            this.f = i3;
        }

        @ah
        public String a() {
            return this.f401a;
        }

        public int b() {
            return this.b;
        }

        public boolean c() {
            return this.c;
        }

        @ai
        public String d() {
            return this.d;
        }

        public int e() {
            return this.e;
        }

        public int f() {
            return this.f;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class c implements a {

        /* renamed from: a, reason: collision with root package name */
        @ah
        private final C0027d[] f400a;

        public c(@ah C0027d[] c0027dArr) {
            this.f400a = c0027dArr;
        }

        @ah
        public C0027d[] a() {
            return this.f400a;
        }
    }

    @ai
    public static a a(XmlPullParser xmlPullParser, Resources resources) {
        int next;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        return b(xmlPullParser, resources);
    }

    @ai
    private static a b(XmlPullParser xmlPullParser, Resources resources) {
        xmlPullParser.require(2, null, "font-family");
        if (xmlPullParser.getName().equals("font-family")) {
            return c(xmlPullParser, resources);
        }
        a(xmlPullParser);
        return null;
    }

    @ai
    private static a c(XmlPullParser xmlPullParser, Resources resources) {
        TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), a.j.FontFamily);
        String string = obtainAttributes.getString(a.j.FontFamily_fontProviderAuthority);
        String string2 = obtainAttributes.getString(a.j.FontFamily_fontProviderPackage);
        String string3 = obtainAttributes.getString(a.j.FontFamily_fontProviderQuery);
        int resourceId = obtainAttributes.getResourceId(a.j.FontFamily_fontProviderCerts, 0);
        int integer = obtainAttributes.getInteger(a.j.FontFamily_fontProviderFetchStrategy, 1);
        int integer2 = obtainAttributes.getInteger(a.j.FontFamily_fontProviderFetchTimeout, f);
        obtainAttributes.recycle();
        if (string != null && string2 != null && string3 != null) {
            while (xmlPullParser.next() != 3) {
                a(xmlPullParser);
            }
            return new e(new androidx.core.j.a(string, string2, string3, a(resources, resourceId)), integer, integer2);
        }
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("font")) {
                    arrayList.add(d(xmlPullParser, resources));
                } else {
                    a(xmlPullParser);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new c((C0027d[]) arrayList.toArray(new C0027d[arrayList.size()]));
    }

    private static int a(TypedArray typedArray, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            return typedArray.getType(i);
        }
        TypedValue typedValue = new TypedValue();
        typedArray.getValue(i, typedValue);
        return typedValue.type;
    }

    public static List<List<byte[]>> a(Resources resources, @androidx.annotation.e int i) {
        if (i == 0) {
            return Collections.emptyList();
        }
        TypedArray obtainTypedArray = resources.obtainTypedArray(i);
        try {
            if (obtainTypedArray.length() == 0) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            if (a(obtainTypedArray, 0) == 1) {
                for (int i2 = 0; i2 < obtainTypedArray.length(); i2++) {
                    int resourceId = obtainTypedArray.getResourceId(i2, 0);
                    if (resourceId != 0) {
                        arrayList.add(a(resources.getStringArray(resourceId)));
                    }
                }
            } else {
                arrayList.add(a(resources.getStringArray(i)));
            }
            return arrayList;
        } finally {
            obtainTypedArray.recycle();
        }
    }

    private static List<byte[]> a(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            arrayList.add(Base64.decode(str, 0));
        }
        return arrayList;
    }

    private static C0027d d(XmlPullParser xmlPullParser, Resources resources) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), a.j.FontFamilyFont);
        if (obtainAttributes.hasValue(a.j.FontFamilyFont_fontWeight)) {
            i = a.j.FontFamilyFont_fontWeight;
        } else {
            i = a.j.FontFamilyFont_android_fontWeight;
        }
        int i6 = obtainAttributes.getInt(i, d);
        if (obtainAttributes.hasValue(a.j.FontFamilyFont_fontStyle)) {
            i2 = a.j.FontFamilyFont_fontStyle;
        } else {
            i2 = a.j.FontFamilyFont_android_fontStyle;
        }
        boolean z = 1 == obtainAttributes.getInt(i2, 0);
        if (obtainAttributes.hasValue(a.j.FontFamilyFont_ttcIndex)) {
            i3 = a.j.FontFamilyFont_ttcIndex;
        } else {
            i3 = a.j.FontFamilyFont_android_ttcIndex;
        }
        if (obtainAttributes.hasValue(a.j.FontFamilyFont_fontVariationSettings)) {
            i4 = a.j.FontFamilyFont_fontVariationSettings;
        } else {
            i4 = a.j.FontFamilyFont_android_fontVariationSettings;
        }
        String string = obtainAttributes.getString(i4);
        int i7 = obtainAttributes.getInt(i3, 0);
        if (obtainAttributes.hasValue(a.j.FontFamilyFont_font)) {
            i5 = a.j.FontFamilyFont_font;
        } else {
            i5 = a.j.FontFamilyFont_android_font;
        }
        int resourceId = obtainAttributes.getResourceId(i5, 0);
        String string2 = obtainAttributes.getString(i5);
        obtainAttributes.recycle();
        while (xmlPullParser.next() != 3) {
            a(xmlPullParser);
        }
        return new C0027d(string2, i6, z, string, i7, resourceId);
    }

    private static void a(XmlPullParser xmlPullParser) {
        int i = 1;
        while (i > 0) {
            switch (xmlPullParser.next()) {
                case 2:
                    i++;
                    break;
                case 3:
                    i--;
                    break;
            }
        }
    }

    private d() {
    }
}
