package androidx.core.app;

import android.app.AppOpsManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ApplicationInfo;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.provider.Settings;
import android.support.v4.app.a;
import android.util.Log;
import androidx.annotation.ah;
import androidx.annotation.ai;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: /home/user/work/dex/classes.dex */
public final class u {

    /* renamed from: a, reason: collision with root package name */
    public static final String f378a = "android.support.useSideChannel";
    public static final String b = "android.support.BIND_NOTIFICATION_SIDE_CHANNEL";
    static final int c = 19;
    public static final int d = -1000;
    public static final int e = 0;
    public static final int f = 1;
    public static final int g = 2;
    public static final int h = 3;
    public static final int i = 4;
    public static final int j = 5;
    private static final String k = "NotifManCompat";
    private static final String l = "checkOpNoThrow";
    private static final String m = "OP_POST_NOTIFICATION";
    private static final int n = 1000;
    private static final int o = 6;
    private static final String p = "enabled_notification_listeners";

    @androidx.annotation.u(a = "sEnabledNotificationListenersLock")
    private static String r;

    @androidx.annotation.u(a = "sLock")
    private static d w;
    private final Context t;
    private final NotificationManager u;
    private static final Object q = new Object();

    @androidx.annotation.u(a = "sEnabledNotificationListenersLock")
    private static Set<String> s = new HashSet();
    private static final Object v = new Object();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface e {
        void a(android.support.v4.app.a aVar);
    }

    @ah
    public static u a(@ah Context context) {
        return new u(context);
    }

    private u(Context context) {
        this.t = context;
        this.u = (NotificationManager) this.t.getSystemService("notification");
    }

    public void a(int i2) {
        a((String) null, i2);
    }

    public void a(@ai String str, int i2) {
        this.u.cancel(str, i2);
        if (Build.VERSION.SDK_INT <= 19) {
            a(new a(this.t.getPackageName(), i2, str));
        }
    }

    public void a() {
        this.u.cancelAll();
        if (Build.VERSION.SDK_INT <= 19) {
            a(new a(this.t.getPackageName()));
        }
    }

    public void a(int i2, @ah Notification notification) {
        a(null, i2, notification);
    }

    public void a(@ai String str, int i2, @ah Notification notification) {
        if (a(notification)) {
            a(new b(this.t.getPackageName(), i2, str, notification));
            this.u.cancel(str, i2);
        } else {
            this.u.notify(str, i2, notification);
        }
    }

    public boolean b() {
        if (Build.VERSION.SDK_INT >= 24) {
            return this.u.areNotificationsEnabled();
        }
        if (Build.VERSION.SDK_INT < 19) {
            return true;
        }
        AppOpsManager appOpsManager = (AppOpsManager) this.t.getSystemService("appops");
        ApplicationInfo applicationInfo = this.t.getApplicationInfo();
        String packageName = this.t.getApplicationContext().getPackageName();
        int i2 = applicationInfo.uid;
        try {
            Class<?> cls = Class.forName(AppOpsManager.class.getName());
            return ((Integer) cls.getMethod(l, Integer.TYPE, Integer.TYPE, String.class).invoke(appOpsManager, Integer.valueOf(((Integer) cls.getDeclaredField(m).get(Integer.class)).intValue()), Integer.valueOf(i2), packageName)).intValue() == 0;
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException | NoSuchMethodException | RuntimeException | InvocationTargetException unused) {
            return true;
        }
    }

    public int c() {
        return Build.VERSION.SDK_INT >= 24 ? this.u.getImportance() : d;
    }

