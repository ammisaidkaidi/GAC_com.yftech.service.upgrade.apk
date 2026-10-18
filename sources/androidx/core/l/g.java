package androidx.core.l;

import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.ah;
import androidx.annotation.ai;
import java.util.Locale;

/* loaded from: /home/user/work/dex/classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    private static final Locale f500a = new Locale(com.yftech.service.upgrade.a.d, com.yftech.service.upgrade.a.d);
    private static final String b = "Arab";
    private static final String c = "Hebr";

    @ah
    public static String a(@ah String str) {
        if (Build.VERSION.SDK_INT >= 17) {
            return TextUtils.htmlEncode(str);
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt != '\"') {
                if (charAt != '<') {
                    if (charAt == '>') {
                        sb.append("&gt;");
                    } else {
                        switch (charAt) {
                            case '&':
                                sb.append("&amp;");
                                break;
                            case '\'':
                                sb.append("&#39;");
                                break;
                            default:
                                sb.append(charAt);
                                break;
                        }
                    }
                } else {
                    sb.append("&lt;");
                }
            } else {
                sb.append("&quot;");
            }
        }
        return sb.toString();
    }

    public static int a(@ai Locale locale) {
        if (Build.VERSION.SDK_INT >= 17) {
            return TextUtils.getLayoutDirectionFromLocale(locale);
        }
        if (locale == null || locale.equals(f500a)) {
            return 0;
        }
        String a2 = c.a(locale);
        if (a2 == null) {
            return b(locale);
        }
        return (a2.equalsIgnoreCase(b) || a2.equalsIgnoreCase(c)) ? 1 : 0;
    }

    private static int b(@ah Locale locale) {
        switch (Character.getDirectionality(locale.getDisplayName(locale).charAt(0))) {
            case 1:
            case 2:
                return 1;
            default:
                return 0;
        }
    }

    private g() {
    }
}
