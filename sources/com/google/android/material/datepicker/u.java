package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import com.google.android.material.a;
import com.google.android.material.textfield.TextInputLayout;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;

@ap(a = {ap.a.LIBRARY_GROUP})
/* loaded from: /home/user/work/dex/classes.dex */
public class u implements f<androidx.core.m.f<Long, Long>> {
    public static final Parcelable.Creator<u> CREATOR = new Parcelable.Creator<u>() { // from class: com.google.android.material.datepicker.u.3
        @Override // android.os.Parcelable.Creator
        @ah
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public u createFromParcel(@ah Parcel parcel) {
            u uVar = new u();
            uVar.c = (Long) parcel.readValue(Long.class.getClassLoader());
            uVar.d = (Long) parcel.readValue(Long.class.getClassLoader());
            return uVar;
        }

        @Override // android.os.Parcelable.Creator
        @ah
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public u[] newArray(int i) {
            return new u[i];
        }
    };

    /* renamed from: a, reason: collision with root package name */
    private String f1270a;
    private final String b = " ";

    @ai
    private Long c = null;

    @ai
    private Long d = null;

    @ai
    private Long e = null;

    @ai
    private Long f = null;

    private boolean a(long j, long j2) {
        return j <= j2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.material.datepicker.f
    public void a(long j) {
        if (this.c == null) {
            this.c = Long.valueOf(j);
        } else if (this.d == null && a(this.c.longValue(), j)) {
            this.d = Long.valueOf(j);
        } else {
            this.d = null;
            this.c = Long.valueOf(j);
        }
    }

    @Override // com.google.android.material.datepicker.f
    public boolean b() {
        return (this.c == null || this.d == null || !a(this.c.longValue(), this.d.longValue())) ? false : true;
    }

    @Override // com.google.android.material.datepicker.f
    public void a(@ah androidx.core.m.f<Long, Long> fVar) {
        if (fVar.f503a != null && fVar.b != null) {
            androidx.core.m.i.a(a(fVar.f503a.longValue(), fVar.b.longValue()));
        }
        this.c = fVar.f503a == null ? null : Long.valueOf(y.a(fVar.f503a.longValue()));
        this.d = fVar.b != null ? Long.valueOf(y.a(fVar.b.longValue())) : null;
    }

    @Override // com.google.android.material.datepicker.f
    @ah
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public androidx.core.m.f<Long, Long> a() {
        return new androidx.core.m.f<>(this.c, this.d);
    }

    @Override // com.google.android.material.datepicker.f
    @ah
    public Collection<androidx.core.m.f<Long, Long>> d() {
        if (this.c == null || this.d == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new androidx.core.m.f(this.c, this.d));
        return arrayList;
    }

    @Override // com.google.android.material.datepicker.f
    @ah
    public Collection<Long> c() {
        ArrayList arrayList = new ArrayList();
        if (this.c != null) {
            arrayList.add(this.c);
        }
        if (this.d != null) {
            arrayList.add(this.d);
        }
        return arrayList;
    }

    @Override // com.google.android.material.datepicker.f
    public int b(@ah Context context) {
        Resources resources = context.getResources();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        return com.google.android.material.q.b.a(context, Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels) > resources.getDimensionPixelSize(a.f.mtrl_calendar_maximum_default_fullscreen_minor_axis) ? a.c.materialCalendarTheme : a.c.materialCalendarFullscreenTheme, l.class.getCanonicalName());
    }

    @Override // com.google.android.material.datepicker.f
    @ah
    public String a(@ah Context context) {
        Resources resources = context.getResources();
        if (this.c == null && this.d == null) {
            return resources.getString(a.m.mtrl_picker_range_header_unselected);
        }
        if (this.d == null) {
            return resources.getString(a.m.mtrl_picker_range_header_only_start_selected, g.e(this.c.longValue()));
        }
        if (this.c == null) {
            return resources.getString(a.m.mtrl_picker_range_header_only_end_selected, g.e(this.d.longValue()));
        }
        androidx.core.m.f<String, String> a2 = g.a(this.c, this.d);
        return resources.getString(a.m.mtrl_picker_range_header_selected, a2.f503a, a2.b);
    }

