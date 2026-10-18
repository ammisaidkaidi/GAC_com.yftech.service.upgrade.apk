package androidx.core.widget;

import android.os.Build;
import androidx.annotation.ah;
import androidx.annotation.ap;

@ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public interface b {

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public static final boolean d;

    int getAutoSizeMaxTextSize();

    int getAutoSizeMinTextSize();

    int getAutoSizeStepGranularity();

    int[] getAutoSizeTextAvailableSizes();

    int getAutoSizeTextType();

    void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4);

    void setAutoSizeTextTypeUniformWithPresetSizes(@ah int[] iArr, int i);

    void setAutoSizeTextTypeWithDefaults(int i);

    static {
        d = Build.VERSION.SDK_INT >= 27;
    }
}
