package androidx.core.b;

import android.content.ContentProvider;
import android.content.Context;
import androidx.annotation.ah;

/* loaded from: /home/user/work/dex/classes.dex */
public final class a {
    private a() {
    }

    @ah
    public static Context a(@ah ContentProvider contentProvider) {
        Context context = contentProvider.getContext();
        if (context != null) {
            return context;
        }
        throw new IllegalStateException("Cannot find context from the provider.");
    }
}
