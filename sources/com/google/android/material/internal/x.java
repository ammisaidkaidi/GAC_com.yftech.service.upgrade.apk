package com.google.android.material.internal;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewOverlay;
import androidx.annotation.ah;
import androidx.annotation.am;

@am(a = 18)
/* loaded from: /home/user/work/dex/classes.dex */
class x implements y {

    /* renamed from: a, reason: collision with root package name */
    private final ViewOverlay f1355a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x(@ah View view) {
        this.f1355a = view.getOverlay();
    }

    @Override // com.google.android.material.internal.y
    public void a(@ah Drawable drawable) {
        this.f1355a.add(drawable);
    }

    @Override // com.google.android.material.internal.y
    public void b(@ah Drawable drawable) {
        this.f1355a.remove(drawable);
    }
}
