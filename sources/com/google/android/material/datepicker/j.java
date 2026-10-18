package com.google.android.material.datepicker;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import androidx.annotation.ah;
import androidx.annotation.ai;
import com.google.android.material.a;
import java.util.Calendar;
import java.util.Locale;

/* loaded from: /home/user/work/dex/classes.dex */
class j extends BaseAdapter {
    private static final int d = 4;
    private static final int e;

    /* renamed from: a, reason: collision with root package name */
    @ah
    private final Calendar f1245a = y.c();
    private final int b = this.f1245a.getMaximum(7);
    private final int c = this.f1245a.getFirstDayOfWeek();

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    static {
        e = Build.VERSION.SDK_INT >= 26 ? 4 : 1;
    }

    @Override // android.widget.Adapter
    @ai
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Integer getItem(int i) {
        if (i >= this.b) {
            return null;
        }
        return Integer.valueOf(b(i));
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.b;
    }

    @Override // android.widget.Adapter
    @ai
    @SuppressLint({"WrongConstant"})
    public View getView(int i, @ai View view, @ah ViewGroup viewGroup) {
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(a.k.mtrl_calendar_day_of_week, viewGroup, false);
        }
        this.f1245a.set(7, b(i));
        textView.setText(this.f1245a.getDisplayName(7, e, Locale.getDefault()));
        textView.setContentDescription(String.format(viewGroup.getContext().getString(a.m.mtrl_picker_day_of_week_column_header), this.f1245a.getDisplayName(7, 2, Locale.getDefault())));
        return textView;
    }

    private int b(int i) {
        int i2 = i + this.c;
        return i2 > this.b ? i2 - this.b : i2;
    }
}
