package androidx.core.n.c;

import android.content.ClipDescription;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.text.TextUtils;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.view.inputmethod.InputContentInfo;
import androidx.annotation.ah;
import androidx.annotation.ai;

/* loaded from: /home/user/work/dex/classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public static final int f551a = 1;
    private static final String b = "androidx.core.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT";
    private static final String c = "android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT";
    private static final String d = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_URI";
    private static final String e = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI";
    private static final String f = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION";
    private static final String g = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION";
    private static final String h = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI";
    private static final String i = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI";
    private static final String j = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_OPTS";
    private static final String k = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS";
    private static final String l = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS";
    private static final String m = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS";
    private static final String n = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER";
    private static final String o = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER";

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface a {
        boolean a(c cVar, int i, Bundle bundle);
    }

    static boolean a(@ai String str, @ah Bundle bundle, @ah a aVar) {
        boolean z;
        ResultReceiver resultReceiver;
        if (bundle == null) {
            return false;
        }
        if (TextUtils.equals(b, str)) {
            z = false;
        } else {
            if (!TextUtils.equals(c, str)) {
                return false;
            }
            z = true;
        }
        try {
            resultReceiver = (ResultReceiver) bundle.getParcelable(z ? o : n);
            try {
                Uri uri = (Uri) bundle.getParcelable(z ? e : d);
                ClipDescription clipDescription = (ClipDescription) bundle.getParcelable(z ? g : f);
                boolean a2 = (uri == null || clipDescription == null) ? false : aVar.a(new c(uri, clipDescription, (Uri) bundle.getParcelable(z ? i : h)), bundle.getInt(z ? m : l), (Bundle) bundle.getParcelable(z ? k : j));
                if (resultReceiver != null) {
                    resultReceiver.send(a2 ? 1 : 0, null);
                }
                return a2;
            } catch (Throwable th) {
                th = th;
                if (resultReceiver != null) {
                    resultReceiver.send(0, null);
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            resultReceiver = null;
        }
    }

    public static boolean a(@ah InputConnection inputConnection, @ah EditorInfo editorInfo, @ah c cVar, int i2, @ai Bundle bundle) {
        boolean z;
        ClipDescription b2 = cVar.b();
        String[] a2 = androidx.core.n.c.a.a(editorInfo);
        int length = a2.length;
        boolean z2 = false;
        int i3 = 0;
        while (true) {
            if (i3 >= length) {
                z = false;
                break;
            }
            if (b2.hasMimeType(a2[i3])) {
                z = true;
                break;
            }
            i3++;
        }
        if (!z) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 25) {
            return inputConnection.commitContent((InputContentInfo) cVar.d(), i2, bundle);
        }
        switch (androidx.core.n.c.a.b(editorInfo)) {
            case 2:
                z2 = true;
                break;
            case 3:
            case 4:
                break;
            default:
                return false;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable(z2 ? e : d, cVar.a());
        bundle2.putParcelable(z2 ? g : f, cVar.b());
        bundle2.putParcelable(z2 ? i : h, cVar.c());
        bundle2.putInt(z2 ? m : l, i2);
        bundle2.putParcelable(z2 ? k : j, bundle);
        return inputConnection.performPrivateCommand(z2 ? c : b, bundle2);
    }

    @ah
    public static InputConnection a(@ah InputConnection inputConnection, @ah EditorInfo editorInfo, @ah final a aVar) {
        if (inputConnection == null) {
            throw new IllegalArgumentException("inputConnection must be non-null");
        }
        if (editorInfo == null) {
            throw new IllegalArgumentException("editorInfo must be non-null");
        }
        if (aVar == null) {
            throw new IllegalArgumentException("onCommitContentListener must be non-null");
        }
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 25) {
            return new InputConnectionWrapper(inputConnection, z) { // from class: androidx.core.n.c.b.1
                @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
                public boolean commitContent(InputContentInfo inputContentInfo, int i2, Bundle bundle) {
                    if (aVar.a(c.a(inputContentInfo), i2, bundle)) {
                        return true;
                    }
                    return super.commitContent(inputContentInfo, i2, bundle);
                }
            };
        }
        return androidx.core.n.c.a.a(editorInfo).length == 0 ? inputConnection : new InputConnectionWrapper(inputConnection, z) { // from class: androidx.core.n.c.b.2
            @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
            public boolean performPrivateCommand(String str, Bundle bundle) {
                if (b.a(str, bundle, aVar)) {
                    return true;
                }
                return super.performPrivateCommand(str, bundle);
            }
        };
    }

    @Deprecated
    public b() {
    }
}
