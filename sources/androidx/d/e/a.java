package androidx.d.e;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.SparseArray;
import androidx.d.e.d;
import androidx.d.e.g;
import androidx.d.e.m;

/* loaded from: /home/user/work/dex/classes.dex */
public class a extends c {

    /* renamed from: a, reason: collision with root package name */
    public static final int f711a = 0;
    public static final int b = 2;
    public static final int c = 1;
    public static final int d = 3;
    public static final int e = 5;
    public static final int f = 6;
    private int g;
    private int h;
    private androidx.d.c.b.a i;

    public a(Context context) {
        super(context);
        super.setVisibility(8);
    }

    public a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        super.setVisibility(8);
    }

    public a(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        super.setVisibility(8);
    }

    public int getType() {
        return this.g;
    }

    public void setType(int i) {
        this.g = i;
    }

    private void a(androidx.d.c.b.e eVar, int i, boolean z) {
        this.h = i;
        if (Build.VERSION.SDK_INT < 17) {
            if (this.g == 5) {
                this.h = 0;
            } else if (this.g == 6) {
                this.h = 1;
            }
        } else if (z) {
            if (this.g == 5) {
                this.h = 1;
            } else if (this.g == 6) {
                this.h = 0;
            }
        } else if (this.g == 5) {
            this.h = 0;
        } else if (this.g == 6) {
            this.h = 1;
        }
        if (eVar instanceof androidx.d.c.b.a) {
            ((androidx.d.c.b.a) eVar).a(this.h);
        }
    }

    @Override // androidx.d.e.c
    public void a(androidx.d.c.b.e eVar, boolean z) {
        a(eVar, this.g, z);
    }

    @Override // androidx.d.e.c
    protected void a(AttributeSet attributeSet) {
        super.a(attributeSet);
        this.i = new androidx.d.c.b.a();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, m.C0052m.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == m.C0052m.ConstraintLayout_Layout_barrierDirection) {
                    setType(obtainStyledAttributes.getInt(index, 0));
                } else if (index == m.C0052m.ConstraintLayout_Layout_barrierAllowsGoneWidgets) {
                    this.i.a(obtainStyledAttributes.getBoolean(index, true));
                } else if (index == m.C0052m.ConstraintLayout_Layout_barrierMargin) {
                    this.i.b(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.s = this.i;
        c();
    }

    public void setAllowsGoneWidget(boolean z) {
        this.i.a(z);
    }

    public boolean a() {
        return this.i.c();
    }

    public void setDpMargin(int i) {
        this.i.b((int) ((i * getResources().getDisplayMetrics().density) + 0.5f));
    }

    public int getMargin() {
        return this.i.g();
    }

    public void setMargin(int i) {
        this.i.b(i);
    }

    @Override // androidx.d.e.c
    public void a(g.a aVar, androidx.d.c.b.j jVar, d.a aVar2, SparseArray<androidx.d.c.b.e> sparseArray) {
        super.a(aVar, jVar, aVar2, sparseArray);
        if (jVar instanceof androidx.d.c.b.a) {
            androidx.d.c.b.a aVar3 = (androidx.d.c.b.a) jVar;
            a(aVar3, aVar.d.ac, ((androidx.d.c.b.f) jVar.A()).as());
            aVar3.a(aVar.d.ak);
            aVar3.b(aVar.d.ad);
        }
    }
}
