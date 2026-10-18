package com.google.android.material.u;

import androidx.annotation.ah;
import java.util.Locale;

/* loaded from: /home/user/work/dex/classes.dex */
public final class d implements e {
    private static final long d = 1000000000000L;
    private static final int e = 1000000000;
    private static final int f = 1000000;
    private static final int g = 1000;

    @Override // com.google.android.material.u.e
    @ah
    public String a(float f2) {
        return f2 >= 1.0E12f ? String.format(Locale.US, "%.1fT", Float.valueOf(f2 / 1.0E12f)) : f2 >= 1.0E9f ? String.format(Locale.US, "%.1fB", Float.valueOf(f2 / 1.0E9f)) : f2 >= 1000000.0f ? String.format(Locale.US, "%.1fM", Float.valueOf(f2 / 1000000.0f)) : f2 >= 1000.0f ? String.format(Locale.US, "%.1fK", Float.valueOf(f2 / 1000.0f)) : String.format(Locale.US, "%.0f", Float.valueOf(f2));
    }
}
