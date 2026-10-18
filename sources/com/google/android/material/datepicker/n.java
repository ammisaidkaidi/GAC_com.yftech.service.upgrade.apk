package com.google.android.material.datepicker;

import android.app.DatePickerDialog;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import androidx.annotation.at;
import com.google.android.material.a;

@ap(a = {ap.a.LIBRARY_GROUP, ap.a.TESTS})
/* loaded from: /home/user/work/dex/classes.dex */
public class n extends DatePickerDialog {

    /* renamed from: a, reason: collision with root package name */
    @androidx.annotation.f
    private static final int f1263a = 16843612;

    @at
    private static final int b = a.n.MaterialAlertDialog_MaterialComponents_Picker_Date_Spinner;

    @ah
    private final Drawable c;

    @ah
    private final Rect d;

    public n(@ah Context context) {
        this(context, 0);
    }

    public n(@ah Context context, int i) {
        this(context, i, null, -1, -1, -1);
    }

    public n(@ah Context context, @ai DatePickerDialog.OnDateSetListener onDateSetListener, int i, int i2, int i3) {
        this(context, 0, onDateSetListener, i, i2, i3);
    }

    public n(@ah Context context, int i, @ai DatePickerDialog.OnDateSetListener onDateSetListener, int i2, int i3, int i4) {
        super(context, i, onDateSetListener, i2, i3, i4);
        Context context2 = getContext();
        int a2 = com.google.android.material.q.b.a(getContext(), a.c.colorSurface, getClass().getCanonicalName());
        com.google.android.material.t.j jVar = new com.google.android.material.t.j(context2, null, 16843612, b);
        if (Build.VERSION.SDK_INT >= 21) {
            jVar.g(ColorStateList.valueOf(a2));
        } else {
            jVar.g(ColorStateList.valueOf(0));
        }
        this.d = com.google.android.material.i.c.a(context2, 16843612, b);
        this.c = com.google.android.material.i.c.a(jVar, this.d);
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setBackgroundDrawable(this.c);
        getWindow().getDecorView().setOnTouchListener(new com.google.android.material.i.a(this, this.d));
    }
}
