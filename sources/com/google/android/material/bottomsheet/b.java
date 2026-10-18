package com.google.android.material.bottomsheet;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.appcompat.app.j;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

/* loaded from: /home/user/work/dex/classes.dex */
public class b extends j {
    private boolean an;

    @Override // androidx.appcompat.app.j, androidx.fragment.app.c
    @ah
    public Dialog a(@ai Bundle bundle) {
        return new com.google.android.material.bottomsheet.a(y(), h());
    }

    @Override // androidx.fragment.app.c
    public void a() {
        if (p(false)) {
            return;
        }
        super.a();
    }

    @Override // androidx.fragment.app.c
    public void b() {
        if (p(true)) {
            return;
        }
        super.b();
    }

    private boolean p(boolean z) {
        Dialog e = e();
        if (!(e instanceof com.google.android.material.bottomsheet.a)) {
            return false;
        }
        com.google.android.material.bottomsheet.a aVar = (com.google.android.material.bottomsheet.a) e;
        BottomSheetBehavior<FrameLayout> a2 = aVar.a();
        if (!a2.f() || !aVar.d()) {
            return false;
        }
        a(a2, z);
        return true;
    }

    private void a(@ah BottomSheetBehavior<?> bottomSheetBehavior, boolean z) {
        this.an = z;
        if (bottomSheetBehavior.k() == 5) {
            aK();
            return;
        }
        if (e() instanceof com.google.android.material.bottomsheet.a) {
            ((com.google.android.material.bottomsheet.a) e()).f();
        }
        bottomSheetBehavior.b(new a());
        bottomSheetBehavior.d(5);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aK() {
        if (this.an) {
            super.b();
        } else {
            super.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class a extends BottomSheetBehavior.a {
        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.a
        public void a(@ah View view, float f) {
        }

        private a() {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.a
        public void a(@ah View view, int i) {
            if (i == 5) {
                b.this.aK();
            }
        }
    }
}
