package androidx.appcompat.view;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.view.ViewConfiguration;
import androidx.annotation.ap;
import androidx.appcompat.a;

@ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private Context f109a;

    public static a a(Context context) {
        return new a(context);
    }

    private a(Context context) {
        this.f109a = context;
    }

    public int a() {
        Configuration configuration = this.f109a.getResources().getConfiguration();
        int i = configuration.screenWidthDp;
        int i2 = configuration.screenHeightDp;
        if (configuration.smallestScreenWidthDp > 600 || i > 600) {
            return 5;
        }
        if (i > 960 && i2 > 720) {
            return 5;
        }
        if (i > 720 && i2 > 960) {
            return 5;
        }
        if (i >= 500) {
            return 4;
        }
        if (i > 640 && i2 > 480) {
            return 4;
        }
        if (i <= 480 || i2 <= 640) {
            return i >= 360 ? 3 : 2;
        }
        return 4;
    }

    public boolean b() {
        if (Build.VERSION.SDK_INT >= 19) {
            return true;
        }
        return !ViewConfiguration.get(this.f109a).hasPermanentMenuKey();
    }

    public int c() {
        return this.f109a.getResources().getDisplayMetrics().widthPixels / 2;
    }

    public boolean d() {
        return this.f109a.getResources().getBoolean(a.c.abc_action_bar_embed_tabs);
    }

    public int e() {
        TypedArray obtainStyledAttributes = this.f109a.obtainStyledAttributes(null, a.m.ActionBar, a.b.actionBarStyle, 0);
        int layoutDimension = obtainStyledAttributes.getLayoutDimension(a.m.ActionBar_height, 0);
        Resources resources = this.f109a.getResources();
        if (!d()) {
            layoutDimension = Math.min(layoutDimension, resources.getDimensionPixelSize(a.e.abc_action_bar_stacked_max_height));
        }
        obtainStyledAttributes.recycle();
        return layoutDimension;
    }

    public boolean f() {
        return this.f109a.getApplicationInfo().targetSdkVersion < 14;
    }

    public int g() {
        return this.f109a.getResources().getDimensionPixelSize(a.e.abc_action_bar_stacked_tab_max_width);
    }
}
