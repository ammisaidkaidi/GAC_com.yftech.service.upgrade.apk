package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import java.lang.ref.WeakReference;

/* loaded from: /home/user/work/dex/classes.dex */
class az extends ap {

    /* renamed from: a, reason: collision with root package name */
    private final WeakReference<Context> f242a;

    public az(@androidx.annotation.ah Context context, @androidx.annotation.ah Resources resources) {
        super(resources);
        this.f242a = new WeakReference<>(context);
    }

    @Override // androidx.appcompat.widget.ap, android.content.res.Resources
    public Drawable getDrawable(int i) {
        Drawable drawable = super.getDrawable(i);
        Context context = this.f242a.get();
        if (drawable != null && context != null) {
            ao.a().a(context, i, drawable);
        }
        return drawable;
    }
}
