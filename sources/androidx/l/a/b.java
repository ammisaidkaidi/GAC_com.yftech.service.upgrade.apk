package androidx.l.a;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.k;
import androidx.annotation.m;
import androidx.annotation.q;
import androidx.core.n.af;

/* loaded from: /home/user/work/dex/classes.dex */
public class b extends c {
    private static final String g = "PagerTabStrip";
    private static final int h = 3;
    private static final int i = 6;
    private static final int j = 16;
    private static final int k = 32;
    private static final int l = 64;
    private static final int m = 1;
    private static final int n = 32;
    private boolean A;
    private float B;
    private float C;
    private int D;
    private int o;
    private int p;
    private int q;
    private int r;
    private int s;
    private int t;
    private final Paint u;
    private final Rect v;
    private int w;
    private boolean x;
    private boolean y;
    private int z;

    public b(@ah Context context) {
        this(context, null);
    }

    public b(@ah Context context, @ai AttributeSet attributeSet) {
        super(context, attributeSet);
        this.u = new Paint();
        this.v = new Rect();
        this.w = 255;
        this.x = false;
        this.y = false;
        this.o = this.f;
        this.u.setColor(this.o);
        float f = context.getResources().getDisplayMetrics().density;
        this.p = (int) ((3.0f * f) + 0.5f);
        this.q = (int) ((6.0f * f) + 0.5f);
        this.r = (int) (64.0f * f);
        this.t = (int) ((16.0f * f) + 0.5f);
        this.z = (int) ((1.0f * f) + 0.5f);
        this.s = (int) ((f * 32.0f) + 0.5f);
        this.D = ViewConfiguration.get(context).getScaledTouchSlop();
        setPadding(getPaddingLeft(), getPaddingTop(), getPaddingRight(), getPaddingBottom());
        setTextSpacing(getTextSpacing());
        setWillNotDraw(false);
        this.b.setFocusable(true);
        this.b.setOnClickListener(new View.OnClickListener() { // from class: androidx.l.a.b.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                b.this.f939a.setCurrentItem(b.this.f939a.getCurrentItem() - 1);
            }
        });
        this.d.setFocusable(true);
        this.d.setOnClickListener(new View.OnClickListener() { // from class: androidx.l.a.b.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                b.this.f939a.setCurrentItem(b.this.f939a.getCurrentItem() + 1);
            }
        });
        if (getBackground() == null) {
            this.x = true;
        }
    }

    public void setTabIndicatorColor(@k int i2) {
        this.o = i2;
        this.u.setColor(this.o);
        invalidate();
    }

    public void setTabIndicatorColorResource(@m int i2) {
        setTabIndicatorColor(androidx.core.b.c.c(getContext(), i2));
    }

    @k
    public int getTabIndicatorColor() {
        return this.o;
    }

    @Override // android.view.View
    public void setPadding(int i2, int i3, int i4, int i5) {
        if (i5 < this.q) {
            i5 = this.q;
        }
        super.setPadding(i2, i3, i4, i5);
    }

    @Override // androidx.l.a.c
    public void setTextSpacing(int i2) {
        if (i2 < this.r) {
            i2 = this.r;
        }
        super.setTextSpacing(i2);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        if (this.y) {
            return;
        }
        this.x = drawable == null;
    }

    @Override // android.view.View
    public void setBackgroundColor(@k int i2) {
        super.setBackgroundColor(i2);
        if (this.y) {
            return;
        }
        this.x = (i2 & af.s) == 0;
    }

    @Override // android.view.View
    public void setBackgroundResource(@q int i2) {
        super.setBackgroundResource(i2);
        if (this.y) {
            return;
        }
        this.x = i2 == 0;
    }

    public void setDrawFullUnderline(boolean z) {
        this.x = z;
        this.y = true;
        invalidate();
    }

    public boolean getDrawFullUnderline() {
        return this.x;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.l.a.c
    public int getMinHeight() {
        return Math.max(super.getMinHeight(), this.s);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0 && this.A) {
            return false;
        }
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        switch (action) {
            case 0:
                this.B = x;
                this.C = y;
                this.A = false;
                break;
            case 1:
                if (x >= this.c.getLeft() - this.t) {
                    if (x > this.c.getRight() + this.t) {
                        this.f939a.setCurrentItem(this.f939a.getCurrentItem() + 1);
                        break;
                    }
                } else {
                    this.f939a.setCurrentItem(this.f939a.getCurrentItem() - 1);
                    break;
                }
                break;
            case 2:
                if (Math.abs(x - this.B) > this.D || Math.abs(y - this.C) > this.D) {
                    this.A = true;
                    break;
                }
                break;
        }
        return true;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight();
        int left = this.c.getLeft() - this.t;
        int right = this.c.getRight() + this.t;
        int i2 = height - this.p;
        this.u.setColor((this.w << 24) | (this.o & af.r));
        float f = height;
        canvas.drawRect(left, i2, right, f, this.u);
        if (this.x) {
            this.u.setColor((-16777216) | (this.o & af.r));
            canvas.drawRect(getPaddingLeft(), height - this.z, getWidth() - getPaddingRight(), f, this.u);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.l.a.c
    public void a(int i2, float f, boolean z) {
        Rect rect = this.v;
        int height = getHeight();
        int left = this.c.getLeft() - this.t;
        int right = this.c.getRight() + this.t;
        int i3 = height - this.p;
        rect.set(left, i3, right, height);
        super.a(i2, f, z);
        this.w = (int) (Math.abs(f - 0.5f) * 2.0f * 255.0f);
        rect.union(this.c.getLeft() - this.t, i3, this.c.getRight() + this.t, height);
        invalidate(rect);
    }
}
