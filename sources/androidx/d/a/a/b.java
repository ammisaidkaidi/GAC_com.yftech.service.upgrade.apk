package androidx.d.a.a;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import androidx.d.c.b.e;
import androidx.d.e.c;
import androidx.d.e.d;
import androidx.d.e.m;

/* loaded from: /home/user/work/dex/classes.dex */
public class b extends c {
    private static final String j = "Layer";

    /* renamed from: a, reason: collision with root package name */
    d f592a;
    protected float b;
    protected float c;
    protected float d;
    protected float e;
    protected float f;
    protected float g;
    boolean h;
    View[] i;
    private float k;
    private float l;
    private float m;
    private float n;
    private float o;
    private float w;
    private float x;
    private boolean y;
    private boolean z;

    public b(Context context) {
        super(context);
        this.k = Float.NaN;
        this.l = Float.NaN;
        this.m = Float.NaN;
        this.n = 1.0f;
        this.o = 1.0f;
        this.b = Float.NaN;
        this.c = Float.NaN;
        this.d = Float.NaN;
        this.e = Float.NaN;
        this.f = Float.NaN;
        this.g = Float.NaN;
        this.h = true;
        this.i = null;
        this.w = 0.0f;
        this.x = 0.0f;
    }

    public b(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.k = Float.NaN;
        this.l = Float.NaN;
        this.m = Float.NaN;
        this.n = 1.0f;
        this.o = 1.0f;
        this.b = Float.NaN;
        this.c = Float.NaN;
        this.d = Float.NaN;
        this.e = Float.NaN;
        this.f = Float.NaN;
        this.g = Float.NaN;
        this.h = true;
        this.i = null;
        this.w = 0.0f;
        this.x = 0.0f;
    }

    public b(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.k = Float.NaN;
        this.l = Float.NaN;
        this.m = Float.NaN;
        this.n = 1.0f;
        this.o = 1.0f;
        this.b = Float.NaN;
        this.c = Float.NaN;
        this.d = Float.NaN;
        this.e = Float.NaN;
        this.f = Float.NaN;
        this.g = Float.NaN;
        this.h = true;
        this.i = null;
        this.w = 0.0f;
        this.x = 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.d.e.c
    public void a(AttributeSet attributeSet) {
        super.a(attributeSet);
        this.t = false;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, m.C0052m.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == m.C0052m.ConstraintLayout_Layout_android_visibility) {
                    this.y = true;
                } else if (index == m.C0052m.ConstraintLayout_Layout_android_elevation) {
                    this.z = true;
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.d.e.c, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f592a = (d) getParent();
        if (this.y || this.z) {
            int visibility = getVisibility();
            float elevation = Build.VERSION.SDK_INT >= 21 ? getElevation() : 0.0f;
            for (int i = 0; i < this.q; i++) {
                View g = this.f592a.g(this.p[i]);
                if (g != null) {
                    if (this.y) {
                        g.setVisibility(visibility);
                    }
                    if (this.z && elevation > 0.0f && Build.VERSION.SDK_INT >= 21) {
                        g.setTranslationZ(g.getTranslationZ() + elevation);
                    }
                }
            }
        }
    }

    @Override // androidx.d.e.c
    public void a(d dVar) {
        this.f592a = dVar;
        float rotation = getRotation();
        if (rotation == 0.0f) {
            if (Float.isNaN(this.m)) {
                return;
            }
            this.m = rotation;
            return;
        }
        this.m = rotation;
    }

    @Override // android.view.View
    public void setRotation(float f) {
        this.m = f;
        e();
    }

    @Override // android.view.View
    public void setScaleX(float f) {
        this.n = f;
        e();
    }

    @Override // android.view.View
    public void setScaleY(float f) {
        this.o = f;
        e();
    }

    @Override // android.view.View
    public void setPivotX(float f) {
        this.k = f;
        e();
    }

    @Override // android.view.View
    public void setPivotY(float f) {
        this.l = f;
        e();
    }

    @Override // android.view.View
    public void setTranslationX(float f) {
        this.w = f;
        e();
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        this.x = f;
        e();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        d();
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        d();
    }

    @Override // androidx.d.e.c
    public void b(d dVar) {
        b();
        this.b = Float.NaN;
        this.c = Float.NaN;
        e a2 = ((d.a) getLayoutParams()).a();
        a2.p(0);
        a2.q(0);
        a();
        layout(((int) this.f) - getPaddingLeft(), ((int) this.g) - getPaddingTop(), ((int) this.d) + getPaddingRight(), ((int) this.e) + getPaddingBottom());
        e();
    }

    private void b() {
        if (this.f592a == null || this.q == 0) {
            return;
        }
        if (this.i == null || this.i.length != this.q) {
            this.i = new View[this.q];
        }
        for (int i = 0; i < this.q; i++) {
            this.i[i] = this.f592a.g(this.p[i]);
        }
    }

    protected void a() {
        if (this.f592a == null) {
            return;
        }
        if (this.h || Float.isNaN(this.b) || Float.isNaN(this.c)) {
            if (Float.isNaN(this.k) || Float.isNaN(this.l)) {
                View[] e = e(this.f592a);
                int left = e[0].getLeft();
                int top = e[0].getTop();
                int right = e[0].getRight();
                int bottom = e[0].getBottom();
                for (int i = 0; i < this.q; i++) {
                    View view = e[i];
                    left = Math.min(left, view.getLeft());
                    top = Math.min(top, view.getTop());
                    right = Math.max(right, view.getRight());
                    bottom = Math.max(bottom, view.getBottom());
                }
                this.d = right;
                this.e = bottom;
                this.f = left;
                this.g = top;
                if (Float.isNaN(this.k)) {
                    this.b = (left + right) / 2;
                } else {
                    this.b = this.k;
                }
                if (Float.isNaN(this.l)) {
                    this.c = (top + bottom) / 2;
                    return;
                } else {
                    this.c = this.l;
                    return;
                }
            }
            this.c = this.l;
            this.b = this.k;
        }
    }

    private void e() {
        if (this.f592a == null) {
            return;
        }
        if (this.i == null) {
            b();
        }
        a();
        double radians = Float.isNaN(this.m) ? 0.0d : Math.toRadians(this.m);
        float sin = (float) Math.sin(radians);
        float cos = (float) Math.cos(radians);
        float f = this.n * cos;
        float f2 = (-this.o) * sin;
        float f3 = this.n * sin;
        float f4 = this.o * cos;
        for (int i = 0; i < this.q; i++) {
            View view = this.i[i];
            int left = (view.getLeft() + view.getRight()) / 2;
            int top = (view.getTop() + view.getBottom()) / 2;
            float f5 = left - this.b;
            float f6 = top - this.c;
            float f7 = (((f * f5) + (f2 * f6)) - f5) + this.w;
            float f8 = (((f5 * f3) + (f4 * f6)) - f6) + this.x;
            view.setTranslationX(f7);
            view.setTranslationY(f8);
            view.setScaleY(this.o);
            view.setScaleX(this.n);
            if (!Float.isNaN(this.m)) {
                view.setRotation(this.m);
            }
        }
    }
}
