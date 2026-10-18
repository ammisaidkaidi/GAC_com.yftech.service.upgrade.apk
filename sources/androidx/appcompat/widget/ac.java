package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.ToggleButton;

/* loaded from: /home/user/work/dex/classes.dex */
public class ac extends ToggleButton {

    /* renamed from: a, reason: collision with root package name */
    private final z f200a;

    public ac(@androidx.annotation.ah Context context) {
        this(context, null);
    }

    public ac(@androidx.annotation.ah Context context, @androidx.annotation.ai AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.buttonStyleToggle);
    }

    public ac(@androidx.annotation.ah Context context, @androidx.annotation.ai AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        av.a(this, getContext());
        this.f200a = new z(this);
        this.f200a.a(attributeSet, i);
    }
}
