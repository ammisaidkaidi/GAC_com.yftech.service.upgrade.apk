package androidx.core.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import androidx.annotation.ai;

/* loaded from: /home/user/work/dex/classes.dex */
public interface n {
    @ai
    ColorStateList getSupportButtonTintList();

    @ai
    PorterDuff.Mode getSupportButtonTintMode();

    void setSupportButtonTintList(@ai ColorStateList colorStateList);

    void setSupportButtonTintMode(@ai PorterDuff.Mode mode);
}
