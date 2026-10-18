package androidx.fragment.app;

import android.animation.Animator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.annotation.ac;
import androidx.annotation.ae;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import androidx.annotation.as;
import androidx.core.app.z;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.g;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

/* loaded from: /home/user/work/dex/classes.dex */
public class d implements ComponentCallbacks, View.OnCreateContextMenuListener, androidx.lifecycle.j, androidx.lifecycle.y, androidx.savedstate.d {
    static final Object n = new Object();
    static final int o = 0;
    static final int p = 1;
    static final int q = 2;
    static final int r = 3;
    static final int s = 4;
    String A;
    int B;
    boolean C;
    boolean D;
    boolean E;
    boolean F;
    boolean G;
    boolean H;
    int I;
    k J;
    i K;

    @ah
    k L;
    d M;
    int N;
    int O;
    String P;
    boolean Q;
    boolean R;
    boolean S;
    boolean T;
    boolean U;
    boolean V;
    ViewGroup W;
    View X;
    View Y;
    boolean Z;

    /* renamed from: a, reason: collision with root package name */
    private Boolean f752a;
    boolean aa;
    a ab;
    Runnable ac;
    boolean ad;
    boolean ae;
    float af;
    LayoutInflater ag;
    boolean ah;
    g.b ai;
    androidx.lifecycle.k aj;

    @ai
    w ak;
    androidx.lifecycle.p<androidx.lifecycle.j> al;
    androidx.savedstate.c am;
    private boolean b;

    @ac
    private int c;
    int t;
    Bundle u;
    SparseArray<Parcelable> v;

    @ai
    Boolean w;

    @ah
    String x;
    Bundle y;
    d z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface c {
        void a();

        void b();
    }

    @ai
    public Animation a(int i, boolean z, int i2) {
        return null;
    }

    public void a(int i, int i2, @ai Intent intent) {
    }

    public void a(int i, @ah String[] strArr, @ah int[] iArr) {
    }

    public void a(@ah Menu menu) {
    }

    public void a(@ah Menu menu, @ah MenuInflater menuInflater) {
    }

    public void a(@ah View view, @ai Bundle bundle) {
    }

    public void a(@ah d dVar) {
    }

    public boolean a(@ah MenuItem menuItem) {
        return false;
    }

    public void ad() {
    }

    @ai
    public Animator b(int i, boolean z, int i2) {
        return null;
    }

    public void b(@ah Menu menu) {
    }

    public boolean b(@ah MenuItem menuItem) {
        return false;
    }

    public void c(boolean z) {
    }

    public void e(@ah Bundle bundle) {
    }

    public void h(boolean z) {
    }

    public void i(boolean z) {
    }

    public void j(boolean z) {
    }

    @Override // androidx.lifecycle.j
    @ah
    public androidx.lifecycle.g c() {
        return this.aj;
    }

    @ae
    @ah
    public androidx.lifecycle.j o() {
        if (this.ak == null) {
            throw new IllegalStateException("Can't access the Fragment View's LifecycleOwner when getView() is null i.e., before onCreateView() or after onDestroyView()");
        }
        return this.ak;
    }

    @ah
    public LiveData<androidx.lifecycle.j> p() {
        return this.al;
    }

    @Override // androidx.lifecycle.y
    @ah
    public androidx.lifecycle.x d() {
        if (this.J == null) {
            throw new IllegalStateException("Can't access ViewModels from detached fragment");
        }
        return this.J.c(this);
    }

    @Override // androidx.savedstate.d
    @ah
    public final androidx.savedstate.b f() {
        return this.am.a();
    }

    @SuppressLint({"BanParcelableUsage"})
    /* renamed from: androidx.fragment.app.d$d, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class C0058d implements Parcelable {

        @ah
        public static final Parcelable.Creator<C0058d> CREATOR = new Parcelable.ClassLoaderCreator<C0058d>() { // from class: androidx.fragment.app.d.d.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public C0058d createFromParcel(Parcel parcel) {
                return new C0058d(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public C0058d createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new C0058d(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public C0058d[] newArray(int i) {
                return new C0058d[i];
            }
        };

        /* renamed from: a, reason: collision with root package name */
        final Bundle f757a;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0058d(Bundle bundle) {
            this.f757a = bundle;
        }

