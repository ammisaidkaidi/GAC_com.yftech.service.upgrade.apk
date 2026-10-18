package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import androidx.annotation.am;
import androidx.core.app.p;
import androidx.core.graphics.drawable.IconCompat;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
@am(a = 16)
/* loaded from: /home/user/work/dex/classes.dex */
public class s {

    /* renamed from: a, reason: collision with root package name */
    public static final String f377a = "NotificationCompat";
    static final String b = "android.support.dataRemoteInputs";
    static final String c = "android.support.allowGeneratedReplies";
    private static final String d = "icon";
    private static final String e = "title";
    private static final String f = "actionIntent";
    private static final String g = "extras";
    private static final String h = "remoteInputs";
    private static final String i = "dataOnlyRemoteInputs";
    private static final String j = "resultKey";
    private static final String k = "label";
    private static final String l = "choices";
    private static final String m = "allowFreeFormInput";
    private static final String n = "allowedDataTypes";
    private static final String o = "semanticAction";
    private static final String p = "showsUserInterface";
    private static Field r;
    private static boolean s;
    private static Field u;
    private static Field v;
    private static Field w;
    private static Field x;
    private static boolean y;
    private static final Object q = new Object();
    private static final Object t = new Object();

    public static SparseArray<Bundle> a(List<Bundle> list) {
        int size = list.size();
        SparseArray<Bundle> sparseArray = null;
        for (int i2 = 0; i2 < size; i2++) {
            Bundle bundle = list.get(i2);
            if (bundle != null) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                sparseArray.put(i2, bundle);
            }
        }
        return sparseArray;
    }

    public static Bundle a(Notification notification) {
        synchronized (q) {
            if (s) {
                return null;
            }
            try {
                if (r == null) {
                    Field declaredField = Notification.class.getDeclaredField(g);
                    if (!Bundle.class.isAssignableFrom(declaredField.getType())) {
                        Log.e(f377a, "Notification.extras field is not of type Bundle");
                        s = true;
                        return null;
                    }
                    declaredField.setAccessible(true);
                    r = declaredField;
                }
                Bundle bundle = (Bundle) r.get(notification);
                if (bundle == null) {
                    bundle = new Bundle();
                    r.set(notification, bundle);
                }
                return bundle;
            } catch (IllegalAccessException e2) {
                Log.e(f377a, "Unable to access notification extras", e2);
                s = true;
                return null;
            } catch (NoSuchFieldException e3) {
                Log.e(f377a, "Unable to access notification extras", e3);
                s = true;
                return null;
            }
        }
    }

    public static p.a a(int i2, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle) {
        w[] wVarArr;
        w[] wVarArr2;
        boolean z;
        if (bundle != null) {
            wVarArr = a(a(bundle, r.f));
            wVarArr2 = a(a(bundle, b));
            z = bundle.getBoolean(c);
        } else {
            wVarArr = null;
            wVarArr2 = null;
            z = false;
        }
        return new p.a(i2, charSequence, pendingIntent, bundle, wVarArr, wVarArr2, z, 0, true, false);
    }

    public static Bundle a(Notification.Builder builder, p.a aVar) {
        IconCompat b2 = aVar.b();
        builder.addAction(b2 != null ? b2.c() : 0, aVar.c(), aVar.d());
        Bundle bundle = new Bundle(aVar.e());
        if (aVar.g() != null) {
            bundle.putParcelableArray(r.f, a(aVar.g()));
        }
        if (aVar.j() != null) {
            bundle.putParcelableArray(b, a(aVar.j()));
        }
        bundle.putBoolean(c, aVar.f());
        return bundle;
    }

    public static int b(Notification notification) {
        int length;
        synchronized (t) {
            Object[] c2 = c(notification);
            length = c2 != null ? c2.length : 0;
        }
        return length;
    }

    public static p.a a(Notification notification, int i2) {
        SparseArray sparseParcelableArray;
        synchronized (t) {
            try {
                try {
                    Object[] c2 = c(notification);
                    if (c2 != null) {
                        Object obj = c2[i2];
                        Bundle a2 = a(notification);
                        return a(v.getInt(obj), (CharSequence) w.get(obj), (PendingIntent) x.get(obj), (a2 == null || (sparseParcelableArray = a2.getSparseParcelableArray(r.e)) == null) ? null : (Bundle) sparseParcelableArray.get(i2));
                    }
                } catch (IllegalAccessException e2) {
                    Log.e(f377a, "Unable to access notification actions", e2);
                    y = true;
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static Object[] c(Notification notification) {
        synchronized (t) {
            if (!a()) {
                return null;
            }
            try {
                return (Object[]) u.get(notification);
            } catch (IllegalAccessException e2) {
                Log.e(f377a, "Unable to access notification actions", e2);
                y = true;
                return null;
            }
        }
    }

    private static boolean a() {
        if (y) {
            return false;
        }
        try {
            if (u == null) {
                Class<?> cls = Class.forName("android.app.Notification$Action");
                v = cls.getDeclaredField(d);
                w = cls.getDeclaredField(e);
                x = cls.getDeclaredField(f);
                u = Notification.class.getDeclaredField("actions");
                u.setAccessible(true);
            }
        } catch (ClassNotFoundException e2) {
            Log.e(f377a, "Unable to access notification actions", e2);
            y = true;
        } catch (NoSuchFieldException e3) {
            Log.e(f377a, "Unable to access notification actions", e3);
            y = true;
        }
        return true ^ y;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static p.a a(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle(g);
        return new p.a(bundle.getInt(d), bundle.getCharSequence(e), (PendingIntent) bundle.getParcelable(f), bundle.getBundle(g), a(a(bundle, h)), a(a(bundle, i)), bundle2 != null ? bundle2.getBoolean(c, false) : false, bundle.getInt(o), bundle.getBoolean(p), false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Bundle a(p.a aVar) {
        Bundle bundle;
        Bundle bundle2 = new Bundle();
        IconCompat b2 = aVar.b();
        bundle2.putInt(d, b2 != null ? b2.c() : 0);
        bundle2.putCharSequence(e, aVar.c());
        bundle2.putParcelable(f, aVar.d());
        if (aVar.e() != null) {
            bundle = new Bundle(aVar.e());
        } else {
            bundle = new Bundle();
        }
        bundle.putBoolean(c, aVar.f());
        bundle2.putBundle(g, bundle);
        bundle2.putParcelableArray(h, a(aVar.g()));
        bundle2.putBoolean(p, aVar.k());
        bundle2.putInt(o, aVar.h());
        return bundle2;
    }

    private static w b(Bundle bundle) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList(n);
        HashSet hashSet = new HashSet();
        if (stringArrayList != null) {
            Iterator<String> it = stringArrayList.iterator();
            while (it.hasNext()) {
                hashSet.add(it.next());
            }
        }
        return new w(bundle.getString(j), bundle.getCharSequence(k), bundle.getCharSequenceArray(l), bundle.getBoolean(m), 0, bundle.getBundle(g), hashSet);
    }

    private static Bundle a(w wVar) {
        Bundle bundle = new Bundle();
        bundle.putString(j, wVar.a());
        bundle.putCharSequence(k, wVar.b());
        bundle.putCharSequenceArray(l, wVar.c());
        bundle.putBoolean(m, wVar.f());
        bundle.putBundle(g, wVar.h());
        Set<String> d2 = wVar.d();
        if (d2 != null && !d2.isEmpty()) {
            ArrayList<String> arrayList = new ArrayList<>(d2.size());
            Iterator<String> it = d2.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next());
            }
            bundle.putStringArrayList(n, arrayList);
        }
        return bundle;
    }

    private static w[] a(Bundle[] bundleArr) {
        if (bundleArr == null) {
            return null;
        }
        w[] wVarArr = new w[bundleArr.length];
        for (int i2 = 0; i2 < bundleArr.length; i2++) {
            wVarArr[i2] = b(bundleArr[i2]);
        }
        return wVarArr;
    }

    private static Bundle[] a(w[] wVarArr) {
        if (wVarArr == null) {
            return null;
        }
        Bundle[] bundleArr = new Bundle[wVarArr.length];
        for (int i2 = 0; i2 < wVarArr.length; i2++) {
            bundleArr[i2] = a(wVarArr[i2]);
        }
        return bundleArr;
    }

    private static Bundle[] a(Bundle bundle, String str) {
        Parcelable[] parcelableArray = bundle.getParcelableArray(str);
        if ((parcelableArray instanceof Bundle[]) || parcelableArray == null) {
            return (Bundle[]) parcelableArray;
        }
        Bundle[] bundleArr = (Bundle[]) Arrays.copyOf(parcelableArray, parcelableArray.length, Bundle[].class);
        bundle.putParcelableArray(str, bundleArr);
        return bundleArr;
    }

    private s() {
    }
}
