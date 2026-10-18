package com.google.android.material.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.am;
import androidx.annotation.ap;
import androidx.appcompat.widget.aj;
import com.google.android.material.a;

@ap(a = {ap.a.LIBRARY_GROUP})
/* loaded from: /home/user/work/dex/classes.dex */
public class f extends aj {

    /* renamed from: a, reason: collision with root package name */
    protected boolean f1334a;
    boolean b;

    @ai
    private Drawable c;
    private final Rect d;
    private final Rect k;
    private int l;

    public f(@ah Context context) {
        this(context, null);
    }

    public f(@ah Context context, @ai AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public f(@ah Context context, @ai AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.d = new Rect();
        this.k = new Rect();
        this.l = 119;
        this.f1334a = true;
        this.b = false;
        TypedArray a2 = s.a(context, attributeSet, a.o.ForegroundLinearLayout, i, 0, new int[0]);
        this.l = a2.getInt(a.o.ForegroundLinearLayout_android_foregroundGravity, this.l);
        Drawable drawable = a2.getDrawable(a.o.ForegroundLinearLayout_android_foreground);
        if (drawable != null) {
            setForeground(drawable);
        }
        this.f1334a = a2.getBoolean(a.o.ForegroundLinearLayout_foregroundInsidePadding, true);
        a2.recycle();
    }

    @Override // android.view.View
    public int getForegroundGravity() {
        return this.l;
    }

    @Override // android.view.View
    public void setForegroundGravity(int i) {
        if (this.l != i) {
            if ((8388615 & i) == 0) {
                i |= androidx.core.n.h.b;
            }
            if ((i & 112) == 0) {
                i |= 48;
            }
            this.l = i;
            if (this.l == 119 && this.c != null) {
                this.c.getPadding(new Rect());
            }
            requestLayout();
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.c;
    }

    @Override // android.view.ViewGroup, android.view.View
    @am(a = 11)
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        if (this.c != null) {
            this.c.jumpToCurrentState();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.c == null || !this.c.isStateful()) {
            return;
        }
        this.c.setState(getDrawableState());
    }

    @Override // android.view.View
    public void setForeground(@ai Drawable drawable) {
        if (this.c != drawable) {
            if (this.c != null) {
                this.c.setCallback(null);
                unscheduleDrawable(this.c);
            }
            this.c = drawable;
            if (drawable != null) {
                setWillNotDraw(false);
                drawable.setCallback(this);
                if (drawable.isStateful()) {
                    drawable.setState(getDrawableState());
                }
                if (this.l == 119) {
                    drawable.getPadding(new Rect());
                }
            } else {
                setWillNotDraw(true);
            }
            requestLayout();
            invalidate();
        }
    }

    @Override // android.view.View
    @ai
    public Drawable getForeground() {
        return this.c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.aj, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.b = z | this.b;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.b = true;
    }

    @Override // android.view.View
    public void draw(@ah Canvas canvas) {
        super.draw(canvas);
        if (this.c != null) {
            Drawable drawable = this.c;
            if (this.b) {
                this.b = false;
                Rect rect = this.d;
                Rect rect2 = this.k;
                int right = getRight() - getLeft();
                int bottom = getBottom() - getTop();
                if (this.f1334a) {
                    rect.set(0, 0, right, bottom);
                } else {
                    rect.set(getPaddingLeft(), getPaddingTop(), right - getPaddingRight(), bottom - getPaddingBottom());
                }
                Gravity.apply(this.l, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), rect, rect2);
                drawable.setBounds(rect2);
            }
            drawable.draw(canvas);
        }
    }

    @Override // android.view.View
    @am(a = 21)
    @TargetApi(21)
    public void drawableHotspotChanged(float f, float f2) {
        super.drawableHotspotChanged(f, f2);
        if (this.c != null) {
            this.c.setHotspot(f, f2);
        }
    }
}
