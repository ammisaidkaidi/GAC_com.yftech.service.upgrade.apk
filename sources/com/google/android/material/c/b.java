package com.google.android.material.c;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import androidx.annotation.ah;
import androidx.annotation.ap;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.j;

@ap(a = {ap.a.LIBRARY_GROUP})
/* loaded from: /home/user/work/dex/classes.dex */
public final class b extends g {
    public static final int j = 5;

    public b(Context context) {
        super(context);
    }

    @Override // androidx.appcompat.view.menu.g, android.view.Menu
    @ah
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        throw new UnsupportedOperationException("BottomNavigationView does not support submenus");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.view.menu.g
    public MenuItem a(int i, int i2, int i3, CharSequence charSequence) {
        if (size() + 1 > 5) {
            throw new IllegalArgumentException("Maximum number of items supported by BottomNavigationView is 5. Limit can be checked with BottomNavigationView#getMaxItemCount()");
        }
        i();
        MenuItem a2 = super.a(i, i2, i3, charSequence);
        if (a2 instanceof j) {
            ((j) a2).a(true);
        }
        j();
        return a2;
    }
}
