package androidx.appcompat.app;

import android.R;
import android.app.ActionBar;
import android.app.Activity;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import java.lang.reflect.Method;

/* loaded from: /home/user/work/dex/classes.dex */
class c {

    /* renamed from: a, reason: collision with root package name */
    private static final String f52a = "ActionBarDrawerToggleHC";
    private static final int[] b = {R.attr.homeAsUpIndicator};

    public static a a(Activity activity, Drawable drawable, int i) {
        a aVar = new a(activity);
        if (aVar.f53a != null) {
            try {
                ActionBar actionBar = activity.getActionBar();
                aVar.f53a.invoke(actionBar, drawable);
                aVar.b.invoke(actionBar, Integer.valueOf(i));
            } catch (Exception e) {
                Log.w(f52a, "Couldn't set home-as-up indicator via JB-MR2 API", e);
            }
        } else if (aVar.c != null) {
            aVar.c.setImageDrawable(drawable);
        } else {
            Log.w(f52a, "Couldn't set home-as-up indicator");
        }
        return aVar;
    }

    public static a a(a aVar, Activity activity, int i) {
        if (aVar == null) {
            aVar = new a(activity);
        }
        if (aVar.f53a != null) {
            try {
                ActionBar actionBar = activity.getActionBar();
                aVar.b.invoke(actionBar, Integer.valueOf(i));
                if (Build.VERSION.SDK_INT <= 19) {
                    actionBar.setSubtitle(actionBar.getSubtitle());
                }
            } catch (Exception e) {
                Log.w(f52a, "Couldn't set content description via JB-MR2 API", e);
            }
        }
        return aVar;
    }

    public static Drawable a(Activity activity) {
        TypedArray obtainStyledAttributes = activity.obtainStyledAttributes(b);
        Drawable drawable = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
        return drawable;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    static class a {

        /* renamed from: a, reason: collision with root package name */
        public Method f53a;
        public Method b;
        public ImageView c;

        a(Activity activity) {
            try {
                this.f53a = ActionBar.class.getDeclaredMethod("setHomeAsUpIndicator", Drawable.class);
                this.b = ActionBar.class.getDeclaredMethod("setHomeActionContentDescription", Integer.TYPE);
            } catch (NoSuchMethodException unused) {
                View findViewById = activity.findViewById(R.id.home);
                if (findViewById == null) {
                    return;
                }
                ViewGroup viewGroup = (ViewGroup) findViewById.getParent();
                if (viewGroup.getChildCount() != 2) {
                    return;
                }
                View childAt = viewGroup.getChildAt(0);
                View childAt2 = childAt.getId() != 16908332 ? childAt : viewGroup.getChildAt(1);
                if (childAt2 instanceof ImageView) {
                    this.c = (ImageView) childAt2;
                }
            }
        }
    }

    private c() {
    }
}
