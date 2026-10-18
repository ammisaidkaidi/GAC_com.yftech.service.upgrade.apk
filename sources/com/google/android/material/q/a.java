package com.google.android.material.q;

import android.graphics.Typeface;
import androidx.annotation.ap;

@ap(a = {ap.a.LIBRARY_GROUP})
/* loaded from: /home/user/work/dex/classes.dex */
public final class a extends f {

    /* renamed from: a, reason: collision with root package name */
    private final Typeface f1369a;
    private final InterfaceC0092a b;
    private boolean c;

    /* renamed from: com.google.android.material.q.a$a, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface InterfaceC0092a {
        void a(Typeface typeface);
    }

    public a(InterfaceC0092a interfaceC0092a, Typeface typeface) {
        this.f1369a = typeface;
        this.b = interfaceC0092a;
    }

    @Override // com.google.android.material.q.f
    public void a(Typeface typeface, boolean z) {
        a(typeface);
    }

    @Override // com.google.android.material.q.f
    public void a(int i) {
        a(this.f1369a);
    }

    public void a() {
        this.c = true;
    }

    private void a(Typeface typeface) {
        if (this.c) {
            return;
        }
        this.b.a(typeface);
    }
}
