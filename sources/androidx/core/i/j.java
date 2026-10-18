package androidx.core.i;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.Message;
import androidx.annotation.ah;

/* loaded from: /home/user/work/dex/classes.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    private static boolean f453a = true;
    private static boolean b = true;

    @SuppressLint({"NewApi"})
    public static void a(@ah Message message, boolean z) {
        if (Build.VERSION.SDK_INT >= 22) {
            message.setAsynchronous(z);
        } else {
            if (!f453a || Build.VERSION.SDK_INT < 16) {
                return;
            }
            try {
                message.setAsynchronous(z);
            } catch (NoSuchMethodError unused) {
                f453a = false;
            }
        }
    }

    @SuppressLint({"NewApi"})
    public static boolean a(@ah Message message) {
        if (Build.VERSION.SDK_INT >= 22) {
            return message.isAsynchronous();
        }
        if (b && Build.VERSION.SDK_INT >= 16) {
            try {
                return message.isAsynchronous();
            } catch (NoSuchMethodError unused) {
                b = false;
            }
        }
        return false;
    }

    private j() {
    }
}
