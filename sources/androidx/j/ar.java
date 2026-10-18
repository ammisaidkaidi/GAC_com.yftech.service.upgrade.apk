package androidx.j;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;

@androidx.annotation.am(a = 18)
/* loaded from: /home/user/work/dex/classes.dex */
class ar implements as {

    /* renamed from: a, reason: collision with root package name */
    private final ViewGroupOverlay f862a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ar(@androidx.annotation.ah ViewGroup viewGroup) {
        this.f862a = viewGroup.getOverlay();
    }

    @Override // androidx.j.ax
    public void a(@androidx.annotation.ah Drawable drawable) {
        this.f862a.add(drawable);
    }

    @Override // androidx.j.ax
    public void b(@androidx.annotation.ah Drawable drawable) {
        this.f862a.remove(drawable);
    }

    @Override // androidx.j.as
    public void a(@androidx.annotation.ah View view) {
        this.f862a.add(view);
    }

    @Override // androidx.j.as
    public void b(@androidx.annotation.ah View view) {
        this.f862a.remove(view);
    }
}
