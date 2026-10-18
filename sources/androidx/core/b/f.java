package androidx.core.b;

import androidx.annotation.ah;
import androidx.annotation.ai;
import java.util.ArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public final class f {
    private f() {
    }

    private static boolean a(@ah String[] strArr, @ah String[] strArr2) {
        if (strArr2.length != 2) {
            throw new IllegalArgumentException("Ill-formatted MIME type filter. Must be type/subtype.");
        }
        if (strArr2[0].isEmpty() || strArr2[1].isEmpty()) {
            throw new IllegalArgumentException("Ill-formatted MIME type filter. Type or subtype empty.");
        }
        if (strArr.length != 2) {
            return false;
        }
        if ("*".equals(strArr2[0]) || strArr2[0].equals(strArr[0])) {
            return "*".equals(strArr2[1]) || strArr2[1].equals(strArr[1]);
        }
        return false;
    }

    public static boolean a(@ai String str, @ah String str2) {
        if (str == null) {
            return false;
        }
        return a(str.split("/"), str2.split("/"));
    }

    @ai
    public static String a(@ai String str, @ah String[] strArr) {
        if (str == null) {
            return null;
        }
        String[] split = str.split("/");
        for (String str2 : strArr) {
            if (a(split, str2.split("/"))) {
                return str2;
            }
        }
        return null;
    }

    @ai
    public static String a(@ai String[] strArr, @ah String str) {
        if (strArr == null) {
            return null;
        }
        String[] split = str.split("/");
        for (String str2 : strArr) {
            if (a(str2.split("/"), split)) {
                return str2;
            }
        }
        return null;
    }

    @ah
    public static String[] b(@ai String[] strArr, @ah String str) {
        if (strArr == null) {
            return new String[0];
        }
        ArrayList arrayList = new ArrayList();
        String[] split = str.split("/");
        for (String str2 : strArr) {
            if (a(str2.split("/"), split)) {
                arrayList.add(str2);
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }
}
