package com.google.android.material.internal;

import android.content.Context;
import android.view.SubMenu;
import androidx.annotation.ah;
import androidx.annotation.ap;

@ap(a = {ap.a.LIBRARY_GROUP})
/* loaded from: /home/user/work/dex/classes.dex */
public class h extends androidx.appcompat.view.menu.g {
    public h(Context context) {
        super(context);
    }

    @Override // androidx.appcompat.view.menu.g, android.view.Menu
    @ah
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        androidx.appcompat.view.menu.j jVar = (androidx.appcompat.view.menu.j) a(i, i2, i3, charSequence);
        j jVar2 = new j(g(), this, jVar);
        jVar.a(jVar2);
        return jVar2;
    }
}
