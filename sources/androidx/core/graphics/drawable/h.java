package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.Log;
import androidx.annotation.ah;
import androidx.annotation.am;
import java.lang.reflect.Method;

/* JADX INFO: Access modifiers changed from: package-private */
@am(a = 21)
/* loaded from: /home/user/work/dex/classes.dex */
public class h extends g {
    private static final String d = "WrappedDrawableApi21";
    private static Method e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(Drawable drawable) {
        super(drawable);
        c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(i iVar, Resources resources) {
        super(iVar, resources);
        c();
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f, float f2) {
        this.c.setHotspot(f, f2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        this.c.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(@ah Outline outline) {
        this.c.getOutline(outline);
    }

    @Override // android.graphics.drawable.Drawable
    @ah
    public Rect getDirtyBounds() {
        return this.c.getDirtyBounds();
    }

    @Override // androidx.core.graphics.drawable.g, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.e
    public void setTintList(ColorStateList colorStateList) {
        if (b()) {
            super.setTintList(colorStateList);
        } else {
            this.c.setTintList(colorStateList);
        }
    }

    @Override // androidx.core.graphics.drawable.g, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.e
    public void setTint(int i) {
        if (b()) {
            super.setTint(i);
        } else {
            this.c.setTint(i);
        }
    }

    @Override // androidx.core.graphics.drawable.g, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.e
    public void setTintMode(@ah PorterDuff.Mode mode) {
        if (b()) {
            super.setTintMode(mode);
        } else {
            this.c.setTintMode(mode);
        }
    }

    @Override // androidx.core.graphics.drawable.g, android.graphics.drawable.Drawable
    public boolean setState(@ah int[] iArr) {
        if (!super.setState(iArr)) {
            return false;
        }
        invalidateSelf();
        return true;
    }

    @Override // androidx.core.graphics.drawable.g
    protected boolean b() {
        if (Build.VERSION.SDK_INT != 21) {
            return false;
        }
        Drawable drawable = this.c;
        return (drawable instanceof GradientDrawable) || (drawable instanceof DrawableContainer) || (drawable instanceof InsetDrawable) || (drawable instanceof RippleDrawable);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isProjected() {
        if (this.c != null && e != null) {
            try {
                return ((Boolean) e.invoke(this.c, new Object[0])).booleanValue();
            } catch (Exception e2) {
                Log.w(d, "Error calling Drawable#isProjected() method", e2);
            }
        }
        return false;
    }

    private void c() {
        if (e == null) {
            try {
                e = Drawable.class.getDeclaredMethod("isProjected", new Class[0]);
            } catch (Exception e2) {
                Log.w(d, "Failed to retrieve Drawable#isProjected() method", e2);
            }
        }
    }
}
