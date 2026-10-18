package androidx.d.e;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import androidx.d.e.d;

/* loaded from: /home/user/work/dex/classes.dex */
public class k extends View {
    @Override // android.view.View
    public void draw(Canvas canvas) {
    }

    @Override // android.view.View
    public void setVisibility(int i) {
    }

    public k(Context context) {
        super(context);
        super.setVisibility(8);
    }

    public k(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        super.setVisibility(8);
    }

    public k(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        super.setVisibility(8);
    }

    public k(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i);
        super.setVisibility(8);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(0, 0);
    }

    public void setGuidelineBegin(int i) {
        d.a aVar = (d.a) getLayoutParams();
        aVar.s = i;
        setLayoutParams(aVar);
    }

    public void setGuidelineEnd(int i) {
        d.a aVar = (d.a) getLayoutParams();
        aVar.t = i;
        setLayoutParams(aVar);
    }

    public void setGuidelinePercent(float f) {
        d.a aVar = (d.a) getLayoutParams();
        aVar.u = f;
        setLayoutParams(aVar);
    }
}
