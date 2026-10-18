package androidx.appcompat.widget;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.util.TypedValue;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.a;
import androidx.appcompat.widget.d;

/* loaded from: /home/user/work/dex/classes.dex */
public class as extends androidx.core.n.b {

    /* renamed from: a, reason: collision with root package name */
    public static final String f232a = "share_history.xml";
    private static final int e = 4;
    final Context b;
    String c;
    a d;
    private int f;
    private final c g;
    private d.f h;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface a {
        boolean a(as asVar, Intent intent);
    }

    @Override // androidx.core.n.b
    public boolean c() {
        return true;
    }

    public as(Context context) {
        super(context);
        this.f = 4;
        this.g = new c();
        this.c = f232a;
        this.b = context;
    }

    public void a(a aVar) {
        this.d = aVar;
        i();
    }

    @Override // androidx.core.n.b
    public View a() {
        ActivityChooserView activityChooserView = new ActivityChooserView(this.b);
        if (!activityChooserView.isInEditMode()) {
            activityChooserView.setActivityChooserModel(d.a(this.b, this.c));
        }
        TypedValue typedValue = new TypedValue();
        this.b.getTheme().resolveAttribute(a.b.actionModeShareDrawable, typedValue, true);
        activityChooserView.setExpandActivityOverflowButtonDrawable(androidx.appcompat.a.a.a.b(this.b, typedValue.resourceId));
        activityChooserView.setProvider(this);
        activityChooserView.setDefaultActionButtonContentDescription(a.k.abc_shareactionprovider_share_with_application);
        activityChooserView.setExpandActivityOverflowButtonContentDescription(a.k.abc_shareactionprovider_share_with);
        return activityChooserView;
    }

    @Override // androidx.core.n.b
    public void a(SubMenu subMenu) {
        subMenu.clear();
        d a2 = d.a(this.b, this.c);
        PackageManager packageManager = this.b.getPackageManager();
        int b2 = a2.b();
        int min = Math.min(b2, this.f);
        for (int i = 0; i < min; i++) {
            ResolveInfo a3 = a2.a(i);
            subMenu.add(0, i, i, a3.loadLabel(packageManager)).setIcon(a3.loadIcon(packageManager)).setOnMenuItemClickListener(this.g);
        }
        if (min < b2) {
            SubMenu addSubMenu = subMenu.addSubMenu(0, min, min, this.b.getString(a.k.abc_activity_chooser_view_see_all));
            for (int i2 = 0; i2 < b2; i2++) {
                ResolveInfo a4 = a2.a(i2);
                addSubMenu.add(0, i2, i2, a4.loadLabel(packageManager)).setIcon(a4.loadIcon(packageManager)).setOnMenuItemClickListener(this.g);
            }
        }
    }

    public void a(String str) {
        this.c = str;
        i();
    }

    public void a(Intent intent) {
        if (intent != null) {
            String action = intent.getAction();
            if ("android.intent.action.SEND".equals(action) || "android.intent.action.SEND_MULTIPLE".equals(action)) {
                b(intent);
            }
        }
        d.a(this.b, this.c).a(intent);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private class c implements MenuItem.OnMenuItemClickListener {
        c() {
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            Intent b = d.a(as.this.b, as.this.c).b(menuItem.getItemId());
            if (b == null) {
                return true;
            }
            String action = b.getAction();
            if ("android.intent.action.SEND".equals(action) || "android.intent.action.SEND_MULTIPLE".equals(action)) {
                as.this.b(b);
            }
            as.this.b.startActivity(b);
            return true;
        }
    }

    private void i() {
        if (this.d == null) {
            return;
        }
        if (this.h == null) {
            this.h = new b();
        }
        d.a(this.b, this.c).a(this.h);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class b implements d.f {
        b() {
        }

        @Override // androidx.appcompat.widget.d.f
        public boolean a(d dVar, Intent intent) {
            if (as.this.d == null) {
                return false;
            }
            as.this.d.a(as.this, intent);
            return false;
        }
    }

    void b(Intent intent) {
        if (Build.VERSION.SDK_INT >= 21) {
            intent.addFlags(134742016);
        } else {
            intent.addFlags(524288);
        }
    }
}
