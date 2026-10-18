package com.google.android.material.datepicker;

import java.util.LinkedHashSet;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public abstract class t<S> extends androidx.fragment.app.d {
    protected final LinkedHashSet<s<S>> e = new LinkedHashSet<>();

    abstract f<S> e();

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(s<S> sVar) {
        return this.e.add(sVar);
    }

    boolean b(s<S> sVar) {
        return this.e.remove(sVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j() {
        this.e.clear();
    }
}
