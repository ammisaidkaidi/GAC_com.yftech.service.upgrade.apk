package androidx.core.app;

import android.app.Activity;
import android.app.SharedElementCallback;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.PackageManager;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.view.DragEvent;
import android.view.View;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.am;
import androidx.annotation.ap;
import androidx.core.app.z;
import java.util.List;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes.dex */
public class a extends androidx.core.b.c {

    /* renamed from: a, reason: collision with root package name */
    private static b f332a;

    /* renamed from: androidx.core.app.a$a, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface InterfaceC0023a {
        void onRequestPermissionsResult(int i, @ah String[] strArr, @ah int[] iArr);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface b {
        boolean a(@ah Activity activity, @androidx.annotation.z(a = 0) int i, int i2, @ai Intent intent);

        boolean a(@ah Activity activity, @ah String[] strArr, @androidx.annotation.z(a = 0) int i);
    }

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface c {
        void d(int i);
    }

    protected a() {
    }

    public static void a(@ai b bVar) {
        f332a = bVar;
    }

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public static b a() {
        return f332a;
    }

    @Deprecated
    public static boolean a(Activity activity) {
        activity.invalidateOptionsMenu();
        return true;
    }

    public static void a(@ah Activity activity, @ah Intent intent, int i, @ai Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.startActivityForResult(intent, i, bundle);
        } else {
            activity.startActivityForResult(intent, i);
        }
    }

    public static void a(@ah Activity activity, @ah IntentSender intentSender, int i, @ai Intent intent, int i2, int i3, int i4, @ai Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
        } else {
            activity.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4);
        }
    }

    public static void b(@ah Activity activity) {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.finishAffinity();
        } else {
            activity.finish();
        }
    }

    public static void c(@ah Activity activity) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.finishAfterTransition();
        } else {
            activity.finish();
        }
    }

    @ai
    public static Uri d(@ah Activity activity) {
        if (Build.VERSION.SDK_INT >= 22) {
            return activity.getReferrer();
        }
        Intent intent = activity.getIntent();
        Uri uri = (Uri) intent.getParcelableExtra("android.intent.extra.REFERRER");
        if (uri != null) {
            return uri;
        }
        String stringExtra = intent.getStringExtra("android.intent.extra.REFERRER_NAME");
        if (stringExtra != null) {
            return Uri.parse(stringExtra);
        }
        return null;
    }

    @ah
    public static <T extends View> T a(@ah Activity activity, @androidx.annotation.w int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            return (T) activity.requireViewById(i);
        }
        T t = (T) activity.findViewById(i);
        if (t != null) {
            return t;
        }
        throw new IllegalArgumentException("ID does not reference a View inside this Activity");
    }

    public static void a(@ah Activity activity, @ai z zVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.setEnterSharedElementCallback(zVar != null ? new d(zVar) : null);
        }
    }

    public static void b(@ah Activity activity, @ai z zVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.setExitSharedElementCallback(zVar != null ? new d(zVar) : null);
        }
    }

    public static void e(@ah Activity activity) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.postponeEnterTransition();
        }
    }

    public static void f(@ah Activity activity) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.startPostponedEnterTransition();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(@ah final Activity activity, @ah final String[] strArr, @androidx.annotation.z(a = 0) final int i) {
        if (f332a == null || !f332a.a(activity, strArr, i)) {
            if (Build.VERSION.SDK_INT >= 23) {
                if (activity instanceof c) {
                    ((c) activity).d(i);
                }
                activity.requestPermissions(strArr, i);
            } else if (activity instanceof InterfaceC0023a) {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: androidx.core.app.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        int[] iArr = new int[strArr.length];
                        PackageManager packageManager = activity.getPackageManager();
                        String packageName = activity.getPackageName();
                        int length = strArr.length;
                        for (int i2 = 0; i2 < length; i2++) {
                            iArr[i2] = packageManager.checkPermission(strArr[i2], packageName);
                        }
                        ((InterfaceC0023a) activity).onRequestPermissionsResult(i, strArr, iArr);
                    }
                });
            }
        }
    }

    public static boolean a(@ah Activity activity, @ah String str) {
        if (Build.VERSION.SDK_INT >= 23) {
            return activity.shouldShowRequestPermissionRationale(str);
        }
        return false;
    }

    @ai
    public static androidx.core.n.e a(Activity activity, DragEvent dragEvent) {
        return androidx.core.n.e.a(activity, dragEvent);
    }

    public static void g(@ah Activity activity) {
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
        } else {
            if (androidx.core.app.d.a(activity)) {
                return;
            }
            activity.recreate();
        }
    }

    @am(a = 21)
    /* loaded from: /home/user/work/dex/classes.dex */
    private static class d extends SharedElementCallback {

        /* renamed from: a, reason: collision with root package name */
        private final z f334a;

        d(z zVar) {
            this.f334a = zVar;
        }

        @Override // android.app.SharedElementCallback
        public void onSharedElementStart(List<String> list, List<View> list2, List<View> list3) {
            this.f334a.a(list, list2, list3);
        }

        @Override // android.app.SharedElementCallback
        public void onSharedElementEnd(List<String> list, List<View> list2, List<View> list3) {
            this.f334a.b(list, list2, list3);
        }

        @Override // android.app.SharedElementCallback
        public void onRejectSharedElements(List<View> list) {
            this.f334a.a(list);
        }

        @Override // android.app.SharedElementCallback
        public void onMapSharedElements(List<String> list, Map<String, View> map) {
            this.f334a.a(list, map);
        }

        @Override // android.app.SharedElementCallback
        public Parcelable onCaptureSharedElementSnapshot(View view, Matrix matrix, RectF rectF) {
            return this.f334a.a(view, matrix, rectF);
        }

        @Override // android.app.SharedElementCallback
        public View onCreateSnapshotView(Context context, Parcelable parcelable) {
            return this.f334a.a(context, parcelable);
        }

        @Override // android.app.SharedElementCallback
        @am(a = 23)
        public void onSharedElementsArrived(List<String> list, List<View> list2, final SharedElementCallback.OnSharedElementsReadyListener onSharedElementsReadyListener) {
            this.f334a.a(list, list2, new z.a() { // from class: androidx.core.app.a.d.1
                @Override // androidx.core.app.z.a
                public void a() {
                    onSharedElementsReadyListener.onSharedElementsReady();
                }
            });
        }
    }
}
