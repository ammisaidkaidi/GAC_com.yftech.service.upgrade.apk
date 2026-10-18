package com.google.android.material.datepicker;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import androidx.annotation.as;
import androidx.annotation.at;
import androidx.core.n.af;
import com.google.android.material.a;
import com.google.android.material.datepicker.a;
import com.google.android.material.internal.CheckableImageButton;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* loaded from: /home/user/work/dex/classes.dex */
public final class l<S> extends androidx.fragment.app.c {
    static final Object an = "CONFIRM_BUTTON_TAG";
    static final Object ao = "CANCEL_BUTTON_TAG";
    static final Object ap = "TOGGLE_BUTTON_TAG";
    public static final int aq = 0;
    public static final int ar = 1;
    private static final String as = "OVERRIDE_THEME_RES_ID";
    private static final String at = "DATE_SELECTOR_KEY";
    private static final String au = "CALENDAR_CONSTRAINTS_KEY";
    private static final String av = "TITLE_TEXT_RES_ID_KEY";
    private static final String aw = "TITLE_TEXT_KEY";
    private static final String ax = "INPUT_MODE_KEY";

    @at
    private int aC;

    @ai
    private f<S> aD;
    private t<S> aE;

    @ai
    private com.google.android.material.datepicker.a aF;
    private k<S> aG;

    @as
    private int aH;
    private CharSequence aI;
    private boolean aJ;
    private int aK;
    private TextView aL;
    private CheckableImageButton aM;

    @ai
    private com.google.android.material.t.j aN;
    private Button aO;
    private final LinkedHashSet<m<? super S>> ay = new LinkedHashSet<>();
    private final LinkedHashSet<View.OnClickListener> az = new LinkedHashSet<>();
    private final LinkedHashSet<DialogInterface.OnCancelListener> aA = new LinkedHashSet<>();
    private final LinkedHashSet<DialogInterface.OnDismissListener> aB = new LinkedHashSet<>();

    @Retention(RetentionPolicy.SOURCE)
    @ap(a = {ap.a.LIBRARY_GROUP})
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface b {
    }

    public static long aK() {
        return y.b().getTimeInMillis();
    }

    public static long aL() {
        return p.a().e;
    }

    public String aM() {
        return this.aD.a(y());
    }

