package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.annotation.ap;
import androidx.appcompat.a;

@androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public class o {

    /* renamed from: a, reason: collision with root package name */
    @androidx.annotation.ah
    private final ImageView f277a;
    private ay b;
    private ay c;
    private ay d;

    public o(@androidx.annotation.ah ImageView imageView) {
        this.f277a = imageView;
    }

    public void a(AttributeSet attributeSet, int i) {
        int g;
        ba a2 = ba.a(this.f277a.getContext(), attributeSet, a.m.AppCompatImageView, i, 0);
        androidx.core.n.af.a(this.f277a, this.f277a.getContext(), a.m.AppCompatImageView, attributeSet, a2.a(), i, 0);
        try {
            Drawable drawable = this.f277a.getDrawable();
            if (drawable == null && (g = a2.g(a.m.AppCompatImageView_srcCompat, -1)) != -1 && (drawable = androidx.appcompat.a.a.a.b(this.f277a.getContext(), g)) != null) {
                this.f277a.setImageDrawable(drawable);
            }
            if (drawable != null) {
                af.b(drawable);
            }
            if (a2.j(a.m.AppCompatImageView_tint)) {
                androidx.core.widget.f.a(this.f277a, a2.g(a.m.AppCompatImageView_tint));
            }
            if (a2.j(a.m.AppCompatImageView_tintMode)) {
                androidx.core.widget.f.a(this.f277a, af.a(a2.a(a.m.AppCompatImageView_tintMode, -1), null));
            }
        } finally {
            a2.f();
        }
    }

    public void a(int i) {
        if (i != 0) {
            Drawable b = androidx.appcompat.a.a.a.b(this.f277a.getContext(), i);
            if (b != null) {
                af.b(b);
            }
            this.f277a.setImageDrawable(b);
        } else {
            this.f277a.setImageDrawable(null);
        }
        d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a() {
        return Build.VERSION.SDK_INT < 21 || !(this.f277a.getBackground() instanceof RippleDrawable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(ColorStateList colorStateList) {
        if (this.c == null) {
            this.c = new ay();
        }
        this.c.f241a = colorStateList;
        this.c.d = true;
        d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ColorStateList b() {
        if (this.c != null) {
            return this.c.f241a;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(PorterDuff.Mode mode) {
        if (this.c == null) {
            this.c = new ay();
        }
        this.c.b = mode;
        this.c.c = true;
        d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PorterDuff.Mode c() {
        if (this.c != null) {
            return this.c.b;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        Drawable drawable = this.f277a.getDrawable();
        if (drawable != null) {
            af.b(drawable);
        }
        if (drawable != null) {
            if (e() && a(drawable)) {
                return;
            }
            if (this.c != null) {
                k.a(drawable, this.c, this.f277a.getDrawableState());
            } else if (this.b != null) {
                k.a(drawable, this.b, this.f277a.getDrawableState());
            }
        }
    }

    void b(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.b == null) {
                this.b = new ay();
            }
            this.b.f241a = colorStateList;
            this.b.d = true;
        } else {
            this.b = null;
        }
        d();
    }

    private boolean e() {
        int i = Build.VERSION.SDK_INT;
        return i > 21 ? this.b != null : i == 21;
    }

    private boolean a(@androidx.annotation.ah Drawable drawable) {
        if (this.d == null) {
            this.d = new ay();
        }
        ay ayVar = this.d;
        ayVar.a();
        ColorStateList a2 = androidx.core.widget.f.a(this.f277a);
        if (a2 != null) {
            ayVar.d = true;
            ayVar.f241a = a2;
        }
        PorterDuff.Mode b = androidx.core.widget.f.b(this.f277a);
        if (b != null) {
            ayVar.c = true;
            ayVar.b = b;
        }
        if (!ayVar.d && !ayVar.c) {
            return false;
        }
        k.a(drawable, ayVar, this.f277a.getDrawableState());
        return true;
    }
}
