package com.google.android.material.internal;

import android.os.Build;
import androidx.annotation.ap;
import java.util.Locale;

@ap(a = {ap.a.LIBRARY_GROUP})
/* loaded from: /home/user/work/dex/classes.dex */
public class g {

    /* renamed from: a, reason: collision with root package name */
    private static final String f1335a = "lge";
    private static final String b = "samsung";
    private static final String c = "meizu";

    private g() {
    }

    public static boolean a() {
        return Build.MANUFACTURER.toLowerCase(Locale.ENGLISH).equals(c);
    }

    public static boolean b() {
        return Build.MANUFACTURER.toLowerCase(Locale.ENGLISH).equals(f1335a);
    }

    public static boolean c() {
        return Build.MANUFACTURER.toLowerCase(Locale.ENGLISH).equals(b);
    }

    public static boolean d() {
        return b() || c();
    }
}
