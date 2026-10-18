package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.activity.OnBackPressedDispatcher;
import androidx.annotation.ac;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import androidx.core.app.a;
import androidx.core.app.z;
import androidx.lifecycle.g;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* loaded from: /home/user/work/dex/classes.dex */
public class e extends androidx.activity.b implements a.InterfaceC0023a, a.c {

    /* renamed from: a, reason: collision with root package name */
    static final String f758a = "android:support:fragments";
    static final String b = "android:support:next_request_index";
    static final String c = "android:support:request_indicies";
    static final String d = "android:support:request_fragment_who";
    static final int e = 65534;
    private static final String p = "FragmentActivity";
    final g f;
    final androidx.lifecycle.k g;
    boolean h;
    boolean i;
    boolean j;
    boolean k;
    boolean l;
    boolean m;
    int n;
    androidx.c.j<String> o;

    public void a(@ah d dVar) {
    }

    public e() {
        this.f = g.a(new a());
        this.g = new androidx.lifecycle.k(this);
        this.j = true;
    }

    @androidx.annotation.n
    public e(@ac int i) {
        super(i);
        this.f = g.a(new a());
        this.g = new androidx.lifecycle.k(this);
        this.j = true;
    }

    @Override // android.app.Activity
    @androidx.annotation.i
    protected void onActivityResult(int i, int i2, @ai Intent intent) {
        this.f.d();
        int i3 = i >> 16;
        if (i3 != 0) {
            int i4 = i3 - 1;
            String a2 = this.o.a(i4);
            this.o.c(i4);
            if (a2 == null) {
                Log.w(p, "Activity result delivered for unknown Fragment.");
                return;
            }
            d a3 = this.f.a(a2);
            if (a3 == null) {
                Log.w(p, "Activity result no fragment exists for who: " + a2);
                return;
            }
            a3.a(i & androidx.core.e.a.a.d, i2, intent);
            return;
        }
        a.b a4 = androidx.core.app.a.a();
        if (a4 == null || !a4.a(this, i, i2, intent)) {
            super.onActivityResult(i, i2, intent);
        }
    }

    public void m() {
        androidx.core.app.a.c((Activity) this);
    }

    public void a(@ai z zVar) {
        androidx.core.app.a.a(this, zVar);
    }

    public void b(@ai z zVar) {
        androidx.core.app.a.b(this, zVar);
    }

    public void n() {
        androidx.core.app.a.e((Activity) this);
    }

    public void o() {
        androidx.core.app.a.f((Activity) this);
    }

    @Override // android.app.Activity
    @androidx.annotation.i
    public void onMultiWindowModeChanged(boolean z) {
        this.f.a(z);
    }

