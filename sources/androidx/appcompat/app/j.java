package androidx.appcompat.app;

import android.app.Dialog;
import android.os.Bundle;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;

/* loaded from: /home/user/work/dex/classes.dex */
public class j extends androidx.fragment.app.c {
    @Override // androidx.fragment.app.c
    @ah
    public Dialog a(@ai Bundle bundle) {
        return new i(y(), h());
    }

    @Override // androidx.fragment.app.c
    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void a(@ah Dialog dialog, int i) {
        if (dialog instanceof i) {
            i iVar = (i) dialog;
            switch (i) {
                case 1:
                case 2:
                    break;
                case 3:
                    dialog.getWindow().addFlags(24);
                    break;
                default:
                    return;
            }
            iVar.e(1);
            return;
        }
        super.a(dialog, i);
    }
}
