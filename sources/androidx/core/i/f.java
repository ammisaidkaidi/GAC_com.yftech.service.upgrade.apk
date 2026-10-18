package androidx.core.i;

import android.os.Build;
import android.os.LocaleList;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.am;
import androidx.annotation.aq;
import androidx.annotation.z;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.transformation.FabTransformationScrimBehavior;
import java.util.Locale;

/* loaded from: /home/user/work/dex/classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    private static final f f450a = a(new Locale[0]);
    private h b;

    private f(h hVar) {
        this.b = hVar;
    }

    @am(a = 24)
    @Deprecated
    public static f a(Object obj) {
        return a((LocaleList) obj);
    }

    @am(a = 24)
    @ah
    public static f a(@ah LocaleList localeList) {
        return new f(new i(localeList));
    }

    @ai
    public Object a() {
        return this.b.a();
    }

    @ah
    public static f a(@ah Locale... localeArr) {
        if (Build.VERSION.SDK_INT >= 24) {
            return a(new LocaleList(localeArr));
        }
        return new f(new g(localeArr));
    }

    public Locale a(int i) {
        return this.b.a(i);
    }

    public boolean b() {
        return this.b.b();
    }

    @z(a = FabTransformationScrimBehavior.c)
    public int c() {
        return this.b.c();
    }

    @z(a = RecyclerView.m)
    public int a(Locale locale) {
        return this.b.a(locale);
    }

    @ah
    public String d() {
        return this.b.d();
    }

    @ai
    public Locale a(@ah String[] strArr) {
        return this.b.a(strArr);
    }

    @ah
    public static f e() {
        return f450a;
    }

    @ah
    public static f a(@ai String str) {
        Locale b;
        if (str == null || str.isEmpty()) {
            return e();
        }
        String[] split = str.split(",", -1);
        Locale[] localeArr = new Locale[split.length];
        for (int i = 0; i < localeArr.length; i++) {
            if (Build.VERSION.SDK_INT >= 21) {
                b = Locale.forLanguageTag(split[i]);
            } else {
                b = b(split[i]);
            }
            localeArr[i] = b;
        }
        return a(localeArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Locale b(String str) {
        if (str.contains("-")) {
            String[] split = str.split("-", -1);
            if (split.length > 2) {
                return new Locale(split[0], split[1], split[2]);
            }
            if (split.length > 1) {
                return new Locale(split[0], split[1]);
            }
            if (split.length == 1) {
                return new Locale(split[0]);
            }
        } else if (str.contains("_")) {
            String[] split2 = str.split("_", -1);
            if (split2.length > 2) {
                return new Locale(split2[0], split2[1], split2[2]);
            }
            if (split2.length > 1) {
                return new Locale(split2[0], split2[1]);
            }
            if (split2.length == 1) {
                return new Locale(split2[0]);
            }
        } else {
            return new Locale(str);
        }
        throw new IllegalArgumentException("Can not parse language tag: [" + str + "]");
    }

    @aq(b = 1)
    @ah
    public static f f() {
        return Build.VERSION.SDK_INT >= 24 ? a(LocaleList.getAdjustedDefault()) : a(Locale.getDefault());
    }

    @aq(b = 1)
    @ah
    public static f g() {
        return Build.VERSION.SDK_INT >= 24 ? a(LocaleList.getDefault()) : a(Locale.getDefault());
    }

    public boolean equals(Object obj) {
        return (obj instanceof f) && this.b.equals(((f) obj).b);
    }

    public int hashCode() {
        return this.b.hashCode();
    }

    public String toString() {
        return this.b.toString();
    }
}
