package com.google.android.material.datepicker;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.ah;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.a;
import com.google.android.material.datepicker.k;
import java.util.Calendar;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public class z extends RecyclerView.a<a> {

    /* renamed from: a, reason: collision with root package name */
    private final k<?> f1278a;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a extends RecyclerView.z {
        final TextView E;

        a(TextView textView) {
            super(textView);
            this.E = textView;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(k<?> kVar) {
        this.f1278a = kVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    @ah
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public a a(@ah ViewGroup viewGroup, int i) {
        return new a((TextView) LayoutInflater.from(viewGroup.getContext()).inflate(a.k.mtrl_calendar_year, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public void a(@ah a aVar, int i) {
        int g = g(i);
        String string = aVar.E.getContext().getString(a.m.mtrl_picker_navigate_to_year_description);
        aVar.E.setText(String.format(Locale.getDefault(), "%d", Integer.valueOf(g)));
        aVar.E.setContentDescription(String.format(string, Integer.valueOf(g)));
        c g2 = this.f1278a.g();
        Calendar b = y.b();
        b bVar = b.get(1) == g ? g2.f : g2.d;
        Iterator<Long> it = this.f1278a.e().c().iterator();
        while (it.hasNext()) {
            b.setTimeInMillis(it.next().longValue());
            if (b.get(1) == g) {
                bVar = g2.e;
            }
        }
        bVar.a(aVar.E);
        aVar.E.setOnClickListener(h(g));
    }

    @ah
    private View.OnClickListener h(final int i) {
        return new View.OnClickListener() { // from class: com.google.android.material.datepicker.z.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                z.this.f1278a.a(z.this.f1278a.b().a(p.a(i, z.this.f1278a.a().f1266a)));
                z.this.f1278a.a(k.a.DAY);
            }
        };
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public int a() {
        return this.f1278a.b().f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a(int i) {
        return i - this.f1278a.b().b().b;
    }

    int g(int i) {
        return this.f1278a.b().b().b + i;
    }
}
