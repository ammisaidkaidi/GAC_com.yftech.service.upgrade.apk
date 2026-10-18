package androidx.core.i;

import android.os.Build;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ax;
import androidx.annotation.z;
import androidx.appcompat.widget.ActivityChooserView;
import com.google.android.material.transformation.FabTransformationScrimBehavior;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;

/* loaded from: /home/user/work/dex/classes.dex */
final class g implements h {
    private static final Locale[] c = new Locale[0];
    private static final Locale d = new Locale("en", "XA");
    private static final Locale e = new Locale("ar", "XB");
    private static final Locale f = f.b("en-Latn");

    /* renamed from: a, reason: collision with root package name */
    private final Locale[] f451a;

    @ah
    private final String b;

    @Override // androidx.core.i.h
    @ai
    public Object a() {
        return null;
    }

    @Override // androidx.core.i.h
    public Locale a(int i) {
        if (i < 0 || i >= this.f451a.length) {
            return null;
        }
        return this.f451a[i];
    }

    @Override // androidx.core.i.h
    public boolean b() {
        return this.f451a.length == 0;
    }

    @Override // androidx.core.i.h
    public int c() {
        return this.f451a.length;
    }

    @Override // androidx.core.i.h
    public int a(Locale locale) {
        for (int i = 0; i < this.f451a.length; i++) {
            if (this.f451a[i].equals(locale)) {
                return i;
            }
        }
        return -1;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        Locale[] localeArr = ((g) obj).f451a;
        if (this.f451a.length != localeArr.length) {
            return false;
        }
        for (int i = 0; i < this.f451a.length; i++) {
            if (!this.f451a[i].equals(localeArr[i])) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f451a.length; i2++) {
            i = (i * 31) + this.f451a[i2].hashCode();
        }
        return i;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        for (int i = 0; i < this.f451a.length; i++) {
            sb.append(this.f451a[i]);
            if (i < this.f451a.length - 1) {
                sb.append(',');
            }
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // androidx.core.i.h
    public String d() {
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(@ah Locale... localeArr) {
        if (localeArr.length == 0) {
            this.f451a = c;
            this.b = com.yftech.service.upgrade.a.d;
            return;
        }
        Locale[] localeArr2 = new Locale[localeArr.length];
        HashSet hashSet = new HashSet();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < localeArr.length; i++) {
            Locale locale = localeArr[i];
            if (locale == null) {
                throw new NullPointerException("list[" + i + "] is null");
            }
            if (hashSet.contains(locale)) {
                throw new IllegalArgumentException("list[" + i + "] is a repetition");
            }
            Locale locale2 = (Locale) locale.clone();
            localeArr2[i] = locale2;
            a(sb, locale2);
            if (i < localeArr.length - 1) {
                sb.append(',');
            }
            hashSet.add(locale2);
        }
        this.f451a = localeArr2;
        this.b = sb.toString();
    }

    @ax
    static void a(StringBuilder sb, Locale locale) {
        sb.append(locale.getLanguage());
        String country = locale.getCountry();
        if (country == null || country.isEmpty()) {
            return;
        }
        sb.append('-');
        sb.append(locale.getCountry());
    }

    private static String b(Locale locale) {
        if (Build.VERSION.SDK_INT < 21) {
            return com.yftech.service.upgrade.a.d;
        }
        String script = locale.getScript();
        return !script.isEmpty() ? script : com.yftech.service.upgrade.a.d;
    }

    private static boolean c(Locale locale) {
        return d.equals(locale) || e.equals(locale);
    }

    @z(a = FabTransformationScrimBehavior.c, b = 1)
    private static int a(Locale locale, Locale locale2) {
        if (locale.equals(locale2)) {
            return 1;
        }
        if (!locale.getLanguage().equals(locale2.getLanguage()) || c(locale) || c(locale2)) {
            return 0;
        }
        String b = b(locale);
        if (!b.isEmpty()) {
            return b.equals(b(locale2)) ? 1 : 0;
        }
        String country = locale.getCountry();
        return (country.isEmpty() || country.equals(locale2.getCountry())) ? 1 : 0;
    }

    private int d(Locale locale) {
        for (int i = 0; i < this.f451a.length; i++) {
            if (a(locale, this.f451a[i]) > 0) {
                return i;
            }
        }
        return ActivityChooserView.a.f166a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x001d, code lost:
    
        if (r5 < Integer.MAX_VALUE) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int a(Collection<String> collection, boolean z) {
        int i;
        if (this.f451a.length == 1) {
            return 0;
        }
        if (this.f451a.length == 0) {
            return -1;
        }
        if (z) {
            i = d(f);
            if (i == 0) {
                return 0;
            }
        }
        i = Integer.MAX_VALUE;
        Iterator<String> it = collection.iterator();
        while (it.hasNext()) {
            int d2 = d(f.b(it.next()));
            if (d2 == 0) {
                return 0;
            }
            if (d2 < i) {
                i = d2;
            }
        }
        if (i == Integer.MAX_VALUE) {
            return 0;
        }
        return i;
    }

    private Locale b(Collection<String> collection, boolean z) {
        int a2 = a(collection, z);
        if (a2 == -1) {
            return null;
        }
        return this.f451a[a2];
    }

    @Override // androidx.core.i.h
    public Locale a(@ah String[] strArr) {
        return b(Arrays.asList(strArr), false);
    }
}
