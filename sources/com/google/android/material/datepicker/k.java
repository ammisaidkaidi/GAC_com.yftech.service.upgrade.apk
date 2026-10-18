package com.google.android.material.datepicker;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Build;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ak;
import androidx.annotation.ap;
import androidx.annotation.ax;
import androidx.core.n.af;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.a;
import com.google.android.material.button.MaterialButton;
import java.util.Calendar;
import java.util.Iterator;

@ap(a = {ap.a.LIBRARY_GROUP})
/* loaded from: /home/user/work/dex/classes.dex */
public final class k<S> extends t<S> {

    /* renamed from: a, reason: collision with root package name */
    @ax
    static final Object f1246a = "MONTHS_VIEW_GROUP_TAG";

    @ax
    static final Object b = "NAVIGATION_PREV_TAG";

    @ax
    static final Object c = "NAVIGATION_NEXT_TAG";

    @ax
    static final Object d = "SELECTOR_TOGGLE_TAG";
    private static final String f = "THEME_RES_ID_KEY";
    private static final String g = "GRID_SELECTOR_KEY";
    private static final String h = "CALENDAR_CONSTRAINTS_KEY";
    private static final String i = "CURRENT_MONTH_KEY";
    private static final int j = 3;

    @ai
    private p an;
    private a ao;
    private c ap;
    private RecyclerView aq;
    private RecyclerView ar;
    private View as;
    private View at;
    private int k;

    @ai
    private f<S> l;

