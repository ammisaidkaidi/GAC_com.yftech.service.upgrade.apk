package androidx.core.graphics.drawable;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Outline;
import android.graphics.Rect;
import android.view.Gravity;
import androidx.annotation.ah;
import androidx.annotation.am;

@am(a = 21)
/* loaded from: /home/user/work/dex/classes.dex */
class c extends b {
    /* JADX INFO: Access modifiers changed from: protected */
    public c(Resources resources, Bitmap bitmap) {
        super(resources, bitmap);
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(@ah Outline outline) {
        f();
        outline.setRoundRect(this.b, h());
    }

    @Override // androidx.core.graphics.drawable.b
    public void a(boolean z) {
        if (this.f427a != null) {
            this.f427a.setHasMipMap(z);
            invalidateSelf();
        }
    }

    @Override // androidx.core.graphics.drawable.b
    public boolean d() {
        return this.f427a != null && this.f427a.hasMipMap();
    }

    @Override // androidx.core.graphics.drawable.b
    void a(int i, int i2, int i3, Rect rect, Rect rect2) {
        Gravity.apply(i, i2, i3, rect, rect2, 0);
    }
}
