package androidx.core.b;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.OperationCanceledException;
import androidx.core.i.k;

/* loaded from: /home/user/work/dex/classes.dex */
public final class b {
    private b() {
    }

    public static Cursor a(ContentResolver contentResolver, Uri uri, String[] strArr, String str, String[] strArr2, String str2, androidx.core.i.b bVar) {
        Object d;
        if (Build.VERSION.SDK_INT >= 16) {
            if (bVar != null) {
                try {
                    d = bVar.d();
                } catch (Exception e) {
                    if (e instanceof OperationCanceledException) {
                        throw new k();
                    }
                    throw e;
                }
            } else {
                d = null;
            }
            return contentResolver.query(uri, strArr, str, strArr2, str2, (CancellationSignal) d);
        }
        if (bVar != null) {
            bVar.b();
        }
        return contentResolver.query(uri, strArr, str, strArr2, str2);
    }
}
