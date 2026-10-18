package androidx.d.a.a;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import androidx.d.c.b.e;
import androidx.d.c.b.g;
import androidx.d.c.b.j;
import androidx.d.c.b.m;
import androidx.d.e.d;
import androidx.d.e.g;
import androidx.d.e.m;
import androidx.d.e.o;

/* loaded from: /home/user/work/dex/classes.dex */
public class a extends o {

    /* renamed from: a, reason: collision with root package name */
    public static final int f591a = 0;
    public static final int b = 1;
    public static final int c = 0;
    public static final int d = 1;
    public static final int e = 2;
    public static final int f = 0;
    public static final int g = 1;
    public static final int h = 2;
    public static final int i = 0;
    public static final int j = 1;
    public static final int k = 2;
    public static final int l = 0;
    public static final int m = 1;
    public static final int n = 2;
    public static final int o = 3;
    private static final String w = "Flow";
    private g x;

    public a(Context context) {
        super(context);
    }

    public a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public a(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    @Override // androidx.d.e.c
    public void a(e eVar, boolean z) {
        this.x.a(z);
    }

    @Override // androidx.d.e.c, android.view.View
    @SuppressLint({"WrongCall"})
    protected void onMeasure(int i2, int i3) {
        a(this.x, i2, i3);
    }

    @Override // androidx.d.e.o
    public void a(m mVar, int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        if (mVar != null) {
            mVar.b(mode, size, mode2, size2);
            setMeasuredDimension(mVar.aq(), mVar.ar());
        } else {
            setMeasuredDimension(0, 0);
        }
    }

    @Override // androidx.d.e.c
    public void a(g.a aVar, j jVar, d.a aVar2, SparseArray<e> sparseArray) {
        super.a(aVar, jVar, aVar2, sparseArray);
        if (jVar instanceof androidx.d.c.b.g) {
            androidx.d.c.b.g gVar = (androidx.d.c.b.g) jVar;
            if (aVar2.ak != -1) {
                gVar.a(aVar2.ak);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.d.e.o, androidx.d.e.c
    public void a(AttributeSet attributeSet) {
        super.a(attributeSet);
        this.x = new androidx.d.c.b.g();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, m.C0052m.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == m.C0052m.ConstraintLayout_Layout_android_orientation) {
                    this.x.a(obtainStyledAttributes.getInt(index, 0));
                } else if (index == m.C0052m.ConstraintLayout_Layout_android_padding) {
                    this.x.N(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == m.C0052m.ConstraintLayout_Layout_android_paddingStart) {
                    if (Build.VERSION.SDK_INT >= 17) {
                        this.x.O(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                    }
                } else if (index == m.C0052m.ConstraintLayout_Layout_android_paddingEnd) {
                    if (Build.VERSION.SDK_INT >= 17) {
                        this.x.P(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                    }
                } else if (index == m.C0052m.ConstraintLayout_Layout_android_paddingLeft) {
                    this.x.Q(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == m.C0052m.ConstraintLayout_Layout_android_paddingTop) {
                    this.x.R(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == m.C0052m.ConstraintLayout_Layout_android_paddingRight) {
                    this.x.S(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == m.C0052m.ConstraintLayout_Layout_android_paddingBottom) {
                    this.x.T(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == m.C0052m.ConstraintLayout_Layout_flow_wrapMode) {
                    this.x.I(obtainStyledAttributes.getInt(index, 0));
                } else if (index == m.C0052m.ConstraintLayout_Layout_flow_horizontalStyle) {
                    this.x.E(obtainStyledAttributes.getInt(index, 0));
                } else if (index == m.C0052m.ConstraintLayout_Layout_flow_verticalStyle) {
                    this.x.F(obtainStyledAttributes.getInt(index, 0));
                } else if (index == m.C0052m.ConstraintLayout_Layout_flow_firstHorizontalStyle) {
                    this.x.b(obtainStyledAttributes.getInt(index, 0));
                } else if (index == m.C0052m.ConstraintLayout_Layout_flow_lastHorizontalStyle) {
                    this.x.C(obtainStyledAttributes.getInt(index, 0));
                } else if (index == m.C0052m.ConstraintLayout_Layout_flow_firstVerticalStyle) {
                    this.x.B(obtainStyledAttributes.getInt(index, 0));
                } else if (index == m.C0052m.ConstraintLayout_Layout_flow_lastVerticalStyle) {
                    this.x.D(obtainStyledAttributes.getInt(index, 0));
                } else if (index == m.C0052m.ConstraintLayout_Layout_flow_horizontalBias) {
                    this.x.e(obtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == m.C0052m.ConstraintLayout_Layout_flow_firstHorizontalBias) {
                    this.x.g(obtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == m.C0052m.ConstraintLayout_Layout_flow_lastHorizontalBias) {
                    this.x.i(obtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == m.C0052m.ConstraintLayout_Layout_flow_firstVerticalBias) {
                    this.x.h(obtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == m.C0052m.ConstraintLayout_Layout_flow_lastVerticalBias) {
                    this.x.j(obtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == m.C0052m.ConstraintLayout_Layout_flow_verticalBias) {
                    this.x.f(obtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == m.C0052m.ConstraintLayout_Layout_flow_horizontalAlign) {
                    this.x.G(obtainStyledAttributes.getInt(index, 2));
                } else if (index == m.C0052m.ConstraintLayout_Layout_flow_verticalAlign) {
                    this.x.H(obtainStyledAttributes.getInt(index, 2));
                } else if (index == m.C0052m.ConstraintLayout_Layout_flow_horizontalGap) {
                    this.x.J(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == m.C0052m.ConstraintLayout_Layout_flow_verticalGap) {
                    this.x.K(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == m.C0052m.ConstraintLayout_Layout_flow_maxElementsWrap) {
                    this.x.L(obtainStyledAttributes.getInt(index, -1));
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.s = this.x;
        c();
    }

    public void setOrientation(int i2) {
        this.x.a(i2);
        requestLayout();
    }

    public void setPadding(int i2) {
        this.x.N(i2);
        requestLayout();
    }

    public void setPaddingLeft(int i2) {
        this.x.Q(i2);
        requestLayout();
    }

    public void setPaddingTop(int i2) {
        this.x.R(i2);
        requestLayout();
    }

    public void setPaddingRight(int i2) {
        this.x.S(i2);
        requestLayout();
    }

    public void setPaddingBottom(int i2) {
        this.x.T(i2);
        requestLayout();
    }

    public void setWrapMode(int i2) {
        this.x.I(i2);
        requestLayout();
    }

    public void setHorizontalStyle(int i2) {
        this.x.E(i2);
        requestLayout();
    }

    public void setVerticalStyle(int i2) {
        this.x.F(i2);
        requestLayout();
    }

    public void setHorizontalBias(float f2) {
        this.x.e(f2);
        requestLayout();
    }

    public void setVerticalBias(float f2) {
        this.x.f(f2);
        requestLayout();
    }

    public void setFirstHorizontalStyle(int i2) {
        this.x.b(i2);
        requestLayout();
    }

    public void setFirstVerticalStyle(int i2) {
        this.x.B(i2);
        requestLayout();
    }

    public void setFirstHorizontalBias(float f2) {
        this.x.g(f2);
        requestLayout();
    }

    public void setFirstVerticalBias(float f2) {
        this.x.h(f2);
        requestLayout();
    }

    public void setHorizontalAlign(int i2) {
        this.x.G(i2);
        requestLayout();
    }

    public void setVerticalAlign(int i2) {
        this.x.H(i2);
        requestLayout();
    }

    public void setHorizontalGap(int i2) {
        this.x.J(i2);
        requestLayout();
    }

    public void setVerticalGap(int i2) {
        this.x.K(i2);
        requestLayout();
    }

    public void setMaxElementsWrap(int i2) {
        this.x.L(i2);
        requestLayout();
    }
}
