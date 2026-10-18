package androidx.core.n;

/* loaded from: /home/user/work/dex/classes.dex */
public interface q {
    boolean dispatchNestedFling(float f, float f2, boolean z);

    boolean dispatchNestedPreFling(float f, float f2);

    boolean dispatchNestedPreScroll(int i, int i2, @androidx.annotation.ai int[] iArr, @androidx.annotation.ai int[] iArr2);

    boolean dispatchNestedScroll(int i, int i2, int i3, int i4, @androidx.annotation.ai int[] iArr);

    boolean hasNestedScrollingParent();

    boolean isNestedScrollingEnabled();

    void setNestedScrollingEnabled(boolean z);

    boolean startNestedScroll(int i);

    void stopNestedScroll();
}
