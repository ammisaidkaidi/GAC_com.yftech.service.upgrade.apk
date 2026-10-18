package com.google.android.material.theme;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.appcompat.app.k;
import androidx.appcompat.widget.aa;
import androidx.appcompat.widget.e;
import androidx.appcompat.widget.g;
import androidx.appcompat.widget.h;
import androidx.appcompat.widget.t;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.f.a;
import com.google.android.material.textview.MaterialTextView;

/* loaded from: /home/user/work/dex/classes.dex */
public class MaterialComponentsViewInflater extends k {
    @Override // androidx.appcompat.app.k
    @ah
    protected g c(@ah Context context, @ah AttributeSet attributeSet) {
        return new MaterialButton(context, attributeSet);
    }

    @Override // androidx.appcompat.app.k
    @ah
    protected h g(Context context, AttributeSet attributeSet) {
        return new a(context, attributeSet);
    }

    @Override // androidx.appcompat.app.k
    @ah
    protected t h(Context context, AttributeSet attributeSet) {
        return new com.google.android.material.p.a(context, attributeSet);
    }

    @Override // androidx.appcompat.app.k
    @ah
    protected aa a(Context context, AttributeSet attributeSet) {
        return new MaterialTextView(context, attributeSet);
    }

    @Override // androidx.appcompat.app.k
    @ah
    protected e j(@ah Context context, @ai AttributeSet attributeSet) {
        return new com.google.android.material.textfield.g(context, attributeSet);
    }
}
