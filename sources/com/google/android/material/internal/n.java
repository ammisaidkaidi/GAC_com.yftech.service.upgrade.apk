package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import androidx.core.n.af;
import androidx.core.n.ao;
import com.google.android.material.a;

@ap(a = {ap.a.LIBRARY_GROUP})
/* loaded from: /home/user/work/dex/classes.dex */
public class n extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    @ai
    Drawable f1341a;
    Rect b;
    private Rect c;
    private boolean d;
    private boolean e;

    protected void a(ao aoVar) {
    }

    public n(@ah Context context) {
        this(context, null);
    }

    public n(@ah Context context, @ai AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public n(@ah Context context, @ai AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = new Rect();
        this.d = true;
        this.e = true;
        TypedArray a2 = s.a(context, attributeSet, a.o.ScrimInsetsFrameLayout, i, a.n.Widget_Design_ScrimInsetsFrameLayout, new int[0]);
        this.f1341a = a2.getDrawable(a.o.ScrimInsetsFrameLayout_insetForeground);
        a2.recycle();
        setWillNotDraw(true);
        af.a(this, new androidx.core.n.y() { // from class: com.google.android.material.internal.n.1
            @Override // androidx.core.n.y
            public ao a(View view, @ah ao aoVar) {
                if (n.this.b == null) {
                    n.this.b = new Rect();
                }
                n.this.b.set(aoVar.a(), aoVar.b(), aoVar.c(), aoVar.d());
                n.this.a(aoVar);
                n.this.setWillNotDraw(!aoVar.e() || n.this.f1341a == null);
                af.h(n.this);
                return aoVar.i();
            }
        });
    }

    public void setScrimInsetForeground(@ai Drawable drawable) {
        this.f1341a = drawable;
    }

    public void setDrawTopInsetForeground(boolean z) {
        this.d = z;
    }

    public void setDrawBottomInsetForeground(boolean z) {
        this.e = z;
    }

    @Override // android.view.View
    public void draw(@ah Canvas canvas) {
        super.draw(canvas);
        int width = getWidth();
        int height = getHeight();
        if (this.b == null || this.f1341a == null) {
            return;
        }
        int save = canvas.save();
        canvas.translate(getScrollX(), getScrollY());
        if (this.d) {
            this.c.set(0, 0, width, this.b.top);
            this.f1341a.setBounds(this.c);
            this.f1341a.draw(canvas);
        }
        if (this.e) {
            this.c.set(0, height - this.b.bottom, width, height);
            this.f1341a.setBounds(this.c);
            this.f1341a.draw(canvas);
        }
        this.c.set(0, this.b.top, this.b.left, height - this.b.bottom);
        this.f1341a.setBounds(this.c);
        this.f1341a.draw(canvas);
        this.c.set(width - this.b.right, this.b.top, width, height - this.b.bottom);
        this.f1341a.setBounds(this.c);
        this.f1341a.draw(canvas);
        canvas.restoreToCount(save);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f1341a != null) {
            this.f1341a.setCallback(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f1341a != null) {
            this.f1341a.setCallback(null);
        }
    }
}
