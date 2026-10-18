package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.CompoundButton;
import androidx.appcompat.a;

/* loaded from: /home/user/work/dex/classes.dex */
class j {

    /* renamed from: a, reason: collision with root package name */
    @androidx.annotation.ah
    private final CompoundButton f272a;
    private ColorStateList b = null;
    private PorterDuff.Mode c = null;
    private boolean d = false;
    private boolean e = false;
    private boolean f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(@androidx.annotation.ah CompoundButton compoundButton) {
        this.f272a = compoundButton;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:18:0x006c A[Catch: all -> 0x0094, TryCatch #0 {all -> 0x0094, blocks: (B:3:0x0021, B:5:0x0029, B:8:0x0031, B:11:0x0045, B:13:0x004d, B:15:0x0055, B:16:0x0064, B:18:0x006c, B:19:0x0077, B:21:0x007f), top: B:2:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x007f A[Catch: all -> 0x0094, TRY_LEAVE, TryCatch #0 {all -> 0x0094, blocks: (B:3:0x0021, B:5:0x0029, B:8:0x0031, B:11:0x0045, B:13:0x004d, B:15:0x0055, B:16:0x0064, B:18:0x006c, B:19:0x0077, B:21:0x007f), top: B:2:0x0021 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(@androidx.annotation.ai AttributeSet attributeSet, int i) {
        boolean z;
        int g;
        int g2;
        ba a2 = ba.a(this.f272a.getContext(), attributeSet, a.m.CompoundButton, i, 0);
        androidx.core.n.af.a(this.f272a, this.f272a.getContext(), a.m.CompoundButton, attributeSet, a2.a(), i, 0);
        try {
            if (a2.j(a.m.CompoundButton_buttonCompat) && (g2 = a2.g(a.m.CompoundButton_buttonCompat, 0)) != 0) {
                try {
                    this.f272a.setButtonDrawable(androidx.appcompat.a.a.a.b(this.f272a.getContext(), g2));
                    z = true;
                } catch (Resources.NotFoundException unused) {
                }
                if (!z && a2.j(a.m.CompoundButton_android_button) && (g = a2.g(a.m.CompoundButton_android_button, 0)) != 0) {
                    this.f272a.setButtonDrawable(androidx.appcompat.a.a.a.b(this.f272a.getContext(), g));
                }
                if (a2.j(a.m.CompoundButton_buttonTint)) {
                    androidx.core.widget.c.a(this.f272a, a2.g(a.m.CompoundButton_buttonTint));
                }
                if (a2.j(a.m.CompoundButton_buttonTintMode)) {
                    androidx.core.widget.c.a(this.f272a, af.a(a2.a(a.m.CompoundButton_buttonTintMode, -1), null));
                }
            }
            z = false;
            if (!z) {
                this.f272a.setButtonDrawable(androidx.appcompat.a.a.a.b(this.f272a.getContext(), g));
            }
            if (a2.j(a.m.CompoundButton_buttonTint)) {
            }
            if (a2.j(a.m.CompoundButton_buttonTintMode)) {
            }
        } finally {
            a2.f();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(ColorStateList colorStateList) {
        this.b = colorStateList;
        this.d = true;
        d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ColorStateList a() {
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@androidx.annotation.ai PorterDuff.Mode mode) {
        this.c = mode;
        this.e = true;
        d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PorterDuff.Mode b() {
        return this.c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        if (this.f) {
            this.f = false;
        } else {
            this.f = true;
            d();
        }
    }

    void d() {
        Drawable c = androidx.core.widget.c.c(this.f272a);
        if (c != null) {
            if (this.d || this.e) {
                Drawable mutate = androidx.core.graphics.drawable.a.g(c).mutate();
                if (this.d) {
                    androidx.core.graphics.drawable.a.a(mutate, this.b);
                }
                if (this.e) {
                    androidx.core.graphics.drawable.a.a(mutate, this.c);
                }
                if (mutate.isStateful()) {
                    mutate.setState(this.f272a.getDrawableState());
                }
                this.f272a.setButtonDrawable(mutate);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a(int i) {
        Drawable c;
        return (Build.VERSION.SDK_INT >= 17 || (c = androidx.core.widget.c.c(this.f272a)) == null) ? i : i + c.getIntrinsicWidth();
    }
}
