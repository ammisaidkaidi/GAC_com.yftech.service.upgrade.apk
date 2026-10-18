package androidx.appcompat.app;

import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.os.LocaleList;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.KeyboardShortcutGroup;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.am;
import androidx.annotation.ap;
import androidx.annotation.at;
import androidx.annotation.ax;
import androidx.annotation.w;
import androidx.appcompat.a;
import androidx.appcompat.app.b;
import androidx.appcompat.view.b;
import androidx.appcompat.view.f;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.n;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.ViewStubCompat;
import androidx.appcompat.widget.ad;
import androidx.appcompat.widget.ah;
import androidx.appcompat.widget.ba;
import androidx.appcompat.widget.bf;
import androidx.appcompat.widget.bg;
import androidx.core.b.b.g;
import androidx.core.n.aa;
import androidx.core.n.af;
import androidx.core.n.aj;
import androidx.core.n.ak;
import androidx.core.n.al;
import androidx.core.n.ao;
import androidx.core.n.j;
import androidx.core.n.y;
import androidx.lifecycle.g;
import java.lang.Thread;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: Access modifiers changed from: package-private */
@ap(a = {ap.a.LIBRARY})
/* loaded from: /home/user/work/dex/classes.dex */
public class h extends androidx.appcompat.app.g implements LayoutInflater.Factory2, g.a {
    private static final androidx.c.i<String, Integer> H = new androidx.c.i<>();
    private static final boolean I;
    private static final int[] J;
    private static final boolean K;
    private static final boolean L;
    private static boolean M = false;
    static final String m = ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info.";
    boolean A;
    boolean B;
    boolean C;
    boolean D;
    boolean E;
    boolean F;
    int G;
    private d N;
    private CharSequence O;
    private ad P;
    private b Q;
    private n R;
    private boolean S;
    private boolean T;
    private TextView U;
    private View V;
    private boolean W;
    private boolean X;
    private boolean Y;
    private m[] Z;
    private m aa;
    private boolean ab;
    private boolean ac;
    private boolean ad;
    private boolean ae;
    private int af;
    private int ag;
    private boolean ah;
    private boolean ai;
    private f aj;
    private f ak;
    private final Runnable al;
    private boolean am;
    private Rect an;
    private Rect ao;
    private androidx.appcompat.app.k ap;
    final Object n;
    final Context o;
    Window p;
    final androidx.appcompat.app.f q;
    androidx.appcompat.app.a r;
    MenuInflater s;
    androidx.appcompat.view.b t;
    ActionBarContextView u;
    PopupWindow v;
    Runnable w;
    aj x;
    ViewGroup y;
    boolean z;

    void a(ViewGroup viewGroup) {
    }

    @Override // androidx.appcompat.app.g
    public void c(Bundle bundle) {
    }

