package androidx.j;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.view.View;

@androidx.annotation.am(a = 21)
/* loaded from: /home/user/work/dex/classes.dex */
class ba extends az {

    /* renamed from: a, reason: collision with root package name */
    private static boolean f871a = true;
    private static boolean b = true;
    private static boolean c = true;

    @Override // androidx.j.be
    @SuppressLint({"NewApi"})
    public void a(@androidx.annotation.ah View view, @androidx.annotation.ah Matrix matrix) {
        if (b) {
            try {
                view.transformMatrixToGlobal(matrix);
            } catch (NoSuchMethodError unused) {
                b = false;
            }
        }
    }

    @Override // androidx.j.be
    @SuppressLint({"NewApi"})
    public void b(@androidx.annotation.ah View view, @androidx.annotation.ah Matrix matrix) {
        if (c) {
            try {
                view.transformMatrixToLocal(matrix);
            } catch (NoSuchMethodError unused) {
                c = false;
            }
        }
    }

    @Override // androidx.j.be
    @SuppressLint({"NewApi"})
    public void c(@androidx.annotation.ah View view, @androidx.annotation.ai Matrix matrix) {
        if (f871a) {
            try {
                view.setAnimationMatrix(matrix);
            } catch (NoSuchMethodError unused) {
                f871a = false;
            }
        }
    }
}
