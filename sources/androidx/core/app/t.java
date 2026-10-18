package androidx.core.app;

import android.app.Notification;
import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import android.support.v4.app.a;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class t extends Service {
    public abstract void a(String str);

    public abstract void a(String str, int i, String str2);

    public abstract void a(String str, int i, String str2, Notification notification);

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        if (!intent.getAction().equals(u.b) || Build.VERSION.SDK_INT > 19) {
            return null;
        }
        return new a();
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private class a extends a.b {
        a() {
        }

        @Override // android.support.v4.app.a
        public void a(String str, int i, String str2, Notification notification) {
            t.this.a(getCallingUid(), str);
            long clearCallingIdentity = clearCallingIdentity();
            try {
                t.this.a(str, i, str2, notification);
            } finally {
                restoreCallingIdentity(clearCallingIdentity);
            }
        }

        @Override // android.support.v4.app.a
        public void a(String str, int i, String str2) {
            t.this.a(getCallingUid(), str);
            long clearCallingIdentity = clearCallingIdentity();
            try {
                t.this.a(str, i, str2);
            } finally {
                restoreCallingIdentity(clearCallingIdentity);
            }
        }

        @Override // android.support.v4.app.a
        public void a(String str) {
            t.this.a(getCallingUid(), str);
            long clearCallingIdentity = clearCallingIdentity();
            try {
                t.this.a(str);
            } finally {
                restoreCallingIdentity(clearCallingIdentity);
            }
        }
    }

    void a(int i, String str) {
        for (String str2 : getPackageManager().getPackagesForUid(i)) {
            if (str2.equals(str)) {
                return;
            }
        }
        throw new SecurityException("NotificationSideChannelService: Uid " + i + " is not authorized for package " + str);
    }
}
