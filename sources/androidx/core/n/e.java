package androidx.core.n;

import android.app.Activity;
import android.os.Build;
import android.view.DragAndDropPermissions;
import android.view.DragEvent;
import androidx.annotation.ap;

/* loaded from: /home/user/work/dex/classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    private Object f558a;

    private e(Object obj) {
        this.f558a = obj;
    }

    @androidx.annotation.ai
    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public static e a(Activity activity, DragEvent dragEvent) {
        DragAndDropPermissions requestDragAndDropPermissions;
        if (Build.VERSION.SDK_INT < 24 || (requestDragAndDropPermissions = activity.requestDragAndDropPermissions(dragEvent)) == null) {
            return null;
        }
        return new e(requestDragAndDropPermissions);
    }

    public void a() {
        if (Build.VERSION.SDK_INT >= 24) {
            ((DragAndDropPermissions) this.f558a).release();
        }
    }
}
