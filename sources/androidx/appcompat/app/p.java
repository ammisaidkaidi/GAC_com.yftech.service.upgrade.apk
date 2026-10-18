package androidx.appcompat.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.util.Log;
import androidx.annotation.ah;
import androidx.annotation.ao;
import androidx.annotation.ax;
import java.util.Calendar;

/* loaded from: /home/user/work/dex/classes.dex */
class p {

    /* renamed from: a, reason: collision with root package name */
    private static final String f90a = "TwilightManager";
    private static final int b = 6;
    private static final int c = 22;
    private static p d;
    private final Context e;
    private final LocationManager f;
    private final a g = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static p a(@ah Context context) {
        if (d == null) {
            Context applicationContext = context.getApplicationContext();
            d = new p(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
        }
        return d;
    }

    @ax
    static void a(p pVar) {
        d = pVar;
    }

    @ax
    p(@ah Context context, @ah LocationManager locationManager) {
        this.e = context;
        this.f = locationManager;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a() {
        a aVar = this.g;
        if (c()) {
            return aVar.f91a;
        }
        Location b2 = b();
        if (b2 != null) {
            a(b2);
            return aVar.f91a;
        }
        Log.i(f90a, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
        int i = Calendar.getInstance().get(11);
        return i < 6 || i >= 22;
    }

    @SuppressLint({"MissingPermission"})
    private Location b() {
        Location a2 = androidx.core.b.g.a(this.e, "android.permission.ACCESS_COARSE_LOCATION") == 0 ? a("network") : null;
        Location a3 = androidx.core.b.g.a(this.e, "android.permission.ACCESS_FINE_LOCATION") == 0 ? a("gps") : null;
        return (a3 == null || a2 == null) ? a3 != null ? a3 : a2 : a3.getTime() > a2.getTime() ? a3 : a2;
    }

    @ao(c = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    private Location a(String str) {
        try {
            if (this.f.isProviderEnabled(str)) {
                return this.f.getLastKnownLocation(str);
            }
            return null;
        } catch (Exception e) {
            Log.d(f90a, "Failed to get last known location", e);
            return null;
        }
    }

    private boolean c() {
        return this.g.f > System.currentTimeMillis();
    }

    private void a(@ah Location location) {
        long j;
        a aVar = this.g;
        long currentTimeMillis = System.currentTimeMillis();
        o a2 = o.a();
        a2.a(currentTimeMillis - 86400000, location.getLatitude(), location.getLongitude());
        long j2 = a2.c;
        a2.a(currentTimeMillis, location.getLatitude(), location.getLongitude());
        boolean z = a2.e == 1;
        long j3 = a2.d;
        long j4 = a2.c;
        a2.a(currentTimeMillis + 86400000, location.getLatitude(), location.getLongitude());
        long j5 = a2.d;
        if (j3 == -1 || j4 == -1) {
            j = 43200000 + currentTimeMillis;
        } else {
            j = (currentTimeMillis > j4 ? 0 + j5 : currentTimeMillis > j3 ? 0 + j4 : 0 + j3) + 60000;
        }
        aVar.f91a = z;
        aVar.b = j2;
        aVar.c = j3;
        aVar.d = j4;
        aVar.e = j5;
        aVar.f = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        boolean f91a;
        long b;
        long c;
        long d;
        long e;
        long f;

        a() {
        }
    }
}
