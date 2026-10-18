package com.google.android.material.datepicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import androidx.annotation.ah;
import androidx.annotation.ai;
import com.google.android.material.a;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public class q extends BaseAdapter {

    /* renamed from: a, reason: collision with root package name */
    static final int f1267a = y.c().getMaximum(4);
    final p b;
    final f<?> c;
    c d;
    final a e;

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(p pVar, f<?> fVar, a aVar) {
        this.b = pVar;
        this.c = fVar;
        this.e = aVar;
    }

    @Override // android.widget.Adapter
    @ai
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Long getItem(int i) {
        if (i < this.b.b() || i > b()) {
            return null;
        }
        return Long.valueOf(this.b.a(b(i)));
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i / this.b.c;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.b.d + a();
    }

    @Override // android.widget.Adapter
    @ah
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public TextView getView(int i, @ai View view, @ah ViewGroup viewGroup) {
        a(viewGroup.getContext());
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(a.k.mtrl_calendar_day, viewGroup, false);
        }
        int a2 = i - a();
        if (a2 < 0 || a2 >= this.b.d) {
            textView.setVisibility(8);
            textView.setEnabled(false);
        } else {
            int i2 = a2 + 1;
            textView.setTag(this.b);
            textView.setText(String.valueOf(i2));
            long a3 = this.b.a(i2);
            if (this.b.b == p.a().b) {
                textView.setContentDescription(g.c(a3));
            } else {
                textView.setContentDescription(g.d(a3));
            }
            textView.setVisibility(0);
            textView.setEnabled(true);
        }
        Long item = getItem(i);
        if (item == null) {
            return textView;
        }
        if (this.e.a().a(item.longValue())) {
            textView.setEnabled(true);
            Iterator<Long> it = this.c.c().iterator();
            while (it.hasNext()) {
                if (y.a(item.longValue()) == y.a(it.next().longValue())) {
                    this.d.b.a(textView);
                    return textView;
                }
            }
            if (y.b().getTimeInMillis() == item.longValue()) {
                this.d.c.a(textView);
                return textView;
            }
            this.d.f1240a.a(textView);
            return textView;
        }
        textView.setEnabled(false);
        this.d.g.a(textView);
        return textView;
    }

    private void a(Context context) {
        if (this.d == null) {
            this.d = new c(context);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a() {
        return this.b.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b() {
        return (this.b.b() + this.b.d) - 1;
    }

    int b(int i) {
        return (i - this.b.b()) + 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c(int i) {
        return a() + (i - 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d(int i) {
        return i >= a() && i <= b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean e(int i) {
        return i % this.b.c == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean f(int i) {
        return (i + 1) % this.b.c == 0;
    }
}
