package androidx.core.app;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.os.Build;
import androidx.annotation.ah;

/* loaded from: /home/user/work/dex/classes.dex */
public final class e {
    public static void a(@ah AlarmManager alarmManager, long j, @ah PendingIntent pendingIntent, @ah PendingIntent pendingIntent2) {
        if (Build.VERSION.SDK_INT >= 21) {
            alarmManager.setAlarmClock(new AlarmManager.AlarmClockInfo(j, pendingIntent), pendingIntent2);
        } else {
            b(alarmManager, 0, j, pendingIntent2);
        }
    }

    public static void a(@ah AlarmManager alarmManager, int i, long j, @ah PendingIntent pendingIntent) {
        if (Build.VERSION.SDK_INT >= 23) {
            alarmManager.setAndAllowWhileIdle(i, j, pendingIntent);
        } else {
            alarmManager.set(i, j, pendingIntent);
        }
    }

    public static void b(@ah AlarmManager alarmManager, int i, long j, @ah PendingIntent pendingIntent) {
        if (Build.VERSION.SDK_INT >= 19) {
            alarmManager.setExact(i, j, pendingIntent);
        } else {
            alarmManager.set(i, j, pendingIntent);
        }
    }

    public static void c(@ah AlarmManager alarmManager, int i, long j, @ah PendingIntent pendingIntent) {
        if (Build.VERSION.SDK_INT >= 23) {
            alarmManager.setExactAndAllowWhileIdle(i, j, pendingIntent);
        } else {
            b(alarmManager, i, j, pendingIntent);
        }
    }

    private e() {
    }
}
