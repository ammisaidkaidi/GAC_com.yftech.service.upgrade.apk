package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import androidx.annotation.ap;

@ap(a = {ap.a.LIBRARY})
/* loaded from: /home/user/work/dex/classes.dex */
public class IconCompatParcelizer {
    public static IconCompat read(androidx.versionedparcelable.e eVar) {
        IconCompat iconCompat = new IconCompat();
        iconCompat.h = eVar.b(iconCompat.h, 1);
        iconCompat.j = eVar.b(iconCompat.j, 2);
        iconCompat.k = eVar.b((androidx.versionedparcelable.e) iconCompat.k, 3);
        iconCompat.l = eVar.b(iconCompat.l, 4);
        iconCompat.m = eVar.b(iconCompat.m, 5);
        iconCompat.n = (ColorStateList) eVar.b((androidx.versionedparcelable.e) iconCompat.n, 6);
        iconCompat.q = eVar.b(iconCompat.q, 7);
        iconCompat.h();
        return iconCompat;
    }

    public static void write(IconCompat iconCompat, androidx.versionedparcelable.e eVar) {
        eVar.a(true, true);
        iconCompat.a(eVar.a());
        if (-1 != iconCompat.h) {
            eVar.a(iconCompat.h, 1);
        }
        if (iconCompat.j != null) {
            eVar.a(iconCompat.j, 2);
        }
        if (iconCompat.k != null) {
            eVar.a(iconCompat.k, 3);
        }
        if (iconCompat.l != 0) {
            eVar.a(iconCompat.l, 4);
        }
        if (iconCompat.m != 0) {
            eVar.a(iconCompat.m, 5);
        }
        if (iconCompat.n != null) {
            eVar.a(iconCompat.n, 6);
        }
        if (iconCompat.q != null) {
            eVar.a(iconCompat.q, 7);
        }
    }
}
