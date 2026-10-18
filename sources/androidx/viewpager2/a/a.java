package androidx.viewpager2.a;

import android.animation.LayoutTransition;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.ah;
import androidx.recyclerview.widget.LinearLayoutManager;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Comparator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private static final ViewGroup.MarginLayoutParams f1115a = new ViewGroup.MarginLayoutParams(-1, -1);
    private LinearLayoutManager b;

    static {
        f1115a.setMargins(0, 0, 0, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(@ah LinearLayoutManager linearLayoutManager) {
        this.b = linearLayoutManager;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a() {
        return (!b() || this.b.H() <= 1) && c();
    }

    private boolean b() {
        ViewGroup.MarginLayoutParams marginLayoutParams;
        int top;
        int bottom;
        int i;
        int H = this.b.H();
        if (H == 0) {
            return true;
        }
        boolean z = this.b.l() == 0;
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) int.class, H, 2);
        for (int i2 = 0; i2 < H; i2++) {
            View j = this.b.j(i2);
            if (j == null) {
                throw new IllegalStateException("null view contained in the view hierarchy");
            }
            ViewGroup.LayoutParams layoutParams = j.getLayoutParams();
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            } else {
                marginLayoutParams = f1115a;
            }
            int[] iArr2 = iArr[i2];
            if (z) {
                top = j.getLeft() - marginLayoutParams.leftMargin;
            } else {
                top = j.getTop() - marginLayoutParams.topMargin;
            }
            iArr2[0] = top;
            int[] iArr3 = iArr[i2];
            if (z) {
                bottom = j.getRight();
                i = marginLayoutParams.rightMargin;
            } else {
                bottom = j.getBottom();
                i = marginLayoutParams.bottomMargin;
            }
            iArr3[1] = bottom + i;
        }
        Arrays.sort(iArr, new Comparator<int[]>() { // from class: androidx.viewpager2.a.a.1
            @Override // java.util.Comparator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public int compare(int[] iArr4, int[] iArr5) {
                return iArr4[0] - iArr5[0];
            }
        });
        for (int i3 = 1; i3 < H; i3++) {
            if (iArr[i3 - 1][1] != iArr[i3][0]) {
                return false;
            }
        }
        return iArr[0][0] <= 0 && iArr[H - 1][1] >= iArr[0][1] - iArr[0][0];
    }

    private boolean c() {
        int H = this.b.H();
        for (int i = 0; i < H; i++) {
            if (a(this.b.j(i))) {
                return true;
            }
        }
        return false;
    }

    private static boolean a(View view) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            LayoutTransition layoutTransition = viewGroup.getLayoutTransition();
            if (layoutTransition != null && layoutTransition.isChangingLayout()) {
                return true;
            }
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                if (a(viewGroup.getChildAt(i))) {
                    return true;
                }
            }
        }
        return false;
    }
}
