package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.a;

/* loaded from: /home/user/work/dex/classes.dex */
class f {

    /* renamed from: a, reason: collision with root package name */
    @androidx.annotation.ah
    private final View f268a;
    private ay d;
    private ay e;
    private ay f;
    private int c = -1;
    private final k b = k.b();

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(@androidx.annotation.ah View view) {
        this.f268a = view;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@androidx.annotation.ai AttributeSet attributeSet, int i) {
        ba a2 = ba.a(this.f268a.getContext(), attributeSet, a.m.ViewBackgroundHelper, i, 0);
        androidx.core.n.af.a(this.f268a, this.f268a.getContext(), a.m.ViewBackgroundHelper, attributeSet, a2.a(), i, 0);
        try {
            if (a2.j(a.m.ViewBackgroundHelper_android_background)) {
                this.c = a2.g(a.m.ViewBackgroundHelper_android_background, -1);
                ColorStateList b = this.b.b(this.f268a.getContext(), this.c);
                if (b != null) {
                    b(b);
                }
            }
            if (a2.j(a.m.ViewBackgroundHelper_backgroundTint)) {
                androidx.core.n.af.a(this.f268a, a2.g(a.m.ViewBackgroundHelper_backgroundTint));
            }
            if (a2.j(a.m.ViewBackgroundHelper_backgroundTintMode)) {
                androidx.core.n.af.a(this.f268a, af.a(a2.a(a.m.ViewBackgroundHelper_backgroundTintMode, -1), null));
            }
        } finally {
            a2.f();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i) {
        this.c = i;
        b(this.b != null ? this.b.b(this.f268a.getContext(), i) : null);
        c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Drawable drawable) {
        this.c = -1;
        b((ColorStateList) null);
        c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(ColorStateList colorStateList) {
        if (this.e == null) {
            this.e = new ay();
        }
        this.e.f241a = colorStateList;
        this.e.d = true;
        c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ColorStateList a() {
        if (this.e != null) {
            return this.e.f241a;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(PorterDuff.Mode mode) {
        if (this.e == null) {
            this.e = new ay();
        }
        this.e.b = mode;
        this.e.c = true;
        c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PorterDuff.Mode b() {
        if (this.e != null) {
            return this.e.b;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        Drawable background = this.f268a.getBackground();
        if (background != null) {
            if (d() && b(background)) {
                return;
            }
            if (this.e != null) {
                k.a(background, this.e, this.f268a.getDrawableState());
            } else if (this.d != null) {
                k.a(background, this.d, this.f268a.getDrawableState());
            }
        }
    }

    void b(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.d == null) {
                this.d = new ay();
            }
            this.d.f241a = colorStateList;
            this.d.d = true;
        } else {
            this.d = null;
        }
        c();
    }

    private boolean d() {
        int i = Build.VERSION.SDK_INT;
        return i > 21 ? this.d != null : i == 21;
    }

    private boolean b(@androidx.annotation.ah Drawable drawable) {
        if (this.f == null) {
            this.f = new ay();
        }
        ay ayVar = this.f;
        ayVar.a();
        ColorStateList aa = androidx.core.n.af.aa(this.f268a);
        if (aa != null) {
            ayVar.d = true;
            ayVar.f241a = aa;
        }
        PorterDuff.Mode ab = androidx.core.n.af.ab(this.f268a);
        if (ab != null) {
            ayVar.c = true;
            ayVar.b = ab;
        }
        if (!ayVar.d && !ayVar.c) {
            return false;
        }
        k.a(drawable, ayVar, this.f268a.getDrawableState());
        return true;
    }
}
