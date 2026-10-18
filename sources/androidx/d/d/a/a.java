package androidx.d.d.a;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.annotation.am;
import androidx.appcompat.widget.n;
import androidx.d.d.a.b;
import androidx.d.e.m;

/* loaded from: /home/user/work/dex/classes.dex */
public class a extends n {

    /* renamed from: a, reason: collision with root package name */
    ViewOutlineProvider f703a;
    RectF b;
    Drawable[] c;
    LayerDrawable d;
    private b.a e;
    private float f;
    private float g;
    private float h;
    private Path i;
    private boolean j;

    public a(Context context) {
        super(context);
        this.e = new b.a();
        this.f = 0.0f;
        this.g = 0.0f;
        this.h = Float.NaN;
        this.j = true;
        a(context, null);
    }

    public a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = new b.a();
        this.f = 0.0f;
        this.g = 0.0f;
        this.h = Float.NaN;
        this.j = true;
        a(context, attributeSet);
    }

    public a(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = new b.a();
        this.f = 0.0f;
        this.g = 0.0f;
        this.h = Float.NaN;
        this.j = true;
        a(context, attributeSet);
    }

    private void a(Context context, AttributeSet attributeSet) {
        setPadding(0, 0, 0, 0);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, m.C0052m.ImageFilterView);
            int indexCount = obtainStyledAttributes.getIndexCount();
            Drawable drawable = obtainStyledAttributes.getDrawable(m.C0052m.ImageFilterView_altSrc);
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == m.C0052m.ImageFilterView_crossfade) {
                    this.f = obtainStyledAttributes.getFloat(index, 0.0f);
                } else if (index == m.C0052m.ImageFilterView_warmth) {
                    setWarmth(obtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == m.C0052m.ImageFilterView_saturation) {
                    setSaturation(obtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == m.C0052m.ImageFilterView_contrast) {
                    setContrast(obtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == m.C0052m.ImageFilterView_round) {
                    if (Build.VERSION.SDK_INT >= 21) {
                        setRound(obtainStyledAttributes.getDimension(index, 0.0f));
                    }
                } else if (index == m.C0052m.ImageFilterView_roundPercent) {
                    if (Build.VERSION.SDK_INT >= 21) {
                        setRoundPercent(obtainStyledAttributes.getFloat(index, 0.0f));
                    }
                } else if (index == m.C0052m.ImageFilterView_overlay) {
                    setOverlay(obtainStyledAttributes.getBoolean(index, this.j));
                }
            }
            obtainStyledAttributes.recycle();
            if (drawable != null) {
                this.c = new Drawable[2];
                this.c[0] = getDrawable();
                this.c[1] = drawable;
                this.d = new LayerDrawable(this.c);
                this.d.getDrawable(1).setAlpha((int) (this.f * 255.0f));
                super.setImageDrawable(this.d);
            }
        }
    }

    private void setOverlay(boolean z) {
        this.j = z;
    }

    public void setSaturation(float f) {
        this.e.e = f;
        this.e.a(this);
    }

    public float getSaturation() {
        return this.e.e;
    }

    public void setContrast(float f) {
        this.e.f = f;
        this.e.a(this);
    }

    public float getContrast() {
        return this.e.f;
    }

    public void setWarmth(float f) {
        this.e.g = f;
        this.e.a(this);
    }

    public float getWarmth() {
        return this.e.g;
    }

    public void setCrossfade(float f) {
        this.f = f;
        if (this.c != null) {
            if (!this.j) {
                this.d.getDrawable(0).setAlpha((int) ((1.0f - this.f) * 255.0f));
            }
            this.d.getDrawable(1).setAlpha((int) (this.f * 255.0f));
            super.setImageDrawable(this.d);
        }
    }

    public float getCrossfade() {
        return this.f;
    }

    public void setBrightness(float f) {
        this.e.d = f;
        this.e.a(this);
    }

    @am(a = 21)
    public void setRoundPercent(float f) {
        boolean z = this.g != f;
        this.g = f;
        if (this.g != 0.0f) {
            if (this.i == null) {
                this.i = new Path();
            }
            if (this.b == null) {
                this.b = new RectF();
            }
            if (Build.VERSION.SDK_INT >= 21) {
                if (this.f703a == null) {
                    this.f703a = new ViewOutlineProvider() { // from class: androidx.d.d.a.a.1
                        @Override // android.view.ViewOutlineProvider
                        public void getOutline(View view, Outline outline) {
                            outline.setRoundRect(0, 0, a.this.getWidth(), a.this.getHeight(), (Math.min(r3, r4) * a.this.g) / 2.0f);
                        }
                    };
                    setOutlineProvider(this.f703a);
                }
                setClipToOutline(true);
            }
            int width = getWidth();
            int height = getHeight();
            float min = (Math.min(width, height) * this.g) / 2.0f;
            this.b.set(0.0f, 0.0f, width, height);
            this.i.reset();
            this.i.addRoundRect(this.b, min, min, Path.Direction.CW);
        } else if (Build.VERSION.SDK_INT >= 21) {
            setClipToOutline(false);
        }
        if (!z || Build.VERSION.SDK_INT < 21) {
            return;
        }
        invalidateOutline();
    }

    @am(a = 21)
    public void setRound(float f) {
        if (Float.isNaN(f)) {
            this.h = f;
            float f2 = this.g;
            this.g = -1.0f;
            setRoundPercent(f2);
            return;
        }
        boolean z = this.h != f;
        this.h = f;
        if (this.h != 0.0f) {
            if (this.i == null) {
                this.i = new Path();
            }
            if (this.b == null) {
                this.b = new RectF();
            }
            if (Build.VERSION.SDK_INT >= 21) {
                if (this.f703a == null) {
                    this.f703a = new ViewOutlineProvider() { // from class: androidx.d.d.a.a.2
                        @Override // android.view.ViewOutlineProvider
                        public void getOutline(View view, Outline outline) {
                            outline.setRoundRect(0, 0, a.this.getWidth(), a.this.getHeight(), a.this.h);
                        }
                    };
                    setOutlineProvider(this.f703a);
                }
                setClipToOutline(true);
            }
            this.b.set(0.0f, 0.0f, getWidth(), getHeight());
            this.i.reset();
            this.i.addRoundRect(this.b, this.h, this.h, Path.Direction.CW);
        } else if (Build.VERSION.SDK_INT >= 21) {
            setClipToOutline(false);
        }
        if (!z || Build.VERSION.SDK_INT < 21) {
            return;
        }
        invalidateOutline();
    }

    public float getRoundPercent() {
        return this.g;
    }

    public float getRound() {
        return this.h;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        boolean z;
        if (Build.VERSION.SDK_INT >= 21 || this.h == 0.0f || this.i == null) {
            z = false;
        } else {
            z = true;
            canvas.save();
            canvas.clipPath(this.i);
        }
        super.draw(canvas);
        if (z) {
            canvas.restore();
        }
    }
}
