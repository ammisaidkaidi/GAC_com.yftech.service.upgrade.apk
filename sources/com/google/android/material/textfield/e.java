package com.google.android.material.textfield;

import android.content.Context;
import androidx.annotation.ah;
import com.google.android.material.internal.CheckableImageButton;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public abstract class e {

    /* renamed from: a, reason: collision with root package name */
    TextInputLayout f1460a;
    Context b;
    CheckableImageButton c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(int i) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(@ah TextInputLayout textInputLayout) {
        this.f1460a = textInputLayout;
        this.b = textInputLayout.getContext();
        this.c = textInputLayout.getEndIconView();
    }
}
