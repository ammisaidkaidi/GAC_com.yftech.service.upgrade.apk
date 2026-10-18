package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: /home/user/work/dex/classes.dex */
class p {

    /* renamed from: a, reason: collision with root package name */
    static final int f1090a = -1;
    static final int b = 1;
    static final int c = Integer.MIN_VALUE;
    static final int d = -1;
    static final int e = 1;
    int g;
    int h;
    int i;
    int j;
    boolean m;
    boolean n;
    boolean f = true;
    int k = 0;
    int l = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(RecyclerView.w wVar) {
        return this.h >= 0 && this.h < wVar.h();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View a(RecyclerView.q qVar) {
        View c2 = qVar.c(this.h);
        this.h += this.i;
        return c2;
    }

    public String toString() {
        return "LayoutState{mAvailable=" + this.g + ", mCurrentPosition=" + this.h + ", mItemDirection=" + this.i + ", mLayoutDirection=" + this.j + ", mStartLine=" + this.k + ", mEndLine=" + this.l + '}';
    }
}
