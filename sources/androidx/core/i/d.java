package androidx.core.i;

import android.os.Build;
import android.os.Environment;
import android.util.Log;
import androidx.annotation.ah;
import java.io.File;
import java.io.IOException;

/* loaded from: /home/user/work/dex/classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public static final String f448a = "unknown";
    private static final String b = "EnvironmentCompat";

    @ah
    public static String a(@ah File file) {
        if (Build.VERSION.SDK_INT >= 21) {
            return Environment.getExternalStorageState(file);
        }
        if (Build.VERSION.SDK_INT >= 19) {
            return Environment.getStorageState(file);
        }
        try {
            return file.getCanonicalPath().startsWith(Environment.getExternalStorageDirectory().getCanonicalPath()) ? Environment.getExternalStorageState() : f448a;
        } catch (IOException e) {
            Log.w(b, "Failed to resolve canonical path: " + e);
            return f448a;
        }
    }

    private d() {
    }
}
