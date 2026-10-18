package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import androidx.annotation.ap;
import java.lang.ref.WeakReference;

@androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public class bf extends Resources {

    /* renamed from: a, reason: collision with root package name */
    public static final int f252a = 20;
    private static boolean b = false;
    private final WeakReference<Context> c;

    public static boolean a() {
        return b() && Build.VERSION.SDK_INT <= 20;
    }

    public bf(@androidx.annotation.ah Context context, @androidx.annotation.ah Resources resources) {
        super(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
        this.c = new WeakReference<>(context);
    }

    @Override // android.content.res.Resources
    public Drawable getDrawable(int i) {
        Context context = this.c.get();
        if (context != null) {
            return ao.a().a(context, this, i);
        }
        return super.getDrawable(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Drawable a(int i) {
        return super.getDrawable(i);
    }

    public static void a(boolean z) {
        b = z;
    }

    public static boolean b() {
        return b;
    }
}
