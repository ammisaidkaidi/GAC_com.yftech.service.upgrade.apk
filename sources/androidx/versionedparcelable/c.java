package androidx.versionedparcelable;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private static final String f1110a = "a";

    private c() {
    }

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public static Parcelable a(h hVar) {
        return new ParcelImpl(hVar);
    }

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public static <T extends h> T a(Parcelable parcelable) {
        if (!(parcelable instanceof ParcelImpl)) {
            throw new IllegalArgumentException("Invalid parcel");
        }
        return (T) ((ParcelImpl) parcelable).a();
    }

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public static void a(h hVar, OutputStream outputStream) {
        g gVar = new g(null, outputStream);
        gVar.a(hVar);
        gVar.b();
    }

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public static <T extends h> T a(InputStream inputStream) {
        return (T) new g(inputStream, null).u();
    }

    public static void a(@ah Bundle bundle, @ah String str, @ai h hVar) {
        if (hVar == null) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable(f1110a, a(hVar));
        bundle.putParcelable(str, bundle2);
    }

    @ai
    public static <T extends h> T a(@ah Bundle bundle, @ah String str) {
        try {
            Bundle bundle2 = (Bundle) bundle.getParcelable(str);
            if (bundle2 == null) {
                return null;
            }
            bundle2.setClassLoader(c.class.getClassLoader());
            return (T) a(bundle2.getParcelable(f1110a));
        } catch (RuntimeException unused) {
            return null;
        }
    }

    public static void a(@ah Bundle bundle, @ah String str, @ah List<? extends h> list) {
        Bundle bundle2 = new Bundle();
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        Iterator<? extends h> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(a(it.next()));
        }
        bundle2.putParcelableArrayList(f1110a, arrayList);
        bundle.putParcelable(str, bundle2);
    }

    @ai
    public static <T extends h> List<T> b(Bundle bundle, String str) {
        ArrayList arrayList = new ArrayList();
        try {
            Bundle bundle2 = (Bundle) bundle.getParcelable(str);
            bundle2.setClassLoader(c.class.getClassLoader());
            Iterator it = bundle2.getParcelableArrayList(f1110a).iterator();
            while (it.hasNext()) {
                arrayList.add(a((Parcelable) it.next()));
            }
            return arrayList;
        } catch (RuntimeException unused) {
            return null;
        }
    }
}
