package androidx.core.app;

import android.app.PendingIntent;
import android.app.RemoteAction;
import android.os.Build;
import androidx.annotation.ah;
import androidx.annotation.am;
import androidx.annotation.ap;
import androidx.core.graphics.drawable.IconCompat;

/* loaded from: /home/user/work/dex/classes.dex */
public final class RemoteActionCompat implements androidx.versionedparcelable.h {

    /* renamed from: a, reason: collision with root package name */
    @ap(a = {ap.a.LIBRARY_GROUP})
    public IconCompat f331a;

    @ap(a = {ap.a.LIBRARY_GROUP})
    public CharSequence b;

    @ap(a = {ap.a.LIBRARY_GROUP})
    public CharSequence c;

    @ap(a = {ap.a.LIBRARY_GROUP})
    public PendingIntent d;

    @ap(a = {ap.a.LIBRARY_GROUP})
    public boolean e;

    @ap(a = {ap.a.LIBRARY_GROUP})
    public boolean f;

    public RemoteActionCompat(@ah IconCompat iconCompat, @ah CharSequence charSequence, @ah CharSequence charSequence2, @ah PendingIntent pendingIntent) {
        this.f331a = (IconCompat) androidx.core.m.i.a(iconCompat);
        this.b = (CharSequence) androidx.core.m.i.a(charSequence);
        this.c = (CharSequence) androidx.core.m.i.a(charSequence2);
        this.d = (PendingIntent) androidx.core.m.i.a(pendingIntent);
        this.e = true;
        this.f = true;
    }

    @ap(a = {ap.a.LIBRARY_GROUP})
    public RemoteActionCompat() {
    }

    public RemoteActionCompat(@ah RemoteActionCompat remoteActionCompat) {
        androidx.core.m.i.a(remoteActionCompat);
        this.f331a = remoteActionCompat.f331a;
        this.b = remoteActionCompat.b;
        this.c = remoteActionCompat.c;
        this.d = remoteActionCompat.d;
        this.e = remoteActionCompat.e;
        this.f = remoteActionCompat.f;
    }

    @am(a = 26)
    @ah
    public static RemoteActionCompat a(@ah RemoteAction remoteAction) {
        androidx.core.m.i.a(remoteAction);
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat(IconCompat.a(remoteAction.getIcon()), remoteAction.getTitle(), remoteAction.getContentDescription(), remoteAction.getActionIntent());
        remoteActionCompat.a(remoteAction.isEnabled());
        if (Build.VERSION.SDK_INT >= 28) {
            remoteActionCompat.b(remoteAction.shouldShowIcon());
        }
        return remoteActionCompat;
    }

    public void a(boolean z) {
        this.e = z;
    }

    public boolean a() {
        return this.e;
    }

    public void b(boolean z) {
        this.f = z;
    }

    public boolean b() {
        return this.f;
    }

    @ah
    public IconCompat c() {
        return this.f331a;
    }

    @ah
    public CharSequence d() {
        return this.b;
    }

    @ah
    public CharSequence e() {
        return this.c;
    }

    @ah
    public PendingIntent f() {
        return this.d;
    }

    @am(a = 26)
    @ah
    public RemoteAction g() {
        RemoteAction remoteAction = new RemoteAction(this.f331a.f(), this.b, this.c, this.d);
        remoteAction.setEnabled(a());
        if (Build.VERSION.SDK_INT >= 28) {
            remoteAction.setShouldShowIcon(b());
        }
        return remoteAction;
    }
}
