package com.google.android.material.datepicker;

import androidx.annotation.ai;
import java.util.Calendar;
import java.util.TimeZone;

/* loaded from: /home/user/work/dex/classes.dex */
class x {

    /* renamed from: a, reason: collision with root package name */
    private static final x f1276a = new x(null, null);

    @ai
    private final Long b;

    @ai
    private final TimeZone c;

    private x(@ai Long l, @ai TimeZone timeZone) {
        this.b = l;
        this.c = timeZone;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static x a() {
        return f1276a;
    }

    static x a(long j, @ai TimeZone timeZone) {
        return new x(Long.valueOf(j), timeZone);
    }

    static x a(long j) {
        return new x(Long.valueOf(j), null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Calendar b() {
        return a(this.c);
    }

    Calendar a(@ai TimeZone timeZone) {
        Calendar calendar = timeZone == null ? Calendar.getInstance() : Calendar.getInstance(timeZone);
        if (this.b != null) {
            calendar.setTimeInMillis(this.b.longValue());
        }
        return calendar;
    }
}
