package androidx.core.b.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.ResolveInfo;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ax;
import androidx.core.b.a.d;
import androidx.core.b.a.e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    @ax
    static final String f396a = "com.android.launcher.action.INSTALL_SHORTCUT";

    @ax
    static final String b = "com.android.launcher.permission.INSTALL_SHORTCUT";
    public static final String c = "android.intent.extra.shortcut.ID";
    private static volatile e<?> d;

    private f() {
    }

    public static boolean a(@ah Context context) {
        if (Build.VERSION.SDK_INT >= 26) {
            return ((ShortcutManager) context.getSystemService(ShortcutManager.class)).isRequestPinShortcutSupported();
        }
        if (androidx.core.b.c.b(context, b) != 0) {
            return false;
        }
        Iterator<ResolveInfo> it = context.getPackageManager().queryBroadcastReceivers(new Intent(f396a), 0).iterator();
        while (it.hasNext()) {
            String str = it.next().activityInfo.permission;
            if (TextUtils.isEmpty(str) || b.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean a(@ah Context context, @ah d dVar, @ai final IntentSender intentSender) {
        if (Build.VERSION.SDK_INT >= 26) {
            return ((ShortcutManager) context.getSystemService(ShortcutManager.class)).requestPinShortcut(dVar.a(), intentSender);
        }
        if (!a(context)) {
            return false;
        }
        Intent a2 = dVar.a(new Intent(f396a));
        if (intentSender == null) {
            context.sendBroadcast(a2);
            return true;
        }
        context.sendOrderedBroadcast(a2, null, new BroadcastReceiver() { // from class: androidx.core.b.a.f.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                try {
                    intentSender.sendIntent(context2, 0, null, null, null);
                } catch (IntentSender.SendIntentException unused) {
                }
            }
        }, null, -1, null, null);
        return true;
    }

    @ah
    public static Intent a(@ah Context context, @ah d dVar) {
        Intent createShortcutResultIntent = Build.VERSION.SDK_INT >= 26 ? ((ShortcutManager) context.getSystemService(ShortcutManager.class)).createShortcutResultIntent(dVar.a()) : null;
        if (createShortcutResultIntent == null) {
            createShortcutResultIntent = new Intent();
        }
        return dVar.a(createShortcutResultIntent);
    }

    public static boolean a(@ah Context context, @ah List<d> list) {
        if (Build.VERSION.SDK_INT >= 25) {
            ArrayList arrayList = new ArrayList();
            Iterator<d> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().a());
            }
            if (!((ShortcutManager) context.getSystemService(ShortcutManager.class)).addDynamicShortcuts(arrayList)) {
                return false;
            }
        }
        e(context).a(list);
        return true;
    }

    public static int b(@ah Context context) {
        if (Build.VERSION.SDK_INT >= 25) {
            return ((ShortcutManager) context.getSystemService(ShortcutManager.class)).getMaxShortcutCountPerActivity();
        }
        return 0;
    }

    @ah
    public static List<d> c(@ah Context context) {
        if (Build.VERSION.SDK_INT >= 25) {
            List<ShortcutInfo> dynamicShortcuts = ((ShortcutManager) context.getSystemService(ShortcutManager.class)).getDynamicShortcuts();
            ArrayList arrayList = new ArrayList(dynamicShortcuts.size());
            Iterator<ShortcutInfo> it = dynamicShortcuts.iterator();
            while (it.hasNext()) {
                arrayList.add(new d.a(context, it.next()).c());
            }
            return arrayList;
        }
        try {
            return e(context).b();
        } catch (Exception unused) {
            return new ArrayList();
        }
    }

    public static boolean b(@ah Context context, @ah List<d> list) {
        if (Build.VERSION.SDK_INT >= 25) {
            ArrayList arrayList = new ArrayList();
            Iterator<d> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().a());
            }
            if (!((ShortcutManager) context.getSystemService(ShortcutManager.class)).updateShortcuts(arrayList)) {
                return false;
            }
        }
        e(context).a(list);
        return true;
    }

    public static void c(@ah Context context, @ah List<String> list) {
        if (Build.VERSION.SDK_INT >= 25) {
            ((ShortcutManager) context.getSystemService(ShortcutManager.class)).removeDynamicShortcuts(list);
        }
        e(context).b(list);
    }

    public static void d(@ah Context context) {
        if (Build.VERSION.SDK_INT >= 25) {
            ((ShortcutManager) context.getSystemService(ShortcutManager.class)).removeAllDynamicShortcuts();
        }
        e(context).a();
    }

    private static e<?> e(Context context) {
        if (d == null) {
            if (Build.VERSION.SDK_INT >= 23) {
                try {
                    d = (e) Class.forName("androidx.sharetarget.ShortcutInfoCompatSaverImpl", false, f.class.getClassLoader()).getMethod("getInstance", Context.class).invoke(null, context);
                } catch (Exception unused) {
                }
            }
            if (d == null) {
                d = new e.a();
            }
        }
        return d;
    }
}
