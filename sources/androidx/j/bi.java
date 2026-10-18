package androidx.j;

import android.view.View;
import android.view.WindowId;

@androidx.annotation.am(a = 18)
/* loaded from: /home/user/work/dex/classes.dex */
class bi implements bj {

    /* renamed from: a, reason: collision with root package name */
    private final WindowId f881a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bi(@androidx.annotation.ah View view) {
        this.f881a = view.getWindowId();
    }

    public boolean equals(Object obj) {
        return (obj instanceof bi) && ((bi) obj).f881a.equals(this.f881a);
    }

    public int hashCode() {
        return this.f881a.hashCode();
    }
}
