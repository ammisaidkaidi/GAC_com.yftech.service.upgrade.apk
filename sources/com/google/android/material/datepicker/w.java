package com.google.android.material.datepicker;

import android.content.Context;
import android.util.DisplayMetrics;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public class w extends LinearLayoutManager {

    /* renamed from: a, reason: collision with root package name */
    private static final float f1275a = 100.0f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(Context context, int i, boolean z) {
        super(context, i, z);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.i
    public void a(RecyclerView recyclerView, RecyclerView.w wVar, int i) {
        androidx.recyclerview.widget.q qVar = new androidx.recyclerview.widget.q(recyclerView.getContext()) { // from class: com.google.android.material.datepicker.w.1
            @Override // androidx.recyclerview.widget.q
            protected float a(DisplayMetrics displayMetrics) {
                return w.f1275a / displayMetrics.densityDpi;
            }
        };
        qVar.c(i);
        a(qVar);
    }
}
