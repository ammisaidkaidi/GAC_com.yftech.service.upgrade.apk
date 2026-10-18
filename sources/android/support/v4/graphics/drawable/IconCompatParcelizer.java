package android.support.v4.graphics.drawable;

import androidx.annotation.ap;
import androidx.core.graphics.drawable.IconCompat;
import androidx.versionedparcelable.e;

@ap(a = {ap.a.LIBRARY})
/* loaded from: /home/user/work/dex/classes.dex */
public final class IconCompatParcelizer extends androidx.core.graphics.drawable.IconCompatParcelizer {
    public static IconCompat read(e eVar) {
        return androidx.core.graphics.drawable.IconCompatParcelizer.read(eVar);
    }

    public static void write(IconCompat iconCompat, e eVar) {
        androidx.core.graphics.drawable.IconCompatParcelizer.write(iconCompat, eVar);
    }
}
