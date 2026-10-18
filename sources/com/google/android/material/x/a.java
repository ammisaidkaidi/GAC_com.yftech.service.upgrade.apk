package com.google.android.material.x;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.ba;
import com.google.android.material.a;

/* loaded from: /home/user/work/dex/classes.dex */
public class a extends View {

    /* renamed from: a, reason: collision with root package name */
    public final CharSequence f1489a;
    public final Drawable b;
    public final int c;

    public a(Context context) {
        this(context, null);
    }

    public a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        ba a2 = ba.a(context, attributeSet, a.o.TabItem);
        this.f1489a = a2.d(a.o.TabItem_android_text);
        this.b = a2.a(a.o.TabItem_android_icon);
        this.c = a2.g(a.o.TabItem_android_layout, 0);
        a2.f();
    }
}