    @Override // com.google.android.material.datepicker.f
    public int e() {
        return a.m.mtrl_picker_range_header_title;
    }

    @Override // com.google.android.material.datepicker.f
    public View a(@ah LayoutInflater layoutInflater, @ai ViewGroup viewGroup, @ai Bundle bundle, a aVar, @ah final s<androidx.core.m.f<Long, Long>> sVar) {
        View inflate = layoutInflater.inflate(a.k.mtrl_picker_text_input_date_range, viewGroup, false);
        final TextInputLayout textInputLayout = (TextInputLayout) inflate.findViewById(a.h.mtrl_picker_text_input_range_start);
        final TextInputLayout textInputLayout2 = (TextInputLayout) inflate.findViewById(a.h.mtrl_picker_text_input_range_end);
        EditText editText = textInputLayout.getEditText();
        EditText editText2 = textInputLayout2.getEditText();
        if (com.google.android.material.internal.g.d()) {
            editText.setInputType(17);
            editText2.setInputType(17);
        }
        this.f1270a = inflate.getResources().getString(a.m.mtrl_picker_invalid_range);
        SimpleDateFormat d = y.d();
        if (this.c != null) {
            editText.setText(d.format(this.c));
            this.e = this.c;
        }
        if (this.d != null) {
            editText2.setText(d.format(this.d));
            this.f = this.d;
        }
        String a2 = y.a(inflate.getResources(), d);
        editText.addTextChangedListener(new e(a2, d, textInputLayout, aVar) { // from class: com.google.android.material.datepicker.u.1
            @Override // com.google.android.material.datepicker.e
            void a(@ai Long l) {
                u.this.e = l;
                u.this.a(textInputLayout, textInputLayout2, sVar);
            }

            @Override // com.google.android.material.datepicker.e
            void a() {
                u.this.e = null;
                u.this.a(textInputLayout, textInputLayout2, sVar);
            }
        });
        editText2.addTextChangedListener(new e(a2, d, textInputLayout2, aVar) { // from class: com.google.android.material.datepicker.u.2
            @Override // com.google.android.material.datepicker.e
            void a(@ai Long l) {
                u.this.f = l;
                u.this.a(textInputLayout, textInputLayout2, sVar);
            }

            @Override // com.google.android.material.datepicker.e
            void a() {
                u.this.f = null;
                u.this.a(textInputLayout, textInputLayout2, sVar);
            }
        });
        com.google.android.material.internal.z.b(editText);
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(@ah TextInputLayout textInputLayout, @ah TextInputLayout textInputLayout2, @ah s<androidx.core.m.f<Long, Long>> sVar) {
        if (this.e == null || this.f == null) {
            a(textInputLayout, textInputLayout2);
            sVar.a();
        } else if (a(this.e.longValue(), this.f.longValue())) {
            this.c = this.e;
            this.d = this.f;
            sVar.a(a());
        } else {
            b(textInputLayout, textInputLayout2);
            sVar.a();
        }
    }

    private void a(@ah TextInputLayout textInputLayout, @ah TextInputLayout textInputLayout2) {
        if (textInputLayout.getError() != null && this.f1270a.contentEquals(textInputLayout.getError())) {
            textInputLayout.setError(null);
        }
        if (textInputLayout2.getError() == null || !" ".contentEquals(textInputLayout2.getError())) {
            return;
        }
        textInputLayout2.setError(null);
    }

    private void b(@ah TextInputLayout textInputLayout, @ah TextInputLayout textInputLayout2) {
        textInputLayout.setError(this.f1270a);
        textInputLayout2.setError(" ");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@ah Parcel parcel, int i) {
        parcel.writeValue(this.c);
        parcel.writeValue(this.d);
    }
}
