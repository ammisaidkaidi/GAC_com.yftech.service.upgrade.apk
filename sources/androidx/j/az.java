package androidx.j;

import android.annotation.SuppressLint;
import android.view.View;

@androidx.annotation.am(a = 19)
/* loaded from: /home/user/work/dex/classes.dex */
class az extends be {

    /* renamed from: a, reason: collision with root package name */
    private static boolean f869a = true;

    @Override // androidx.j.be
    public void b(@androidx.annotation.ah View view) {
    }

    @Override // androidx.j.be
    public void c(@androidx.annotation.ah View view) {
    }

    @Override // androidx.j.be
    @SuppressLint({"NewApi"})
    public void a(@androidx.annotation.ah View view, float f) {
        if (f869a) {
            try {
                view.setTransitionAlpha(f);
                return;
            } catch (NoSuchMethodError unused) {
                f869a = false;
            }
        }
        view.setAlpha(f);
    }

    @Override // androidx.j.be
    @SuppressLint({"NewApi"})
    public float a(@androidx.annotation.ah View view) {
        if (f869a) {
            try {
                return view.getTransitionAlpha();
            } catch (NoSuchMethodError unused) {
                f869a = false;
            }
        }
        return view.getAlpha();
    }
}
