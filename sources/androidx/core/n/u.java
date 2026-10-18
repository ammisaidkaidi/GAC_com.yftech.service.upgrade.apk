package androidx.core.n;

import android.view.View;

/* loaded from: /home/user/work/dex/classes.dex */
public interface u {
    int getNestedScrollAxes();

    boolean onNestedFling(@androidx.annotation.ah View view, float f, float f2, boolean z);

    boolean onNestedPreFling(@androidx.annotation.ah View view, float f, float f2);

    void onNestedPreScroll(@androidx.annotation.ah View view, int i, int i2, @androidx.annotation.ah int[] iArr);

    void onNestedScroll(@androidx.annotation.ah View view, int i, int i2, int i3, int i4);

    void onNestedScrollAccepted(@androidx.annotation.ah View view, @androidx.annotation.ah View view2, int i);

    boolean onStartNestedScroll(@androidx.annotation.ah View view, @androidx.annotation.ah View view2, int i);

    void onStopNestedScroll(@androidx.annotation.ah View view);
}
