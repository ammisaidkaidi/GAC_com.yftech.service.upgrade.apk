package com.google.android.material.datepicker;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import androidx.annotation.as;
import androidx.annotation.at;
import java.util.Collection;

@ap(a = {ap.a.LIBRARY_GROUP})
/* loaded from: /home/user/work/dex/classes.dex */
public interface f<S> extends Parcelable {
    @ah
    View a(@ah LayoutInflater layoutInflater, @ai ViewGroup viewGroup, @ai Bundle bundle, @ah a aVar, @ah s<S> sVar);

    @ai
    S a();

    @ah
    String a(Context context);

    void a(long j);

    void a(@ah S s);

    @at
    int b(Context context);

    boolean b();

    @ah
    Collection<Long> c();

    @ah
    Collection<androidx.core.m.f<Long, Long>> d();

    @as
    int e();
}