    @ah
    static <S> l<S> a(@ah a<S> aVar) {
        l<S> lVar = new l<>();
        Bundle bundle = new Bundle();
        bundle.putInt(as, aVar.b);
        bundle.putParcelable(at, aVar.f1262a);
        bundle.putParcelable(au, aVar.c);
        bundle.putInt(av, aVar.d);
        bundle.putCharSequence(aw, aVar.e);
        bundle.putInt(ax, aVar.g);
        lVar.g(bundle);
        return lVar;
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.d
    public final void e(@ah Bundle bundle) {
        super.e(bundle);
        bundle.putInt(as, this.aC);
        bundle.putParcelable(at, this.aD);
        a.C0086a c0086a = new a.C0086a(this.aF);
        if (this.aG.a() != null) {
            c0086a.c(this.aG.a().e);
        }
        bundle.putParcelable(au, c0086a.a());
        bundle.putInt(av, this.aH);
        bundle.putCharSequence(aw, this.aI);
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.d
    public final void b(@ai Bundle bundle) {
        super.b(bundle);
        if (bundle == null) {
            bundle = t();
        }
        this.aC = bundle.getInt(as);
        this.aD = (f) bundle.getParcelable(at);
        this.aF = (com.google.android.material.datepicker.a) bundle.getParcelable(au);
        this.aH = bundle.getInt(av);
        this.aI = bundle.getCharSequence(aw);
        this.aK = bundle.getInt(ax);
    }

    private int c(Context context) {
        if (this.aC != 0) {
            return this.aC;
        }
        return this.aD.b(context);
    }

    @Override // androidx.fragment.app.c
    @ah
    public final Dialog a(@ai Bundle bundle) {
        Dialog dialog = new Dialog(z(), c(z()));
        Context context = dialog.getContext();
        this.aJ = b(context);
        int a2 = com.google.android.material.q.b.a(context, a.c.colorSurface, l.class.getCanonicalName());
        this.aN = new com.google.android.material.t.j(context, null, a.c.materialCalendarStyle, a.n.Widget_MaterialComponents_MaterialCalendar);
        this.aN.b(context);
        this.aN.g(ColorStateList.valueOf(a2));
        this.aN.r(af.P(dialog.getWindow().getDecorView()));
        return dialog;
    }

    @Override // androidx.fragment.app.d
    @ah
    public final View a(@ah LayoutInflater layoutInflater, @ai ViewGroup viewGroup, @ai Bundle bundle) {
        View inflate = layoutInflater.inflate(this.aJ ? a.k.mtrl_picker_fullscreen : a.k.mtrl_picker_dialog, viewGroup);
        Context context = inflate.getContext();
        if (this.aJ) {
            inflate.findViewById(a.h.mtrl_calendar_frame).setLayoutParams(new LinearLayout.LayoutParams(g(context), -2));
        } else {
            View findViewById = inflate.findViewById(a.h.mtrl_calendar_main_pane);
            View findViewById2 = inflate.findViewById(a.h.mtrl_calendar_frame);
            findViewById.setLayoutParams(new LinearLayout.LayoutParams(g(context), -1));
            findViewById2.setMinimumHeight(f(z()));
        }
        this.aL = (TextView) inflate.findViewById(a.h.mtrl_picker_header_selection_text);
        af.j((View) this.aL, 1);
        this.aM = (CheckableImageButton) inflate.findViewById(a.h.mtrl_picker_header_toggle);
        TextView textView = (TextView) inflate.findViewById(a.h.mtrl_picker_title_text);
        if (this.aI != null) {
            textView.setText(this.aI);
        } else {
            textView.setText(this.aH);
        }
        d(context);
        this.aO = (Button) inflate.findViewById(a.h.confirm_button);
        if (this.aD.b()) {
            this.aO.setEnabled(true);
        } else {
            this.aO.setEnabled(false);
        }
        this.aO.setTag(an);
        this.aO.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.l.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Iterator it = l.this.ay.iterator();
                while (it.hasNext()) {
                    ((m) it.next()).a(l.this.aN());
                }
                l.this.a();
            }
        });
        Button button = (Button) inflate.findViewById(a.h.cancel_button);
        button.setTag(ao);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.l.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Iterator it = l.this.az.iterator();
                while (it.hasNext()) {
                    ((View.OnClickListener) it.next()).onClick(view);
                }
                l.this.a();
            }
        });
        return inflate;
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.d
    public void l() {
        super.l();
        Window window = g().getWindow();
        if (this.aJ) {
            window.setLayout(-1, -1);
            window.setBackgroundDrawable(this.aN);
        } else {
            window.setLayout(-2, -2);
            int dimensionPixelOffset = E().getDimensionPixelOffset(a.f.mtrl_calendar_dialog_background_inset);
            Rect rect = new Rect(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset);
            window.setBackgroundDrawable(new InsetDrawable((Drawable) this.aN, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset));
            window.getDecorView().setOnTouchListener(new com.google.android.material.i.a(g(), rect));
        }
        aT();
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.d
    public void m() {
        this.aE.j();
        super.m();
    }

    @Override // androidx.fragment.app.c, android.content.DialogInterface.OnCancelListener
    public final void onCancel(@ah DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnCancelListener> it = this.aA.iterator();
        while (it.hasNext()) {
            it.next().onCancel(dialogInterface);
        }
        super.onCancel(dialogInterface);
    }

    @Override // androidx.fragment.app.c, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(@ah DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnDismissListener> it = this.aB.iterator();
        while (it.hasNext()) {
            it.next().onDismiss(dialogInterface);
        }
        ViewGroup viewGroup = (ViewGroup) X();
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        super.onDismiss(dialogInterface);
    }

    @ai
    public final S aN() {
        return this.aD.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aS() {
        String aM = aM();
        this.aL.setContentDescription(String.format(b(a.m.mtrl_picker_announce_current_selection), aM));
        this.aL.setText(aM);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aT() {
        this.aG = k.a(this.aD, c(z()), this.aF);
        this.aE = this.aM.isChecked() ? o.a(this.aD, this.aF) : this.aG;
        aS();
        androidx.fragment.app.s a2 = H().a();
        a2.b(a.h.mtrl_calendar_frame, this.aE);
        a2.i();
        this.aE.a((s) new s<S>() { // from class: com.google.android.material.datepicker.l.3
            @Override // com.google.android.material.datepicker.s
            public void a(S s) {
                l.this.aS();
                l.this.aO.setEnabled(l.this.aD.b());
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.android.material.datepicker.s
            public void a() {
                l.this.aO.setEnabled(false);
            }
        });
    }

    private void d(Context context) {
        this.aM.setTag(ap);
        this.aM.setImageDrawable(e(context));
        this.aM.setChecked(this.aK != 0);
        af.a(this.aM, (androidx.core.n.a) null);
        a(this.aM);
        this.aM.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.l.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                l.this.aO.setEnabled(l.this.aD.b());
                l.this.aM.toggle();
                l.this.a(l.this.aM);
                l.this.aT();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(@ah CheckableImageButton checkableImageButton) {
        String string;
        if (this.aM.isChecked()) {
            string = checkableImageButton.getContext().getString(a.m.mtrl_picker_toggle_to_calendar_input_mode);
        } else {
            string = checkableImageButton.getContext().getString(a.m.mtrl_picker_toggle_to_text_input_mode);
        }
        this.aM.setContentDescription(string);
    }

    @ah
    private static Drawable e(Context context) {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_checked}, androidx.appcompat.a.a.a.b(context, a.g.material_ic_calendar_black_24dp));
        stateListDrawable.addState(new int[0], androidx.appcompat.a.a.a.b(context, a.g.material_ic_edit_black_24dp));
        return stateListDrawable;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(@ah Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(com.google.android.material.q.b.a(context, a.c.materialCalendarStyle, k.class.getCanonicalName()), new int[]{R.attr.windowFullscreen});
        boolean z = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
        return z;
    }

    private static int f(@ah Context context) {
        Resources resources = context.getResources();
        return resources.getDimensionPixelSize(a.f.mtrl_calendar_navigation_height) + resources.getDimensionPixelOffset(a.f.mtrl_calendar_navigation_top_padding) + resources.getDimensionPixelOffset(a.f.mtrl_calendar_navigation_bottom_padding) + resources.getDimensionPixelSize(a.f.mtrl_calendar_days_of_week_height) + (q.f1267a * resources.getDimensionPixelSize(a.f.mtrl_calendar_day_height)) + ((q.f1267a - 1) * resources.getDimensionPixelOffset(a.f.mtrl_calendar_month_vertical_padding)) + resources.getDimensionPixelOffset(a.f.mtrl_calendar_bottom_padding);
    }

    private static int g(@ah Context context) {
        Resources resources = context.getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(a.f.mtrl_calendar_content_padding);
        int i = p.a().c;
        return (dimensionPixelOffset * 2) + (resources.getDimensionPixelSize(a.f.mtrl_calendar_day_width) * i) + ((i - 1) * resources.getDimensionPixelOffset(a.f.mtrl_calendar_month_horizontal_padding));
    }

    public boolean a(m<? super S> mVar) {
        return this.ay.add(mVar);
    }

    public boolean b(m<? super S> mVar) {
        return this.ay.remove(mVar);
    }

    public void aO() {
        this.ay.clear();
    }

    public boolean a(View.OnClickListener onClickListener) {
        return this.az.add(onClickListener);
    }

    public boolean b(View.OnClickListener onClickListener) {
        return this.az.remove(onClickListener);
    }

    public void aP() {
        this.az.clear();
    }

    public boolean a(DialogInterface.OnCancelListener onCancelListener) {
        return this.aA.add(onCancelListener);
    }

    public boolean b(DialogInterface.OnCancelListener onCancelListener) {
        return this.aA.remove(onCancelListener);
    }

    public void aQ() {
        this.aA.clear();
    }

    public boolean a(DialogInterface.OnDismissListener onDismissListener) {
        return this.aB.add(onDismissListener);
    }

    public boolean b(DialogInterface.OnDismissListener onDismissListener) {
        return this.aB.remove(onDismissListener);
    }

    public void aR() {
        this.aB.clear();
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class a<S> {

        /* renamed from: a, reason: collision with root package name */
        final f<S> f1262a;
        com.google.android.material.datepicker.a c;
        int b = 0;
        int d = 0;
        CharSequence e = null;

        @ai
        S f = null;
        int g = 0;

        private a(f<S> fVar) {
            this.f1262a = fVar;
        }

        @ah
        @ap(a = {ap.a.LIBRARY_GROUP})
        public static <S> a<S> a(@ah f<S> fVar) {
            return new a<>(fVar);
        }

        @ah
        public static a<Long> a() {
            return new a<>(new v());
        }

        @ah
        public static a<androidx.core.m.f<Long, Long>> b() {
            return new a<>(new u());
        }

        @ah
        public a<S> a(S s) {
            this.f = s;
            return this;
        }

        @ah
        public a<S> a(@at int i) {
            this.b = i;
            return this;
        }

        @ah
        public a<S> a(com.google.android.material.datepicker.a aVar) {
            this.c = aVar;
            return this;
        }

        @ah
        public a<S> b(@as int i) {
            this.d = i;
            this.e = null;
            return this;
        }

        @ah
        public a<S> a(@ai CharSequence charSequence) {
            this.e = charSequence;
            this.d = 0;
            return this;
        }

        @ah
        public a<S> c(int i) {
            this.g = i;
            return this;
        }

        @ah
        public l<S> c() {
            if (this.c == null) {
                this.c = new a.C0086a().a();
            }
            if (this.d == 0) {
                this.d = this.f1262a.e();
            }
            if (this.f != null) {
                this.f1262a.a((f<S>) this.f);
            }
            return l.a((a) this);
        }
    }
}
