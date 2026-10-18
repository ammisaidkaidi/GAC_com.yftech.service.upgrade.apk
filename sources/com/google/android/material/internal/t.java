package com.google.android.material.internal;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.ah;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public class t extends w implements v {
    /* JADX INFO: Access modifiers changed from: package-private */
    public t(Context context, ViewGroup viewGroup, View view) {
        super(context, viewGroup, view);
    }

    static t a(ViewGroup viewGroup) {
        return (t) w.c(viewGroup);
    }

    @Override // com.google.android.material.internal.v
    public void a(@ah View view) {
        this.f1353a.a(view);
    }

    @Override // com.google.android.material.internal.v
    public void b(@ah View view) {
        this.f1353a.b(view);
    }
}
