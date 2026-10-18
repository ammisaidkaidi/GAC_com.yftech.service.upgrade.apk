package androidx.appcompat.widget;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;

/* loaded from: /home/user/work/dex/classes.dex */
class b extends Drawable {

    /* renamed from: a, reason: collision with root package name */
    final ActionBarContainer f243a;

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public b(ActionBarContainer actionBarContainer) {
        this.f243a = actionBarContainer;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f243a.d) {
            if (this.f243a.c != null) {
                this.f243a.c.draw(canvas);
            }
        } else {
            if (this.f243a.f150a != null) {
                this.f243a.f150a.draw(canvas);
            }
            if (this.f243a.b == null || !this.f243a.e) {
                return;
            }
            this.f243a.b.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    @androidx.annotation.am(a = 21)
    public void getOutline(@androidx.annotation.ah Outline outline) {
        if (this.f243a.d) {
            if (this.f243a.c != null) {
                this.f243a.c.getOutline(outline);
            }
        } else if (this.f243a.f150a != null) {
            this.f243a.f150a.getOutline(outline);
        }
    }
}
