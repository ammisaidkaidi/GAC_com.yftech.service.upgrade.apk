package com.google.android.material.datepicker;

import android.os.Build;
import androidx.annotation.ai;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

/* loaded from: /home/user/work/dex/classes.dex */
class g {
    private g() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(long j) {
        return a(j, Locale.getDefault());
    }

    static String a(long j, Locale locale) {
        if (Build.VERSION.SDK_INT >= 24) {
            return y.a(locale).format(new Date(j));
        }
        return y.e(locale).format(new Date(j));
    }

    static String b(long j) {
        return b(j, Locale.getDefault());
    }

    static String b(long j, Locale locale) {
        if (Build.VERSION.SDK_INT >= 24) {
            return y.b(locale).format(new Date(j));
        }
        return y.f(locale).format(new Date(j));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String c(long j) {
        return c(j, Locale.getDefault());
    }

    static String c(long j, Locale locale) {
        if (Build.VERSION.SDK_INT >= 24) {
            return y.c(locale).format(new Date(j));
        }
        return y.g(locale).format(new Date(j));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String d(long j) {
        return d(j, Locale.getDefault());
    }

    static String d(long j, Locale locale) {
        if (Build.VERSION.SDK_INT >= 24) {
            return y.d(locale).format(new Date(j));
        }
        return y.g(locale).format(new Date(j));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String e(long j) {
        return a(j, (SimpleDateFormat) null);
    }

    static String a(long j, @ai SimpleDateFormat simpleDateFormat) {
        Calendar b = y.b();
        Calendar c = y.c();
        c.setTimeInMillis(j);
        if (simpleDateFormat != null) {
            return simpleDateFormat.format(new Date(j));
        }
        if (b.get(1) == c.get(1)) {
            return b(j);
        }
        return a(j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static androidx.core.m.f<String, String> a(@ai Long l, @ai Long l2) {
        return a(l, l2, null);
    }

    static androidx.core.m.f<String, String> a(@ai Long l, @ai Long l2, @ai SimpleDateFormat simpleDateFormat) {
        if (l == null && l2 == null) {
            return androidx.core.m.f.a(null, null);
        }
        if (l == null) {
            return androidx.core.m.f.a(null, a(l2.longValue(), simpleDateFormat));
        }
        if (l2 == null) {
            return androidx.core.m.f.a(a(l.longValue(), simpleDateFormat), null);
        }
        Calendar b = y.b();
        Calendar c = y.c();
        c.setTimeInMillis(l.longValue());
        Calendar c2 = y.c();
        c2.setTimeInMillis(l2.longValue());
        if (simpleDateFormat != null) {
            return androidx.core.m.f.a(simpleDateFormat.format(new Date(l.longValue())), simpleDateFormat.format(new Date(l2.longValue())));
        }
        if (c.get(1) == c2.get(1)) {
            if (c.get(1) == b.get(1)) {
                return androidx.core.m.f.a(b(l.longValue(), Locale.getDefault()), b(l2.longValue(), Locale.getDefault()));
            }
            return androidx.core.m.f.a(b(l.longValue(), Locale.getDefault()), a(l2.longValue(), Locale.getDefault()));
        }
        return androidx.core.m.f.a(a(l.longValue(), Locale.getDefault()), a(l2.longValue(), Locale.getDefault()));
    }
}
