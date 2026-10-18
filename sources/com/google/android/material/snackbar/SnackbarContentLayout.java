package com.google.android.material.snackbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import androidx.core.n.af;
import com.google.android.material.a;

@ap(a = {ap.a.LIBRARY_GROUP})
/* loaded from: /home/user/work/dex/classes.dex */
public class SnackbarContentLayout extends LinearLayout implements a {

    /* renamed from: a, reason: collision with root package name */
    private TextView f1401a;
    private Button b;
    private int c;
    private int d;

    public SnackbarContentLayout(@ah Context context) {
        this(context, null);
    }

    public SnackbarContentLayout(@ah Context context, @ai AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.o.SnackbarLayout);
        this.c = obtainStyledAttributes.getDimensionPixelSize(a.o.SnackbarLayout_android_maxWidth, -1);
        this.d = obtainStyledAttributes.getDimensionPixelSize(a.o.SnackbarLayout_maxActionInlineWidth, -1);
        obtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f1401a = (TextView) findViewById(a.h.snackbar_text);
        this.b = (Button) findViewById(a.h.snackbar_action);
    }

    public TextView getMessageView() {
        return this.f1401a;
    }

    public Button getActionView() {
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(float f) {
        if (f != 1.0f) {
            this.b.setTextColor(com.google.android.material.h.a.a(com.google.android.material.h.a.a(this, a.c.colorSurface), this.b.getCurrentTextColor(), f));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0055, code lost:
    
        if (a(1, r0, r0 - r1) != false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0063, code lost:
    
        r4 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0060, code lost:
    
        if (a(0, r0, r0) != false) goto L26;
     */
    @Override // android.widget.LinearLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.c > 0 && getMeasuredWidth() > this.c) {
            i = View.MeasureSpec.makeMeasureSpec(this.c, androidx.d.c.b.a.b.b);
            super.onMeasure(i, i2);
        }
        int dimensionPixelSize = getResources().getDimensionPixelSize(a.f.design_snackbar_padding_vertical_2lines);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(a.f.design_snackbar_padding_vertical);
        boolean z = true;
        boolean z2 = this.f1401a.getLayout().getLineCount() > 1;
        if (!z2 || this.d <= 0 || this.b.getMeasuredWidth() <= this.d) {
            if (!z2) {
                dimensionPixelSize = dimensionPixelSize2;
            }
        }
        if (z) {
            super.onMeasure(i, i2);
        }
    }

    private boolean a(int i, int i2, int i3) {
        boolean z;
        if (i != getOrientation()) {
            setOrientation(i);
            z = true;
        } else {
            z = false;
        }
        if (this.f1401a.getPaddingTop() == i2 && this.f1401a.getPaddingBottom() == i3) {
            return z;
        }
        a(this.f1401a, i2, i3);
        return true;
    }

    private static void a(@ah View view, int i, int i2) {
        if (af.Z(view)) {
            af.b(view, af.w(view), i, af.x(view), i2);
        } else {
            view.setPadding(view.getPaddingLeft(), i, view.getPaddingRight(), i2);
        }
    }

    @Override // com.google.android.material.snackbar.a
    public void a(int i, int i2) {
        this.f1401a.setAlpha(0.0f);
        long j = i2;
        long j2 = i;
        this.f1401a.animate().alpha(1.0f).setDuration(j).setStartDelay(j2).start();
        if (this.b.getVisibility() == 0) {
            this.b.setAlpha(0.0f);
            this.b.animate().alpha(1.0f).setDuration(j).setStartDelay(j2).start();
        }
    }

    @Override // com.google.android.material.snackbar.a
    public void b(int i, int i2) {
        this.f1401a.setAlpha(1.0f);
        long j = i2;
        long j2 = i;
        this.f1401a.animate().alpha(0.0f).setDuration(j).setStartDelay(j2).start();
        if (this.b.getVisibility() == 0) {
            this.b.setAlpha(1.0f);
            this.b.animate().alpha(0.0f).setDuration(j).setStartDelay(j2).start();
        }
    }

    public void setMaxInlineActionWidth(int i) {
        this.d = i;
    }
}