    @ai
    private com.google.android.material.datepicker.a m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public enum a {
        DAY,
        YEAR
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface b {
        void a(long j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ah
    public static <T> k<T> a(f<T> fVar, int i2, @ah com.google.android.material.datepicker.a aVar) {
        k<T> kVar = new k<>();
        Bundle bundle = new Bundle();
        bundle.putInt(f, i2);
        bundle.putParcelable(g, fVar);
        bundle.putParcelable(h, aVar);
        bundle.putParcelable(i, aVar.d());
        kVar.g(bundle);
        return kVar;
    }

    @Override // androidx.fragment.app.d
    public void e(@ah Bundle bundle) {
        super.e(bundle);
        bundle.putInt(f, this.k);
        bundle.putParcelable(g, this.l);
        bundle.putParcelable(h, this.m);
        bundle.putParcelable(i, this.an);
    }

    @Override // androidx.fragment.app.d
    public void b(@ai Bundle bundle) {
        super.b(bundle);
        if (bundle == null) {
            bundle = t();
        }
        this.k = bundle.getInt(f);
        this.l = (f) bundle.getParcelable(g);
        this.m = (com.google.android.material.datepicker.a) bundle.getParcelable(h);
        this.an = (p) bundle.getParcelable(i);
    }

    @Override // androidx.fragment.app.d
    @ah
    public View a(@ah LayoutInflater layoutInflater, @ai ViewGroup viewGroup, @ai Bundle bundle) {
        int i2;
        final int i3;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(y(), this.k);
        this.ap = new c(contextThemeWrapper);
        LayoutInflater cloneInContext = layoutInflater.cloneInContext(contextThemeWrapper);
        p b2 = this.m.b();
        if (l.b((Context) contextThemeWrapper)) {
            i2 = a.k.mtrl_calendar_vertical;
            i3 = 1;
        } else {
            i2 = a.k.mtrl_calendar_horizontal;
            i3 = 0;
        }
        View inflate = cloneInContext.inflate(i2, viewGroup, false);
        GridView gridView = (GridView) inflate.findViewById(a.h.mtrl_calendar_days_of_week);
        af.a(gridView, new androidx.core.n.a() { // from class: com.google.android.material.datepicker.k.1
            @Override // androidx.core.n.a
            public void a(View view, @ah androidx.core.n.a.d dVar) {
                super.a(view, dVar);
                dVar.b((Object) null);
            }
        });
        gridView.setAdapter((ListAdapter) new j());
        gridView.setNumColumns(b2.c);
        gridView.setEnabled(false);
        this.ar = (RecyclerView) inflate.findViewById(a.h.mtrl_calendar_months);
        this.ar.setLayoutManager(new w(y(), i3, false) { // from class: com.google.android.material.datepicker.k.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.recyclerview.widget.LinearLayoutManager
            public void a(@ah RecyclerView.w wVar, @ah int[] iArr) {
                if (i3 == 0) {
                    iArr[0] = k.this.ar.getWidth();
                    iArr[1] = k.this.ar.getWidth();
                } else {
                    iArr[0] = k.this.ar.getHeight();
                    iArr[1] = k.this.ar.getHeight();
                }
            }
        });
        this.ar.setTag(f1246a);
        r rVar = new r(contextThemeWrapper, this.l, this.m, new b() { // from class: com.google.android.material.datepicker.k.4
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.material.datepicker.k.b
            public void a(long j2) {
                if (k.this.m.a().a(j2)) {
                    k.this.l.a(j2);
                    Iterator<s<S>> it = k.this.e.iterator();
                    while (it.hasNext()) {
                        it.next().a(k.this.l.a());
                    }
                    k.this.ar.getAdapter().e();
                    if (k.this.aq != null) {
                        k.this.aq.getAdapter().e();
                    }
                }
            }
        });
        this.ar.setAdapter(rVar);
        int integer = contextThemeWrapper.getResources().getInteger(a.i.mtrl_calendar_year_selector_span);
        this.aq = (RecyclerView) inflate.findViewById(a.h.mtrl_calendar_year_selector_frame);
        if (this.aq != null) {
            this.aq.setHasFixedSize(true);
            this.aq.setLayoutManager(new GridLayoutManager((Context) contextThemeWrapper, integer, 1, false));
            this.aq.setAdapter(new z(this));
            this.aq.a(aK());
        }
        if (inflate.findViewById(a.h.month_navigation_fragment_toggle) != null) {
            a(inflate, rVar);
        }
        if (!l.b((Context) contextThemeWrapper)) {
            new androidx.recyclerview.widget.r().a(this.ar);
        }
        this.ar.e(rVar.a(this.an));
        return inflate;
    }

    @ah
    private RecyclerView.h aK() {
        return new RecyclerView.h() { // from class: com.google.android.material.datepicker.k.5
            private final Calendar b = y.c();
            private final Calendar c = y.c();

            @Override // androidx.recyclerview.widget.RecyclerView.h
            public void a(@ah Canvas canvas, @ah RecyclerView recyclerView, @ah RecyclerView.w wVar) {
                int width;
                if ((recyclerView.getAdapter() instanceof z) && (recyclerView.getLayoutManager() instanceof GridLayoutManager)) {
                    z zVar = (z) recyclerView.getAdapter();
                    GridLayoutManager gridLayoutManager = (GridLayoutManager) recyclerView.getLayoutManager();
                    for (androidx.core.m.f<Long, Long> fVar : k.this.l.d()) {
                        if (fVar.f503a != null && fVar.b != null) {
                            this.b.setTimeInMillis(fVar.f503a.longValue());
                            this.c.setTimeInMillis(fVar.b.longValue());
                            int a2 = zVar.a(this.b.get(1));
                            int a3 = zVar.a(this.c.get(1));
                            View c2 = gridLayoutManager.c(a2);
                            View c3 = gridLayoutManager.c(a3);
                            int c4 = a2 / gridLayoutManager.c();
                            int c5 = a3 / gridLayoutManager.c();
                            int i2 = c4;
                            while (i2 <= c5) {
                                View c6 = gridLayoutManager.c(gridLayoutManager.c() * i2);
                                if (c6 != null) {
                                    int top = c6.getTop() + k.this.ap.d.c();
                                    int bottom = c6.getBottom() - k.this.ap.d.d();
                                    int left = i2 == c4 ? c2.getLeft() + (c2.getWidth() / 2) : 0;
                                    if (i2 == c5) {
                                        width = c3.getLeft() + (c3.getWidth() / 2);
                                    } else {
                                        width = recyclerView.getWidth();
                                    }
                                    canvas.drawRect(left, top, width, bottom, k.this.ap.h);
                                }
                                i2++;
                            }
                        }
                    }
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ai
    public p a() {
        return this.an;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ai
    public com.google.android.material.datepicker.a b() {
        return this.m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(p pVar) {
        r rVar = (r) this.ar.getAdapter();
        int a2 = rVar.a(pVar);
        int a3 = a2 - rVar.a(this.an);
        boolean z = Math.abs(a3) > 3;
        boolean z2 = a3 > 0;
        this.an = pVar;
        if (z && z2) {
            this.ar.e(a2 - 3);
            e(a2);
        } else if (z) {
            this.ar.e(a2 + 3);
            e(a2);
        } else {
            e(a2);
        }
    }

    @Override // com.google.android.material.datepicker.t
    @ai
    public f<S> e() {
        return this.l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c g() {
        return this.ap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ak
    public static int b(@ah Context context) {
        return context.getResources().getDimensionPixelSize(a.f.mtrl_calendar_day_height);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(a aVar) {
        this.ao = aVar;
        if (aVar == a.YEAR) {
            this.aq.getLayoutManager().e(((z) this.aq.getAdapter()).a(this.an.b));
            this.as.setVisibility(0);
            this.at.setVisibility(8);
        } else if (aVar == a.DAY) {
            this.as.setVisibility(8);
            this.at.setVisibility(0);
            a(this.an);
        }
    }

    void h() {
        if (this.ao == a.YEAR) {
            a(a.DAY);
        } else if (this.ao == a.DAY) {
            a(a.YEAR);
        }
    }

    private void a(@ah View view, @ah final r rVar) {
        final MaterialButton materialButton = (MaterialButton) view.findViewById(a.h.month_navigation_fragment_toggle);
        materialButton.setTag(d);
        af.a(materialButton, new androidx.core.n.a() { // from class: com.google.android.material.datepicker.k.6
            @Override // androidx.core.n.a
            public void a(View view2, @ah androidx.core.n.a.d dVar) {
                String b2;
                super.a(view2, dVar);
                if (k.this.at.getVisibility() == 0) {
                    b2 = k.this.b(a.m.mtrl_picker_toggle_to_year_selection);
                } else {
                    b2 = k.this.b(a.m.mtrl_picker_toggle_to_day_selection);
                }
                dVar.f(b2);
            }
        });
        MaterialButton materialButton2 = (MaterialButton) view.findViewById(a.h.month_navigation_previous);
        materialButton2.setTag(b);
        MaterialButton materialButton3 = (MaterialButton) view.findViewById(a.h.month_navigation_next);
        materialButton3.setTag(c);
        this.as = view.findViewById(a.h.mtrl_calendar_year_selector_frame);
        this.at = view.findViewById(a.h.mtrl_calendar_day_selector_frame);
        a(a.DAY);
        materialButton.setText(this.an.d());
        this.ar.a(new RecyclerView.n() { // from class: com.google.android.material.datepicker.k.7
            @Override // androidx.recyclerview.widget.RecyclerView.n
            public void a(@ah RecyclerView recyclerView, int i2, int i3) {
                int w;
                if (i2 < 0) {
                    w = k.this.i().u();
                } else {
                    w = k.this.i().w();
                }
                k.this.an = rVar.g(w);
                materialButton.setText(rVar.a(w));
            }

            @Override // androidx.recyclerview.widget.RecyclerView.n
            public void a(@ah RecyclerView recyclerView, int i2) {
                if (i2 == 0) {
                    CharSequence text = materialButton.getText();
                    if (Build.VERSION.SDK_INT >= 16) {
                        recyclerView.announceForAccessibility(text);
                    } else {
                        recyclerView.sendAccessibilityEvent(2048);
                    }
                }
            }
        });
        materialButton.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.k.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                k.this.h();
            }
        });
        materialButton3.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.k.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                int u = k.this.i().u() + 1;
                if (u < k.this.ar.getAdapter().a()) {
                    k.this.a(rVar.g(u));
                }
            }
        });
        materialButton2.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.k.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                int w = k.this.i().w() - 1;
                if (w >= 0) {
                    k.this.a(rVar.g(w));
                }
            }
        });
    }

    private void e(final int i2) {
        this.ar.post(new Runnable() { // from class: com.google.android.material.datepicker.k.2
            @Override // java.lang.Runnable
            public void run() {
                k.this.ar.g(i2);
            }
        });
    }

    @ah
    LinearLayoutManager i() {
        return (LinearLayoutManager) this.ar.getLayoutManager();
    }
}
