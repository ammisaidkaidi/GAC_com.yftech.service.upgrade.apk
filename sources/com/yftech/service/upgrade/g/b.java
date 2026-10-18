package com.yftech.service.upgrade.g;

import android.os.Process;
import android.os.SystemProperties;
import android.util.Log;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* loaded from: /home/user/work/dex/classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private static final String f1597a = "UpgradeService";
    private static final boolean b = true;
    private static boolean c = false;
    private static boolean d = false;
    private static boolean e = true;
    private static final String f = "persist.yf.service.upgrade.log.save.always";
    private static boolean g = false;
    private static boolean h = false;
    private static final String i = "/sdcard/UpgradeService.log";

    static {
        String str = SystemProperties.get(f, com.yftech.service.upgrade.a.d);
        if (str.contains("f")) {
            h = b;
        }
        if (str.contains("v")) {
            c = b;
        }
        if (str.contains("d")) {
            d = b;
        }
        if (str.contains("i")) {
            e = b;
        }
        if (str.contains("s")) {
            g = b;
        }
        if (g) {
            return;
        }
        File file = new File(i);
        if (file.exists()) {
            file.delete();
        }
    }

    private b() {
    }

    public static void a(boolean z) {
        c = z;
    }

    public static void b(boolean z) {
        d = z;
    }

    public static void c(boolean z) {
        e = z;
    }

    public static void d(boolean z) {
        h = z;
    }

    public static void e(boolean z) {
        g = z;
        String str = com.yftech.service.upgrade.a.d;
        if (z) {
            String str2 = com.yftech.service.upgrade.a.d + "s";
            if (h) {
                str2 = str2 + "f";
            }
            if (c) {
                str2 = str2 + "v";
            }
            if (d) {
                str2 = str2 + "d";
            }
            str = str2;
            if (e) {
                str = str + "i";
            }
        }
        SystemProperties.set(f, str);
    }

    private static String b() {
        String className = Thread.currentThread().getStackTrace()[4].getClassName();
        return className.substring(className.lastIndexOf(".") + 1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v21 */
    /* JADX WARN: Type inference failed for: r5v22 */
    /* JADX WARN: Type inference failed for: r5v23 */
    /* JADX WARN: Type inference failed for: r5v24 */
    /* JADX WARN: Type inference failed for: r5v25 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [java.io.BufferedWriter] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x008c -> B:9:0x008f). Please report as a decompilation issue!!! */
    private static void a(String str, String str2) {
        BufferedWriter bufferedWriter;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM-dd hh:mm:ss.SSS", Locale.US);
        ?? r5 = 0;
        BufferedWriter bufferedWriter2 = null;
        BufferedWriter bufferedWriter3 = null;
        try {
            try {
                try {
                    bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(i, b)));
                } catch (Throwable th) {
                    th = th;
                }
            } catch (FileNotFoundException e2) {
                e = e2;
            } catch (IOException e3) {
                e = e3;
            }
        } catch (IOException e4) {
            e4.printStackTrace();
            r5 = e4;
        }
        try {
            String str3 = simpleDateFormat.format(new Date(System.currentTimeMillis())) + " " + Process.myPid() + " " + Process.myTid() + " " + str + " " + str2 + "\n";
            bufferedWriter.write(str3);
            bufferedWriter.close();
            r5 = str3;
        } catch (FileNotFoundException e5) {
            e = e5;
            bufferedWriter2 = bufferedWriter;
            e.printStackTrace();
            r5 = bufferedWriter2;
            if (bufferedWriter2 != null) {
                bufferedWriter2.close();
                r5 = bufferedWriter2;
            }
        } catch (IOException e6) {
            e = e6;
            bufferedWriter3 = bufferedWriter;
            e.printStackTrace();
            r5 = bufferedWriter3;
            if (bufferedWriter3 != null) {
                bufferedWriter3.close();
                r5 = bufferedWriter3;
            }
        } catch (Throwable th2) {
            th = th2;
            r5 = bufferedWriter;
            if (r5 != 0) {
                try {
                    r5.close();
                } catch (IOException e7) {
                    e7.printStackTrace();
                }
            }
            throw th;
        }
    }

    public static void a(String str) {
        if (c) {
            String str2 = "[" + b() + "] " + str;
            Log.v(f1597a, str2);
            if (h) {
                a("V", str2);
            }
        }
    }

    public static void b(String str) {
        if (d) {
            String str2 = "[" + b() + "] " + str;
            Log.d(f1597a, str2);
            if (h) {
                a("D", str2);
            }
        }
    }

    public static void c(String str) {
        if (e) {
            String str2 = "[" + b() + "] " + str;
            Log.i(f1597a, str2);
            if (h) {
                a("I", str2);
            }
        }
    }

    public static void d(String str) {
        String str2 = "[" + b() + "] " + str;
        Log.w(f1597a, str2);
        if (h) {
            a("W", str2);
        }
    }

    public static void e(String str) {
        String str2 = "[" + b() + "] " + str;
        Log.e(f1597a, str2);
        if (h) {
            a("E", str2);
        }
    }

    public static String a() {
        Date date = new Date();
        date.setTime(System.currentTimeMillis());
        return new SimpleDateFormat("MM-dd hh:mm:ss:SSS", Locale.US).format(date);
    }
}
