package androidx.j;

import android.graphics.Matrix;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: /home/user/work/dex/classes.dex */
class s {
    /* JADX INFO: Access modifiers changed from: package-private */
    @androidx.annotation.ai
    public static o a(@androidx.annotation.ah View view, @androidx.annotation.ah ViewGroup viewGroup, @androidx.annotation.ai Matrix matrix) {
        if (Build.VERSION.SDK_INT == 28) {
            return q.a(view, viewGroup, matrix);
        }
        return r.b(view, viewGroup, matrix);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(View view) {
        if (Build.VERSION.SDK_INT == 28) {
            q.a(view);
        } else {
            r.b(view);
        }
    }

    private s() {
    }
}
