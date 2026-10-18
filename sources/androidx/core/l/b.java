package androidx.core.l;

import android.annotation.SuppressLint;
import android.os.Build;
import android.text.Html;
import android.text.Spanned;
import androidx.annotation.ah;
import androidx.annotation.ai;

@SuppressLint({"InlinedApi"})
/* loaded from: /home/user/work/dex/classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public static final int f488a = 0;
    public static final int b = 1;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 4;
    public static final int f = 8;
    public static final int g = 16;
    public static final int h = 32;
    public static final int i = 256;
    public static final int j = 0;
    public static final int k = 63;

    @ah
    public static Spanned a(@ah String str, int i2) {
        if (Build.VERSION.SDK_INT >= 24) {
            return Html.fromHtml(str, i2);
        }
        return Html.fromHtml(str);
    }

    @ah
    public static Spanned a(@ah String str, int i2, @ai Html.ImageGetter imageGetter, @ai Html.TagHandler tagHandler) {
        if (Build.VERSION.SDK_INT >= 24) {
            return Html.fromHtml(str, i2, imageGetter, tagHandler);
        }
        return Html.fromHtml(str, imageGetter, tagHandler);
    }

    @ah
    public static String a(@ah Spanned spanned, int i2) {
        if (Build.VERSION.SDK_INT >= 24) {
            return Html.toHtml(spanned, i2);
        }
        return Html.toHtml(spanned);
    }

    private b() {
    }
}
