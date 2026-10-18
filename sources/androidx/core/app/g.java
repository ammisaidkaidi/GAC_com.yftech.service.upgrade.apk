package androidx.core.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import androidx.annotation.ah;

/* loaded from: /home/user/work/dex/classes.dex */
public class g {

    /* renamed from: a, reason: collision with root package name */
    private static final String f343a = "android.support.AppLaunchChecker";
    private static final String b = "startedFromLauncher";

    public static boolean a(@ah Context context) {
        return context.getSharedPreferences(f343a, 0).getBoolean(b, false);
    }

    public static void a(@ah Activity activity) {
        Intent intent;
        SharedPreferences sharedPreferences = activity.getSharedPreferences(f343a, 0);
        if (sharedPreferences.getBoolean(b, false) || (intent = activity.getIntent()) == null || !"android.intent.action.MAIN".equals(intent.getAction())) {
            return;
        }
        if (intent.hasCategory("android.intent.category.LAUNCHER") || intent.hasCategory(androidx.core.b.e.c)) {
            sharedPreferences.edit().putBoolean(b, true).apply();
        }
    }

    @Deprecated
    public g() {
    }
}
