package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import androidx.annotation.ap;
import androidx.appcompat.widget.ah;

@androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public class FitWindowsLinearLayout extends LinearLayout implements ah {

    /* renamed from: a, reason: collision with root package name */
    private ah.a f171a;

    public FitWindowsLinearLayout(@androidx.annotation.ah Context context) {
        super(context);
    }

    public FitWindowsLinearLayout(@androidx.annotation.ah Context context, @androidx.annotation.ai AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // androidx.appcompat.widget.ah
    public void setOnFitSystemWindowsListener(ah.a aVar) {
        this.f171a = aVar;
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        if (this.f171a != null) {
            this.f171a.a(rect);
        }
        return super.fitSystemWindows(rect);
    }
}
