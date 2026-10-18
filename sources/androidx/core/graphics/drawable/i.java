package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import androidx.annotation.ah;
import androidx.annotation.ai;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public final class i extends Drawable.ConstantState {

    /* renamed from: a, reason: collision with root package name */
    int f430a;
    Drawable.ConstantState b;
    ColorStateList c;
    PorterDuff.Mode d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(@ai i iVar) {
        this.c = null;
        this.d = g.f429a;
        if (iVar != null) {
            this.f430a = iVar.f430a;
            this.b = iVar.b;
            this.c = iVar.c;
            this.d = iVar.d;
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    @ah
    public Drawable newDrawable() {
        return newDrawable(null);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    @ah
    public Drawable newDrawable(@ai Resources resources) {
        if (Build.VERSION.SDK_INT >= 21) {
            return new h(this, resources);
        }
        return new g(this, resources);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        return (this.b != null ? this.b.getChangingConfigurations() : 0) | this.f430a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a() {
        return this.b != null;
    }
}
