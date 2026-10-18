package androidx.core.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import androidx.annotation.ai;
import androidx.annotation.ap;

@ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public interface p {
    @ai
    ColorStateList getSupportImageTintList();

    @ai
    PorterDuff.Mode getSupportImageTintMode();

    void setSupportImageTintList(@ai ColorStateList colorStateList);

    void setSupportImageTintMode(@ai PorterDuff.Mode mode);
}
