package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import androidx.annotation.ah;
import com.google.android.material.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    @ah
    final b f1240a;

    @ah
    final b b;

    @ah
    final b c;

    @ah
    final b d;

    @ah
    final b e;

    @ah
    final b f;

    @ah
    final b g;

    @ah
    final Paint h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(@ah Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(com.google.android.material.q.b.a(context, a.c.materialCalendarStyle, k.class.getCanonicalName()), a.o.MaterialCalendar);
        this.f1240a = b.a(context, obtainStyledAttributes.getResourceId(a.o.MaterialCalendar_dayStyle, 0));
        this.g = b.a(context, obtainStyledAttributes.getResourceId(a.o.MaterialCalendar_dayInvalidStyle, 0));
        this.b = b.a(context, obtainStyledAttributes.getResourceId(a.o.MaterialCalendar_daySelectedStyle, 0));
        this.c = b.a(context, obtainStyledAttributes.getResourceId(a.o.MaterialCalendar_dayTodayStyle, 0));
        ColorStateList a2 = com.google.android.material.q.c.a(context, obtainStyledAttributes, a.o.MaterialCalendar_rangeFillColor);
        this.d = b.a(context, obtainStyledAttributes.getResourceId(a.o.MaterialCalendar_yearStyle, 0));
        this.e = b.a(context, obtainStyledAttributes.getResourceId(a.o.MaterialCalendar_yearSelectedStyle, 0));
        this.f = b.a(context, obtainStyledAttributes.getResourceId(a.o.MaterialCalendar_yearTodayStyle, 0));
        this.h = new Paint();
        this.h.setColor(a2.getDefaultColor());
        obtainStyledAttributes.recycle();
    }
}
