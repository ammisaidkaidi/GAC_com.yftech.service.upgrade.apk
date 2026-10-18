package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
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
public class v implements f<Long> {
    public static final Parcelable.Creator<v> CREATOR = new Parcelable.Creator<v>() { // from class: com.google.android.material.datepicker.v.2
        @Override // android.os.Parcelable.Creator
        @ah
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public v createFromParcel(@ah Parcel parcel) {
            v vVar = new v();
            vVar.f1273a = (Long) parcel.readValue(Long.class.getClassLoader());
            return vVar;
        }

        @Override // android.os.Parcelable.Creator
        @ah
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public v[] newArray(int i) {
            return new v[i];
        }
    };

    /* renamed from: a, reason: collision with root package name */
    @ai
    private Long f1273a;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.material.datepicker.f
    public void a(long j) {
        this.f1273a = Long.valueOf(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        this.f1273a = null;
    }

    @Override // com.google.android.material.datepicker.f
    public void a(@ai Long l) {
        this.f1273a = l == null ? null : Long.valueOf(y.a(l.longValue()));
    }

    @Override // com.google.android.material.datepicker.f
    public boolean b() {
        return this.f1273a != null;
    }

    @Override // com.google.android.material.datepicker.f
    @ah
    public Collection<androidx.core.m.f<Long, Long>> d() {
        return new ArrayList();
    }

    @Override // com.google.android.material.datepicker.f
    @ah
    public Collection<Long> c() {
        ArrayList arrayList = new ArrayList();
        if (this.f1273a != null) {
            arrayList.add(this.f1273a);
        }
        return arrayList;
    }

    @Override // com.google.android.material.datepicker.f
    @ai
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public Long a() {
        return this.f1273a;
    }

    @Override // com.google.android.material.datepicker.f
    public View a(@ah LayoutInflater layoutInflater, @ai ViewGroup viewGroup, @ai Bundle bundle, a aVar, @ah final s<Long> sVar) {
        View inflate = layoutInflater.inflate(a.k.mtrl_picker_text_input_date, viewGroup, false);
        TextInputLayout textInputLayout = (TextInputLayout) inflate.findViewById(a.h.mtrl_picker_text_input_date);
        EditText editText = textInputLayout.getEditText();
        if (com.google.android.material.internal.g.d()) {
            editText.setInputType(17);
        }
        SimpleDateFormat d = y.d();
        String a2 = y.a(inflate.getResources(), d);
        if (this.f1273a != null) {
            editText.setText(d.format(this.f1273a));
        }
        editText.addTextChangedListener(new e(a2, d, textInputLayout, aVar) { // from class: com.google.android.material.datepicker.v.1
            @Override // com.google.android.material.datepicker.e
            void a(@ai Long l) {
                if (l == null) {
                    v.this.g();
                } else {
                    v.this.a(l.longValue());
                }
                sVar.a(v.this.a());
            }

            @Override // com.google.android.material.datepicker.e
            void a() {
                sVar.a();
            }
        });
        com.google.android.material.internal.z.b(editText);
        return inflate;
    }

    @Override // com.google.android.material.datepicker.f
    public int b(Context context) {
        return com.google.android.material.q.b.a(context, a.c.materialCalendarTheme, l.class.getCanonicalName());
    }

    @Override // com.google.android.material.datepicker.f
    @ah
    public String a(@ah Context context) {
        Resources resources = context.getResources();
        if (this.f1273a == null) {
            return resources.getString(a.m.mtrl_picker_date_header_unselected);
        }
        return resources.getString(a.m.mtrl_picker_date_header_selected, g.a(this.f1273a.longValue()));
    }

    @Override // com.google.android.material.datepicker.f
    public int e() {
        return a.m.mtrl_picker_date_header_title;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@ah Parcel parcel, int i) {
        parcel.writeValue(this.f1273a);
    }
}
