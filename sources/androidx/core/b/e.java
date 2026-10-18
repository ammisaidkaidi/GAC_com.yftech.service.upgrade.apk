package androidx.core.b;

import android.content.Intent;
import android.os.Build;
import androidx.annotation.ah;

/* loaded from: /home/user/work/dex/classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public static final String f415a = "android.intent.extra.HTML_TEXT";
    public static final String b = "android.intent.extra.START_PLAYBACK";
    public static final String c = "android.intent.category.LEANBACK_LAUNCHER";

    private e() {
    }

    @ah
    public static Intent a(@ah String str, @ah String str2) {
        if (Build.VERSION.SDK_INT >= 15) {
            return Intent.makeMainSelectorActivity(str, str2);
        }
        Intent intent = new Intent(str);
        intent.addCategory(str2);
        return intent;
    }
}