    static {
        I = Build.VERSION.SDK_INT < 21;
        J = new int[]{R.attr.windowBackground};
        K = !"robolectric".equals(Build.FINGERPRINT);
        L = Build.VERSION.SDK_INT >= 17;
        if (!I || M) {
            return;
        }
        final Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: androidx.appcompat.app.h.1
            @Override // java.lang.Thread.UncaughtExceptionHandler
            public void uncaughtException(@ah Thread thread, @ah Throwable th) {
                if (a(th)) {
                    Resources.NotFoundException notFoundException = new Resources.NotFoundException(th.getMessage() + h.m);
                    notFoundException.initCause(th.getCause());
                    notFoundException.setStackTrace(th.getStackTrace());
                    defaultUncaughtExceptionHandler.uncaughtException(thread, notFoundException);
                    return;
                }
                defaultUncaughtExceptionHandler.uncaughtException(thread, th);
            }

            private boolean a(Throwable th) {
                String message;
                if (!(th instanceof Resources.NotFoundException) || (message = th.getMessage()) == null) {
                    return false;
                }
                return message.contains("drawable") || message.contains("Drawable");
            }
        });
        M = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(Activity activity, androidx.appcompat.app.f fVar) {
        this(activity, null, fVar, activity);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(Dialog dialog, androidx.appcompat.app.f fVar) {
        this(dialog.getContext(), dialog.getWindow(), fVar, dialog);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(Context context, Window window, androidx.appcompat.app.f fVar) {
        this(context, window, fVar, context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(Context context, Activity activity, androidx.appcompat.app.f fVar) {
        this(context, null, fVar, activity);
    }

    private h(Context context, Window window, androidx.appcompat.app.f fVar, Object obj) {
        Integer num;
        androidx.appcompat.app.e E;
        this.x = null;
        this.S = true;
        this.af = -100;
        this.al = new Runnable() { // from class: androidx.appcompat.app.h.2
            @Override // java.lang.Runnable
            public void run() {
                if ((h.this.G & 1) != 0) {
                    h.this.k(0);
                }
                if ((h.this.G & 4096) != 0) {
                    h.this.k(108);
                }
                h.this.F = false;
                h.this.G = 0;
            }
        };
        this.o = context;
        this.q = fVar;
        this.n = obj;
        if (this.af == -100 && (this.n instanceof Dialog) && (E = E()) != null) {
            this.af = E.l().l();
        }
        if (this.af == -100 && (num = H.get(this.n.getClass().getName())) != null) {
            this.af = num.intValue();
            H.remove(this.n.getClass().getName());
        }
        if (window != null) {
            a(window);
        }
        androidx.appcompat.widget.k.a();
    }

    @Override // androidx.appcompat.app.g
    @androidx.annotation.i
    @ah
    public Context b(@ah Context context) {
        this.ac = true;
        int a2 = a(context, G());
        if (L && (context instanceof ContextThemeWrapper)) {
            try {
                k.a((ContextThemeWrapper) context, a(context, a2, (Configuration) null));
                return context;
            } catch (IllegalStateException unused) {
            }
        }
        if (context instanceof androidx.appcompat.view.d) {
            try {
                ((androidx.appcompat.view.d) context).a(a(context, a2, (Configuration) null));
                return context;
            } catch (IllegalStateException unused2) {
            }
        }
        if (!K) {
            return super.b(context);
        }
        try {
            Configuration configuration = context.getPackageManager().getResourcesForApplication(context.getApplicationInfo()).getConfiguration();
            Configuration configuration2 = context.getResources().getConfiguration();
            Configuration a3 = a(context, a2, configuration.equals(configuration2) ? null : a(configuration, configuration2));
            androidx.appcompat.view.d dVar = new androidx.appcompat.view.d(context, a.l.Theme_AppCompat_Empty);
            dVar.a(a3);
            boolean z = false;
            try {
                if (context.getTheme() != null) {
                    z = true;
                }
            } catch (NullPointerException unused3) {
            }
            if (z) {
                g.b.a(dVar.getTheme());
            }
            return super.b(dVar);
        } catch (PackageManager.NameNotFoundException e2) {
            throw new RuntimeException("Application failed to obtain resources from itself", e2);
        }
    }

    @am(a = 17)
    /* loaded from: /home/user/work/dex/classes.dex */
    private static class k {
        private k() {
        }

        static void a(ContextThemeWrapper contextThemeWrapper, Configuration configuration) {
            contextThemeWrapper.applyOverrideConfiguration(configuration);
        }
    }

    @Override // androidx.appcompat.app.g
    public void a(Bundle bundle) {
        this.ac = true;
        d(false);
        A();
        if (this.n instanceof Activity) {
            String str = null;
            try {
                str = androidx.core.app.n.c((Activity) this.n);
            } catch (IllegalArgumentException unused) {
            }
            if (str != null) {
                androidx.appcompat.app.a o = o();
                if (o == null) {
                    this.am = true;
                } else {
                    o.h(true);
                }
            }
            a(this);
        }
        this.ad = true;
    }

    @Override // androidx.appcompat.app.g
    public void b(Bundle bundle) {
        B();
    }

    @Override // androidx.appcompat.app.g
    public androidx.appcompat.app.a a() {
        y();
        return this.r;
    }

    final androidx.appcompat.app.a o() {
        return this.r;
    }

    final Window.Callback p() {
        return this.p.getCallback();
    }

    private void y() {
        B();
        if (this.z && this.r == null) {
            if (this.n instanceof Activity) {
                this.r = new q((Activity) this.n, this.A);
            } else if (this.n instanceof Dialog) {
                this.r = new q((Dialog) this.n);
            }
            if (this.r != null) {
                this.r.h(this.am);
            }
        }
    }

    @Override // androidx.appcompat.app.g
    public void a(Toolbar toolbar) {
        if (this.n instanceof Activity) {
            androidx.appcompat.app.a a2 = a();
            if (a2 instanceof q) {
                throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
            }
            this.s = null;
            if (a2 != null) {
                a2.z();
            }
            if (toolbar != null) {
                androidx.appcompat.app.n nVar = new androidx.appcompat.app.n(toolbar, r(), this.N);
                this.r = nVar;
                this.p.setCallback(nVar.A());
            } else {
                this.r = null;
                this.p.setCallback(this.N);
            }
            f();
        }
    }

    final Context q() {
        androidx.appcompat.app.a a2 = a();
        Context p = a2 != null ? a2.p() : null;
        return p == null ? this.o : p;
    }

    @Override // androidx.appcompat.app.g
    public MenuInflater b() {
        if (this.s == null) {
            y();
            this.s = new androidx.appcompat.view.g(this.r != null ? this.r.p() : this.o);
        }
        return this.s;
    }

    @Override // androidx.appcompat.app.g
    @ai
    public <T extends View> T b(@w int i2) {
        B();
        return (T) this.p.findViewById(i2);
    }

    @Override // androidx.appcompat.app.g
    public void a(Configuration configuration) {
        androidx.appcompat.app.a a2;
        if (this.z && this.T && (a2 = a()) != null) {
            a2.a(configuration);
        }
        androidx.appcompat.widget.k.b().a(this.o);
        d(false);
    }

    @Override // androidx.appcompat.app.g
    public void c() {
        this.ae = true;
        k();
    }

    @Override // androidx.appcompat.app.g
    public void d() {
        this.ae = false;
        androidx.appcompat.app.a a2 = a();
        if (a2 != null) {
            a2.i(false);
        }
    }

    @Override // androidx.appcompat.app.g
    public void e() {
        androidx.appcompat.app.a a2 = a();
        if (a2 != null) {
            a2.i(true);
        }
    }

    @Override // androidx.appcompat.app.g
    public void a(View view) {
        B();
        ViewGroup viewGroup = (ViewGroup) this.y.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.N.a().onContentChanged();
    }

    @Override // androidx.appcompat.app.g
    public void c(int i2) {
        B();
        ViewGroup viewGroup = (ViewGroup) this.y.findViewById(R.id.content);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.o).inflate(i2, viewGroup);
        this.N.a().onContentChanged();
    }

    @Override // androidx.appcompat.app.g
    public void a(View view, ViewGroup.LayoutParams layoutParams) {
        B();
        ViewGroup viewGroup = (ViewGroup) this.y.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.N.a().onContentChanged();
    }

    @Override // androidx.appcompat.app.g
    public void b(View view, ViewGroup.LayoutParams layoutParams) {
        B();
        ((ViewGroup) this.y.findViewById(R.id.content)).addView(view, layoutParams);
        this.N.a().onContentChanged();
    }

    @Override // androidx.appcompat.app.g
    public void g() {
        if (this.n instanceof Activity) {
            b(this);
        }
        if (this.F) {
            this.p.getDecorView().removeCallbacks(this.al);
        }
        this.ae = false;
        this.E = true;
        if (this.af != -100 && (this.n instanceof Activity) && ((Activity) this.n).isChangingConfigurations()) {
            H.put(this.n.getClass().getName(), Integer.valueOf(this.af));
        } else {
            H.remove(this.n.getClass().getName());
        }
        if (this.r != null) {
            this.r.z();
        }
        z();
    }

    private void z() {
        if (this.aj != null) {
            this.aj.e();
        }
        if (this.ak != null) {
            this.ak.e();
        }
    }

    @Override // androidx.appcompat.app.g
    public void a(@at int i2) {
        this.ag = i2;
    }

    private void A() {
        if (this.p == null && (this.n instanceof Activity)) {
            a(((Activity) this.n).getWindow());
        }
        if (this.p == null) {
            throw new IllegalStateException("We have not been given a Window");
        }
    }

    private void a(@ah Window window) {
        if (this.p != null) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        Window.Callback callback = window.getCallback();
        if (callback instanceof d) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        this.N = new d(callback);
        window.setCallback(this.N);
        ba a2 = ba.a(this.o, (AttributeSet) null, J);
        Drawable b2 = a2.b(0);
        if (b2 != null) {
            window.setBackgroundDrawable(b2);
        }
        a2.f();
        this.p = window;
    }

    private void B() {
        if (this.T) {
            return;
        }
        this.y = C();
        CharSequence r = r();
        if (!TextUtils.isEmpty(r)) {
            if (this.P != null) {
                this.P.setWindowTitle(r);
            } else if (o() != null) {
                o().d(r);
            } else if (this.U != null) {
                this.U.setText(r);
            }
        }
        D();
        a(this.y);
        this.T = true;
        m a2 = a(0, false);
        if (this.E) {
            return;
        }
        if (a2 == null || a2.j == null) {
            l(108);
        }
    }

    private ViewGroup C() {
        ViewGroup viewGroup;
        Context context;
        TypedArray obtainStyledAttributes = this.o.obtainStyledAttributes(a.m.AppCompatTheme);
        if (!obtainStyledAttributes.hasValue(a.m.AppCompatTheme_windowActionBar)) {
            obtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        if (obtainStyledAttributes.getBoolean(a.m.AppCompatTheme_windowNoTitle, false)) {
            d(1);
        } else if (obtainStyledAttributes.getBoolean(a.m.AppCompatTheme_windowActionBar, false)) {
            d(108);
        }
        if (obtainStyledAttributes.getBoolean(a.m.AppCompatTheme_windowActionBarOverlay, false)) {
            d(109);
        }
        if (obtainStyledAttributes.getBoolean(a.m.AppCompatTheme_windowActionModeOverlay, false)) {
            d(10);
        }
        this.C = obtainStyledAttributes.getBoolean(a.m.AppCompatTheme_android_windowIsFloating, false);
        obtainStyledAttributes.recycle();
        A();
        this.p.getDecorView();
        LayoutInflater from = LayoutInflater.from(this.o);
        if (!this.D) {
            if (this.C) {
                viewGroup = (ViewGroup) from.inflate(a.j.abc_dialog_title_material, (ViewGroup) null);
                this.A = false;
                this.z = false;
            } else if (this.z) {
                TypedValue typedValue = new TypedValue();
                this.o.getTheme().resolveAttribute(a.b.actionBarTheme, typedValue, true);
                if (typedValue.resourceId != 0) {
                    context = new androidx.appcompat.view.d(this.o, typedValue.resourceId);
                } else {
                    context = this.o;
                }
                viewGroup = (ViewGroup) LayoutInflater.from(context).inflate(a.j.abc_screen_toolbar, (ViewGroup) null);
                this.P = (ad) viewGroup.findViewById(a.g.decor_content_parent);
                this.P.setWindowCallback(p());
                if (this.A) {
                    this.P.a(109);
                }
                if (this.W) {
                    this.P.a(2);
                }
                if (this.X) {
                    this.P.a(5);
                }
            } else {
                viewGroup = null;
            }
        } else {
            viewGroup = this.B ? (ViewGroup) from.inflate(a.j.abc_screen_simple_overlay_action_mode, (ViewGroup) null) : (ViewGroup) from.inflate(a.j.abc_screen_simple, (ViewGroup) null);
        }
        if (viewGroup == null) {
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.z + ", windowActionBarOverlay: " + this.A + ", android:windowIsFloating: " + this.C + ", windowActionModeOverlay: " + this.B + ", windowNoTitle: " + this.D + " }");
        }
        if (Build.VERSION.SDK_INT >= 21) {
            af.a(viewGroup, new y() { // from class: androidx.appcompat.app.h.3
                @Override // androidx.core.n.y
                public ao a(View view, ao aoVar) {
                    int b2 = aoVar.b();
                    int a2 = h.this.a(aoVar, (Rect) null);
                    if (b2 != a2) {
                        aoVar = aoVar.a(aoVar.a(), a2, aoVar.c(), aoVar.d());
                    }
                    return af.a(view, aoVar);
                }
            });
        } else if (viewGroup instanceof androidx.appcompat.widget.ah) {
            ((androidx.appcompat.widget.ah) viewGroup).setOnFitSystemWindowsListener(new ah.a() { // from class: androidx.appcompat.app.h.4
                @Override // androidx.appcompat.widget.ah.a
                public void a(Rect rect) {
                    rect.top = h.this.a((ao) null, rect);
                }
            });
        }
        if (this.P == null) {
            this.U = (TextView) viewGroup.findViewById(a.g.title);
        }
        bg.b(viewGroup);
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(a.g.action_bar_activity_content);
        ViewGroup viewGroup2 = (ViewGroup) this.p.findViewById(R.id.content);
        if (viewGroup2 != null) {
            while (viewGroup2.getChildCount() > 0) {
                View childAt = viewGroup2.getChildAt(0);
                viewGroup2.removeViewAt(0);
                contentFrameLayout.addView(childAt);
            }
            viewGroup2.setId(-1);
            contentFrameLayout.setId(R.id.content);
            if (viewGroup2 instanceof FrameLayout) {
                ((FrameLayout) viewGroup2).setForeground(null);
            }
        }
        this.p.setContentView(viewGroup);
        contentFrameLayout.setAttachListener(new ContentFrameLayout.a() { // from class: androidx.appcompat.app.h.5
            @Override // androidx.appcompat.widget.ContentFrameLayout.a
            public void a() {
            }

            @Override // androidx.appcompat.widget.ContentFrameLayout.a
            public void b() {
                h.this.w();
            }
        });
        return viewGroup;
    }

    private void D() {
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) this.y.findViewById(R.id.content);
        View decorView = this.p.getDecorView();
        contentFrameLayout.a(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        TypedArray obtainStyledAttributes = this.o.obtainStyledAttributes(a.m.AppCompatTheme);
        obtainStyledAttributes.getValue(a.m.AppCompatTheme_windowMinWidthMajor, contentFrameLayout.getMinWidthMajor());
        obtainStyledAttributes.getValue(a.m.AppCompatTheme_windowMinWidthMinor, contentFrameLayout.getMinWidthMinor());
        if (obtainStyledAttributes.hasValue(a.m.AppCompatTheme_windowFixedWidthMajor)) {
            obtainStyledAttributes.getValue(a.m.AppCompatTheme_windowFixedWidthMajor, contentFrameLayout.getFixedWidthMajor());
        }
        if (obtainStyledAttributes.hasValue(a.m.AppCompatTheme_windowFixedWidthMinor)) {
            obtainStyledAttributes.getValue(a.m.AppCompatTheme_windowFixedWidthMinor, contentFrameLayout.getFixedWidthMinor());
        }
        if (obtainStyledAttributes.hasValue(a.m.AppCompatTheme_windowFixedHeightMajor)) {
            obtainStyledAttributes.getValue(a.m.AppCompatTheme_windowFixedHeightMajor, contentFrameLayout.getFixedHeightMajor());
        }
        if (obtainStyledAttributes.hasValue(a.m.AppCompatTheme_windowFixedHeightMinor)) {
            obtainStyledAttributes.getValue(a.m.AppCompatTheme_windowFixedHeightMinor, contentFrameLayout.getFixedHeightMinor());
        }
        obtainStyledAttributes.recycle();
        contentFrameLayout.requestLayout();
    }

    @Override // androidx.appcompat.app.g
    public boolean d(int i2) {
        int m2 = m(i2);
        if (this.D && m2 == 108) {
            return false;
        }
        if (this.z && m2 == 1) {
            this.z = false;
        }
        switch (m2) {
            case 1:
                F();
                this.D = true;
                return true;
            case 2:
                F();
                this.W = true;
                return true;
            case 5:
                F();
                this.X = true;
                return true;
            case 10:
                F();
                this.B = true;
                return true;
            case 108:
                F();
                this.z = true;
                return true;
            case 109:
                F();
                this.A = true;
                return true;
            default:
                return this.p.requestFeature(m2);
        }
    }

    @Override // androidx.appcompat.app.g
    public boolean e(int i2) {
        boolean z;
        switch (m(i2)) {
            case 1:
                z = this.D;
                break;
            case 2:
                z = this.W;
                break;
            case 5:
                z = this.X;
                break;
            case 10:
                z = this.B;
                break;
            case 108:
                z = this.z;
                break;
            case 109:
                z = this.A;
                break;
            default:
                z = false;
                break;
        }
        return z || this.p.hasFeature(i2);
    }

    @Override // androidx.appcompat.app.g
    public final void a(CharSequence charSequence) {
        this.O = charSequence;
        if (this.P != null) {
            this.P.setWindowTitle(charSequence);
        } else if (o() != null) {
            o().d(charSequence);
        } else if (this.U != null) {
            this.U.setText(charSequence);
        }
    }

    final CharSequence r() {
        if (this.n instanceof Activity) {
            return ((Activity) this.n).getTitle();
        }
        return this.O;
    }

    void h(int i2) {
        if (i2 == 108) {
            androidx.appcompat.app.a a2 = a();
            if (a2 != null) {
                a2.j(false);
                return;
            }
            return;
        }
        if (i2 == 0) {
            m a3 = a(i2, true);
            if (a3.o) {
                a(a3, false);
            }
        }
    }

    void i(int i2) {
        androidx.appcompat.app.a a2;
        if (i2 != 108 || (a2 = a()) == null) {
            return;
        }
        a2.j(true);
    }

    @Override // androidx.appcompat.view.menu.g.a
    public boolean a(@androidx.annotation.ah androidx.appcompat.view.menu.g gVar, @androidx.annotation.ah MenuItem menuItem) {
        m a2;
        Window.Callback p = p();
        if (p == null || this.E || (a2 = a((Menu) gVar.r())) == null) {
            return false;
        }
        return p.onMenuItemSelected(a2.f75a, menuItem);
    }

    @Override // androidx.appcompat.view.menu.g.a
    public void a(@androidx.annotation.ah androidx.appcompat.view.menu.g gVar) {
        c(true);
    }

    @Override // androidx.appcompat.app.g
    public androidx.appcompat.view.b a(@androidx.annotation.ah b.a aVar) {
        if (aVar == null) {
            throw new IllegalArgumentException("ActionMode callback can not be null.");
        }
        if (this.t != null) {
            this.t.c();
        }
        c cVar = new c(aVar);
        androidx.appcompat.app.a a2 = a();
        if (a2 != null) {
            this.t = a2.a(cVar);
            if (this.t != null && this.q != null) {
                this.q.a(this.t);
            }
        }
        if (this.t == null) {
            this.t = b(cVar);
        }
        return this.t;
    }

    @Override // androidx.appcompat.app.g
    public void f() {
        androidx.appcompat.app.a a2 = a();
        if (a2 == null || !a2.w()) {
            l(0);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x002d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    androidx.appcompat.view.b b(@androidx.annotation.ah b.a aVar) {
        androidx.appcompat.view.b bVar;
        Context context;
        t();
        if (this.t != null) {
            this.t.c();
        }
        if (!(aVar instanceof c)) {
            aVar = new c(aVar);
        }
        if (this.q != null && !this.E) {
            try {
                bVar = this.q.a(aVar);
            } catch (AbstractMethodError unused) {
            }
            if (bVar == null) {
                this.t = bVar;
            } else {
                if (this.u == null) {
                    if (this.C) {
                        TypedValue typedValue = new TypedValue();
                        Resources.Theme theme = this.o.getTheme();
                        theme.resolveAttribute(a.b.actionBarTheme, typedValue, true);
                        if (typedValue.resourceId != 0) {
                            Resources.Theme newTheme = this.o.getResources().newTheme();
                            newTheme.setTo(theme);
                            newTheme.applyStyle(typedValue.resourceId, true);
                            context = new androidx.appcompat.view.d(this.o, 0);
                            context.getTheme().setTo(newTheme);
                        } else {
                            context = this.o;
                        }
                        this.u = new ActionBarContextView(context);
                        this.v = new PopupWindow(context, (AttributeSet) null, a.b.actionModePopupWindowStyle);
                        androidx.core.widget.k.a(this.v, 2);
                        this.v.setContentView(this.u);
                        this.v.setWidth(-1);
                        context.getTheme().resolveAttribute(a.b.actionBarSize, typedValue, true);
                        this.u.setContentHeight(TypedValue.complexToDimensionPixelSize(typedValue.data, context.getResources().getDisplayMetrics()));
                        this.v.setHeight(-2);
                        this.w = new Runnable() { // from class: androidx.appcompat.app.h.6
                            @Override // java.lang.Runnable
                            public void run() {
                                h.this.v.showAtLocation(h.this.u, 55, 0, 0);
                                h.this.t();
                                if (h.this.s()) {
                                    h.this.u.setAlpha(0.0f);
                                    h.this.x = af.F(h.this.u).a(1.0f);
                                    h.this.x.a(new al() { // from class: androidx.appcompat.app.h.6.1
                                        @Override // androidx.core.n.al, androidx.core.n.ak
                                        public void a(View view) {
                                            h.this.u.setVisibility(0);
                                        }

                                        @Override // androidx.core.n.al, androidx.core.n.ak
                                        public void b(View view) {
                                            h.this.u.setAlpha(1.0f);
                                            h.this.x.a((ak) null);
                                            h.this.x = null;
                                        }
                                    });
                                    return;
                                }
                                h.this.u.setAlpha(1.0f);
                                h.this.u.setVisibility(0);
                            }
                        };
                    } else {
                        ViewStubCompat viewStubCompat = (ViewStubCompat) this.y.findViewById(a.g.action_mode_bar_stub);
                        if (viewStubCompat != null) {
                            viewStubCompat.setLayoutInflater(LayoutInflater.from(q()));
                            this.u = (ActionBarContextView) viewStubCompat.a();
                        }
                    }
                }
                if (this.u != null) {
                    t();
                    this.u.j();
                    androidx.appcompat.view.e eVar = new androidx.appcompat.view.e(this.u.getContext(), this.u, aVar, this.v == null);
                    if (aVar.a(eVar, eVar.b())) {
                        eVar.d();
                        this.u.a(eVar);
                        this.t = eVar;
                        if (s()) {
                            this.u.setAlpha(0.0f);
                            this.x = af.F(this.u).a(1.0f);
                            this.x.a(new al() { // from class: androidx.appcompat.app.h.7
                                @Override // androidx.core.n.al, androidx.core.n.ak
                                public void a(View view) {
                                    h.this.u.setVisibility(0);
                                    h.this.u.sendAccessibilityEvent(32);
                                    if (h.this.u.getParent() instanceof View) {
                                        af.T((View) h.this.u.getParent());
                                    }
                                }

                                @Override // androidx.core.n.al, androidx.core.n.ak
                                public void b(View view) {
                                    h.this.u.setAlpha(1.0f);
                                    h.this.x.a((ak) null);
                                    h.this.x = null;
                                }
                            });
                        } else {
                            this.u.setAlpha(1.0f);
                            this.u.setVisibility(0);
                            this.u.sendAccessibilityEvent(32);
                            if (this.u.getParent() instanceof View) {
                                af.T((View) this.u.getParent());
                            }
                        }
                        if (this.v != null) {
                            this.p.getDecorView().post(this.w);
                        }
                    } else {
                        this.t = null;
                    }
                }
            }
            if (this.t != null && this.q != null) {
                this.q.a(this.t);
            }
            return this.t;
        }
        bVar = null;
        if (bVar == null) {
        }
        if (this.t != null) {
            this.q.a(this.t);
        }
        return this.t;
    }

    final boolean s() {
        return this.T && this.y != null && af.ag(this.y);
    }

    @Override // androidx.appcompat.app.g
    public void a(boolean z) {
        this.S = z;
    }

    @Override // androidx.appcompat.app.g
    public boolean j() {
        return this.S;
    }

    void t() {
        if (this.x != null) {
            this.x.d();
        }
    }

    boolean u() {
        if (this.t != null) {
            this.t.c();
            return true;
        }
        androidx.appcompat.app.a a2 = a();
        return a2 != null && a2.x();
    }

    boolean a(int i2, KeyEvent keyEvent) {
        androidx.appcompat.app.a a2 = a();
        if (a2 != null && a2.a(i2, keyEvent)) {
            return true;
        }
        if (this.aa != null && a(this.aa, keyEvent.getKeyCode(), keyEvent, 1)) {
            if (this.aa != null) {
                this.aa.n = true;
            }
            return true;
        }
        if (this.aa == null) {
            m a3 = a(0, true);
            b(a3, keyEvent);
            boolean a4 = a(a3, keyEvent.getKeyCode(), keyEvent, 1);
            a3.m = false;
            if (a4) {
                return true;
            }
        }
        return false;
    }

    boolean a(KeyEvent keyEvent) {
        View decorView;
        if (((this.n instanceof j.a) || (this.n instanceof androidx.appcompat.app.i)) && (decorView = this.p.getDecorView()) != null && androidx.core.n.j.a(decorView, keyEvent)) {
            return true;
        }
        if (keyEvent.getKeyCode() == 82 && this.N.a().dispatchKeyEvent(keyEvent)) {
            return true;
        }
        int keyCode = keyEvent.getKeyCode();
        return keyEvent.getAction() == 0 ? c(keyCode, keyEvent) : b(keyCode, keyEvent);
    }

    boolean b(int i2, KeyEvent keyEvent) {
        if (i2 == 4) {
            boolean z = this.ab;
            this.ab = false;
            m a2 = a(0, false);
            if (a2 != null && a2.o) {
                if (!z) {
                    a(a2, true);
                }
                return true;
            }
            if (u()) {
                return true;
            }
        } else if (i2 == 82) {
            e(0, keyEvent);
            return true;
        }
        return false;
    }

    boolean c(int i2, KeyEvent keyEvent) {
        if (i2 == 4) {
            this.ab = (keyEvent.getFlags() & 128) != 0;
        } else if (i2 == 82) {
            d(0, keyEvent);
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.appcompat.app.g
    public View a(View view, String str, @androidx.annotation.ah Context context, @androidx.annotation.ah AttributeSet attributeSet) {
        boolean z = false;
        if (this.ap == null) {
            String string = this.o.obtainStyledAttributes(a.m.AppCompatTheme).getString(a.m.AppCompatTheme_viewInflaterClass);
            if (string == null) {
                this.ap = new androidx.appcompat.app.k();
            } else {
                try {
                    this.ap = (androidx.appcompat.app.k) Class.forName(string).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Throwable th) {
                    Log.i("AppCompatDelegate", "Failed to instantiate custom view inflater " + string + ". Falling back to default.", th);
                    this.ap = new androidx.appcompat.app.k();
                }
            }
        }
        if (I) {
            if (attributeSet instanceof XmlPullParser) {
                if (((XmlPullParser) attributeSet).getDepth() > 1) {
                    z = true;
                }
            } else {
                z = a((ViewParent) view);
            }
        }
        return this.ap.a(view, str, context, attributeSet, z, I, true, bf.a());
    }

    private boolean a(ViewParent viewParent) {
        if (viewParent == null) {
            return false;
        }
        View decorView = this.p.getDecorView();
        while (viewParent != null) {
            if (viewParent == decorView || !(viewParent instanceof View) || af.ak((View) viewParent)) {
                return false;
            }
            viewParent = viewParent.getParent();
        }
        return true;
    }

    @Override // androidx.appcompat.app.g
    public void i() {
        LayoutInflater from = LayoutInflater.from(this.o);
        if (from.getFactory() == null) {
            androidx.core.n.k.a(from, this);
        } else {
            if (from.getFactory2() instanceof h) {
                return;
            }
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return a(view, str, context, attributeSet);
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    @ai
    private androidx.appcompat.app.e E() {
        for (Context context = this.o; context != null; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof androidx.appcompat.app.e) {
                return (androidx.appcompat.app.e) context;
            }
            if (!(context instanceof ContextWrapper)) {
                return null;
            }
        }
        return null;
    }

    private void a(m mVar, KeyEvent keyEvent) {
        int i2;
        ViewGroup.LayoutParams layoutParams;
        if (mVar.o || this.E) {
            return;
        }
        if (mVar.f75a == 0) {
            if ((this.o.getResources().getConfiguration().screenLayout & 15) == 4) {
                return;
            }
        }
        Window.Callback p = p();
        if (p != null && !p.onMenuOpened(mVar.f75a, mVar.j)) {
            a(mVar, true);
            return;
        }
        WindowManager windowManager = (WindowManager) this.o.getSystemService("window");
        if (windowManager != null && b(mVar, keyEvent)) {
            if (mVar.g == null || mVar.q) {
                if (mVar.g == null) {
                    if (!a(mVar) || mVar.g == null) {
                        return;
                    }
                } else if (mVar.q && mVar.g.getChildCount() > 0) {
                    mVar.g.removeAllViews();
                }
                if (!c(mVar) || !mVar.a()) {
                    mVar.q = true;
                    return;
                }
                ViewGroup.LayoutParams layoutParams2 = mVar.h.getLayoutParams();
                if (layoutParams2 == null) {
                    layoutParams2 = new ViewGroup.LayoutParams(-2, -2);
                }
                mVar.g.setBackgroundResource(mVar.b);
                ViewParent parent = mVar.h.getParent();
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(mVar.h);
                }
                mVar.g.addView(mVar.h, layoutParams2);
                if (!mVar.h.hasFocus()) {
                    mVar.h.requestFocus();
                }
            } else if (mVar.i != null && (layoutParams = mVar.i.getLayoutParams()) != null && layoutParams.width == -1) {
                i2 = -1;
                mVar.n = false;
                WindowManager.LayoutParams layoutParams3 = new WindowManager.LayoutParams(i2, -2, mVar.d, mVar.e, aa.d, 8519680, -3);
                layoutParams3.gravity = mVar.c;
                layoutParams3.windowAnimations = mVar.f;
                windowManager.addView(mVar.g, layoutParams3);
                mVar.o = true;
            }
            i2 = -2;
            mVar.n = false;
            WindowManager.LayoutParams layoutParams32 = new WindowManager.LayoutParams(i2, -2, mVar.d, mVar.e, aa.d, 8519680, -3);
            layoutParams32.gravity = mVar.c;
            layoutParams32.windowAnimations = mVar.f;
            windowManager.addView(mVar.g, layoutParams32);
            mVar.o = true;
        }
    }

    private boolean a(m mVar) {
        mVar.a(q());
        mVar.g = new l(mVar.l);
        mVar.c = 81;
        return true;
    }

    private void c(boolean z) {
        if (this.P != null && this.P.h() && (!ViewConfiguration.get(this.o).hasPermanentMenuKey() || this.P.j())) {
            Window.Callback p = p();
            if (!this.P.i() || !z) {
                if (p == null || this.E) {
                    return;
                }
                if (this.F && (this.G & 1) != 0) {
                    this.p.getDecorView().removeCallbacks(this.al);
                    this.al.run();
                }
                m a2 = a(0, true);
                if (a2.j == null || a2.r || !p.onPreparePanel(0, a2.i, a2.j)) {
                    return;
                }
                p.onMenuOpened(108, a2.j);
                this.P.k();
                return;
            }
            this.P.l();
            if (this.E) {
                return;
            }
            p.onPanelClosed(108, a(0, true).j);
            return;
        }
        m a3 = a(0, true);
        a3.q = true;
        a(a3, false);
        a(a3, (KeyEvent) null);
    }

    private boolean b(m mVar) {
        Context context = this.o;
        if ((mVar.f75a == 0 || mVar.f75a == 108) && this.P != null) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme theme = context.getTheme();
            theme.resolveAttribute(a.b.actionBarTheme, typedValue, true);
            Resources.Theme theme2 = null;
            if (typedValue.resourceId != 0) {
                theme2 = context.getResources().newTheme();
                theme2.setTo(theme);
                theme2.applyStyle(typedValue.resourceId, true);
                theme2.resolveAttribute(a.b.actionBarWidgetTheme, typedValue, true);
            } else {
                theme.resolveAttribute(a.b.actionBarWidgetTheme, typedValue, true);
            }
            if (typedValue.resourceId != 0) {
                if (theme2 == null) {
                    theme2 = context.getResources().newTheme();
                    theme2.setTo(theme);
                }
                theme2.applyStyle(typedValue.resourceId, true);
            }
            if (theme2 != null) {
                androidx.appcompat.view.d dVar = new androidx.appcompat.view.d(context, 0);
                dVar.getTheme().setTo(theme2);
                context = dVar;
            }
        }
        androidx.appcompat.view.menu.g gVar = new androidx.appcompat.view.menu.g(context);
        gVar.a(this);
        mVar.a(gVar);
        return true;
    }

    private boolean c(m mVar) {
        if (mVar.i != null) {
            mVar.h = mVar.i;
            return true;
        }
        if (mVar.j == null) {
            return false;
        }
        if (this.R == null) {
            this.R = new n();
        }
        mVar.h = (View) mVar.a(this.R);
        return mVar.h != null;
    }

    private boolean b(m mVar, KeyEvent keyEvent) {
        if (this.E) {
            return false;
        }
        if (mVar.m) {
            return true;
        }
        if (this.aa != null && this.aa != mVar) {
            a(this.aa, false);
        }
        Window.Callback p = p();
        if (p != null) {
            mVar.i = p.onCreatePanelView(mVar.f75a);
        }
        boolean z = mVar.f75a == 0 || mVar.f75a == 108;
        if (z && this.P != null) {
            this.P.m();
        }
        if (mVar.i == null && (!z || !(o() instanceof androidx.appcompat.app.n))) {
            if (mVar.j == null || mVar.r) {
                if (mVar.j == null && (!b(mVar) || mVar.j == null)) {
                    return false;
                }
                if (z && this.P != null) {
                    if (this.Q == null) {
                        this.Q = new b();
                    }
                    this.P.a(mVar.j, this.Q);
                }
                mVar.j.i();
                if (!p.onCreatePanelMenu(mVar.f75a, mVar.j)) {
                    mVar.a((androidx.appcompat.view.menu.g) null);
                    if (z && this.P != null) {
                        this.P.a(null, this.Q);
                    }
                    return false;
                }
                mVar.r = false;
            }
            mVar.j.i();
            if (mVar.u != null) {
                mVar.j.d(mVar.u);
                mVar.u = null;
            }
            if (!p.onPreparePanel(0, mVar.i, mVar.j)) {
                if (z && this.P != null) {
                    this.P.a(null, this.Q);
                }
                mVar.j.j();
                return false;
            }
            mVar.p = KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1;
            mVar.j.setQwertyMode(mVar.p);
            mVar.j.j();
        }
        mVar.m = true;
        mVar.n = false;
        this.aa = mVar;
        return true;
    }

    void b(@androidx.annotation.ah androidx.appcompat.view.menu.g gVar) {
        if (this.Y) {
            return;
        }
        this.Y = true;
        this.P.n();
        Window.Callback p = p();
        if (p != null && !this.E) {
            p.onPanelClosed(108, gVar);
        }
        this.Y = false;
    }

    void j(int i2) {
        a(a(i2, true), true);
    }

    void a(m mVar, boolean z) {
        if (z && mVar.f75a == 0 && this.P != null && this.P.i()) {
            b(mVar.j);
            return;
        }
        WindowManager windowManager = (WindowManager) this.o.getSystemService("window");
        if (windowManager != null && mVar.o && mVar.g != null) {
            windowManager.removeView(mVar.g);
            if (z) {
                a(mVar.f75a, mVar, (Menu) null);
            }
        }
        mVar.m = false;
        mVar.n = false;
        mVar.o = false;
        mVar.h = null;
        mVar.q = true;
        if (this.aa == mVar) {
            this.aa = null;
        }
    }

    private boolean d(int i2, KeyEvent keyEvent) {
        if (keyEvent.getRepeatCount() != 0) {
            return false;
        }
        m a2 = a(i2, true);
        if (a2.o) {
            return false;
        }
        return b(a2, keyEvent);
    }

    private boolean e(int i2, KeyEvent keyEvent) {
        boolean z;
        boolean z2;
        if (this.t != null) {
            return false;
        }
        m a2 = a(i2, true);
        if (i2 == 0 && this.P != null && this.P.h() && !ViewConfiguration.get(this.o).hasPermanentMenuKey()) {
            if (!this.P.i()) {
                if (!this.E && b(a2, keyEvent)) {
                    z = this.P.k();
                }
                z = false;
            } else {
                z = this.P.l();
            }
        } else if (a2.o || a2.n) {
            z = a2.o;
            a(a2, true);
        } else {
            if (a2.m) {
                if (a2.r) {
                    a2.m = false;
                    z2 = b(a2, keyEvent);
                } else {
                    z2 = true;
                }
                if (z2) {
                    a(a2, keyEvent);
                    z = true;
                }
            }
            z = false;
        }
        if (z) {
            AudioManager audioManager = (AudioManager) this.o.getApplicationContext().getSystemService("audio");
            if (audioManager != null) {
                audioManager.playSoundEffect(0);
            } else {
                Log.w("AppCompatDelegate", "Couldn't get audio manager");
            }
        }
        return z;
    }

    void a(int i2, m mVar, Menu menu) {
        if (menu == null) {
            if (mVar == null && i2 >= 0 && i2 < this.Z.length) {
                mVar = this.Z[i2];
            }
            if (mVar != null) {
                menu = mVar.j;
            }
        }
        if ((mVar == null || mVar.o) && !this.E) {
            this.N.a().onPanelClosed(i2, menu);
        }
    }

    m a(Menu menu) {
        m[] mVarArr = this.Z;
        int length = mVarArr != null ? mVarArr.length : 0;
        for (int i2 = 0; i2 < length; i2++) {
            m mVar = mVarArr[i2];
            if (mVar != null && mVar.j == menu) {
                return mVar;
            }
        }
        return null;
    }

    protected m a(int i2, boolean z) {
        m[] mVarArr = this.Z;
        if (mVarArr == null || mVarArr.length <= i2) {
            m[] mVarArr2 = new m[i2 + 1];
            if (mVarArr != null) {
                System.arraycopy(mVarArr, 0, mVarArr2, 0, mVarArr.length);
            }
            this.Z = mVarArr2;
            mVarArr = mVarArr2;
        }
        m mVar = mVarArr[i2];
        if (mVar != null) {
            return mVar;
        }
        m mVar2 = new m(i2);
        mVarArr[i2] = mVar2;
        return mVar2;
    }

    private boolean a(m mVar, int i2, KeyEvent keyEvent, int i3) {
        boolean z = false;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((mVar.m || b(mVar, keyEvent)) && mVar.j != null) {
            z = mVar.j.performShortcut(i2, keyEvent, i3);
        }
        if (z && (i3 & 1) == 0 && this.P == null) {
            a(mVar, true);
        }
        return z;
    }

    private void l(int i2) {
        this.G = (1 << i2) | this.G;
        if (this.F) {
            return;
        }
        af.a(this.p.getDecorView(), this.al);
        this.F = true;
    }

    void k(int i2) {
        m a2;
        m a3 = a(i2, true);
        if (a3.j != null) {
            Bundle bundle = new Bundle();
            a3.j.c(bundle);
            if (bundle.size() > 0) {
                a3.u = bundle;
            }
            a3.j.i();
            a3.j.clear();
        }
        a3.r = true;
        a3.q = true;
        if ((i2 != 108 && i2 != 0) || this.P == null || (a2 = a(0, false)) == null) {
            return;
        }
        a2.m = false;
        b(a2, (KeyEvent) null);
    }

    final int a(@ai ao aoVar, @ai Rect rect) {
        int i2;
        boolean z;
        boolean z2;
        if (aoVar != null) {
            i2 = aoVar.b();
        } else {
            i2 = rect != null ? rect.top : 0;
        }
        if (this.u == null || !(this.u.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z = false;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.u.getLayoutParams();
            if (this.u.isShown()) {
                if (this.an == null) {
                    this.an = new Rect();
                    this.ao = new Rect();
                }
                Rect rect2 = this.an;
                Rect rect3 = this.ao;
                if (aoVar == null) {
                    rect2.set(rect);
                } else {
                    rect2.set(aoVar.a(), aoVar.b(), aoVar.c(), aoVar.d());
                }
                bg.a(this.y, rect2, rect3);
                int i3 = rect2.top;
                int i4 = rect2.left;
                int i5 = rect2.right;
                ao X = af.X(this.y);
                int a2 = X == null ? 0 : X.a();
                int c2 = X == null ? 0 : X.c();
                if (marginLayoutParams.topMargin == i3 && marginLayoutParams.leftMargin == i4 && marginLayoutParams.rightMargin == i5) {
                    z2 = false;
                } else {
                    marginLayoutParams.topMargin = i3;
                    marginLayoutParams.leftMargin = i4;
                    marginLayoutParams.rightMargin = i5;
                    z2 = true;
                }
                if (i3 > 0 && this.V == null) {
                    this.V = new View(this.o);
                    this.V.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, marginLayoutParams.topMargin, 51);
                    layoutParams.leftMargin = a2;
                    layoutParams.rightMargin = c2;
                    this.y.addView(this.V, -1, layoutParams);
                } else if (this.V != null) {
                    ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) this.V.getLayoutParams();
                    if (marginLayoutParams2.height != marginLayoutParams.topMargin || marginLayoutParams2.leftMargin != a2 || marginLayoutParams2.rightMargin != c2) {
                        marginLayoutParams2.height = marginLayoutParams.topMargin;
                        marginLayoutParams2.leftMargin = a2;
                        marginLayoutParams2.rightMargin = c2;
                        this.V.setLayoutParams(marginLayoutParams2);
                    }
                }
                z = this.V != null;
                if (z && this.V.getVisibility() != 0) {
                    b(this.V);
                }
                if (!this.B && z) {
                    i2 = 0;
                }
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z2 = true;
                z = false;
            } else {
                z2 = false;
                z = false;
            }
            if (z2) {
                this.u.setLayoutParams(marginLayoutParams);
            }
        }
        if (this.V != null) {
            this.V.setVisibility(z ? 0 : 8);
        }
        return i2;
    }

    private void b(View view) {
        int c2;
        if ((af.S(view) & 8192) != 0) {
            c2 = androidx.core.b.c.c(this.o, a.d.abc_decor_view_status_guard_light);
        } else {
            c2 = androidx.core.b.c.c(this.o, a.d.abc_decor_view_status_guard);
        }
        view.setBackgroundColor(c2);
    }

    private void F() {
        if (this.T) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    private int m(int i2) {
        if (i2 == 8) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            return 108;
        }
        if (i2 != 9) {
            return i2;
        }
        Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
        return 109;
    }

    ViewGroup v() {
        return this.y;
    }

    void w() {
        if (this.P != null) {
            this.P.n();
        }
        if (this.v != null) {
            this.p.getDecorView().removeCallbacks(this.w);
            if (this.v.isShowing()) {
                try {
                    this.v.dismiss();
                } catch (IllegalArgumentException unused) {
                }
            }
            this.v = null;
        }
        t();
        m a2 = a(0, false);
        if (a2 == null || a2.j == null) {
            return;
        }
        a2.j.close();
    }

    @Override // androidx.appcompat.app.g
    public boolean k() {
        return d(true);
    }

    private boolean d(boolean z) {
        if (this.E) {
            return false;
        }
        int G = G();
        boolean b2 = b(a(this.o, G), z);
        if (G == 0) {
            c(this.o).d();
        } else if (this.aj != null) {
            this.aj.e();
        }
        if (G == 3) {
            d(this.o).d();
        } else if (this.ak != null) {
            this.ak.e();
        }
        return b2;
    }

    @Override // androidx.appcompat.app.g
    @am(a = 17)
    public void f(int i2) {
        if (this.af != i2) {
            this.af = i2;
            if (this.ac) {
                k();
            }
        }
    }

    @Override // androidx.appcompat.app.g
    public int l() {
        return this.af;
    }

    int a(@androidx.annotation.ah Context context, int i2) {
        if (i2 == -100) {
            return -1;
        }
        switch (i2) {
            case -1:
            case 1:
            case 2:
                return i2;
            case 0:
                if (Build.VERSION.SDK_INT < 23 || ((UiModeManager) context.getApplicationContext().getSystemService(UiModeManager.class)).getNightMode() != 0) {
                    return c(context).a();
                }
                return -1;
            case 3:
                return d(context).a();
            default:
                throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
        }
    }

    private int G() {
        return this.af != -100 ? this.af : m();
    }

    @androidx.annotation.ah
    private Configuration a(@androidx.annotation.ah Context context, int i2, @ai Configuration configuration) {
        int i3;
        switch (i2) {
            case 1:
                i3 = 16;
                break;
            case 2:
                i3 = 32;
                break;
            default:
                i3 = context.getApplicationContext().getResources().getConfiguration().uiMode & 48;
                break;
        }
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = 0.0f;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i3 | (configuration2.uiMode & (-49));
        return configuration2;
    }

    private boolean b(int i2, boolean z) {
        boolean z2;
        Configuration a2 = a(this.o, i2, (Configuration) null);
        boolean H2 = H();
        int i3 = this.o.getResources().getConfiguration().uiMode & 48;
        int i4 = a2.uiMode & 48;
        if (i3 != i4 && z && !H2 && this.ac && ((K || this.ad) && (this.n instanceof Activity) && !((Activity) this.n).isChild())) {
            androidx.core.app.a.g((Activity) this.n);
            z2 = true;
        } else {
            z2 = false;
        }
        if (!z2 && i3 != i4) {
            a(i4, H2, (Configuration) null);
            z2 = true;
        }
        if (z2 && (this.n instanceof androidx.appcompat.app.e)) {
            ((androidx.appcompat.app.e) this.n).c(i2);
        }
        return z2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void a(int i2, boolean z, @ai Configuration configuration) {
        Resources resources = this.o.getResources();
        Configuration configuration2 = new Configuration(resources.getConfiguration());
        if (configuration != null) {
            configuration2.updateFrom(configuration);
        }
        configuration2.uiMode = i2 | (resources.getConfiguration().uiMode & (-49));
        resources.updateConfiguration(configuration2, null);
        if (Build.VERSION.SDK_INT < 26) {
            androidx.appcompat.app.m.a(resources);
        }
        if (this.ag != 0) {
            this.o.setTheme(this.ag);
            if (Build.VERSION.SDK_INT >= 23) {
                this.o.getTheme().applyStyle(this.ag, true);
            }
        }
        if (z && (this.n instanceof Activity)) {
            Activity activity = (Activity) this.n;
            if (activity instanceof androidx.lifecycle.j) {
                if (((androidx.lifecycle.j) activity).c().a().a(g.b.STARTED)) {
                    activity.onConfigurationChanged(configuration2);
                }
            } else if (this.ae) {
                activity.onConfigurationChanged(configuration2);
            }
        }
    }

    @androidx.annotation.ah
    @ap(a = {ap.a.LIBRARY})
    @ax
    final f x() {
        return c(this.o);
    }

    private f c(@androidx.annotation.ah Context context) {
        if (this.aj == null) {
            this.aj = new g(p.a(context));
        }
        return this.aj;
    }

    private f d(@androidx.annotation.ah Context context) {
        if (this.ak == null) {
            this.ak = new e(context);
        }
        return this.ak;
    }

    private boolean H() {
        int i2;
        if (!this.ai && (this.n instanceof Activity)) {
            PackageManager packageManager = this.o.getPackageManager();
            if (packageManager == null) {
                return false;
            }
            try {
                if (Build.VERSION.SDK_INT >= 29) {
                    i2 = 269221888;
                } else {
                    i2 = Build.VERSION.SDK_INT >= 24 ? 786432 : 0;
                }
                ActivityInfo activityInfo = packageManager.getActivityInfo(new ComponentName(this.o, this.n.getClass()), i2);
                this.ah = (activityInfo == null || (activityInfo.configChanges & 512) == 0) ? false : true;
            } catch (PackageManager.NameNotFoundException e2) {
                Log.d("AppCompatDelegate", "Exception while getting ActivityInfo", e2);
                this.ah = false;
            }
        }
        this.ai = true;
        return this.ah;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class c implements b.a {
        private b.a b;

        public c(b.a aVar) {
            this.b = aVar;
        }

        @Override // androidx.appcompat.view.b.a
        public boolean a(androidx.appcompat.view.b bVar, Menu menu) {
            return this.b.a(bVar, menu);
        }

        @Override // androidx.appcompat.view.b.a
        public boolean b(androidx.appcompat.view.b bVar, Menu menu) {
            af.T(h.this.y);
            return this.b.b(bVar, menu);
        }

        @Override // androidx.appcompat.view.b.a
        public boolean a(androidx.appcompat.view.b bVar, MenuItem menuItem) {
            return this.b.a(bVar, menuItem);
        }

        @Override // androidx.appcompat.view.b.a
        public void a(androidx.appcompat.view.b bVar) {
            this.b.a(bVar);
            if (h.this.v != null) {
                h.this.p.getDecorView().removeCallbacks(h.this.w);
            }
            if (h.this.u != null) {
                h.this.t();
                h.this.x = af.F(h.this.u).a(0.0f);
                h.this.x.a(new al() { // from class: androidx.appcompat.app.h.c.1
                    @Override // androidx.core.n.al, androidx.core.n.ak
                    public void b(View view) {
                        h.this.u.setVisibility(8);
                        if (h.this.v != null) {
                            h.this.v.dismiss();
                        } else if (h.this.u.getParent() instanceof View) {
                            af.T((View) h.this.u.getParent());
                        }
                        h.this.u.removeAllViews();
                        h.this.x.a((ak) null);
                        h.this.x = null;
                        af.T(h.this.y);
                    }
                });
            }
            if (h.this.q != null) {
                h.this.q.b(h.this.t);
            }
            h.this.t = null;
            af.T(h.this.y);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public final class n implements n.a {
        n() {
        }

        @Override // androidx.appcompat.view.menu.n.a
        public void a(@androidx.annotation.ah androidx.appcompat.view.menu.g gVar, boolean z) {
            androidx.appcompat.view.menu.g r = gVar.r();
            boolean z2 = r != gVar;
            h hVar = h.this;
            if (z2) {
                gVar = r;
            }
            m a2 = hVar.a((Menu) gVar);
            if (a2 != null) {
                if (z2) {
                    h.this.a(a2.f75a, a2, r);
                    h.this.a(a2, true);
                } else {
                    h.this.a(a2, z);
                }
            }
        }

        @Override // androidx.appcompat.view.menu.n.a
        public boolean a(@androidx.annotation.ah androidx.appcompat.view.menu.g gVar) {
            Window.Callback p;
            if (gVar != gVar.r() || !h.this.z || (p = h.this.p()) == null || h.this.E) {
                return true;
            }
            p.onMenuOpened(108, gVar);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public final class b implements n.a {
        b() {
        }

        @Override // androidx.appcompat.view.menu.n.a
        public boolean a(@androidx.annotation.ah androidx.appcompat.view.menu.g gVar) {
            Window.Callback p = h.this.p();
            if (p == null) {
                return true;
            }
            p.onMenuOpened(108, gVar);
            return true;
        }

        @Override // androidx.appcompat.view.menu.n.a
        public void a(@androidx.annotation.ah androidx.appcompat.view.menu.g gVar, boolean z) {
            h.this.b(gVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class m {

        /* renamed from: a, reason: collision with root package name */
        int f75a;
        int b;
        int c;
        int d;
        int e;
        int f;
        ViewGroup g;
        View h;
        View i;
        androidx.appcompat.view.menu.g j;
        androidx.appcompat.view.menu.e k;
        Context l;
        boolean m;
        boolean n;
        boolean o;
        public boolean p;
        boolean q = false;
        boolean r;
        boolean s;
        Bundle t;
        Bundle u;

        m(int i) {
            this.f75a = i;
        }

        public boolean a() {
            if (this.h == null) {
                return false;
            }
            return this.i != null || this.k.a().getCount() > 0;
        }

        public void b() {
            if (this.j != null) {
                this.j.b(this.k);
            }
            this.k = null;
        }

        void a(Context context) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme newTheme = context.getResources().newTheme();
            newTheme.setTo(context.getTheme());
            newTheme.resolveAttribute(a.b.actionBarPopupTheme, typedValue, true);
            if (typedValue.resourceId != 0) {
                newTheme.applyStyle(typedValue.resourceId, true);
            }
            newTheme.resolveAttribute(a.b.panelMenuListTheme, typedValue, true);
            if (typedValue.resourceId != 0) {
                newTheme.applyStyle(typedValue.resourceId, true);
            } else {
                newTheme.applyStyle(a.l.Theme_AppCompat_CompactMenu, true);
            }
            androidx.appcompat.view.d dVar = new androidx.appcompat.view.d(context, 0);
            dVar.getTheme().setTo(newTheme);
            this.l = dVar;
            TypedArray obtainStyledAttributes = dVar.obtainStyledAttributes(a.m.AppCompatTheme);
            this.b = obtainStyledAttributes.getResourceId(a.m.AppCompatTheme_panelBackground, 0);
            this.f = obtainStyledAttributes.getResourceId(a.m.AppCompatTheme_android_windowAnimationStyle, 0);
            obtainStyledAttributes.recycle();
        }

        void a(androidx.appcompat.view.menu.g gVar) {
            if (gVar == this.j) {
                return;
            }
            if (this.j != null) {
                this.j.b(this.k);
            }
            this.j = gVar;
            if (gVar == null || this.k == null) {
                return;
            }
            gVar.a(this.k);
        }

        androidx.appcompat.view.menu.o a(n.a aVar) {
            if (this.j == null) {
                return null;
            }
            if (this.k == null) {
                this.k = new androidx.appcompat.view.menu.e(this.l, a.j.abc_list_menu_item_layout);
                this.k.a(aVar);
                this.j.a(this.k);
            }
            return this.k.a(this.g);
        }

        Parcelable c() {
            a aVar = new a();
            aVar.f76a = this.f75a;
            aVar.b = this.o;
            if (this.j != null) {
                aVar.c = new Bundle();
                this.j.a(aVar.c);
            }
            return aVar;
        }

        void a(Parcelable parcelable) {
            a aVar = (a) parcelable;
            this.f75a = aVar.f76a;
            this.s = aVar.b;
            this.t = aVar.c;
            this.h = null;
            this.g = null;
        }

        void d() {
            if (this.j == null || this.t == null) {
                return;
            }
            this.j.b(this.t);
            this.t = null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @SuppressLint({"BanParcelableUsage"})
        /* loaded from: /home/user/work/dex/classes.dex */
        public static class a implements Parcelable {
            public static final Parcelable.Creator<a> CREATOR = new Parcelable.ClassLoaderCreator<a>() { // from class: androidx.appcompat.app.h.m.a.1
                @Override // android.os.Parcelable.ClassLoaderCreator
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public a createFromParcel(Parcel parcel, ClassLoader classLoader) {
                    return a.a(parcel, classLoader);
                }

                @Override // android.os.Parcelable.Creator
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public a createFromParcel(Parcel parcel) {
                    return a.a(parcel, null);
                }

                @Override // android.os.Parcelable.Creator
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public a[] newArray(int i) {
                    return new a[i];
                }
            };

            /* renamed from: a, reason: collision with root package name */
            int f76a;
            boolean b;
            Bundle c;

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            a() {
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.f76a);
                parcel.writeInt(this.b ? 1 : 0);
                if (this.b) {
                    parcel.writeBundle(this.c);
                }
            }

            static a a(Parcel parcel, ClassLoader classLoader) {
                a aVar = new a();
                aVar.f76a = parcel.readInt();
                aVar.b = parcel.readInt() == 1;
                if (aVar.b) {
                    aVar.c = parcel.readBundle(classLoader);
                }
                return aVar;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class l extends ContentFrameLayout {
        public l(Context context) {
            super(context);
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return h.this.a(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0 && a((int) motionEvent.getX(), (int) motionEvent.getY())) {
                h.this.j(0);
                return true;
            }
            return super.onInterceptTouchEvent(motionEvent);
        }

        @Override // android.view.View
        public void setBackgroundResource(int i) {
            setBackgroundDrawable(androidx.appcompat.a.a.a.b(getContext(), i));
        }

        private boolean a(int i, int i2) {
            return i < -5 || i2 < -5 || i > getWidth() + 5 || i2 > getHeight() + 5;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class d extends androidx.appcompat.view.i {
        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public void onContentChanged() {
        }

        d(Window.Callback callback) {
            super(callback);
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return h.this.a(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
            return super.dispatchKeyShortcutEvent(keyEvent) || h.this.a(keyEvent.getKeyCode(), keyEvent);
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public boolean onCreatePanelMenu(int i, Menu menu) {
            if (i != 0 || (menu instanceof androidx.appcompat.view.menu.g)) {
                return super.onCreatePanelMenu(i, menu);
            }
            return false;
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public boolean onPreparePanel(int i, View view, Menu menu) {
            androidx.appcompat.view.menu.g gVar = menu instanceof androidx.appcompat.view.menu.g ? (androidx.appcompat.view.menu.g) menu : null;
            if (i == 0 && gVar == null) {
                return false;
            }
            if (gVar != null) {
                gVar.e(true);
            }
            boolean onPreparePanel = super.onPreparePanel(i, view, menu);
            if (gVar != null) {
                gVar.e(false);
            }
            return onPreparePanel;
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public boolean onMenuOpened(int i, Menu menu) {
            super.onMenuOpened(i, menu);
            h.this.i(i);
            return true;
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public void onPanelClosed(int i, Menu menu) {
            super.onPanelClosed(i, menu);
            h.this.h(i);
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            if (Build.VERSION.SDK_INT >= 23) {
                return null;
            }
            if (h.this.j()) {
                return a(callback);
            }
            return super.onWindowStartingActionMode(callback);
        }

        final ActionMode a(ActionMode.Callback callback) {
            f.a aVar = new f.a(h.this.o, callback);
            androidx.appcompat.view.b a2 = h.this.a(aVar);
            if (a2 != null) {
                return aVar.b(a2);
            }
            return null;
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        @am(a = 23)
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i) {
            if (h.this.j() && i == 0) {
                return a(callback);
            }
            return super.onWindowStartingActionMode(callback, i);
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        @am(a = 24)
        public void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> list, Menu menu, int i) {
            m a2 = h.this.a(0, true);
            if (a2 != null && a2.j != null) {
                super.onProvideKeyboardShortcuts(list, a2.j, i);
            } else {
                super.onProvideKeyboardShortcuts(list, menu, i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ap(a = {ap.a.LIBRARY})
    @ax
    /* loaded from: /home/user/work/dex/classes.dex */
    public abstract class f {

        /* renamed from: a, reason: collision with root package name */
        private BroadcastReceiver f71a;

        abstract int a();

        abstract void b();

        @ai
        abstract IntentFilter c();

        f() {
        }

        void d() {
            e();
            IntentFilter c = c();
            if (c == null || c.countActions() == 0) {
                return;
            }
            if (this.f71a == null) {
                this.f71a = new BroadcastReceiver() { // from class: androidx.appcompat.app.h.f.1
                    @Override // android.content.BroadcastReceiver
                    public void onReceive(Context context, Intent intent) {
                        f.this.b();
                    }
                };
            }
            h.this.o.registerReceiver(this.f71a, c);
        }

        void e() {
            if (this.f71a != null) {
                try {
                    h.this.o.unregisterReceiver(this.f71a);
                } catch (IllegalArgumentException unused) {
                }
                this.f71a = null;
            }
        }

        boolean f() {
            return this.f71a != null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class g extends f {
        private final p c;

        g(p pVar) {
            super();
            this.c = pVar;
        }

        @Override // androidx.appcompat.app.h.f
        public int a() {
            return this.c.a() ? 2 : 1;
        }

        @Override // androidx.appcompat.app.h.f
        public void b() {
            h.this.k();
        }

        @Override // androidx.appcompat.app.h.f
        IntentFilter c() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.TIME_SET");
            intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
            intentFilter.addAction("android.intent.action.TIME_TICK");
            return intentFilter;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class e extends f {
        private final PowerManager c;

        e(Context context) {
            super();
            this.c = (PowerManager) context.getApplicationContext().getSystemService("power");
        }

        @Override // androidx.appcompat.app.h.f
        public int a() {
            return (Build.VERSION.SDK_INT < 21 || !this.c.isPowerSaveMode()) ? 1 : 2;
        }

        @Override // androidx.appcompat.app.h.f
        public void b() {
            h.this.k();
        }

        @Override // androidx.appcompat.app.h.f
        IntentFilter c() {
            if (Build.VERSION.SDK_INT < 21) {
                return null;
            }
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
            return intentFilter;
        }
    }

    @Override // androidx.appcompat.app.g
    public final b.a h() {
        return new a();
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private class a implements b.a {
        a() {
        }

        @Override // androidx.appcompat.app.b.a
        public Drawable a() {
            ba a2 = ba.a(b(), (AttributeSet) null, new int[]{a.b.homeAsUpIndicator});
            Drawable a3 = a2.a(0);
            a2.f();
            return a3;
        }

        @Override // androidx.appcompat.app.b.a
        public Context b() {
            return h.this.q();
        }

        @Override // androidx.appcompat.app.b.a
        public boolean c() {
            androidx.appcompat.app.a a2 = h.this.a();
            return (a2 == null || (a2.g() & 4) == 0) ? false : true;
        }

        @Override // androidx.appcompat.app.b.a
        public void a(Drawable drawable, int i) {
            androidx.appcompat.app.a a2 = h.this.a();
            if (a2 != null) {
                a2.f(drawable);
                a2.l(i);
            }
        }

        @Override // androidx.appcompat.app.b.a
        public void a(int i) {
            androidx.appcompat.app.a a2 = h.this.a();
            if (a2 != null) {
                a2.l(i);
            }
        }
    }

    @androidx.annotation.ah
    private static Configuration a(@androidx.annotation.ah Configuration configuration, @ai Configuration configuration2) {
        Configuration configuration3 = new Configuration();
        configuration3.fontScale = 0.0f;
        if (configuration2 == null || configuration.diff(configuration2) == 0) {
            return configuration3;
        }
        if (configuration.fontScale != configuration2.fontScale) {
            configuration3.fontScale = configuration2.fontScale;
        }
        if (configuration.mcc != configuration2.mcc) {
            configuration3.mcc = configuration2.mcc;
        }
        if (configuration.mnc != configuration2.mnc) {
            configuration3.mnc = configuration2.mnc;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            i.a(configuration, configuration2, configuration3);
        } else if (!androidx.core.m.e.a(configuration.locale, configuration2.locale)) {
            configuration3.locale = configuration2.locale;
        }
        if (configuration.touchscreen != configuration2.touchscreen) {
            configuration3.touchscreen = configuration2.touchscreen;
        }
        if (configuration.keyboard != configuration2.keyboard) {
            configuration3.keyboard = configuration2.keyboard;
        }
        if (configuration.keyboardHidden != configuration2.keyboardHidden) {
            configuration3.keyboardHidden = configuration2.keyboardHidden;
        }
        if (configuration.navigation != configuration2.navigation) {
            configuration3.navigation = configuration2.navigation;
        }
        if (configuration.navigationHidden != configuration2.navigationHidden) {
            configuration3.navigationHidden = configuration2.navigationHidden;
        }
        if (configuration.orientation != configuration2.orientation) {
            configuration3.orientation = configuration2.orientation;
        }
        if ((configuration.screenLayout & 15) != (configuration2.screenLayout & 15)) {
            configuration3.screenLayout |= configuration2.screenLayout & 15;
        }
        if ((configuration.screenLayout & 192) != (configuration2.screenLayout & 192)) {
            configuration3.screenLayout |= configuration2.screenLayout & 192;
        }
        if ((configuration.screenLayout & 48) != (configuration2.screenLayout & 48)) {
            configuration3.screenLayout |= configuration2.screenLayout & 48;
        }
        if ((configuration.screenLayout & 768) != (configuration2.screenLayout & 768)) {
            configuration3.screenLayout |= configuration2.screenLayout & 768;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            j.a(configuration, configuration2, configuration3);
        }
        if ((configuration.uiMode & 15) != (configuration2.uiMode & 15)) {
            configuration3.uiMode |= configuration2.uiMode & 15;
        }
        if ((configuration.uiMode & 48) != (configuration2.uiMode & 48)) {
            configuration3.uiMode |= configuration2.uiMode & 48;
        }
        if (configuration.screenWidthDp != configuration2.screenWidthDp) {
            configuration3.screenWidthDp = configuration2.screenWidthDp;
        }
        if (configuration.screenHeightDp != configuration2.screenHeightDp) {
            configuration3.screenHeightDp = configuration2.screenHeightDp;
        }
        if (configuration.smallestScreenWidthDp != configuration2.smallestScreenWidthDp) {
            configuration3.smallestScreenWidthDp = configuration2.smallestScreenWidthDp;
        }
        if (Build.VERSION.SDK_INT >= 17) {
            C0013h.a(configuration, configuration2, configuration3);
        }
        return configuration3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @am(a = 17)
    /* renamed from: androidx.appcompat.app.h$h, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class C0013h {
        private C0013h() {
        }

        static void a(@androidx.annotation.ah Configuration configuration, @androidx.annotation.ah Configuration configuration2, @androidx.annotation.ah Configuration configuration3) {
            if (configuration.densityDpi != configuration2.densityDpi) {
                configuration3.densityDpi = configuration2.densityDpi;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @am(a = 24)
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class i {
        private i() {
        }

        static void a(@androidx.annotation.ah Configuration configuration, @androidx.annotation.ah Configuration configuration2, @androidx.annotation.ah Configuration configuration3) {
            LocaleList locales = configuration.getLocales();
            LocaleList locales2 = configuration2.getLocales();
            if (locales.equals(locales2)) {
                return;
            }
            configuration3.setLocales(locales2);
            configuration3.locale = configuration2.locale;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @am(a = 26)
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class j {
        private j() {
        }

        static void a(@androidx.annotation.ah Configuration configuration, @androidx.annotation.ah Configuration configuration2, @androidx.annotation.ah Configuration configuration3) {
            if ((configuration.colorMode & 3) != (configuration2.colorMode & 3)) {
                configuration3.colorMode |= configuration2.colorMode & 3;
            }
            if ((configuration.colorMode & 12) != (configuration2.colorMode & 12)) {
                configuration3.colorMode |= configuration2.colorMode & 12;
            }
        }
    }
}
