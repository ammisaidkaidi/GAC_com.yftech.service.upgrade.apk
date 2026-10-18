package androidx.core.j;

import android.content.ContentUris;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Handler;
import android.provider.BaseColumns;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.am;
import androidx.annotation.ap;
import androidx.annotation.ax;
import androidx.annotation.u;
import androidx.annotation.z;
import androidx.c.g;
import androidx.c.i;
import androidx.core.b.b.g;
import androidx.core.graphics.k;
import androidx.core.graphics.r;
import androidx.core.j.c;
import com.google.android.material.transformation.FabTransformationScrimBehavior;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;

/* loaded from: /home/user/work/dex/classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public static final String f457a = "font_results";

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    static final int b = -1;

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    static final int c = -2;
    static final g<String, Typeface> d = new g<>(16);
    private static final int g = 10000;
    private static final androidx.core.j.c h = new androidx.core.j.c("fonts", 10, g);
    static final Object e = new Object();

    @u(a = "sLock")
    static final i<String, ArrayList<c.a<e>>> f = new i<>();
    private static final Comparator<byte[]> i = new Comparator<byte[]>() { // from class: androidx.core.j.b.5
        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(byte[] bArr, byte[] bArr2) {
            if (bArr.length != bArr2.length) {
                return bArr.length - bArr2.length;
            }
            for (int i2 = 0; i2 < bArr.length; i2++) {
                if (bArr[i2] != bArr2[i2]) {
                    return bArr[i2] - bArr2[i2];
                }
            }
            return 0;
        }
    };

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class a implements BaseColumns {

        /* renamed from: a, reason: collision with root package name */
        public static final String f471a = "file_id";
        public static final String b = "font_ttc_index";
        public static final String c = "font_variation_settings";
        public static final String d = "font_weight";
        public static final String e = "font_italic";
        public static final String f = "result_code";
        public static final int g = 0;
        public static final int h = 1;
        public static final int i = 2;
        public static final int j = 3;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class d {

        /* renamed from: a, reason: collision with root package name */
        @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
        public static final int f474a = 0;
        public static final int b = -1;
        public static final int c = -2;
        public static final int d = -3;
        public static final int e = -4;
        public static final int f = 1;
        public static final int g = 2;
        public static final int h = 3;

        @Retention(RetentionPolicy.SOURCE)
        @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
        /* loaded from: /home/user/work/dex/classes.dex */
        public @interface a {
        }

        public void a(int i) {
        }

        public void a(Typeface typeface) {
        }
    }

    private b() {
    }

    @ah
    static e a(Context context, androidx.core.j.a aVar, int i2) {
        try {
            C0033b a2 = a(context, (CancellationSignal) null, aVar);
            if (a2.a() == 0) {
                Typeface a3 = k.a(context, null, a2.b(), i2);
                return new e(a3, a3 != null ? 0 : -3);
            }
            return new e(null, a2.a() == 1 ? -2 : -3);
        } catch (PackageManager.NameNotFoundException unused) {
            return new e(null, -1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class e {

        /* renamed from: a, reason: collision with root package name */
        final Typeface f475a;
        final int b;

        e(@ai Typeface typeface, int i) {
            this.f475a = typeface;
            this.b = i;
        }
    }

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public static void a() {
        d.a();
    }

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public static Typeface a(final Context context, final androidx.core.j.a aVar, @ai final g.a aVar2, @ai final Handler handler, boolean z, int i2, final int i3) {
        final String str = aVar.f() + "-" + i3;
        Typeface a2 = d.a((androidx.c.g<String, Typeface>) str);
        if (a2 != null) {
            if (aVar2 != null) {
                aVar2.a(a2);
            }
            return a2;
        }
        if (z && i2 == -1) {
            e a3 = a(context, aVar, i3);
            if (aVar2 != null) {
                if (a3.b == 0) {
                    aVar2.a(a3.f475a, handler);
                } else {
                    aVar2.a(a3.b, handler);
                }
            }
            return a3.f475a;
        }
        Callable<e> callable = new Callable<e>() { // from class: androidx.core.j.b.1
            @Override // java.util.concurrent.Callable
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public e call() {
                e a4 = b.a(context, aVar, i3);
                if (a4.f475a != null) {
                    b.d.a(str, a4.f475a);
                }
                return a4;
            }
        };
        if (z) {
            try {
                return ((e) h.a(callable, i2)).f475a;
            } catch (InterruptedException unused) {
                return null;
            }
        }
        c.a<e> aVar3 = aVar2 == null ? null : new c.a<e>() { // from class: androidx.core.j.b.2
            @Override // androidx.core.j.c.a
            public void a(e eVar) {
                if (eVar == null) {
                    g.a.this.a(1, handler);
                } else if (eVar.b == 0) {
                    g.a.this.a(eVar.f475a, handler);
                } else {
                    g.a.this.a(eVar.b, handler);
                }
            }
        };
        synchronized (e) {
            ArrayList<c.a<e>> arrayList = f.get(str);
            if (arrayList != null) {
                if (aVar3 != null) {
                    arrayList.add(aVar3);
                }
                return null;
            }
            if (aVar3 != null) {
                ArrayList<c.a<e>> arrayList2 = new ArrayList<>();
                arrayList2.add(aVar3);
                f.put(str, arrayList2);
            }
            h.a(callable, new c.a<e>() { // from class: androidx.core.j.b.3
                @Override // androidx.core.j.c.a
                public void a(e eVar) {
                    synchronized (b.e) {
                        ArrayList<c.a<e>> arrayList3 = b.f.get(str);
                        if (arrayList3 == null) {
                            return;
                        }
                        b.f.remove(str);
                        for (int i4 = 0; i4 < arrayList3.size(); i4++) {
                            arrayList3.get(i4).a(eVar);
                        }
                    }
                }
            });
            return null;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class c {

        /* renamed from: a, reason: collision with root package name */
        private final Uri f473a;
        private final int b;
        private final int c;
        private final boolean d;
        private final int e;

        @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
        public c(@ah Uri uri, @z(a = 0) int i, @z(a = 1, b = 1000) int i2, boolean z, int i3) {
            this.f473a = (Uri) androidx.core.m.i.a(uri);
            this.b = i;
            this.c = i2;
            this.d = z;
            this.e = i3;
        }

        @ah
        public Uri a() {
            return this.f473a;
        }

        @z(a = FabTransformationScrimBehavior.c)
        public int b() {
            return this.b;
        }

        @z(a = 1, b = 1000)
        public int c() {
            return this.c;
        }

        public boolean d() {
            return this.d;
        }

        public int e() {
            return this.e;
        }
    }

    /* renamed from: androidx.core.j.b$b, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class C0033b {

        /* renamed from: a, reason: collision with root package name */
        public static final int f472a = 0;
        public static final int b = 1;
        public static final int c = 2;
        private final int d;
        private final c[] e;

        @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
        public C0033b(int i, @ai c[] cVarArr) {
            this.d = i;
            this.e = cVarArr;
        }

        public int a() {
            return this.d;
        }

        public c[] b() {
            return this.e;
        }
    }

    public static void a(@ah Context context, @ah androidx.core.j.a aVar, @ah d dVar, @ah Handler handler) {
        b(context.getApplicationContext(), aVar, dVar, handler);
    }

    private static void b(@ah final Context context, @ah final androidx.core.j.a aVar, @ah final d dVar, @ah Handler handler) {
        final Handler handler2 = new Handler();
        handler.post(new Runnable() { // from class: androidx.core.j.b.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    C0033b a2 = b.a(context, (CancellationSignal) null, aVar);
                    if (a2.a() != 0) {
                        switch (a2.a()) {
                            case 1:
                                handler2.post(new Runnable() { // from class: androidx.core.j.b.4.2
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        dVar.a(-2);
                                    }
                                });
                                return;
                            case 2:
                                handler2.post(new Runnable() { // from class: androidx.core.j.b.4.3
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        dVar.a(-3);
                                    }
                                });
                                return;
                            default:
                                handler2.post(new Runnable() { // from class: androidx.core.j.b.4.4
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        dVar.a(-3);
                                    }
                                });
                                return;
                        }
                    }
                    c[] b2 = a2.b();
                    if (b2 == null || b2.length == 0) {
                        handler2.post(new Runnable() { // from class: androidx.core.j.b.4.5
                            @Override // java.lang.Runnable
                            public void run() {
                                dVar.a(1);
                            }
                        });
                        return;
                    }
                    for (c cVar : b2) {
                        if (cVar.e() != 0) {
                            final int e2 = cVar.e();
                            if (e2 < 0) {
                                handler2.post(new Runnable() { // from class: androidx.core.j.b.4.6
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        dVar.a(-3);
                                    }
                                });
                                return;
                            } else {
                                handler2.post(new Runnable() { // from class: androidx.core.j.b.4.7
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        dVar.a(e2);
                                    }
                                });
                                return;
                            }
                        }
                    }
                    final Typeface a3 = b.a(context, (CancellationSignal) null, b2);
                    if (a3 == null) {
                        handler2.post(new Runnable() { // from class: androidx.core.j.b.4.8
                            @Override // java.lang.Runnable
                            public void run() {
                                dVar.a(-3);
                            }
                        });
                    } else {
                        handler2.post(new Runnable() { // from class: androidx.core.j.b.4.9
                            @Override // java.lang.Runnable
                            public void run() {
                                dVar.a(a3);
                            }
                        });
                    }
                } catch (PackageManager.NameNotFoundException unused) {
                    handler2.post(new Runnable() { // from class: androidx.core.j.b.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            dVar.a(-1);
                        }
                    });
                }
            }
        });
    }

    @ai
    public static Typeface a(@ah Context context, @ai CancellationSignal cancellationSignal, @ah c[] cVarArr) {
        return k.a(context, cancellationSignal, cVarArr, 0);
    }

    @am(a = 19)
    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public static Map<Uri, ByteBuffer> a(Context context, c[] cVarArr, CancellationSignal cancellationSignal) {
        HashMap hashMap = new HashMap();
        for (c cVar : cVarArr) {
            if (cVar.e() == 0) {
                Uri a2 = cVar.a();
                if (!hashMap.containsKey(a2)) {
                    hashMap.put(a2, r.a(context, cancellationSignal, a2));
                }
            }
        }
        return Collections.unmodifiableMap(hashMap);
    }

    @ah
    public static C0033b a(@ah Context context, @ai CancellationSignal cancellationSignal, @ah androidx.core.j.a aVar) {
        ProviderInfo a2 = a(context.getPackageManager(), aVar, context.getResources());
        if (a2 == null) {
            return new C0033b(1, null);
        }
        return new C0033b(0, a(context, aVar, a2.authority, cancellationSignal));
    }

    @ai
    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    @ax
    public static ProviderInfo a(@ah PackageManager packageManager, @ah androidx.core.j.a aVar, @ai Resources resources) {
        String a2 = aVar.a();
        ProviderInfo resolveContentProvider = packageManager.resolveContentProvider(a2, 0);
        if (resolveContentProvider == null) {
            throw new PackageManager.NameNotFoundException("No package found for authority: " + a2);
        }
        if (!resolveContentProvider.packageName.equals(aVar.b())) {
            throw new PackageManager.NameNotFoundException("Found content provider " + a2 + ", but package was not " + aVar.b());
        }
        List<byte[]> a3 = a(packageManager.getPackageInfo(resolveContentProvider.packageName, 64).signatures);
        Collections.sort(a3, i);
        List<List<byte[]>> a4 = a(aVar, resources);
        for (int i2 = 0; i2 < a4.size(); i2++) {
            ArrayList arrayList = new ArrayList(a4.get(i2));
            Collections.sort(arrayList, i);
            if (a(a3, arrayList)) {
                return resolveContentProvider;
            }
        }
        return null;
    }

    private static List<List<byte[]>> a(androidx.core.j.a aVar, Resources resources) {
        if (aVar.d() != null) {
            return aVar.d();
        }
        return androidx.core.b.b.d.a(resources, aVar.e());
    }

    private static boolean a(List<byte[]> list, List<byte[]> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (!Arrays.equals(list.get(i2), list2.get(i2))) {
                return false;
            }
        }
        return true;
    }

    private static List<byte[]> a(Signature[] signatureArr) {
        ArrayList arrayList = new ArrayList();
        for (Signature signature : signatureArr) {
            arrayList.add(signature.toByteArray());
        }
        return arrayList;
    }

    @ah
    @ax
    static c[] a(Context context, androidx.core.j.a aVar, String str, CancellationSignal cancellationSignal) {
        Cursor query;
        Uri withAppendedId;
        ArrayList arrayList = new ArrayList();
        Uri build = new Uri.Builder().scheme("content").authority(str).build();
        Uri build2 = new Uri.Builder().scheme("content").authority(str).appendPath("file").build();
        Cursor cursor = null;
        try {
            if (Build.VERSION.SDK_INT > 16) {
                query = context.getContentResolver().query(build, new String[]{"_id", a.f471a, a.b, a.c, a.d, a.e, a.f}, "query = ?", new String[]{aVar.c()}, null, cancellationSignal);
            } else {
                query = context.getContentResolver().query(build, new String[]{"_id", a.f471a, a.b, a.c, a.d, a.e, a.f}, "query = ?", new String[]{aVar.c()}, null);
            }
            cursor = query;
            if (cursor != null && cursor.getCount() > 0) {
                int columnIndex = cursor.getColumnIndex(a.f);
                ArrayList arrayList2 = new ArrayList();
                int columnIndex2 = cursor.getColumnIndex("_id");
                int columnIndex3 = cursor.getColumnIndex(a.f471a);
                int columnIndex4 = cursor.getColumnIndex(a.b);
                int columnIndex5 = cursor.getColumnIndex(a.d);
                int columnIndex6 = cursor.getColumnIndex(a.e);
                while (cursor.moveToNext()) {
                    int i2 = columnIndex != -1 ? cursor.getInt(columnIndex) : 0;
                    int i3 = columnIndex4 != -1 ? cursor.getInt(columnIndex4) : 0;
                    if (columnIndex3 == -1) {
                        withAppendedId = ContentUris.withAppendedId(build, cursor.getLong(columnIndex2));
                    } else {
                        withAppendedId = ContentUris.withAppendedId(build2, cursor.getLong(columnIndex3));
                    }
                    arrayList2.add(new c(withAppendedId, i3, columnIndex5 != -1 ? cursor.getInt(columnIndex5) : 400, columnIndex6 != -1 && cursor.getInt(columnIndex6) == 1, i2));
                }
                arrayList = arrayList2;
            }
            return (c[]) arrayList.toArray(new c[0]);
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }
}
