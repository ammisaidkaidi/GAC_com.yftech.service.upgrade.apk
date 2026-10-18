package androidx.core.app;

import android.app.PendingIntent;
import androidx.annotation.ap;
import androidx.core.graphics.drawable.IconCompat;

@ap(a = {ap.a.LIBRARY})
/* loaded from: /home/user/work/dex/classes.dex */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(androidx.versionedparcelable.e eVar) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        remoteActionCompat.f331a = (IconCompat) eVar.b((androidx.versionedparcelable.e) remoteActionCompat.f331a, 1);
        remoteActionCompat.b = eVar.b(remoteActionCompat.b, 2);
        remoteActionCompat.c = eVar.b(remoteActionCompat.c, 3);
        remoteActionCompat.d = (PendingIntent) eVar.b((androidx.versionedparcelable.e) remoteActionCompat.d, 4);
        remoteActionCompat.e = eVar.b(remoteActionCompat.e, 5);
        remoteActionCompat.f = eVar.b(remoteActionCompat.f, 6);
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, androidx.versionedparcelable.e eVar) {
        eVar.a(false, false);
        eVar.a(remoteActionCompat.f331a, 1);
        eVar.a(remoteActionCompat.b, 2);
        eVar.a(remoteActionCompat.c, 3);
        eVar.a(remoteActionCompat.d, 4);
        eVar.a(remoteActionCompat.e, 5);
        eVar.a(remoteActionCompat.f, 6);
    }
}
