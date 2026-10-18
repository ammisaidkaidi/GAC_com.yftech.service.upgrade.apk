package androidx.j;

import android.annotation.SuppressLint;
import android.view.View;

@androidx.annotation.am(a = 22)
/* loaded from: /home/user/work/dex/classes.dex */
class bb extends ba {

    /* renamed from: a, reason: collision with root package name */
    private static boolean f872a = true;

    @Override // androidx.j.be
    @SuppressLint({"NewApi"})
    public void a(@androidx.annotation.ah View view, int i, int i2, int i3, int i4) {
        if (f872a) {
            try {
                view.setLeftTopRightBottom(i, i2, i3, i4);
            } catch (NoSuchMethodError unused) {
                f872a = false;
            }
        }
    }
}