    public void a(@ah NotificationChannel notificationChannel) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.u.createNotificationChannel(notificationChannel);
        }
    }

    public void a(@ah NotificationChannelGroup notificationChannelGroup) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.u.createNotificationChannelGroup(notificationChannelGroup);
        }
    }

    public void a(@ah List<NotificationChannel> list) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.u.createNotificationChannels(list);
        }
    }

    public void b(@ah List<NotificationChannelGroup> list) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.u.createNotificationChannelGroups(list);
        }
    }

    public void a(@ah String str) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.u.deleteNotificationChannel(str);
        }
    }

    public void b(@ah String str) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.u.deleteNotificationChannelGroup(str);
        }
    }

    @ai
    public NotificationChannel c(@ah String str) {
        if (Build.VERSION.SDK_INT >= 26) {
            return this.u.getNotificationChannel(str);
        }
        return null;
    }

    @ai
    public NotificationChannelGroup d(@ah String str) {
        if (Build.VERSION.SDK_INT >= 28) {
            return this.u.getNotificationChannelGroup(str);
        }
        if (Build.VERSION.SDK_INT < 26) {
            return null;
        }
        for (NotificationChannelGroup notificationChannelGroup : e()) {
            if (notificationChannelGroup.getId().equals(str)) {
                return notificationChannelGroup;
            }
        }
        return null;
    }

    @ah
    public List<NotificationChannel> d() {
        if (Build.VERSION.SDK_INT >= 26) {
            return this.u.getNotificationChannels();
        }
        return Collections.emptyList();
    }

    @ah
    public List<NotificationChannelGroup> e() {
        if (Build.VERSION.SDK_INT >= 26) {
            return this.u.getNotificationChannelGroups();
        }
        return Collections.emptyList();
    }

    @ah
    public static Set<String> b(@ah Context context) {
        Set<String> set;
        String string = Settings.Secure.getString(context.getContentResolver(), p);
        synchronized (q) {
            if (string != null) {
                try {
                    if (!string.equals(r)) {
                        String[] split = string.split(":", -1);
                        HashSet hashSet = new HashSet(split.length);
                        for (String str : split) {
                            ComponentName unflattenFromString = ComponentName.unflattenFromString(str);
                            if (unflattenFromString != null) {
                                hashSet.add(unflattenFromString.getPackageName());
                            }
                        }
                        s = hashSet;
                        r = string;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            set = s;
        }
        return set;
    }

    private static boolean a(Notification notification) {
        Bundle a2 = p.a(notification);
        return a2 != null && a2.getBoolean(f378a);
    }

    private void a(e eVar) {
        synchronized (v) {
            if (w == null) {
                w = new d(this.t.getApplicationContext());
            }
            w.a(eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class d implements ServiceConnection, Handler.Callback {

        /* renamed from: a, reason: collision with root package name */
        private static final int f382a = 0;
        private static final int b = 1;
        private static final int c = 2;
        private static final int d = 3;
        private final Context e;
        private final Handler g;
        private final Map<ComponentName, a> h = new HashMap();
        private Set<String> i = new HashSet();
        private final HandlerThread f = new HandlerThread("NotificationManagerCompat");

        d(Context context) {
            this.e = context;
            this.f.start();
            this.g = new Handler(this.f.getLooper(), this);
        }

        public void a(e eVar) {
            this.g.obtainMessage(0, eVar).sendToTarget();
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    b((e) message.obj);
                    return true;
                case 1:
                    c cVar = (c) message.obj;
                    a(cVar.f381a, cVar.b);
                    return true;
                case 2:
                    a((ComponentName) message.obj);
                    return true;
                case 3:
                    b((ComponentName) message.obj);
                    return true;
                default:
                    return false;
            }
        }

        private void b(e eVar) {
            a();
            for (a aVar : this.h.values()) {
                aVar.d.add(eVar);
                d(aVar);
            }
        }

        private void a(ComponentName componentName, IBinder iBinder) {
            a aVar = this.h.get(componentName);
            if (aVar != null) {
                aVar.c = a.b.a(iBinder);
                aVar.e = 0;
                d(aVar);
            }
        }

        private void a(ComponentName componentName) {
            a aVar = this.h.get(componentName);
            if (aVar != null) {
                b(aVar);
            }
        }

        private void b(ComponentName componentName) {
            a aVar = this.h.get(componentName);
            if (aVar != null) {
                d(aVar);
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (Log.isLoggable(u.k, 3)) {
                Log.d(u.k, "Connected to service " + componentName);
            }
            this.g.obtainMessage(1, new c(componentName, iBinder)).sendToTarget();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            if (Log.isLoggable(u.k, 3)) {
                Log.d(u.k, "Disconnected from service " + componentName);
            }
            this.g.obtainMessage(2, componentName).sendToTarget();
        }

        private void a() {
            Set<String> b2 = u.b(this.e);
            if (b2.equals(this.i)) {
                return;
            }
            this.i = b2;
            List<ResolveInfo> queryIntentServices = this.e.getPackageManager().queryIntentServices(new Intent().setAction(u.b), 0);
            HashSet<ComponentName> hashSet = new HashSet();
            for (ResolveInfo resolveInfo : queryIntentServices) {
                if (b2.contains(resolveInfo.serviceInfo.packageName)) {
                    ComponentName componentName = new ComponentName(resolveInfo.serviceInfo.packageName, resolveInfo.serviceInfo.name);
                    if (resolveInfo.serviceInfo.permission != null) {
                        Log.w(u.k, "Permission present on component " + componentName + ", not adding listener record.");
                    } else {
                        hashSet.add(componentName);
                    }
                }
            }
            for (ComponentName componentName2 : hashSet) {
                if (!this.h.containsKey(componentName2)) {
                    if (Log.isLoggable(u.k, 3)) {
                        Log.d(u.k, "Adding listener record for " + componentName2);
                    }
                    this.h.put(componentName2, new a(componentName2));
                }
            }
            Iterator<Map.Entry<ComponentName, a>> it = this.h.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<ComponentName, a> next = it.next();
                if (!hashSet.contains(next.getKey())) {
                    if (Log.isLoggable(u.k, 3)) {
                        Log.d(u.k, "Removing listener record for " + next.getKey());
                    }
                    b(next.getValue());
                    it.remove();
                }
            }
        }

        private boolean a(a aVar) {
            if (aVar.b) {
                return true;
            }
            aVar.b = this.e.bindService(new Intent(u.b).setComponent(aVar.f383a), this, 33);
            if (aVar.b) {
                aVar.e = 0;
            } else {
                Log.w(u.k, "Unable to bind to listener " + aVar.f383a);
                this.e.unbindService(this);
            }
            return aVar.b;
        }

        private void b(a aVar) {
            if (aVar.b) {
                this.e.unbindService(this);
                aVar.b = false;
            }
            aVar.c = null;
        }

        private void c(a aVar) {
            if (this.g.hasMessages(3, aVar.f383a)) {
                return;
            }
            aVar.e++;
            if (aVar.e > 6) {
                Log.w(u.k, "Giving up on delivering " + aVar.d.size() + " tasks to " + aVar.f383a + " after " + aVar.e + " retries");
                aVar.d.clear();
                return;
            }
            int i = (1 << (aVar.e - 1)) * 1000;
            if (Log.isLoggable(u.k, 3)) {
                Log.d(u.k, "Scheduling retry for " + i + " ms");
            }
            this.g.sendMessageDelayed(this.g.obtainMessage(3, aVar.f383a), i);
        }

        private void d(a aVar) {
            if (Log.isLoggable(u.k, 3)) {
                Log.d(u.k, "Processing component " + aVar.f383a + ", " + aVar.d.size() + " queued tasks");
            }
            if (aVar.d.isEmpty()) {
                return;
            }
            if (!a(aVar) || aVar.c == null) {
                c(aVar);
                return;
            }
            while (true) {
                e peek = aVar.d.peek();
                if (peek == null) {
                    break;
                }
                try {
                    if (Log.isLoggable(u.k, 3)) {
                        Log.d(u.k, "Sending task " + peek);
                    }
                    peek.a(aVar.c);
                    aVar.d.remove();
                } catch (DeadObjectException unused) {
                    if (Log.isLoggable(u.k, 3)) {
                        Log.d(u.k, "Remote service has died: " + aVar.f383a);
                    }
                } catch (RemoteException e) {
                    Log.w(u.k, "RemoteException communicating with " + aVar.f383a, e);
                }
            }
            if (aVar.d.isEmpty()) {
                return;
            }
            c(aVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: /home/user/work/dex/classes.dex */
        public static class a {

            /* renamed from: a, reason: collision with root package name */
            final ComponentName f383a;
            android.support.v4.app.a c;
            boolean b = false;
            ArrayDeque<e> d = new ArrayDeque<>();
            int e = 0;

            a(ComponentName componentName) {
                this.f383a = componentName;
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class c {

        /* renamed from: a, reason: collision with root package name */
        final ComponentName f381a;
        final IBinder b;

        c(ComponentName componentName, IBinder iBinder) {
            this.f381a = componentName;
            this.b = iBinder;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class b implements e {

        /* renamed from: a, reason: collision with root package name */
        final String f380a;
        final int b;
        final String c;
        final Notification d;

        b(String str, int i, String str2, Notification notification) {
            this.f380a = str;
            this.b = i;
            this.c = str2;
            this.d = notification;
        }

        @Override // androidx.core.app.u.e
        public void a(android.support.v4.app.a aVar) {
            aVar.a(this.f380a, this.b, this.c, this.d);
        }

        @ah
        public String toString() {
            return "NotifyTask[packageName:" + this.f380a + ", id:" + this.b + ", tag:" + this.c + "]";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a implements e {

        /* renamed from: a, reason: collision with root package name */
        final String f379a;
        final int b;
        final String c;
        final boolean d;

        a(String str) {
            this.f379a = str;
            this.b = 0;
            this.c = null;
            this.d = true;
        }

        a(String str, int i, String str2) {
            this.f379a = str;
            this.b = i;
            this.c = str2;
            this.d = false;
        }

        @Override // androidx.core.app.u.e
        public void a(android.support.v4.app.a aVar) {
            if (this.d) {
                aVar.a(this.f379a);
            } else {
                aVar.a(this.f379a, this.b, this.c);
            }
        }

        @ah
        public String toString() {
            return "CancelTask[packageName:" + this.f379a + ", id:" + this.b + ", tag:" + this.c + ", all:" + this.d + "]";
        }
    }
}
