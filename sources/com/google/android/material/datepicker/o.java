package com.google.android.material.datepicker;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import java.util.Iterator;

@ap(a = {ap.a.LIBRARY_GROUP})
/* loaded from: /home/user/work/dex/classes.dex */
public final class o<S> extends t<S> {

    /* renamed from: a, reason: collision with root package name */
    private static final String f1264a = "DATE_SELECTOR_KEY";
    private static final String b = "CALENDAR_CONSTRAINTS_KEY";

    @ai
    private f<S> c;

    @ai
    private a d;

    /* JADX INFO: Access modifiers changed from: package-private */
    @ah
    public static <T> o<T> a(@ah f<T> fVar, @ah a aVar) {
        o<T> oVar = new o<>();
        Bundle bundle = new Bundle();
        bundle.putParcelable(f1264a, fVar);
        bundle.putParcelable(b, aVar);
        oVar.g(bundle);
        return oVar;
    }

    @Override // androidx.fragment.app.d
    public void e(@ah Bundle bundle) {
        super.e(bundle);
        bundle.putParcelable(f1264a, this.c);
        bundle.putParcelable(b, this.d);
    }

    @Override // androidx.fragment.app.d
    public void b(@ai Bundle bundle) {
        super.b(bundle);
        if (bundle == null) {
            bundle = t();
        }
        this.c = (f) bundle.getParcelable(f1264a);
        this.d = (a) bundle.getParcelable(b);
    }

    @Override // androidx.fragment.app.d
    @ah
    public View a(@ah LayoutInflater layoutInflater, @ai ViewGroup viewGroup, @ai Bundle bundle) {
        return this.c.a(layoutInflater, viewGroup, bundle, this.d, new s<S>() { // from class: com.google.android.material.datepicker.o.1
            @Override // com.google.android.material.datepicker.s
            public void a(S s) {
                Iterator<s<S>> it = o.this.e.iterator();
                while (it.hasNext()) {
                    it.next().a(s);
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.android.material.datepicker.s
            public void a() {
                Iterator<s<S>> it = o.this.e.iterator();
                while (it.hasNext()) {
                    it.next().a();
                }
            }
        });
    }

    @Override // com.google.android.material.datepicker.t
    @ah
    public f<S> e() {
        if (this.c == null) {
            throw new IllegalStateException("dateSelector should not be null. Use MaterialTextInputPicker#newInstance() to create this fragment with a DateSelector, and call this method after the fragment has been created.");
        }
        return this.c;
    }
}
