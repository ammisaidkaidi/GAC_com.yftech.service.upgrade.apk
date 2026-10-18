package androidx.d.d.a;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.ViewParent;
import androidx.d.b.b.s;
import androidx.d.e.m;

/* loaded from: /home/user/work/dex/classes.dex */
public class d extends c {
    private static final String h = "MotionTelltales";
    s b;
    float[] c;
    Matrix d;
    int e;
    int f;
    float g;
    private Paint i;

    public d(Context context) {
        super(context);
        this.i = new Paint();
        this.c = new float[2];
        this.d = new Matrix();
        this.e = 0;
        this.f = -65281;
        this.g = 0.25f;
        a(context, null);
    }

    public d(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.i = new Paint();
        this.c = new float[2];
        this.d = new Matrix();
        this.e = 0;
        this.f = -65281;
        this.g = 0.25f;
        a(context, attributeSet);
    }

    public d(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.i = new Paint();
        this.c = new float[2];
        this.d = new Matrix();
        this.e = 0;
        this.f = -65281;
        this.g = 0.25f;
        a(context, attributeSet);
    }

    private void a(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, m.C0052m.MotionTelltales);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == m.C0052m.MotionTelltales_telltales_tailColor) {
                    this.f = obtainStyledAttributes.getColor(index, this.f);
                } else if (index == m.C0052m.MotionTelltales_telltales_velocityMode) {
                    this.e = obtainStyledAttributes.getInt(index, this.e);
                } else if (index == m.C0052m.MotionTelltales_telltales_tailScale) {
                    this.g = obtainStyledAttributes.getFloat(index, this.g);
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.i.setColor(this.f);
        this.i.setStrokeWidth(5.0f);
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    public void setText(CharSequence charSequence) {
        this.f710a = charSequence.toString();
        requestLayout();
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        postInvalidate();
    }

    @Override // androidx.d.d.a.c, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        getMatrix().invert(this.d);
        if (this.b == null) {
            ViewParent parent = getParent();
            if (parent instanceof s) {
                this.b = (s) parent;
                return;
            }
            return;
        }
        int width = getWidth();
        int height = getHeight();
        float[] fArr = {0.1f, 0.25f, 0.5f, 0.75f, 0.9f};
        for (float f : fArr) {
            for (float f2 : fArr) {
                this.b.a(this, f2, f, this.c, this.e);
                this.d.mapVectors(this.c);
                float f3 = width * f2;
                float f4 = height * f;
                float f5 = f3 - (this.c[0] * this.g);
                float f6 = f4 - (this.c[1] * this.g);
                this.d.mapVectors(this.c);
                canvas.drawLine(f3, f4, f5, f6, this.i);
            }
        }
    }
}
