package androidx.appcompat.widget;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.PopupWindow;
import androidx.appcompat.a;

/* loaded from: /home/user/work/dex/classes.dex */
class r extends PopupWindow {

    /* renamed from: a, reason: collision with root package name */
    private static final boolean f280a;
    private boolean b;

    static {
        f280a = Build.VERSION.SDK_INT < 21;
    }

    public r(@androidx.annotation.ah Context context, @androidx.annotation.ai AttributeSet attributeSet, @androidx.annotation.f int i) {
        super(context, attributeSet, i);
        a(context, attributeSet, i, 0);
    }

    public r(@androidx.annotation.ah Context context, @androidx.annotation.ai AttributeSet attributeSet, @androidx.annotation.f int i, @androidx.annotation.at int i2) {
        super(context, attributeSet, i, i2);
        a(context, attributeSet, i, i2);
    }

    private void a(Context context, AttributeSet attributeSet, int i, int i2) {
        ba a2 = ba.a(context, attributeSet, a.m.PopupWindow, i, i2);
        if (a2.j(a.m.PopupWindow_overlapAnchor)) {
            a(a2.a(a.m.PopupWindow_overlapAnchor, false));
        }
        setBackgroundDrawable(a2.a(a.m.PopupWindow_android_popupBackground));
        a2.f();
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2) {
        if (f280a && this.b) {
            i2 -= view.getHeight();
        }
        super.showAsDropDown(view, i, i2);
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2, int i3) {
        if (f280a && this.b) {
            i2 -= view.getHeight();
        }
        super.showAsDropDown(view, i, i2, i3);
    }

    @Override // android.widget.PopupWindow
    public void update(View view, int i, int i2, int i3, int i4) {
        if (f280a && this.b) {
            i2 -= view.getHeight();
        }
        super.update(view, i, i2, i3, i4);
    }

    private void a(boolean z) {
        if (f280a) {
            this.b = z;
        } else {
            androidx.core.widget.k.a(this, z);
        }
    }
}