    @Override // android.app.Activity
    @androidx.annotation.i
    public void onPictureInPictureModeChanged(boolean z) {
        this.f.b(z);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(@ah Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f.d();
        this.f.a(configuration);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.activity.b, androidx.core.app.j, android.app.Activity
    public void onCreate(@ai Bundle bundle) {
        this.f.a((d) null);
        if (bundle != null) {
            this.f.a(bundle.getParcelable(f758a));
            if (bundle.containsKey(b)) {
                this.n = bundle.getInt(b);
                int[] intArray = bundle.getIntArray(c);
                String[] stringArray = bundle.getStringArray(d);
                if (intArray == null || stringArray == null || intArray.length != stringArray.length) {
                    Log.w(p, "Invalid requestCode mapping in savedInstanceState.");
                } else {
                    this.o = new androidx.c.j<>(intArray.length);
                    for (int i = 0; i < intArray.length; i++) {
                        this.o.d(intArray[i], stringArray[i]);
                    }
                }
            }
        }
        if (this.o == null) {
            this.o = new androidx.c.j<>();
            this.n = 0;
        }
        super.onCreate(bundle);
        this.g.a(g.a.ON_CREATE);
        this.f.h();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onCreatePanelMenu(int i, @ah Menu menu) {
        if (i == 0) {
            return this.f.a(menu, getMenuInflater()) | super.onCreatePanelMenu(i, menu);
        }
        return super.onCreatePanelMenu(i, menu);
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    @ai
    public View onCreateView(@ai View view, @ah String str, @ah Context context, @ah AttributeSet attributeSet) {
        View a2 = a(view, str, context, attributeSet);
        return a2 == null ? super.onCreateView(view, str, context, attributeSet) : a2;
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    @ai
    public View onCreateView(@ah String str, @ah Context context, @ah AttributeSet attributeSet) {
        View a2 = a((View) null, str, context, attributeSet);
        return a2 == null ? super.onCreateView(str, context, attributeSet) : a2;
    }

    @ai
    final View a(@ai View view, @ah String str, @ah Context context, @ah AttributeSet attributeSet) {
        return this.f.a(view, str, context, attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f.p();
        this.g.a(g.a.ON_DESTROY);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        this.f.q();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i, @ah MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        if (i == 0) {
            return this.f.a(menuItem);
        }
        if (i != 6) {
            return false;
        }
        return this.f.b(menuItem);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, @ah Menu menu) {
        if (i == 0) {
            this.f.b(menu);
        }
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.i = false;
        this.f.l();
        this.g.a(g.a.ON_PAUSE);
    }

    @Override // android.app.Activity
    @androidx.annotation.i
    protected void onNewIntent(@SuppressLint({"UnknownNullness"}) Intent intent) {
        super.onNewIntent(intent);
        this.f.d();
    }

    @Override // android.app.Activity
    public void onStateNotSaved() {
        this.f.d();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.i = true;
        this.f.d();
        this.f.r();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        p();
    }

    protected void p() {
        this.g.a(g.a.ON_RESUME);
        this.f.k();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onPreparePanel(int i, @ai View view, @ah Menu menu) {
        if (i == 0) {
            return this.f.a(menu) | a(view, menu);
        }
        return super.onPreparePanel(i, view, menu);
    }

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    @Deprecated
    protected boolean a(@ai View view, @ah Menu menu) {
        return super.onPreparePanel(0, view, menu);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.activity.b, androidx.core.app.j, android.app.Activity
    public void onSaveInstanceState(@ah Bundle bundle) {
        super.onSaveInstanceState(bundle);
        g();
        this.g.a(g.a.ON_STOP);
        Parcelable e2 = this.f.e();
        if (e2 != null) {
            bundle.putParcelable(f758a, e2);
        }
        if (this.o.b() > 0) {
            bundle.putInt(b, this.n);
            int[] iArr = new int[this.o.b()];
            String[] strArr = new String[this.o.b()];
            for (int i = 0; i < this.o.b(); i++) {
                iArr[i] = this.o.e(i);
                strArr[i] = this.o.f(i);
            }
            bundle.putIntArray(c, iArr);
            bundle.putStringArray(d, strArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        this.j = false;
        if (!this.h) {
            this.h = true;
            this.f.i();
        }
        this.f.d();
        this.f.r();
        this.g.a(g.a.ON_START);
        this.f.j();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        this.j = true;
        g();
        this.f.m();
        this.g.a(g.a.ON_STOP);
    }

    @Deprecated
    public void h() {
        invalidateOptionsMenu();
    }

    @Override // android.app.Activity
    public void dump(@ah String str, @ai FileDescriptor fileDescriptor, @ah PrintWriter printWriter, @ai String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.print("Local FragmentActivity ");
        printWriter.print(Integer.toHexString(System.identityHashCode(this)));
        printWriter.println(" State:");
        String str2 = str + "  ";
        printWriter.print(str2);
        printWriter.print("mCreated=");
        printWriter.print(this.h);
        printWriter.print(" mResumed=");
        printWriter.print(this.i);
        printWriter.print(" mStopped=");
        printWriter.print(this.j);
        if (getApplication() != null) {
            androidx.i.a.a.a(this).a(str2, fileDescriptor, printWriter, strArr);
        }
        this.f.a().a(str, fileDescriptor, printWriter, strArr);
    }

    @ah
    public j q() {
        return this.f.a();
    }

    @ah
    @Deprecated
    public androidx.i.a.a r() {
        return androidx.i.a.a.a(this);
    }

    @Override // android.app.Activity
    public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i) {
        if (!this.m && i != -1) {
            e(i);
        }
        super.startActivityForResult(intent, i);
    }

    @Override // android.app.Activity
    public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i, @ai Bundle bundle) {
        if (!this.m && i != -1) {
            e(i);
        }
        super.startActivityForResult(intent, i, bundle);
    }

    @Override // android.app.Activity
    public void startIntentSenderForResult(@SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i, @ai Intent intent, int i2, int i3, int i4) {
        if (!this.l && i != -1) {
            e(i);
        }
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4);
    }

    @Override // android.app.Activity
    public void startIntentSenderForResult(@SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i, @ai Intent intent, int i2, int i3, int i4, @ai Bundle bundle) {
        if (!this.l && i != -1) {
            e(i);
        }
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
    }

    static void e(int i) {
        if ((i & androidx.core.e.a.a.f) != 0) {
            throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
        }
    }

    @Override // androidx.core.app.a.c
    public final void d(int i) {
        if (this.k || i == -1) {
            return;
        }
        e(i);
    }

    @Override // android.app.Activity, androidx.core.app.a.InterfaceC0023a
    public void onRequestPermissionsResult(int i, @ah String[] strArr, @ah int[] iArr) {
        this.f.d();
        int i2 = (i >> 16) & androidx.core.e.a.a.d;
        if (i2 != 0) {
            int i3 = i2 - 1;
            String a2 = this.o.a(i3);
            this.o.c(i3);
            if (a2 == null) {
                Log.w(p, "Activity result delivered for unknown Fragment.");
                return;
            }
            d a3 = this.f.a(a2);
            if (a3 == null) {
                Log.w(p, "Activity result no fragment exists for who: " + a2);
                return;
            }
            a3.a(i & androidx.core.e.a.a.d, strArr, iArr);
        }
    }

    public void a(@ah d dVar, @SuppressLint({"UnknownNullness"}) Intent intent, int i) {
        a(dVar, intent, i, (Bundle) null);
    }

    public void a(@ah d dVar, @SuppressLint({"UnknownNullness"}) Intent intent, int i, @ai Bundle bundle) {
        this.m = true;
        try {
            if (i == -1) {
                androidx.core.app.a.a(this, intent, -1, bundle);
            } else {
                e(i);
                androidx.core.app.a.a(this, intent, ((b(dVar) + 1) << 16) + (i & androidx.core.e.a.a.d), bundle);
            }
        } finally {
            this.m = false;
        }
    }

    public void a(@ah d dVar, @SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i, @ai Intent intent, int i2, int i3, int i4, @ai Bundle bundle) {
        this.l = true;
        try {
            if (i == -1) {
                androidx.core.app.a.a(this, intentSender, i, intent, i2, i3, i4, bundle);
            } else {
                e(i);
                androidx.core.app.a.a(this, intentSender, ((b(dVar) + 1) << 16) + (i & androidx.core.e.a.a.d), intent, i2, i3, i4, bundle);
            }
        } finally {
            this.l = false;
        }
    }

    private int b(@ah d dVar) {
        if (this.o.b() >= e) {
            throw new IllegalStateException("Too many pending Fragment activity results.");
        }
        while (this.o.g(this.n) >= 0) {
            this.n = (this.n + 1) % e;
        }
        int i = this.n;
        this.o.d(i, dVar.x);
        this.n = (this.n + 1) % e;
        return i;
    }

    void a(@ah d dVar, @ah String[] strArr, int i) {
        if (i == -1) {
            androidx.core.app.a.a(this, strArr, i);
            return;
        }
        e(i);
        try {
            this.k = true;
            androidx.core.app.a.a(this, strArr, ((b(dVar) + 1) << 16) + (i & androidx.core.e.a.a.d));
        } finally {
            this.k = false;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    class a extends i<e> implements androidx.activity.d, androidx.lifecycle.y {
        public a() {
            super(e.this);
        }

        @Override // androidx.lifecycle.j
        @ah
        public androidx.lifecycle.g c() {
            return e.this.g;
        }

        @Override // androidx.lifecycle.y
        @ah
        public androidx.lifecycle.x d() {
            return e.this.d();
        }

        @Override // androidx.activity.d
        @ah
        public OnBackPressedDispatcher e() {
            return e.this.e();
        }

        @Override // androidx.fragment.app.i
        public void a(@ah String str, @ai FileDescriptor fileDescriptor, @ah PrintWriter printWriter, @ai String[] strArr) {
            e.this.dump(str, fileDescriptor, printWriter, strArr);
        }

        @Override // androidx.fragment.app.i
        public boolean a(@ah d dVar) {
            return !e.this.isFinishing();
        }

        @Override // androidx.fragment.app.i
        @ah
        public LayoutInflater b() {
            return e.this.getLayoutInflater().cloneInContext(e.this);
        }

        @Override // androidx.fragment.app.i
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public e j() {
            return e.this;
        }

        @Override // androidx.fragment.app.i
        public void g() {
            e.this.h();
        }

        @Override // androidx.fragment.app.i
        public void a(@ah d dVar, Intent intent, int i) {
            e.this.a(dVar, intent, i);
        }

        @Override // androidx.fragment.app.i
        public void a(@ah d dVar, Intent intent, int i, @ai Bundle bundle) {
            e.this.a(dVar, intent, i, bundle);
        }

        @Override // androidx.fragment.app.i
        public void a(@ah d dVar, IntentSender intentSender, int i, @ai Intent intent, int i2, int i3, int i4, Bundle bundle) {
            e.this.a(dVar, intentSender, i, intent, i2, i3, i4, bundle);
        }

        @Override // androidx.fragment.app.i
        public void a(@ah d dVar, @ah String[] strArr, int i) {
            e.this.a(dVar, strArr, i);
        }

        @Override // androidx.fragment.app.i
        public boolean a(@ah String str) {
            return androidx.core.app.a.a((Activity) e.this, str);
        }

        @Override // androidx.fragment.app.i
        public boolean h() {
            return e.this.getWindow() != null;
        }

        @Override // androidx.fragment.app.i
        public int i() {
            Window window = e.this.getWindow();
            if (window == null) {
                return 0;
            }
            return window.getAttributes().windowAnimations;
        }

        @Override // androidx.fragment.app.i
        public void b(@ah d dVar) {
            e.this.a(dVar);
        }

        @Override // androidx.fragment.app.i, androidx.fragment.app.f
        @ai
        public View a(int i) {
            return e.this.findViewById(i);
        }

        @Override // androidx.fragment.app.i, androidx.fragment.app.f
        public boolean a() {
            Window window = e.this.getWindow();
            return (window == null || window.peekDecorView() == null) ? false : true;
        }
    }

    private void g() {
        do {
        } while (a(q(), g.b.CREATED));
    }

    private static boolean a(j jVar, g.b bVar) {
        boolean z = false;
        for (d dVar : jVar.g()) {
            if (dVar != null) {
                if (dVar.c().a().a(g.b.STARTED)) {
                    dVar.aj.b(bVar);
                    z = true;
                }
                if (dVar.C() != null) {
                    z |= a(dVar.H(), bVar);
                }
            }
        }
        return z;
    }
}
