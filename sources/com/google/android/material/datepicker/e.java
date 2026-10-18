package com.google.android.material.datepicker;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import androidx.annotation.ah;
import androidx.annotation.ai;
import com.google.android.material.a;
import com.google.android.material.textfield.TextInputLayout;
import java.text.DateFormat;
import java.text.ParseException;
import java.util.Date;

/* loaded from: /home/user/work/dex/classes.dex */
abstract class e implements TextWatcher {

    /* renamed from: a, reason: collision with root package name */
    private final String f1242a;
    private final DateFormat b;

    @ah
    private final TextInputLayout c;
    private final a d;
    private final String e;

    void a() {
    }

    abstract void a(@ai Long l);

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(String str, DateFormat dateFormat, @ah TextInputLayout textInputLayout, a aVar) {
        this.f1242a = str;
        this.b = dateFormat;
        this.c = textInputLayout;
        this.d = aVar;
        this.e = textInputLayout.getContext().getString(a.m.mtrl_picker_out_of_range);
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(@ah CharSequence charSequence, int i, int i2, int i3) {
        if (TextUtils.isEmpty(charSequence)) {
            this.c.setError(null);
            a(null);
            return;
        }
        try {
            Date parse = this.b.parse(charSequence.toString());
            this.c.setError(null);
            long time = parse.getTime();
            if (this.d.a().a(time) && this.d.a(time)) {
                a(Long.valueOf(parse.getTime()));
            } else {
                this.c.setError(String.format(this.e, g.e(time)));
                a();
            }
        } catch (ParseException unused) {
            String string = this.c.getContext().getString(a.m.mtrl_picker_invalid_format);
            String format = String.format(this.c.getContext().getString(a.m.mtrl_picker_invalid_format_use), this.f1242a);
            String format2 = String.format(this.c.getContext().getString(a.m.mtrl_picker_invalid_format_example), this.b.format(new Date(y.b().getTimeInMillis())));
            this.c.setError(string + "\n" + format + "\n" + format2);
            a();
        }
    }
}
