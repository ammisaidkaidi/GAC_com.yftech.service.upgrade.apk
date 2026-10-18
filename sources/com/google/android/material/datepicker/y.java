package com.google.android.material.datepicker;

import android.annotation.TargetApi;
import android.content.res.Resources;
import android.icu.text.DateFormat;
import androidx.annotation.ah;
import androidx.annotation.ai;
import com.google.android.material.a;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: /home/user/work/dex/classes.dex */
class y {

    /* renamed from: a, reason: collision with root package name */
    static final String f1277a = "UTC";
    static AtomicReference<x> b = new AtomicReference<>();

    static void a(@ai x xVar) {
        b.set(xVar);
    }

    static x a() {
        x xVar = b.get();
        return xVar == null ? x.a() : xVar;
    }

    private y() {
    }

    private static TimeZone i() {
        return TimeZone.getTimeZone(f1277a);
    }

    @TargetApi(24)
    private static android.icu.util.TimeZone j() {
        return android.icu.util.TimeZone.getTimeZone(f1277a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Calendar b() {
        Calendar b2 = a().b();
        b2.set(11, 0);
        b2.set(12, 0);
        b2.set(13, 0);
        b2.set(14, 0);
        b2.setTimeZone(i());
        return b2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Calendar c() {
        return a((Calendar) null);
    }

    static Calendar a(@ai Calendar calendar) {
        Calendar calendar2 = Calendar.getInstance(i());
        if (calendar == null) {
            calendar2.clear();
        } else {
            calendar2.setTimeInMillis(calendar.getTimeInMillis());
        }
        return calendar2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Calendar b(Calendar calendar) {
        Calendar a2 = a(calendar);
        Calendar c = c();
        c.set(a2.get(1), a2.get(2), a2.get(5));
        return c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long a(long j) {
        Calendar c = c();
        c.setTimeInMillis(j);
        return b(c).getTimeInMillis();
    }

    @TargetApi(24)
    private static DateFormat a(String str, Locale locale) {
        DateFormat instanceForSkeleton = DateFormat.getInstanceForSkeleton(str, locale);
        instanceForSkeleton.setTimeZone(j());
        return instanceForSkeleton;
    }

    private static java.text.DateFormat a(int i, Locale locale) {
        java.text.DateFormat dateInstance = java.text.DateFormat.getDateInstance(i, locale);
        dateInstance.setTimeZone(i());
        return dateInstance;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static SimpleDateFormat d() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(((SimpleDateFormat) java.text.DateFormat.getDateInstance(3, Locale.getDefault())).toLocalizedPattern().replaceAll("\\s+", com.yftech.service.upgrade.a.d), Locale.getDefault());
        simpleDateFormat.setTimeZone(i());
        simpleDateFormat.setLenient(false);
        return simpleDateFormat;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(Resources resources, SimpleDateFormat simpleDateFormat) {
        String localizedPattern = simpleDateFormat.toLocalizedPattern();
        return localizedPattern.replaceAll("d", resources.getString(a.m.mtrl_picker_text_input_day_abbr)).replaceAll("M", resources.getString(a.m.mtrl_picker_text_input_month_abbr)).replaceAll("y", resources.getString(a.m.mtrl_picker_text_input_year_abbr));
    }

    static SimpleDateFormat a(String str) {
        return b(str, Locale.getDefault());
    }

    private static SimpleDateFormat b(String str, Locale locale) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, locale);
        simpleDateFormat.setTimeZone(i());
        return simpleDateFormat;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(24)
    public static DateFormat a(Locale locale) {
        return a("yMMMd", locale);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(24)
    public static DateFormat b(Locale locale) {
        return a("MMMd", locale);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(24)
    public static DateFormat c(Locale locale) {
        return a("MMMEd", locale);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(24)
    public static DateFormat d(Locale locale) {
        return a("yMMMEd", locale);
    }

    static java.text.DateFormat e() {
        return e(Locale.getDefault());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static java.text.DateFormat e(Locale locale) {
        return a(2, locale);
    }

    static java.text.DateFormat f() {
        return f(Locale.getDefault());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static java.text.DateFormat f(Locale locale) {
        SimpleDateFormat simpleDateFormat = (SimpleDateFormat) e(locale);
        simpleDateFormat.applyPattern(b(simpleDateFormat.toPattern()));
        return simpleDateFormat;
    }

    static java.text.DateFormat g() {
        return g(Locale.getDefault());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static java.text.DateFormat g(Locale locale) {
        return a(0, locale);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static SimpleDateFormat h() {
        return h(Locale.getDefault());
    }

    private static SimpleDateFormat h(Locale locale) {
        return b("LLLL, yyyy", locale);
    }

    @ah
    private static String b(@ah String str) {
        int a2 = a(str, "yY", 1, 0);
        if (a2 >= str.length()) {
            return str;
        }
        String str2 = "EMd";
        int a3 = a(str, "EMd", 1, a2);
        if (a3 < str.length()) {
            str2 = "EMd,";
        }
        return str.replace(str.substring(a(str, str2, -1, a2) + 1, a3), " ").trim();
    }

    private static int a(@ah String str, @ah String str2, int i, int i2) {
        while (i2 >= 0 && i2 < str.length() && str2.indexOf(str.charAt(i2)) == -1) {
            if (str.charAt(i2) == '\'') {
                i2 += i;
                while (i2 >= 0 && i2 < str.length() && str.charAt(i2) != '\'') {
                    i2 += i;
                }
            }
            i2 += i;
        }
        return i2;
    }
}
