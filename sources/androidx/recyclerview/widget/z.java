package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public class z {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(RecyclerView.w wVar, w wVar2, View view, View view2, RecyclerView.i iVar, boolean z, boolean z2) {
        int max;
        if (iVar.H() == 0 || wVar.h() == 0 || view == null || view2 == null) {
            return 0;
        }
        int min = Math.min(iVar.e(view), iVar.e(view2));
        int max2 = Math.max(iVar.e(view), iVar.e(view2));
        if (z2) {
            max = Math.max(0, (wVar.h() - max2) - 1);
        } else {
            max = Math.max(0, min);
        }
        if (!z) {
            return max;
        }
        return Math.round((max * (Math.abs(wVar2.b(view2) - wVar2.a(view)) / (Math.abs(iVar.e(view) - iVar.e(view2)) + 1))) + (wVar2.d() - wVar2.a(view)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(RecyclerView.w wVar, w wVar2, View view, View view2, RecyclerView.i iVar, boolean z) {
        if (iVar.H() == 0 || wVar.h() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return Math.abs(iVar.e(view) - iVar.e(view2)) + 1;
        }
        return Math.min(wVar2.g(), wVar2.b(view2) - wVar2.a(view));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(RecyclerView.w wVar, w wVar2, View view, View view2, RecyclerView.i iVar, boolean z) {
        if (iVar.H() == 0 || wVar.h() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return wVar.h();
        }
        return (int) (((wVar2.b(view2) - wVar2.a(view)) / (Math.abs(iVar.e(view) - iVar.e(view2)) + 1)) * wVar.h());
    }

    private z() {
    }
}
