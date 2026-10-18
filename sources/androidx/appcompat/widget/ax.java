package androidx.appcompat.widget;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.os.Build;
import androidx.annotation.ap;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

@androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public class ax extends ContextWrapper {

    /* renamed from: a, reason: collision with root package name */
    private static final Object f240a = new Object();
    private static ArrayList<WeakReference<ax>> b;
    private final Resources c;
    private final Resources.Theme d;

    public static Context a(@androidx.annotation.ah Context context) {
        if (!b(context)) {
            return context;
        }
        synchronized (f240a) {
            if (b == null) {
                b = new ArrayList<>();
            } else {
                for (int size = b.size() - 1; size >= 0; size--) {
                    WeakReference<ax> weakReference = b.get(size);
                    if (weakReference == null || weakReference.get() == null) {
                        b.remove(size);
                    }
                }
                for (int size2 = b.size() - 1; size2 >= 0; size2--) {
                    WeakReference<ax> weakReference2 = b.get(size2);
                    ax axVar = weakReference2 != null ? weakReference2.get() : null;
                    if (axVar != null && axVar.getBaseContext() == context) {
                        return axVar;
                    }
                }
            }
            ax axVar2 = new ax(context);
            b.add(new WeakReference<>(axVar2));
            return axVar2;
        }
    }

    private static boolean b(@androidx.annotation.ah Context context) {
        if ((context instanceof ax) || (context.getResources() instanceof az) || (context.getResources() instanceof bf)) {
            return false;
        }
        return Build.VERSION.SDK_INT < 21 || bf.a();
    }

    private ax(@androidx.annotation.ah Context context) {
        super(context);
        if (bf.a()) {
            this.c = new bf(this, context.getResources());
            this.d = this.c.newTheme();
            this.d.setTo(context.getTheme());
        } else {
            this.c = new az(this, context.getResources());
            this.d = null;
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        return this.d == null ? super.getTheme() : this.d;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        if (this.d == null) {
            super.setTheme(i);
        } else {
            this.d.applyStyle(i, true);
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return this.c;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return this.c.getAssets();
    }
}
