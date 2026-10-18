package androidx.recyclerview.widget;

import android.graphics.PointF;
import android.view.View;
import androidx.annotation.ai;
import androidx.appcompat.widget.ActivityChooserView;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: /home/user/work/dex/classes.dex */
public class r extends ab {
    private static final float c = 1.0f;

    @ai
    private w d;

    @ai
    private w e;

    @Override // androidx.recyclerview.widget.ab
    public int[] a(@androidx.annotation.ah RecyclerView.i iVar, @androidx.annotation.ah View view) {
        int[] iArr = new int[2];
        if (iVar.i()) {
            iArr[0] = a(iVar, view, e(iVar));
        } else {
            iArr[0] = 0;
        }
        if (iVar.j()) {
            iArr[1] = a(iVar, view, d(iVar));
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.ab
    public int a(RecyclerView.i iVar, int i, int i2) {
        int V;
        View a2;
        int e;
        int i3;
        PointF d;
        int i4;
        int i5;
        if (!(iVar instanceof RecyclerView.v.b) || (V = iVar.V()) == 0 || (a2 = a(iVar)) == null || (e = iVar.e(a2)) == -1 || (d = ((RecyclerView.v.b) iVar).d(V - 1)) == null) {
            return -1;
        }
        if (iVar.i()) {
            i4 = a(iVar, e(iVar), i, 0);
            if (d.x < 0.0f) {
                i4 = -i4;
            }
        } else {
            i4 = 0;
        }
        if (iVar.j()) {
            i5 = a(iVar, d(iVar), 0, i2);
            if (d.y < 0.0f) {
                i5 = -i5;
            }
        } else {
            i5 = 0;
        }
        if (!iVar.j()) {
            i5 = i4;
        }
        if (i5 == 0) {
            return -1;
        }
        int i6 = e + i5;
        if (i6 < 0) {
            i6 = 0;
        }
        return i6 >= V ? i3 : i6;
    }

    @Override // androidx.recyclerview.widget.ab
    public View a(RecyclerView.i iVar) {
        if (iVar.j()) {
            return a(iVar, d(iVar));
        }
        if (iVar.i()) {
            return a(iVar, e(iVar));
        }
        return null;
    }

    private int a(@androidx.annotation.ah RecyclerView.i iVar, @androidx.annotation.ah View view, w wVar) {
        return (wVar.a(view) + (wVar.e(view) / 2)) - (wVar.d() + (wVar.g() / 2));
    }

    private int a(RecyclerView.i iVar, w wVar, int i, int i2) {
        int[] b = b(i, i2);
        float b2 = b(iVar, wVar);
        if (b2 <= 0.0f) {
            return 0;
        }
        return Math.round((Math.abs(b[0]) > Math.abs(b[1]) ? b[0] : b[1]) / b2);
    }

    @ai
    private View a(RecyclerView.i iVar, w wVar) {
        int H = iVar.H();
        View view = null;
        if (H == 0) {
            return null;
        }
        int d = wVar.d() + (wVar.g() / 2);
        int i = ActivityChooserView.a.f166a;
        for (int i2 = 0; i2 < H; i2++) {
            View j = iVar.j(i2);
            int abs = Math.abs((wVar.a(j) + (wVar.e(j) / 2)) - d);
            if (abs < i) {
                view = j;
                i = abs;
            }
        }
        return view;
    }

    private float b(RecyclerView.i iVar, w wVar) {
        int H = iVar.H();
        if (H == 0) {
            return 1.0f;
        }
        View view = null;
        int i = ActivityChooserView.a.f166a;
        int i2 = Integer.MIN_VALUE;
        View view2 = null;
        for (int i3 = 0; i3 < H; i3++) {
            View j = iVar.j(i3);
            int e = iVar.e(j);
            if (e != -1) {
                if (e < i) {
                    view = j;
                    i = e;
                }
                if (e > i2) {
                    view2 = j;
                    i2 = e;
                }
            }
        }
        if (view == null || view2 == null) {
            return 1.0f;
        }
        int max = Math.max(wVar.b(view), wVar.b(view2)) - Math.min(wVar.a(view), wVar.a(view2));
        if (max == 0) {
            return 1.0f;
        }
        return (max * 1.0f) / ((i2 - i) + 1);
    }

    @androidx.annotation.ah
    private w d(@androidx.annotation.ah RecyclerView.i iVar) {
        if (this.d == null || this.d.f1101a != iVar) {
            this.d = w.b(iVar);
        }
        return this.d;
    }

    @androidx.annotation.ah
    private w e(@androidx.annotation.ah RecyclerView.i iVar) {
        if (this.e == null || this.e.f1101a != iVar) {
            this.e = w.a(iVar);
        }
        return this.e;
    }
}
