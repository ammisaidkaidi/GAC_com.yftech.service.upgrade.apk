package androidx.core.i;

import android.os.Parcel;
import androidx.annotation.ah;

/* loaded from: /home/user/work/dex/classes.dex */
public final class l {
    public static boolean a(@ah Parcel parcel) {
        return parcel.readInt() != 0;
    }

    public static void a(@ah Parcel parcel, boolean z) {
        parcel.writeInt(z ? 1 : 0);
    }

    private l() {
    }
}
