package com.google.android.material.t;

import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.ah;
import com.google.android.material.internal.z;

/* loaded from: /home/user/work/dex/classes.dex */
public class k {
    private k() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ah
    public static e a(int i) {
        switch (i) {
            case 0:
                return new n();
            case 1:
                return new f();
            default:
                return a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ah
    public static e a() {
        return new n();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ah
    public static g b() {
        return new g();
    }

    public static void a(@ah View view, float f) {
        Drawable background = view.getBackground();
        if (background instanceof j) {
            ((j) background).r(f);
        }
    }

    public static void a(@ah View view) {
        Drawable background = view.getBackground();
        if (background instanceof j) {
            a(view, (j) background);
        }
    }

    public static void a(@ah View view, @ah j jVar) {
        if (jVar.ac()) {
            jVar.q(z.d(view));
        }
    }
}
