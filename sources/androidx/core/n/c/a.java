package androidx.core.n.c;

import android.os.Build;
import android.os.Bundle;
import android.view.inputmethod.EditorInfo;
import androidx.annotation.ah;
import androidx.annotation.ai;

/* loaded from: /home/user/work/dex/classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static final int f549a = 16777216;
    public static final int b = Integer.MIN_VALUE;
    private static final String[] c = new String[0];
    private static final String d = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES";
    private static final String e = "android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES";

    public static void a(@ah EditorInfo editorInfo, @ai String[] strArr) {
        if (Build.VERSION.SDK_INT >= 25) {
            editorInfo.contentMimeTypes = strArr;
            return;
        }
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        editorInfo.extras.putStringArray(d, strArr);
        editorInfo.extras.putStringArray(e, strArr);
    }

    @ah
    public static String[] a(EditorInfo editorInfo) {
        if (Build.VERSION.SDK_INT >= 25) {
            String[] strArr = editorInfo.contentMimeTypes;
            return strArr != null ? strArr : c;
        }
        if (editorInfo.extras == null) {
            return c;
        }
        String[] stringArray = editorInfo.extras.getStringArray(d);
        if (stringArray == null) {
            stringArray = editorInfo.extras.getStringArray(e);
        }
        return stringArray != null ? stringArray : c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(EditorInfo editorInfo) {
        if (Build.VERSION.SDK_INT >= 25) {
            return 1;
        }
        if (editorInfo.extras == null) {
            return 0;
        }
        boolean containsKey = editorInfo.extras.containsKey(d);
        boolean containsKey2 = editorInfo.extras.containsKey(e);
        if (containsKey && containsKey2) {
            return 4;
        }
        if (containsKey) {
            return 3;
        }
        return containsKey2 ? 2 : 0;
    }

    @Deprecated
    public a() {
    }
}
