package androidx.recyclerview.widget;

import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import androidx.annotation.ai;
import androidx.appcompat.widget.ActivityChooserView;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: /home/user/work/dex/classes.dex */
public class x extends ab {
    private static final int c = 100;

    @ai
    private w d;

    @ai
    private w e;

    @Override // androidx.recyclerview.widget.ab
    @ai
    public int[] a(@androidx.annotation.ah RecyclerView.i iVar, @androidx.annotation.ah View view) {
        int[] iArr = new int[2];
        if (iVar.i()) {
            iArr[0] = a(iVar, view, g(iVar));
        } else {
            iArr[0] = 0;
        }
        if (iVar.j()) {
            iArr[1] = a(iVar, view, f(iVar));
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }

    @Override // androidx.recyclerview.widget.ab
    @ai
    public View a(RecyclerView.i iVar) {
        if (iVar.j()) {
            return a(iVar, f(iVar));
        }
        if (iVar.i()) {
            return a(iVar, g(iVar));
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.ab
    public int a(RecyclerView.i iVar, int i, int i2) {
        w e;
        int V = iVar.V();
        if (V == 0 || (e = e(iVar)) == null) {
            return -1;
        }
        int i3 = Integer.MIN_VALUE;
        int H = iVar.H();
        View view = null;
        int i4 = Integer.MAX_VALUE;
        View view2 = null;
        for (int i5 = 0; i5 < H; i5++) {
            View j = iVar.j(i5);
            if (j != null) {
                int a2 = a(iVar, j, e);
                if (a2 <= 0 && a2 > i3) {
                    view2 = j;
                    i3 = a2;
                }
                if (a2 >= 0 && a2 < i4) {
                    view = j;
                    i4 = a2;
                }
            }
        }
        boolean b = b(iVar, i, i2);
        if (b && view != null) {
            return iVar.e(view);
        }
        if (!b && view2 != null) {
            return iVar.e(view2);
        }
        if (!b) {
            view2 = view;
        }
        if (view2 == null) {
            return -1;
        }
        int e2 = iVar.e(view2) + (d(iVar) == b ? -1 : 1);
        if (e2 < 0 || e2 >= V) {
            return -1;
        }
        return e2;
    }

    private boolean b(RecyclerView.i iVar, int i, int i2) {
        return iVar.i() ? i > 0 : i2 > 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean d(RecyclerView.i iVar) {
        PointF d;
        int V = iVar.V();
        if (!(iVar instanceof RecyclerView.v.b) || (d = ((RecyclerView.v.b) iVar).d(V - 1)) == null) {
            return false;
        }
        return d.x < 0.0f || d.y < 0.0f;
    }

    @Override // androidx.recyclerview.widget.ab
    protected q b(RecyclerView.i iVar) {
        if (iVar instanceof RecyclerView.v.b) {
            return new q(this.b.getContext()) { // from class: androidx.recyclerview.widget.x.1
                @Override // androidx.recyclerview.widget.q, androidx.recyclerview.widget.RecyclerView.v
                protected void a(View view, RecyclerView.w wVar, RecyclerView.v.a aVar) {
                    int[] a2 = x.this.a(x.this.b.getLayoutManager(), view);
                    int i = a2[0];
                    int i2 = a2[1];
                    int a3 = a(Math.max(Math.abs(i), Math.abs(i2)));
                    if (a3 > 0) {
                        aVar.a(i, i2, a3, this.e);
                    }
                }

                @Override // androidx.recyclerview.widget.q
                protected float a(DisplayMetrics displayMetrics) {
                    return 100.0f / displayMetrics.densityDpi;
                }

                @Override // androidx.recyclerview.widget.q
                protected int b(int i) {
                    return Math.min(100, super.b(i));
                }
            };
        }
        return null;
    }

    private int a(@androidx.annotation.ah RecyclerView.i iVar, @androidx.annotation.ah View view, w wVar) {
        return (wVar.a(view) + (wVar.e(view) / 2)) - (wVar.d() + (wVar.g() / 2));
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

    @ai
    private w e(RecyclerView.i iVar) {
        if (iVar.j()) {
            return f(iVar);
        }
        if (iVar.i()) {
            return g(iVar);
        }
        return null;
    }

    @androidx.annotation.ah
    private w f(@androidx.annotation.ah RecyclerView.i iVar) {
        if (this.d == null || this.d.f1101a != iVar) {
            this.d = w.b(iVar);
        }
        return this.d;
    }

    @androidx.annotation.ah
    private w g(@androidx.annotation.ah RecyclerView.i iVar) {
        if (this.e == null || this.e.f1101a != iVar) {
            this.e = w.a(iVar);
        }
        return this.e;
    }
}
