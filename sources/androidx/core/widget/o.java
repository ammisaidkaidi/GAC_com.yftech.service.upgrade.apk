package androidx.core.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import androidx.annotation.ai;

/* loaded from: /home/user/work/dex/classes.dex */
public interface o {
    @ai
    ColorStateList getSupportCompoundDrawablesTintList();

    @ai
    PorterDuff.Mode getSupportCompoundDrawablesTintMode();

    void setSupportCompoundDrawablesTintList(@ai ColorStateList colorStateList);

    void setSupportCompoundDrawablesTintMode(@ai PorterDuff.Mode mode);
}