        C0058d(@ah Parcel parcel, @ai ClassLoader classLoader) {
            this.f757a = parcel.readBundle();
            if (classLoader == null || this.f757a == null) {
                return;
            }
            this.f757a.setClassLoader(classLoader);
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@ah Parcel parcel, int i) {
            parcel.writeBundle(this.f757a);
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class b extends RuntimeException {
        public b(@ah String str, @ai Exception exc) {
            super(str, exc);
        }
    }

    public d() {
        this.t = 0;
        this.x = UUID.randomUUID().toString();
        this.A = null;
        this.f752a = null;
        this.L = new k();
        this.V = true;
        this.aa = true;
        this.ac = new Runnable() { // from class: androidx.fragment.app.d.1
            @Override // java.lang.Runnable
            public void run() {
                d.this.an();
            }
        };
        this.ai = g.b.RESUMED;
        this.al = new androidx.lifecycle.p<>();
        a();
    }

    @androidx.annotation.n
    public d(@ac int i) {
        this();
        this.c = i;
    }

    private void a() {
        this.aj = new androidx.lifecycle.k(this);
        this.am = androidx.savedstate.c.a(this);
        if (Build.VERSION.SDK_INT >= 19) {
            this.aj.a(new androidx.lifecycle.h() { // from class: androidx.fragment.app.Fragment$2
                @Override // androidx.lifecycle.h
                public void a(@ah androidx.lifecycle.j jVar, @ah g.a aVar) {
                    if (aVar != g.a.ON_STOP || d.this.X == null) {
                        return;
                    }
                    d.this.X.cancelPendingInputEvents();
                }
            });
        }
    }

    @ah
    @Deprecated
    public static d a(@ah Context context, @ah String str) {
        return a(context, str, (Bundle) null);
    }

    @ah
    @Deprecated
    public static d a(@ah Context context, @ah String str, @ai Bundle bundle) {
        try {
            d newInstance = h.b(context.getClassLoader(), str).getConstructor(new Class[0]).newInstance(new Object[0]);
            if (bundle != null) {
                bundle.setClassLoader(newInstance.getClass().getClassLoader());
                newInstance.g(bundle);
            }
            return newInstance;
        } catch (IllegalAccessException e) {
            throw new b("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e);
        } catch (InstantiationException e2) {
            throw new b("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e2);
        } catch (NoSuchMethodException e3) {
            throw new b("Unable to instantiate fragment " + str + ": could not find Fragment constructor", e3);
        } catch (InvocationTargetException e4) {
            throw new b("Unable to instantiate fragment " + str + ": calling Fragment constructor caused an exception", e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void f(Bundle bundle) {
        if (this.v != null) {
            this.Y.restoreHierarchyState(this.v);
            this.v = null;
        }
        this.b = false;
        k(bundle);
        if (!this.b) {
            throw new y("Fragment " + this + " did not call through to super.onViewStateRestored()");
        }
        if (this.X != null) {
            this.ak.a(g.a.ON_CREATE);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean q() {
        return this.I > 0;
    }

    public final boolean equals(@ai Object obj) {
        return super.equals(obj);
    }

    public final int hashCode() {
        return super.hashCode();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        androidx.core.m.c.a(this, sb);
        sb.append(" (");
        sb.append(this.x);
        sb.append(")");
        if (this.N != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.N));
        }
        if (this.P != null) {
            sb.append(" ");
            sb.append(this.P);
        }
        sb.append('}');
        return sb.toString();
    }

    public final int r() {
        return this.N;
    }

    @ai
    public final String s() {
        return this.P;
    }

    public void g(@ai Bundle bundle) {
        if (this.J != null && v()) {
            throw new IllegalStateException("Fragment already added and state has been saved");
        }
        this.y = bundle;
    }

    @ai
    public final Bundle t() {
        return this.y;
    }

    @ah
    public final Bundle u() {
        Bundle t = t();
        if (t != null) {
            return t;
        }
        throw new IllegalStateException("Fragment " + this + " does not have any arguments.");
    }

    public final boolean v() {
        if (this.J == null) {
            return false;
        }
        return this.J.k();
    }

    public void a(@ai C0058d c0058d) {
        if (this.J != null) {
            throw new IllegalStateException("Fragment already added");
        }
        this.u = (c0058d == null || c0058d.f757a == null) ? null : c0058d.f757a;
    }

    public void a(@ai d dVar, int i) {
        j F = F();
        j F2 = dVar != null ? dVar.F() : null;
        if (F != null && F2 != null && F != F2) {
            throw new IllegalArgumentException("Fragment " + dVar + " must share the same FragmentManager to be set as a target fragment");
        }
        for (d dVar2 = dVar; dVar2 != null; dVar2 = dVar2.w()) {
            if (dVar2 == this) {
                throw new IllegalArgumentException("Setting " + dVar + " as the target of " + this + " would create a target cycle");
            }
        }
        if (dVar == null) {
            this.A = null;
            this.z = null;
        } else if (this.J != null && dVar.J != null) {
            this.A = dVar.x;
            this.z = null;
        } else {
            this.A = null;
            this.z = dVar;
        }
        this.B = i;
    }

    @ai
    public final d w() {
        if (this.z != null) {
            return this.z;
        }
        if (this.J == null || this.A == null) {
            return null;
        }
        return this.J.m.get(this.A);
    }

    public final int x() {
        return this.B;
    }

    @ai
    public Context y() {
        if (this.K == null) {
            return null;
        }
        return this.K.l();
    }

    @ah
    public final Context z() {
        Context y = y();
        if (y != null) {
            return y;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to a context.");
    }

    @ai
    public final e A() {
        if (this.K == null) {
            return null;
        }
        return (e) this.K.k();
    }

    @ah
    public final e B() {
        e A = A();
        if (A != null) {
            return A;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to an activity.");
    }

    @ai
    public final Object C() {
        if (this.K == null) {
            return null;
        }
        return this.K.j();
    }

    @ah
    public final Object D() {
        Object C = C();
        if (C != null) {
            return C;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to a host.");
    }

    @ah
    public final Resources E() {
        return z().getResources();
    }

    @ah
    public final CharSequence a(@as int i) {
        return E().getText(i);
    }

    @ah
    public final String b(@as int i) {
        return E().getString(i);
    }

    @ah
    public final String a(@as int i, @ai Object... objArr) {
        return E().getString(i, objArr);
    }

    @ai
    public final j F() {
        return this.J;
    }

    @ah
    public final j G() {
        j F = F();
        if (F != null) {
            return F;
        }
        throw new IllegalStateException("Fragment " + this + " not associated with a fragment manager.");
    }

    @ah
    public final j H() {
        if (this.K == null) {
            throw new IllegalStateException("Fragment " + this + " has not been attached yet.");
        }
        return this.L;
    }

    @ai
    public final d I() {
        return this.M;
    }

    @ah
    public final d J() {
        d I = I();
        if (I != null) {
            return I;
        }
        if (y() == null) {
            throw new IllegalStateException("Fragment " + this + " is not attached to any Fragment or host");
        }
        throw new IllegalStateException("Fragment " + this + " is not a child Fragment, it is directly attached to " + y());
    }

    public final boolean K() {
        return this.K != null && this.C;
    }

    public final boolean L() {
        return this.R;
    }

    public final boolean M() {
        return this.D;
    }

    public final boolean N() {
        return this.F;
    }

    public final boolean O() {
        return this.t >= 4;
    }

    public final boolean P() {
        return (!K() || Q() || this.X == null || this.X.getWindowToken() == null || this.X.getVisibility() != 0) ? false : true;
    }

    public final boolean Q() {
        return this.Q;
    }

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public final boolean R() {
        return this.U;
    }

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public final boolean S() {
        return this.V;
    }

    public void d(boolean z) {
        this.S = z;
        if (this.J == null) {
            this.T = true;
        } else if (z) {
            this.J.e(this);
        } else {
            this.J.f(this);
        }
    }

    public final boolean T() {
        return this.S;
    }

    public void e(boolean z) {
        if (this.U != z) {
            this.U = z;
            if (!K() || Q()) {
                return;
            }
            this.K.g();
        }
    }

    public void f(boolean z) {
        if (this.V != z) {
            this.V = z;
            if (this.U && K() && !Q()) {
                this.K.g();
            }
        }
    }

    @Deprecated
    public void g(boolean z) {
        if (!this.aa && z && this.t < 3 && this.J != null && K() && this.ah) {
            this.J.g(this);
        }
        this.aa = z;
        this.Z = this.t < 3 && !z;
        if (this.u != null) {
            this.w = Boolean.valueOf(z);
        }
    }

    @Deprecated
    public boolean U() {
        return this.aa;
    }

    @ah
    @Deprecated
    public androidx.i.a.a V() {
        return androidx.i.a.a.a(this);
    }

    public void a(@SuppressLint({"UnknownNullness"}) Intent intent) {
        a(intent, (Bundle) null);
    }

    public void a(@SuppressLint({"UnknownNullness"}) Intent intent, @ai Bundle bundle) {
        if (this.K == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to Activity");
        }
        this.K.a(this, intent, -1, bundle);
    }

    public void a(@SuppressLint({"UnknownNullness"}) Intent intent, int i) {
        a(intent, i, (Bundle) null);
    }

    public void a(@SuppressLint({"UnknownNullness"}) Intent intent, int i, @ai Bundle bundle) {
        if (this.K == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to Activity");
        }
        this.K.a(this, intent, i, bundle);
    }

    public void a(@SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i, @ai Intent intent, int i2, int i3, int i4, @ai Bundle bundle) {
        if (this.K == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to Activity");
        }
        this.K.a(this, intentSender, i, intent, i2, i3, i4, bundle);
    }

    public final void a(@ah String[] strArr, int i) {
        if (this.K == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to Activity");
        }
        this.K.a(this, strArr, i);
    }

    public boolean a(@ah String str) {
        if (this.K != null) {
            return this.K.a(str);
        }
        return false;
    }

    @ah
    public LayoutInflater c(@ai Bundle bundle) {
        return i(bundle);
    }

    @ah
    public final LayoutInflater W() {
        if (this.ag == null) {
            return h((Bundle) null);
        }
        return this.ag;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ah
    public LayoutInflater h(@ai Bundle bundle) {
        this.ag = c(bundle);
        return this.ag;
    }

    @ah
    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    @Deprecated
    public LayoutInflater i(@ai Bundle bundle) {
        if (this.K == null) {
            throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
        }
        LayoutInflater b2 = this.K.b();
        androidx.core.n.k.a(b2, this.L.H());
        return b2;
    }

    @androidx.annotation.i
    public void a(@ah Context context, @ah AttributeSet attributeSet, @ai Bundle bundle) {
        this.b = true;
        Activity k = this.K == null ? null : this.K.k();
        if (k != null) {
            this.b = false;
            a(k, attributeSet, bundle);
        }
    }

    @androidx.annotation.i
    @Deprecated
    public void a(@ah Activity activity, @ah AttributeSet attributeSet, @ai Bundle bundle) {
        this.b = true;
    }

    @androidx.annotation.i
    public void a(@ah Context context) {
        this.b = true;
        Activity k = this.K == null ? null : this.K.k();
        if (k != null) {
            this.b = false;
            a(k);
        }
    }

    @androidx.annotation.i
    @Deprecated
    public void a(@ah Activity activity) {
        this.b = true;
    }

    @androidx.annotation.i
    public void b(@ai Bundle bundle) {
        this.b = true;
        j(bundle);
        if (this.L.c(1)) {
            return;
        }
        this.L.w();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j(@ai Bundle bundle) {
        Parcelable parcelable;
        if (bundle == null || (parcelable = bundle.getParcelable("android:support:fragments")) == null) {
            return;
        }
        this.L.a(parcelable);
        this.L.w();
    }

    @ai
    public View a(@ah LayoutInflater layoutInflater, @ai ViewGroup viewGroup, @ai Bundle bundle) {
        if (this.c != 0) {
            return layoutInflater.inflate(this.c, viewGroup, false);
        }
        return null;
    }

    @ai
    public View X() {
        return this.X;
    }

    @ah
    public final View Y() {
        View X = X();
        if (X != null) {
            return X;
        }
        throw new IllegalStateException("Fragment " + this + " did not return a View from onCreateView() or this was called before onCreateView().");
    }

    @androidx.annotation.i
    public void d(@ai Bundle bundle) {
        this.b = true;
    }

    @androidx.annotation.i
    public void k(@ai Bundle bundle) {
        this.b = true;
    }

    @androidx.annotation.i
    public void l() {
        this.b = true;
    }

    @androidx.annotation.i
    public void Z() {
        this.b = true;
    }

    @Override // android.content.ComponentCallbacks
    @androidx.annotation.i
    public void onConfigurationChanged(@ah Configuration configuration) {
        this.b = true;
    }

    @androidx.annotation.i
    public void aa() {
        this.b = true;
    }

    @androidx.annotation.i
    public void m() {
        this.b = true;
    }

    @Override // android.content.ComponentCallbacks
    @androidx.annotation.i
    public void onLowMemory() {
        this.b = true;
    }

    @androidx.annotation.i
    public void n() {
        this.b = true;
    }

    @androidx.annotation.i
    public void ab() {
        this.b = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void ac() {
        a();
        this.x = UUID.randomUUID().toString();
        this.C = false;
        this.D = false;
        this.E = false;
        this.F = false;
        this.G = false;
        this.I = 0;
        this.J = null;
        this.L = new k();
        this.K = null;
        this.N = 0;
        this.O = 0;
        this.P = null;
        this.Q = false;
        this.R = false;
    }

    @androidx.annotation.i
    public void k() {
        this.b = true;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(@ah ContextMenu contextMenu, @ah View view, @ai ContextMenu.ContextMenuInfo contextMenuInfo) {
        B().onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    public void a(@ah View view) {
        view.setOnCreateContextMenuListener(this);
    }

    public void b(@ah View view) {
        view.setOnCreateContextMenuListener(null);
    }

    public void a(@ai z zVar) {
        b().o = zVar;
    }

    public void b(@ai z zVar) {
        b().p = zVar;
    }

    public void a(@ai Object obj) {
        b().g = obj;
    }

    @ai
    public Object ae() {
        if (this.ab == null) {
            return null;
        }
        return this.ab.g;
    }

    public void b(@ai Object obj) {
        b().h = obj;
    }

    @ai
    public Object af() {
        if (this.ab == null) {
            return null;
        }
        return this.ab.h == n ? ae() : this.ab.h;
    }

    public void c(@ai Object obj) {
        b().i = obj;
    }

    @ai
    public Object ag() {
        if (this.ab == null) {
            return null;
        }
        return this.ab.i;
    }

    public void d(@ai Object obj) {
        b().j = obj;
    }

    @ai
    public Object ah() {
        if (this.ab == null) {
            return null;
        }
        return this.ab.j == n ? ag() : this.ab.j;
    }

    public void e(@ai Object obj) {
        b().k = obj;
    }

    @ai
    public Object ai() {
        if (this.ab == null) {
            return null;
        }
        return this.ab.k;
    }

    public void f(@ai Object obj) {
        b().l = obj;
    }

    @ai
    public Object aj() {
        if (this.ab == null) {
            return null;
        }
        return this.ab.l == n ? ai() : this.ab.l;
    }

    public void k(boolean z) {
        b().n = Boolean.valueOf(z);
    }

    public boolean ak() {
        if (this.ab == null || this.ab.n == null) {
            return true;
        }
        return this.ab.n.booleanValue();
    }

    public void l(boolean z) {
        b().m = Boolean.valueOf(z);
    }

    public boolean al() {
        if (this.ab == null || this.ab.m == null) {
            return true;
        }
        return this.ab.m.booleanValue();
    }

    public void am() {
        b().q = true;
    }

    public final void a(long j, @ah TimeUnit timeUnit) {
        Handler handler;
        b().q = true;
        if (this.J != null) {
            handler = this.J.t.m();
        } else {
            handler = new Handler(Looper.getMainLooper());
        }
        handler.removeCallbacks(this.ac);
        handler.postDelayed(this.ac, timeUnit.toMillis(j));
    }

    public void an() {
        if (this.J == null || this.J.t == null) {
            b().q = false;
        } else if (Looper.myLooper() != this.J.t.m().getLooper()) {
            this.J.t.m().postAtFrontOfQueue(new Runnable() { // from class: androidx.fragment.app.d.2
                @Override // java.lang.Runnable
                public void run() {
                    d.this.ao();
                }
            });
        } else {
            ao();
        }
    }

    void ao() {
        c cVar;
        if (this.ab == null) {
            cVar = null;
        } else {
            this.ab.q = false;
            cVar = this.ab.r;
            this.ab.r = null;
        }
        if (cVar != null) {
            cVar.a();
        }
    }

    public void a(@ah String str, @ai FileDescriptor fileDescriptor, @ah PrintWriter printWriter, @ai String[] strArr) {
        printWriter.print(str);
        printWriter.print("mFragmentId=#");
        printWriter.print(Integer.toHexString(this.N));
        printWriter.print(" mContainerId=#");
        printWriter.print(Integer.toHexString(this.O));
        printWriter.print(" mTag=");
        printWriter.println(this.P);
        printWriter.print(str);
        printWriter.print("mState=");
        printWriter.print(this.t);
        printWriter.print(" mWho=");
        printWriter.print(this.x);
        printWriter.print(" mBackStackNesting=");
        printWriter.println(this.I);
        printWriter.print(str);
        printWriter.print("mAdded=");
        printWriter.print(this.C);
        printWriter.print(" mRemoving=");
        printWriter.print(this.D);
        printWriter.print(" mFromLayout=");
        printWriter.print(this.E);
        printWriter.print(" mInLayout=");
        printWriter.println(this.F);
        printWriter.print(str);
        printWriter.print("mHidden=");
        printWriter.print(this.Q);
        printWriter.print(" mDetached=");
        printWriter.print(this.R);
        printWriter.print(" mMenuVisible=");
        printWriter.print(this.V);
        printWriter.print(" mHasMenu=");
        printWriter.println(this.U);
        printWriter.print(str);
        printWriter.print("mRetainInstance=");
        printWriter.print(this.S);
        printWriter.print(" mUserVisibleHint=");
        printWriter.println(this.aa);
        if (this.J != null) {
            printWriter.print(str);
            printWriter.print("mFragmentManager=");
            printWriter.println(this.J);
        }
        if (this.K != null) {
            printWriter.print(str);
            printWriter.print("mHost=");
            printWriter.println(this.K);
        }
        if (this.M != null) {
            printWriter.print(str);
            printWriter.print("mParentFragment=");
            printWriter.println(this.M);
        }
        if (this.y != null) {
            printWriter.print(str);
            printWriter.print("mArguments=");
            printWriter.println(this.y);
        }
        if (this.u != null) {
            printWriter.print(str);
            printWriter.print("mSavedFragmentState=");
            printWriter.println(this.u);
        }
        if (this.v != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewState=");
            printWriter.println(this.v);
        }
        d w = w();
        if (w != null) {
            printWriter.print(str);
            printWriter.print("mTarget=");
            printWriter.print(w);
            printWriter.print(" mTargetRequestCode=");
            printWriter.println(this.B);
        }
        if (aA() != 0) {
            printWriter.print(str);
            printWriter.print("mNextAnim=");
            printWriter.println(aA());
        }
        if (this.W != null) {
            printWriter.print(str);
            printWriter.print("mContainer=");
            printWriter.println(this.W);
        }
        if (this.X != null) {
            printWriter.print(str);
            printWriter.print("mView=");
            printWriter.println(this.X);
        }
        if (this.Y != null) {
            printWriter.print(str);
            printWriter.print("mInnerView=");
            printWriter.println(this.X);
        }
        if (aF() != null) {
            printWriter.print(str);
            printWriter.print("mAnimatingAway=");
            printWriter.println(aF());
            printWriter.print(str);
            printWriter.print("mStateAfterAnimating=");
            printWriter.println(aH());
        }
        if (y() != null) {
            androidx.i.a.a.a(this).a(str, fileDescriptor, printWriter, strArr);
        }
        printWriter.print(str);
        printWriter.println("Child " + this.L + ":");
        this.L.a(str + "  ", fileDescriptor, printWriter, strArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ai
    public d b(@ah String str) {
        return str.equals(this.x) ? this : this.L.b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void ap() {
        this.L.a(this.K, new f() { // from class: androidx.fragment.app.d.3
            @Override // androidx.fragment.app.f
            @ai
            public View a(int i) {
                if (d.this.X == null) {
                    throw new IllegalStateException("Fragment " + this + " does not have a view");
                }
                return d.this.X.findViewById(i);
            }

            @Override // androidx.fragment.app.f
            public boolean a() {
                return d.this.X != null;
            }
        }, this);
        this.b = false;
        a(this.K.l());
        if (this.b) {
            return;
        }
        throw new y("Fragment " + this + " did not call through to super.onAttach()");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l(Bundle bundle) {
        this.L.v();
        this.t = 1;
        this.b = false;
        this.am.a(bundle);
        b(bundle);
        this.ah = true;
        if (!this.b) {
            throw new y("Fragment " + this + " did not call through to super.onCreate()");
        }
        this.aj.a(g.a.ON_CREATE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(@ah LayoutInflater layoutInflater, @ai ViewGroup viewGroup, @ai Bundle bundle) {
        this.L.v();
        this.H = true;
        this.ak = new w();
        this.X = a(layoutInflater, viewGroup, bundle);
        if (this.X != null) {
            this.ak.a();
            this.al.b((androidx.lifecycle.p<androidx.lifecycle.j>) this.ak);
        } else {
            if (this.ak.b()) {
                throw new IllegalStateException("Called getViewLifecycleOwner() but onCreateView() returned null");
            }
            this.ak = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m(Bundle bundle) {
        this.L.v();
        this.t = 2;
        this.b = false;
        d(bundle);
        if (!this.b) {
            throw new y("Fragment " + this + " did not call through to super.onActivityCreated()");
        }
        this.L.x();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void aq() {
        this.L.v();
        this.L.q();
        this.t = 3;
        this.b = false;
        l();
        if (!this.b) {
            throw new y("Fragment " + this + " did not call through to super.onStart()");
        }
        this.aj.a(g.a.ON_START);
        if (this.X != null) {
            this.ak.a(g.a.ON_START);
        }
        this.L.y();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void ar() {
        this.L.v();
        this.L.q();
        this.t = 4;
        this.b = false;
        Z();
        if (!this.b) {
            throw new y("Fragment " + this + " did not call through to super.onResume()");
        }
        this.aj.a(g.a.ON_RESUME);
        if (this.X != null) {
            this.ak.a(g.a.ON_RESUME);
        }
        this.L.z();
        this.L.q();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void as() {
        this.L.v();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void at() {
        boolean b2 = this.J.b(this);
        if (this.f752a == null || this.f752a.booleanValue() != b2) {
            this.f752a = Boolean.valueOf(b2);
            j(b2);
            this.L.F();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m(boolean z) {
        h(z);
        this.L.b(z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n(boolean z) {
        i(z);
        this.L.c(z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@ah Configuration configuration) {
        onConfigurationChanged(configuration);
        this.L.a(configuration);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void au() {
        onLowMemory();
        this.L.E();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(@ah Menu menu, @ah MenuInflater menuInflater) {
        boolean z = false;
        if (this.Q) {
            return false;
        }
        if (this.U && this.V) {
            z = true;
            a(menu, menuInflater);
        }
        return z | this.L.a(menu, menuInflater);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c(@ah Menu menu) {
        boolean z = false;
        if (this.Q) {
            return false;
        }
        if (this.U && this.V) {
            z = true;
            a(menu);
        }
        return z | this.L.a(menu);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c(@ah MenuItem menuItem) {
        if (this.Q) {
            return false;
        }
        return (this.U && this.V && a(menuItem)) || this.L.a(menuItem);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d(@ah MenuItem menuItem) {
        if (this.Q) {
            return false;
        }
        return b(menuItem) || this.L.b(menuItem);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(@ah Menu menu) {
        if (this.Q) {
            return;
        }
        if (this.U && this.V) {
            b(menu);
        }
        this.L.b(menu);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n(Bundle bundle) {
        e(bundle);
        this.am.b(bundle);
        Parcelable u = this.L.u();
        if (u != null) {
            bundle.putParcelable("android:support:fragments", u);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void av() {
        this.L.A();
        if (this.X != null) {
            this.ak.a(g.a.ON_PAUSE);
        }
        this.aj.a(g.a.ON_PAUSE);
        this.t = 3;
        this.b = false;
        aa();
        if (this.b) {
            return;
        }
        throw new y("Fragment " + this + " did not call through to super.onPause()");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void aw() {
        this.L.B();
        if (this.X != null) {
            this.ak.a(g.a.ON_STOP);
        }
        this.aj.a(g.a.ON_STOP);
        this.t = 2;
        this.b = false;
        m();
        if (this.b) {
            return;
        }
        throw new y("Fragment " + this + " did not call through to super.onStop()");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void ax() {
        this.L.C();
        if (this.X != null) {
            this.ak.a(g.a.ON_DESTROY);
        }
        this.t = 1;
        this.b = false;
        n();
        if (!this.b) {
            throw new y("Fragment " + this + " did not call through to super.onDestroyView()");
        }
        androidx.i.a.a.a(this).a();
        this.H = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void ay() {
        this.L.D();
        this.aj.a(g.a.ON_DESTROY);
        this.t = 0;
        this.b = false;
        this.ah = false;
        ab();
        if (this.b) {
            return;
        }
        throw new y("Fragment " + this + " did not call through to super.onDestroy()");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void az() {
        this.b = false;
        k();
        this.ag = null;
        if (!this.b) {
            throw new y("Fragment " + this + " did not call through to super.onDetach()");
        }
        if (this.L.h()) {
            return;
        }
        this.L.D();
        this.L = new k();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(c cVar) {
        b();
        if (cVar == this.ab.r) {
            return;
        }
        if (cVar != null && this.ab.r != null) {
            throw new IllegalStateException("Trying to set a replacement startPostponedEnterTransition on " + this);
        }
        if (this.ab.q) {
            this.ab.r = cVar;
        }
        if (cVar != null) {
            cVar.b();
        }
    }

    private a b() {
        if (this.ab == null) {
            this.ab = new a();
        }
        return this.ab;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int aA() {
        if (this.ab == null) {
            return 0;
        }
        return this.ab.d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(int i) {
        if (this.ab == null && i == 0) {
            return;
        }
        b().d = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int aB() {
        if (this.ab == null) {
            return 0;
        }
        return this.ab.e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(int i, int i2) {
        if (this.ab == null && i == 0 && i2 == 0) {
            return;
        }
        b();
        this.ab.e = i;
        this.ab.f = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int aC() {
        if (this.ab == null) {
            return 0;
        }
        return this.ab.f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public z aD() {
        if (this.ab == null) {
            return null;
        }
        return this.ab.o;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public z aE() {
        if (this.ab == null) {
            return null;
        }
        return this.ab.p;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View aF() {
        if (this.ab == null) {
            return null;
        }
        return this.ab.f756a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(View view) {
        b().f756a = view;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Animator animator) {
        b().b = animator;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Animator aG() {
        if (this.ab == null) {
            return null;
        }
        return this.ab.b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int aH() {
        if (this.ab == null) {
            return 0;
        }
        return this.ab.c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(int i) {
        b().c = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean aI() {
        if (this.ab == null) {
            return false;
        }
        return this.ab.q;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean aJ() {
        if (this.ab == null) {
            return false;
        }
        return this.ab.s;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void o(boolean z) {
        b().s = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        View f756a;
        Animator b;
        int c;
        int d;
        int e;
        int f;
        Boolean m;
        Boolean n;
        boolean q;
        c r;
        boolean s;
        Object g = null;
        Object h = d.n;
        Object i = null;
        Object j = d.n;
        Object k = null;
        Object l = d.n;
        z o = null;
        z p = null;

        a() {
        }
    }
}
