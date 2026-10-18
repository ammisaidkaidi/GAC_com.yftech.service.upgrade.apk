package androidx.core.n;

import android.view.View;
import android.view.ViewGroup;

/* loaded from: /home/user/work/dex/classes.dex */
public class x {

    /* renamed from: a, reason: collision with root package name */
    private int f575a;
    private int b;

    public x(@androidx.annotation.ah ViewGroup viewGroup) {
    }

    public void a(@androidx.annotation.ah View view, @androidx.annotation.ah View view2, int i) {
        a(view, view2, i, 0);
    }

    public void a(@androidx.annotation.ah View view, @androidx.annotation.ah View view2, int i, int i2) {
        if (i2 == 1) {
            this.b = i;
        } else {
            this.f575a = i;
        }
    }

    public int a() {
        return this.b | this.f575a;
    }

    public void a(@androidx.annotation.ah View view) {
        a(view, 0);
    }

    public void a(@androidx.annotation.ah View view, int i) {
        if (i == 1) {
            this.b = 0;
        } else {
            this.f575a = 0;
        }
    }
}
