package androidx.core.graphics;

import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.os.Build;
import androidx.annotation.ah;
import androidx.annotation.ai;

/* loaded from: /home/user/work/dex/classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    private static final String f433a = "\udfffd";
    private static final String b = "m";
    private static final ThreadLocal<androidx.core.m.f<Rect, Rect>> c = new ThreadLocal<>();

    public static boolean a(@ah Paint paint, @ah String str) {
        if (Build.VERSION.SDK_INT >= 23) {
            return paint.hasGlyph(str);
        }
        int length = str.length();
        if (length == 1 && Character.isWhitespace(str.charAt(0))) {
            return true;
        }
        float measureText = paint.measureText(f433a);
        float measureText2 = paint.measureText(b);
        float measureText3 = paint.measureText(str);
        float f = 0.0f;
        if (measureText3 == 0.0f) {
            return false;
        }
        if (str.codePointCount(0, str.length()) > 1) {
            if (measureText3 > measureText2 * 2.0f) {
                return false;
            }
            int i = 0;
            while (i < length) {
                int charCount = Character.charCount(str.codePointAt(i)) + i;
                f += paint.measureText(str, i, charCount);
                i = charCount;
            }
            if (measureText3 >= f) {
                return false;
            }
        }
        if (measureText3 != measureText) {
            return true;
        }
        androidx.core.m.f<Rect, Rect> a2 = a();
        paint.getTextBounds(f433a, 0, f433a.length(), a2.f503a);
        paint.getTextBounds(str, 0, length, a2.b);
        return !a2.f503a.equals(a2.b);
    }

    public static boolean a(@ah Paint paint, @ai c cVar) {
        if (Build.VERSION.SDK_INT >= 29) {
            paint.setBlendMode(cVar != null ? d.a(cVar) : null);
            return true;
        }
        if (cVar != null) {
            PorterDuff.Mode b2 = d.b(cVar);
            paint.setXfermode(b2 != null ? new PorterDuffXfermode(b2) : null);
            return b2 != null;
        }
        paint.setXfermode(null);
        return true;
    }

    private static androidx.core.m.f<Rect, Rect> a() {
        androidx.core.m.f<Rect, Rect> fVar = c.get();
        if (fVar == null) {
            androidx.core.m.f<Rect, Rect> fVar2 = new androidx.core.m.f<>(new Rect(), new Rect());
            c.set(fVar2);
            return fVar2;
        }
        fVar.f503a.setEmpty();
        fVar.b.setEmpty();
        return fVar;
    }

    private g() {
    }
}
