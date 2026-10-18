package androidx.core.b.b;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import androidx.annotation.k;
import androidx.annotation.m;
import org.xmlpull.v1.XmlPullParserException;

@ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    private static final String f398a = "ComplexColorCompat";
    private final Shader b;
    private final ColorStateList c;
    private int d;

    private b(Shader shader, ColorStateList colorStateList, @k int i) {
        this.b = shader;
        this.c = colorStateList;
        this.d = i;
    }

    static b a(@ah Shader shader) {
        return new b(shader, null, 0);
    }

    static b a(@ah ColorStateList colorStateList) {
        return new b(null, colorStateList, colorStateList.getDefaultColor());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b a(@k int i) {
        return new b(null, null, i);
    }

    @ai
    public Shader a() {
        return this.b;
    }

    @k
    public int b() {
        return this.d;
    }

    public void b(@k int i) {
        this.d = i;
    }

    public boolean c() {
        return this.b != null;
    }

    public boolean d() {
        return this.b == null && this.c != null && this.c.isStateful();
    }

    public boolean a(int[] iArr) {
        int colorForState;
        if (!d() || (colorForState = this.c.getColorForState(iArr, this.c.getDefaultColor())) == this.d) {
            return false;
        }
        this.d = colorForState;
        return true;
    }

    public boolean e() {
        return c() || this.d != 0;
    }

    @ai
    public static b a(@ah Resources resources, @m int i, @ai Resources.Theme theme) {
        try {
            return b(resources, i, theme);
        } catch (Exception e) {
            Log.e(f398a, "Failed to inflate ComplexColor.", e);
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0039, code lost:
    
        if (r1.equals("gradient") != false) goto L20;
     */
    @ah
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static b b(@ah Resources resources, @m int i, @ai Resources.Theme theme) {
        int next;
        boolean z;
        XmlResourceParser xml = resources.getXml(i);
        AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
        do {
            next = xml.next();
            z = true;
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        String name = xml.getName();
        int hashCode = name.hashCode();
        if (hashCode != 89650992) {
            if (hashCode == 1191572447 && name.equals("selector")) {
                z = false;
            }
            z = -1;
        }
        switch (z) {
            case false:
                return a(a.a(resources, xml, asAttributeSet, theme));
            case true:
                return a(e.a(resources, xml, asAttributeSet, theme));
            default:
                throw new XmlPullParserException(xml.getPositionDescription() + ": unsupported complex color tag " + name);
        }
    }
}
