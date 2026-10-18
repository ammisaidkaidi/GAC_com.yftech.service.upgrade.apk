package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.annotation.ap;
import androidx.appcompat.widget.ah;

@androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public class FitWindowsFrameLayout extends FrameLayout implements ah {

    /* renamed from: a, reason: collision with root package name */
    private ah.a f170a;

    public FitWindowsFrameLayout(@androidx.annotation.ah Context context) {
        super(context);
    }

    public FitWindowsFrameLayout(@androidx.annotation.ah Context context, @androidx.annotation.ai AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // androidx.appcompat.widget.ah
    public void setOnFitSystemWindowsListener(ah.a aVar) {
        this.f170a = aVar;
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        if (this.f170a != null) {
            this.f170a.a(rect);
        }
        return super.fitSystemWindows(rect);
    }
}
