package androidx.fragment.app;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.ah;
import androidx.annotation.ai;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class f {
    @ai
    public abstract View a(@androidx.annotation.w int i);

    public abstract boolean a();

    @ah
    @Deprecated
    public d a(@ah Context context, @ah String str, @ai Bundle bundle) {
        return d.a(context, str, bundle);
    }
}
