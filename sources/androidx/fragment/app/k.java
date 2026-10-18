package androidx.fragment.app;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorListenerAdapter;
import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import android.view.animation.Transformation;
import androidx.activity.OnBackPressedDispatcher;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.core.n.z;
import androidx.fragment.app.d;
import androidx.fragment.app.j;
import androidx.lifecycle.g;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public final class k extends j implements LayoutInflater.Factory2 {
    static final Interpolator J = new DecelerateInterpolator(2.5f);
    static final Interpolator K = new DecelerateInterpolator(1.5f);
    static final int L = 220;
    public static final int M = 1;
    public static final int N = 2;
    public static final int O = 3;
    public static final int P = 4;
    public static final int Q = 5;
    public static final int R = 6;
    static boolean c = false;
    static final String d = "FragmentManager";
    static final String e = "android:target_req_state";
    static final String f = "android:target_state";
    static final String g = "android:view_state";
    static final String h = "android:user_visible_hint";
    boolean A;
    boolean B;
    ArrayList<androidx.fragment.app.a> C;
    ArrayList<Boolean> D;
    ArrayList<androidx.fragment.app.d> E;
    ArrayList<g> H;
    private OnBackPressedDispatcher S;
    private n V;
    ArrayList<e> i;
    boolean j;
    ArrayList<androidx.fragment.app.a> n;
    ArrayList<androidx.fragment.app.d> o;
    ArrayList<androidx.fragment.app.a> p;
    ArrayList<Integer> q;
    ArrayList<j.c> r;
    i t;
    androidx.fragment.app.f u;
    androidx.fragment.app.d v;

    @ai
    androidx.fragment.app.d w;
    boolean x;
    boolean y;
    boolean z;
    int k = 0;
    final ArrayList<androidx.fragment.app.d> l = new ArrayList<>();
    final HashMap<String, androidx.fragment.app.d> m = new HashMap<>();
    private final androidx.activity.c T = new androidx.activity.c(false) { // from class: androidx.fragment.app.k.1
        @Override // androidx.activity.c
        public void c() {
            k.this.l();
        }
    };
    private final CopyOnWriteArrayList<c> U = new CopyOnWriteArrayList<>();
    int s = 0;
    Bundle F = null;
    SparseArray<Parcelable> G = null;
    Runnable I = new Runnable() { // from class: androidx.fragment.app.k.2
        @Override // java.lang.Runnable
        public void run() {
            k.this.q();
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface e {
        boolean a(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2);
    }

    public static int b(int i, boolean z) {
        if (i == 4097) {
            return z ? 1 : 2;
        }
        if (i == 4099) {
            return z ? 5 : 6;
        }
        if (i != 8194) {
            return -1;
        }
        return z ? 3 : 4;
    }

    public static int e(int i) {
        if (i == 4097) {
            return 8194;
        }
        if (i == 4099) {
            return s.N;
        }
        if (i != 8194) {
            return 0;
        }
        return s.L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LayoutInflater.Factory2 H() {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class c {

        /* renamed from: a, reason: collision with root package name */
        final j.b f773a;
        final boolean b;

        c(j.b bVar, boolean z) {
            this.f773a = bVar;
            this.b = z;
        }
    }

    private void a(RuntimeException runtimeException) {
        Log.e(d, runtimeException.getMessage());
        Log.e(d, "Activity state:");
        PrintWriter printWriter = new PrintWriter(new androidx.core.m.d(d));
        if (this.t != null) {
            try {
                this.t.a("  ", (FileDescriptor) null, printWriter, new String[0]);
                throw runtimeException;
            } catch (Exception e2) {
                Log.e(d, "Failed dumping state", e2);
                throw runtimeException;
            }
        }
        try {
            a("  ", (FileDescriptor) null, printWriter, new String[0]);
            throw runtimeException;
        } catch (Exception e3) {
            Log.e(d, "Failed dumping state", e3);
            throw runtimeException;
        }
    }

    @Override // androidx.fragment.app.j
    @ah
    public s a() {
        return new androidx.fragment.app.a(this);
    }

    @Override // androidx.fragment.app.j
    public boolean c() {
        boolean q = q();
        L();
        return q;
    }

    private void I() {
        if (this.i != null && !this.i.isEmpty()) {
            this.T.a(true);
        } else {
            this.T.a(f() > 0 && b(this.v));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(@ai androidx.fragment.app.d dVar) {
        if (dVar == null) {
            return true;
        }
        k kVar = dVar.J;
        return dVar == kVar.i() && b(kVar.v);
    }

    void l() {
        q();
        if (this.T.a()) {
            e();
        } else {
            this.S.b();
        }
    }

    @Override // androidx.fragment.app.j
    public void d() {
        a((e) new f(null, -1, 0), false);
    }

    @Override // androidx.fragment.app.j
    public boolean e() {
        J();
        return a((String) null, -1, 0);
    }

    @Override // androidx.fragment.app.j
    public void a(@ai String str, int i) {
        a((e) new f(str, -1, i), false);
    }

    @Override // androidx.fragment.app.j
    public boolean b(@ai String str, int i) {
        J();
        return a(str, -1, i);
    }

    @Override // androidx.fragment.app.j
    public void a(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException("Bad id: " + i);
        }
        a((e) new f(null, i, i2), false);
    }

    @Override // androidx.fragment.app.j
    public boolean b(int i, int i2) {
        J();
        q();
        if (i < 0) {
            throw new IllegalArgumentException("Bad id: " + i);
        }
        return a((String) null, i, i2);
    }

    private boolean a(String str, int i, int i2) {
        q();
        d(true);
        if (this.w != null && i < 0 && str == null && this.w.H().e()) {
            return true;
        }
        boolean a2 = a(this.C, this.D, str, i, i2);
        if (a2) {
            this.j = true;
            try {
                b(this.C, this.D);
            } finally {
                K();
            }
        }
        I();
        r();
        N();
        return a2;
    }

    @Override // androidx.fragment.app.j
    public int f() {
        if (this.n != null) {
            return this.n.size();
        }
        return 0;
    }

    @Override // androidx.fragment.app.j
    public j.a b(int i) {
        return this.n.get(i);
    }

    @Override // androidx.fragment.app.j
    public void a(j.c cVar) {
        if (this.r == null) {
            this.r = new ArrayList<>();
        }
        this.r.add(cVar);
    }

    @Override // androidx.fragment.app.j
    public void b(j.c cVar) {
        if (this.r != null) {
            this.r.remove(cVar);
        }
    }

    @Override // androidx.fragment.app.j
    public void a(Bundle bundle, String str, androidx.fragment.app.d dVar) {
        if (dVar.J != this) {
            a(new IllegalStateException("Fragment " + dVar + " is not currently in the FragmentManager"));
        }
        bundle.putString(str, dVar.x);
    }

    @Override // androidx.fragment.app.j
    @ai
    public androidx.fragment.app.d a(Bundle bundle, String str) {
        String string = bundle.getString(str);
        if (string == null) {
            return null;
        }
        androidx.fragment.app.d dVar = this.m.get(string);
        if (dVar == null) {
            a(new IllegalStateException("Fragment no longer exists for key " + str + ": unique id " + string));
        }
        return dVar;
    }

    @Override // androidx.fragment.app.j
    public List<androidx.fragment.app.d> g() {
        List<androidx.fragment.app.d> list;
        if (this.l.isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (this.l) {
            list = (List) this.l.clone();
        }
        return list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ah
    public androidx.lifecycle.x c(@ah androidx.fragment.app.d dVar) {
        return this.V.e(dVar);
    }

    @ah
    n d(@ah androidx.fragment.app.d dVar) {
        return this.V.d(dVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(@ah androidx.fragment.app.d dVar) {
        if (k()) {
            if (c) {
                Log.v(d, "Ignoring addRetainedFragment as the state is already saved");
            }
        } else if (this.V.a(dVar) && c) {
            Log.v(d, "Updating retained Fragments: Added " + dVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(@ah androidx.fragment.app.d dVar) {
        if (k()) {
            if (c) {
                Log.v(d, "Ignoring removeRetainedFragment as the state is already saved");
            }
        } else if (this.V.c(dVar) && c) {
            Log.v(d, "Updating retained Fragments: Removed " + dVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ah
    public List<androidx.fragment.app.d> m() {
        return new ArrayList(this.m.values());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int n() {
        return this.m.size();
    }

    @Override // androidx.fragment.app.j
    @ai
    public d.C0058d a(@ah androidx.fragment.app.d dVar) {
        Bundle t;
        if (dVar.J != this) {
            a(new IllegalStateException("Fragment " + dVar + " is not currently in the FragmentManager"));
        }
        if (dVar.t <= 0 || (t = t(dVar)) == null) {
            return null;
        }
        return new d.C0058d(t);
    }

    @Override // androidx.fragment.app.j
    public boolean h() {
        return this.A;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        if (this.v != null) {
            androidx.core.m.c.a(this.v, sb);
        } else {
            androidx.core.m.c.a(this.t, sb);
        }
        sb.append("}}");
        return sb.toString();
    }

    @Override // androidx.fragment.app.j
    public void a(@ah String str, @ai FileDescriptor fileDescriptor, @ah PrintWriter printWriter, @ai String[] strArr) {
        int size;
        int size2;
        int size3;
        int size4;
        String str2 = str + "    ";
        if (!this.m.isEmpty()) {
            printWriter.print(str);
            printWriter.print("Active Fragments in ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this)));
            printWriter.println(":");
            for (androidx.fragment.app.d dVar : this.m.values()) {
                printWriter.print(str);
                printWriter.println(dVar);
                if (dVar != null) {
                    dVar.a(str2, fileDescriptor, printWriter, strArr);
                }
            }
        }
        int size5 = this.l.size();
        if (size5 > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i = 0; i < size5; i++) {
                androidx.fragment.app.d dVar2 = this.l.get(i);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.println(dVar2.toString());
            }
        }
        if (this.o != null && (size4 = this.o.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i2 = 0; i2 < size4; i2++) {
                androidx.fragment.app.d dVar3 = this.o.get(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(dVar3.toString());
            }
        }
        if (this.n != null && (size3 = this.n.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i3 = 0; i3 < size3; i3++) {
                androidx.fragment.app.a aVar = this.n.get(i3);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i3);
                printWriter.print(": ");
                printWriter.println(aVar.toString());
                aVar.a(str2, printWriter);
            }
        }
        synchronized (this) {
            if (this.p != null && (size2 = this.p.size()) > 0) {
                printWriter.print(str);
                printWriter.println("Back Stack Indices:");
                for (int i4 = 0; i4 < size2; i4++) {
                    Object obj = (androidx.fragment.app.a) this.p.get(i4);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i4);
                    printWriter.print(": ");
                    printWriter.println(obj);
                }
            }
            if (this.q != null && this.q.size() > 0) {
                printWriter.print(str);
                printWriter.print("mAvailBackStackIndices: ");
                printWriter.println(Arrays.toString(this.q.toArray()));
            }
        }
        if (this.i != null && (size = this.i.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Pending Actions:");
            for (int i5 = 0; i5 < size; i5++) {
                Object obj2 = (e) this.i.get(i5);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i5);
                printWriter.print(": ");
                printWriter.println(obj2);
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.t);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.u);
        if (this.v != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.v);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.s);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.y);
        printWriter.print(" mStopped=");
        printWriter.print(this.z);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.A);
        if (this.x) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.x);
        }
    }

    static a a(float f2, float f3, float f4, float f5) {
        AnimationSet animationSet = new AnimationSet(false);
        ScaleAnimation scaleAnimation = new ScaleAnimation(f2, f3, f2, f3, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setInterpolator(J);
        scaleAnimation.setDuration(220L);
        animationSet.addAnimation(scaleAnimation);
        AlphaAnimation alphaAnimation = new AlphaAnimation(f4, f5);
        alphaAnimation.setInterpolator(K);
        alphaAnimation.setDuration(220L);
        animationSet.addAnimation(alphaAnimation);
        return new a(animationSet);
    }

    static a a(float f2, float f3) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(f2, f3);
        alphaAnimation.setInterpolator(K);
        alphaAnimation.setDuration(220L);
        return new a(alphaAnimation);
    }

    a a(androidx.fragment.app.d dVar, int i, boolean z, int i2) {
        int b2;
        int aA = dVar.aA();
        boolean z2 = false;
        dVar.c(0);
        if (dVar.W != null && dVar.W.getLayoutTransition() != null) {
            return null;
        }
        Animation a2 = dVar.a(i, z, aA);
        if (a2 != null) {
            return new a(a2);
        }
        Animator b3 = dVar.b(i, z, aA);
        if (b3 != null) {
            return new a(b3);
        }
        if (aA != 0) {
            boolean equals = "anim".equals(this.t.l().getResources().getResourceTypeName(aA));
            if (equals) {
                try {
                    Animation loadAnimation = AnimationUtils.loadAnimation(this.t.l(), aA);
                    if (loadAnimation != null) {
                        return new a(loadAnimation);
                    }
                    z2 = true;
                } catch (Resources.NotFoundException e2) {
                    throw e2;
                } catch (RuntimeException unused) {
                }
            }
            if (!z2) {
                try {
                    Animator loadAnimator = AnimatorInflater.loadAnimator(this.t.l(), aA);
                    if (loadAnimator != null) {
                        return new a(loadAnimator);
                    }
                } catch (RuntimeException e3) {
                    if (equals) {
                        throw e3;
                    }
                    Animation loadAnimation2 = AnimationUtils.loadAnimation(this.t.l(), aA);
                    if (loadAnimation2 != null) {
                        return new a(loadAnimation2);
                    }
                }
            }
        }
        if (i == 0 || (b2 = b(i, z)) < 0) {
            return null;
        }
        switch (b2) {
            case 1:
                return a(1.125f, 1.0f, 0.0f, 1.0f);
            case 2:
                return a(1.0f, 0.975f, 1.0f, 0.0f);
            case 3:
                return a(0.975f, 1.0f, 0.0f, 1.0f);
            case 4:
                return a(1.0f, 1.075f, 1.0f, 0.0f);
            case 5:
                return a(0.0f, 1.0f);
            case 6:
                return a(1.0f, 0.0f);
            default:
                if (i2 == 0 && this.t.h()) {
                    i2 = this.t.i();
                }
                return i2 == 0 ? null : null;
        }
    }

    public void g(androidx.fragment.app.d dVar) {
        if (dVar.Z) {
            if (this.j) {
                this.B = true;
            } else {
                dVar.Z = false;
                a(dVar, this.s, 0, 0, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c(int i) {
        return this.s >= i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Failed to find 'out' block for switch in B:39:0x007d. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:145:0x04e8 A[FALL_THROUGH, PHI: r11
      0x04e8: PHI (r11v1 int) = 
      (r11v0 int)
      (r11v0 int)
      (r11v0 int)
      (r11v0 int)
      (r11v0 int)
      (r11v0 int)
      (r11v0 int)
      (r11v0 int)
      (r11v0 int)
      (r11v0 int)
      (r11v2 int)
      (r11v2 int)
     binds: [B:153:0x032e, B:155:0x0332, B:201:0x0411, B:227:0x04b4, B:238:0x04e0, B:232:0x04c9, B:234:0x04d5, B:236:0x04db, B:237:0x04dd, B:39:0x007d, B:140:0x0304, B:144:0x0320] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:148:0x04ed  */
    /* JADX WARN: Removed duplicated region for block: B:150:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(androidx.fragment.app.d dVar, int i, int i2, int i3, boolean z) {
        int i4;
        int min;
        androidx.fragment.app.d dVar2;
        ViewGroup viewGroup;
        String str;
        int i5 = 1;
        boolean isChangingConfigurations = true;
        if (!dVar.C || dVar.R) {
            i4 = i;
            if (i4 > 1) {
                i4 = 1;
            }
        } else {
            i4 = i;
        }
        if (dVar.D && i4 > dVar.t) {
            i4 = (dVar.t == 0 && dVar.q()) ? 1 : dVar.t;
        }
        if (dVar.Z && dVar.t < 3 && i4 > 2) {
            i4 = 2;
        }
        if (dVar.ai == g.b.CREATED) {
            min = Math.min(i4, 1);
        } else {
            min = Math.min(i4, dVar.ai.ordinal());
        }
        int i6 = min;
        if (dVar.t <= i6) {
            if (dVar.E && !dVar.F) {
                return;
            }
            if (dVar.aF() != null || dVar.aG() != null) {
                dVar.c((View) null);
                dVar.a((Animator) null);
                a(dVar, dVar.aH(), 0, 0, true);
            }
            switch (dVar.t) {
                case 0:
                    if (i6 > 0) {
                        if (c) {
                            Log.v(d, "moveto CREATED: " + dVar);
                        }
                        if (dVar.u != null) {
                            dVar.u.setClassLoader(this.t.l().getClassLoader());
                            dVar.v = dVar.u.getSparseParcelableArray(g);
                            androidx.fragment.app.d a2 = a(dVar.u, f);
                            dVar.A = a2 != null ? a2.x : null;
                            if (dVar.A != null) {
                                dVar.B = dVar.u.getInt(e, 0);
                            }
                            if (dVar.w != null) {
                                dVar.aa = dVar.w.booleanValue();
                                dVar.w = null;
                            } else {
                                dVar.aa = dVar.u.getBoolean(h, true);
                            }
                            if (!dVar.aa) {
                                dVar.Z = true;
                                if (i6 > 2) {
                                    i6 = 2;
                                }
                            }
                        }
                        dVar.K = this.t;
                        dVar.M = this.v;
                        dVar.J = this.v != null ? this.v.L : this.t.b;
                        if (dVar.z != null) {
                            if (this.m.get(dVar.z.x) != dVar.z) {
                                throw new IllegalStateException("Fragment " + dVar + " declared target fragment " + dVar.z + " that does not belong to this FragmentManager!");
                            }
                            if (dVar.z.t < 1) {
                                a(dVar.z, 1, 0, 0, true);
                            }
                            dVar.A = dVar.z.x;
                            dVar.z = null;
                        }
                        if (dVar.A != null) {
                            androidx.fragment.app.d dVar3 = this.m.get(dVar.A);
                            if (dVar3 == null) {
                                throw new IllegalStateException("Fragment " + dVar + " declared target fragment " + dVar.A + " that does not belong to this FragmentManager!");
                            }
                            if (dVar3.t < 1) {
                                a(dVar3, 1, 0, 0, true);
                            }
                        }
                        a(dVar, this.t.l(), false);
                        dVar.ap();
                        if (dVar.M == null) {
                            this.t.b(dVar);
                        } else {
                            dVar.M.a(dVar);
                        }
                        b(dVar, this.t.l(), false);
                        if (!dVar.ah) {
                            a(dVar, dVar.u, false);
                            dVar.l(dVar.u);
                            b(dVar, dVar.u, false);
                        } else {
                            dVar.j(dVar.u);
                            dVar.t = 1;
                        }
                    }
                case 1:
                    if (i6 > 0) {
                        i(dVar);
                    }
                    if (i6 > 1) {
                        if (c) {
                            Log.v(d, "moveto ACTIVITY_CREATED: " + dVar);
                        }
                        if (!dVar.E) {
                            if (dVar.O != 0) {
                                if (dVar.O == -1) {
                                    a(new IllegalArgumentException("Cannot create fragment " + dVar + " for a container view with no id"));
                                }
                                viewGroup = (ViewGroup) this.u.a(dVar.O);
                                if (viewGroup == null && !dVar.G) {
                                    try {
                                        str = dVar.E().getResourceName(dVar.O);
                                    } catch (Resources.NotFoundException unused) {
                                        str = androidx.core.i.d.f448a;
                                    }
                                    a(new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(dVar.O) + " (" + str + ") for fragment " + dVar));
                                }
                            } else {
                                viewGroup = null;
                            }
                            dVar.W = viewGroup;
                            dVar.b(dVar.h(dVar.u), viewGroup, dVar.u);
                            if (dVar.X != null) {
                                dVar.Y = dVar.X;
                                dVar.X.setSaveFromParentEnabled(false);
                                if (viewGroup != null) {
                                    viewGroup.addView(dVar.X);
                                }
                                if (dVar.Q) {
                                    dVar.X.setVisibility(8);
                                }
                                dVar.a(dVar.X, dVar.u);
                                a(dVar, dVar.X, dVar.u, false);
                                dVar.ad = dVar.X.getVisibility() == 0 && dVar.W != null;
                            } else {
                                dVar.Y = null;
                            }
                        }
                        dVar.m(dVar.u);
                        c(dVar, dVar.u, false);
                        if (dVar.X != null) {
                            dVar.f(dVar.u);
                        }
                        dVar.u = null;
                    }
                    break;
                case 2:
                    if (i6 > 2) {
                        if (c) {
                            Log.v(d, "moveto STARTED: " + dVar);
                        }
                        dVar.aq();
                        b(dVar, false);
                    }
                case 3:
                    if (i6 > 3) {
                        if (c) {
                            Log.v(d, "moveto RESUMED: " + dVar);
                        }
                        dVar.ar();
                        c(dVar, false);
                        dVar.u = null;
                        dVar.v = null;
                    }
                default:
                    i5 = i6;
                    if (dVar.t != i5) {
                        Log.w(d, "moveToState: Fragment state for " + dVar + " not updated inline; expected state " + i5 + " found " + dVar.t);
                        dVar.t = i5;
                        return;
                    }
                    return;
            }
        } else if (dVar.t > i6) {
            switch (dVar.t) {
                case 4:
                    if (i6 < 4) {
                        if (c) {
                            Log.v(d, "movefrom RESUMED: " + dVar);
                        }
                        dVar.av();
                        d(dVar, false);
                    }
                case 3:
                    if (i6 < 3) {
                        if (c) {
                            Log.v(d, "movefrom STARTED: " + dVar);
                        }
                        dVar.aw();
                        e(dVar, false);
                    }
                case 2:
                    if (i6 < 2) {
                        if (c) {
                            Log.v(d, "movefrom ACTIVITY_CREATED: " + dVar);
                        }
                        if (dVar.X != null && this.t.a(dVar) && dVar.v == null) {
                            s(dVar);
                        }
                        dVar.ax();
                        f(dVar, false);
                        if (dVar.X != null && dVar.W != null) {
                            dVar.W.endViewTransition(dVar.X);
                            dVar.X.clearAnimation();
                            if (dVar.I() == null || !dVar.I().D) {
                                a a3 = (this.s <= 0 || this.A || dVar.X.getVisibility() != 0 || dVar.af < 0.0f) ? null : a(dVar, i2, false, i3);
                                dVar.af = 0.0f;
                                if (a3 != null) {
                                    a(dVar, a3, i6);
                                }
                                dVar.W.removeView(dVar.X);
                            }
                        }
                        dVar.W = null;
                        dVar.X = null;
                        dVar.ak = null;
                        dVar.al.b((androidx.lifecycle.p<androidx.lifecycle.j>) null);
                        dVar.Y = null;
                        dVar.F = false;
                    }
                    break;
                case 1:
                    if (i6 < 1) {
                        if (this.A) {
                            if (dVar.aF() != null) {
                                View aF = dVar.aF();
                                dVar.c((View) null);
                                aF.clearAnimation();
                            } else if (dVar.aG() != null) {
                                Animator aG = dVar.aG();
                                dVar.a((Animator) null);
                                aG.cancel();
                            }
                        }
                        if (dVar.aF() != null || dVar.aG() != null) {
                            dVar.d(i6);
                            break;
                        } else {
                            if (c) {
                                Log.v(d, "movefrom CREATED: " + dVar);
                            }
                            Object[] objArr = dVar.D && !dVar.q();
                            if (objArr != false || this.V.b(dVar)) {
                                if (this.t instanceof androidx.lifecycle.y) {
                                    isChangingConfigurations = this.V.b();
                                } else if (this.t.l() instanceof Activity) {
                                    isChangingConfigurations = true ^ ((Activity) this.t.l()).isChangingConfigurations();
                                }
                                if (objArr != false || isChangingConfigurations) {
                                    this.V.f(dVar);
                                }
                                dVar.ay();
                                g(dVar, false);
                            } else {
                                dVar.t = 0;
                            }
                            dVar.az();
                            h(dVar, false);
                            if (!z) {
                                if (objArr != false || this.V.b(dVar)) {
                                    m(dVar);
                                } else {
                                    dVar.K = null;
                                    dVar.M = null;
                                    dVar.J = null;
                                    if (dVar.A != null && (dVar2 = this.m.get(dVar.A)) != null && dVar2.T()) {
                                        dVar.z = dVar2;
                                    }
                                }
                            }
                        }
                    }
                    break;
            }
            if (dVar.t != i5) {
            }
        }
        i5 = i6;
        if (dVar.t != i5) {
        }
    }

    private void a(@ah final androidx.fragment.app.d dVar, @ah a aVar, int i) {
        final View view = dVar.X;
        final ViewGroup viewGroup = dVar.W;
        viewGroup.startViewTransition(view);
        dVar.d(i);
        if (aVar.f771a != null) {
            b bVar = new b(aVar.f771a, viewGroup, view);
            dVar.c(dVar.X);
            bVar.setAnimationListener(new Animation.AnimationListener() { // from class: androidx.fragment.app.k.3
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    viewGroup.post(new Runnable() { // from class: androidx.fragment.app.k.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (dVar.aF() != null) {
                                dVar.c((View) null);
                                k.this.a(dVar, dVar.aH(), 0, 0, false);
                            }
                        }
                    });
                }
            });
            dVar.X.startAnimation(bVar);
            return;
        }
        Animator animator = aVar.b;
        dVar.a(aVar.b);
        animator.addListener(new AnimatorListenerAdapter() { // from class: androidx.fragment.app.k.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
                viewGroup.endViewTransition(view);
                Animator aG = dVar.aG();
                dVar.a((Animator) null);
                if (aG == null || viewGroup.indexOfChild(view) >= 0) {
                    return;
                }
                k.this.a(dVar, dVar.aH(), 0, 0, false);
            }
        });
        animator.setTarget(dVar.X);
        animator.start();
    }

    void h(androidx.fragment.app.d dVar) {
        a(dVar, this.s, 0, 0, false);
    }

    void i(androidx.fragment.app.d dVar) {
        if (!dVar.E || dVar.H) {
            return;
        }
        dVar.b(dVar.h(dVar.u), (ViewGroup) null, dVar.u);
        if (dVar.X != null) {
            dVar.Y = dVar.X;
            dVar.X.setSaveFromParentEnabled(false);
            if (dVar.Q) {
                dVar.X.setVisibility(8);
            }
            dVar.a(dVar.X, dVar.u);
            a(dVar, dVar.X, dVar.u, false);
            return;
        }
        dVar.Y = null;
    }

    void j(final androidx.fragment.app.d dVar) {
        if (dVar.X != null) {
            a a2 = a(dVar, dVar.aB(), !dVar.Q, dVar.aC());
            if (a2 != null && a2.b != null) {
                a2.b.setTarget(dVar.X);
                if (dVar.Q) {
                    if (dVar.aJ()) {
                        dVar.o(false);
                    } else {
                        final ViewGroup viewGroup = dVar.W;
                        final View view = dVar.X;
                        viewGroup.startViewTransition(view);
                        a2.b.addListener(new AnimatorListenerAdapter() { // from class: androidx.fragment.app.k.5
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                viewGroup.endViewTransition(view);
                                animator.removeListener(this);
                                if (dVar.X == null || !dVar.Q) {
                                    return;
                                }
                                dVar.X.setVisibility(8);
                            }
                        });
                    }
                } else {
                    dVar.X.setVisibility(0);
                }
                a2.b.start();
            } else {
                if (a2 != null) {
                    dVar.X.startAnimation(a2.f771a);
                    a2.f771a.start();
                }
                dVar.X.setVisibility((!dVar.Q || dVar.aJ()) ? 0 : 8);
                if (dVar.aJ()) {
                    dVar.o(false);
                }
            }
        }
        if (dVar.C && x(dVar)) {
            this.x = true;
        }
        dVar.ae = false;
        dVar.c(dVar.Q);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k(androidx.fragment.app.d dVar) {
        if (dVar == null) {
            return;
        }
        if (!this.m.containsKey(dVar.x)) {
            if (c) {
                Log.v(d, "Ignoring moving " + dVar + " to state " + this.s + "since it is not added to " + this);
                return;
            }
            return;
        }
        int i = this.s;
        if (dVar.D) {
            if (dVar.q()) {
                i = Math.min(i, 1);
            } else {
                i = Math.min(i, 0);
            }
        }
        a(dVar, i, dVar.aB(), dVar.aC(), false);
        if (dVar.X != null) {
            androidx.fragment.app.d v = v(dVar);
            if (v != null) {
                View view = v.X;
                ViewGroup viewGroup = dVar.W;
                int indexOfChild = viewGroup.indexOfChild(view);
                int indexOfChild2 = viewGroup.indexOfChild(dVar.X);
                if (indexOfChild2 < indexOfChild) {
                    viewGroup.removeViewAt(indexOfChild2);
                    viewGroup.addView(dVar.X, indexOfChild);
                }
            }
            if (dVar.ad && dVar.W != null) {
                if (dVar.af > 0.0f) {
                    dVar.X.setAlpha(dVar.af);
                }
                dVar.af = 0.0f;
                dVar.ad = false;
                a a2 = a(dVar, dVar.aB(), true, dVar.aC());
                if (a2 != null) {
                    if (a2.f771a != null) {
                        dVar.X.startAnimation(a2.f771a);
                    } else {
                        a2.b.setTarget(dVar.X);
                        a2.b.start();
                    }
                }
            }
        }
        if (dVar.ae) {
            j(dVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, boolean z) {
        if (this.t == null && i != 0) {
            throw new IllegalStateException("No activity");
        }
        if (z || i != this.s) {
            this.s = i;
            int size = this.l.size();
            for (int i2 = 0; i2 < size; i2++) {
                k(this.l.get(i2));
            }
            for (androidx.fragment.app.d dVar : this.m.values()) {
                if (dVar != null && (dVar.D || dVar.R)) {
                    if (!dVar.ad) {
                        k(dVar);
                    }
                }
            }
            o();
            if (this.x && this.t != null && this.s == 4) {
                this.t.g();
                this.x = false;
            }
        }
    }

    void o() {
        for (androidx.fragment.app.d dVar : this.m.values()) {
            if (dVar != null) {
                g(dVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l(androidx.fragment.app.d dVar) {
        if (this.m.get(dVar.x) != null) {
            return;
        }
        this.m.put(dVar.x, dVar);
        if (dVar.T) {
            if (dVar.S) {
                e(dVar);
            } else {
                f(dVar);
            }
            dVar.T = false;
        }
        if (c) {
            Log.v(d, "Added fragment to active set " + dVar);
        }
    }

    void m(androidx.fragment.app.d dVar) {
        if (this.m.get(dVar.x) == null) {
            return;
        }
        if (c) {
            Log.v(d, "Removed fragment from active set " + dVar);
        }
        for (androidx.fragment.app.d dVar2 : this.m.values()) {
            if (dVar2 != null && dVar.x.equals(dVar2.A)) {
                dVar2.z = dVar;
                dVar2.A = null;
            }
        }
        this.m.put(dVar.x, null);
        f(dVar);
        if (dVar.A != null) {
            dVar.z = this.m.get(dVar.A);
        }
        dVar.ac();
    }

    public void a(androidx.fragment.app.d dVar, boolean z) {
        if (c) {
            Log.v(d, "add: " + dVar);
        }
        l(dVar);
        if (dVar.R) {
            return;
        }
        if (this.l.contains(dVar)) {
            throw new IllegalStateException("Fragment already added: " + dVar);
        }
        synchronized (this.l) {
            this.l.add(dVar);
        }
        dVar.C = true;
        dVar.D = false;
        if (dVar.X == null) {
            dVar.ae = false;
        }
        if (x(dVar)) {
            this.x = true;
        }
        if (z) {
            h(dVar);
        }
    }

    public void n(androidx.fragment.app.d dVar) {
        if (c) {
            Log.v(d, "remove: " + dVar + " nesting=" + dVar.I);
        }
        boolean z = !dVar.q();
        if (!dVar.R || z) {
            synchronized (this.l) {
                this.l.remove(dVar);
            }
            if (x(dVar)) {
                this.x = true;
            }
            dVar.C = false;
            dVar.D = true;
        }
    }

    public void o(androidx.fragment.app.d dVar) {
        if (c) {
            Log.v(d, "hide: " + dVar);
        }
        if (dVar.Q) {
            return;
        }
        dVar.Q = true;
        dVar.ae = true ^ dVar.ae;
    }

    public void p(androidx.fragment.app.d dVar) {
        if (c) {
            Log.v(d, "show: " + dVar);
        }
        if (dVar.Q) {
            dVar.Q = false;
            dVar.ae = !dVar.ae;
        }
    }

    public void q(androidx.fragment.app.d dVar) {
        if (c) {
            Log.v(d, "detach: " + dVar);
        }
        if (dVar.R) {
            return;
        }
        dVar.R = true;
        if (dVar.C) {
            if (c) {
                Log.v(d, "remove from detach: " + dVar);
            }
            synchronized (this.l) {
                this.l.remove(dVar);
            }
            if (x(dVar)) {
                this.x = true;
            }
            dVar.C = false;
        }
    }

    public void r(androidx.fragment.app.d dVar) {
        if (c) {
            Log.v(d, "attach: " + dVar);
        }
        if (dVar.R) {
            dVar.R = false;
            if (dVar.C) {
                return;
            }
            if (this.l.contains(dVar)) {
                throw new IllegalStateException("Fragment already added: " + dVar);
            }
            if (c) {
                Log.v(d, "add from attach: " + dVar);
            }
            synchronized (this.l) {
                this.l.add(dVar);
            }
            dVar.C = true;
            if (x(dVar)) {
                this.x = true;
            }
        }
    }

    @Override // androidx.fragment.app.j
    @ai
    public androidx.fragment.app.d a(int i) {
        for (int size = this.l.size() - 1; size >= 0; size--) {
            androidx.fragment.app.d dVar = this.l.get(size);
            if (dVar != null && dVar.N == i) {
                return dVar;
            }
        }
        for (androidx.fragment.app.d dVar2 : this.m.values()) {
            if (dVar2 != null && dVar2.N == i) {
                return dVar2;
            }
        }
        return null;
    }

    @Override // androidx.fragment.app.j
    @ai
    public androidx.fragment.app.d a(@ai String str) {
        if (str != null) {
            for (int size = this.l.size() - 1; size >= 0; size--) {
                androidx.fragment.app.d dVar = this.l.get(size);
                if (dVar != null && str.equals(dVar.P)) {
                    return dVar;
                }
            }
        }
        if (str == null) {
            return null;
        }
        for (androidx.fragment.app.d dVar2 : this.m.values()) {
            if (dVar2 != null && str.equals(dVar2.P)) {
                return dVar2;
            }
        }
        return null;
    }

    public androidx.fragment.app.d b(@ah String str) {
        androidx.fragment.app.d b2;
        for (androidx.fragment.app.d dVar : this.m.values()) {
            if (dVar != null && (b2 = dVar.b(str)) != null) {
                return b2;
            }
        }
        return null;
    }

    private void J() {
        if (k()) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
    }

    @Override // androidx.fragment.app.j
    public boolean k() {
        return this.y || this.z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0027, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(e eVar, boolean z) {
        if (!z) {
            J();
        }
        synchronized (this) {
            if (!this.A && this.t != null) {
                if (this.i == null) {
                    this.i = new ArrayList<>();
                }
                this.i.add(eVar);
                p();
                return;
            }
            throw new IllegalStateException("Activity has been destroyed");
        }
    }

    void p() {
        synchronized (this) {
            boolean z = false;
            boolean z2 = (this.H == null || this.H.isEmpty()) ? false : true;
            if (this.i != null && this.i.size() == 1) {
                z = true;
            }
            if (z2 || z) {
                this.t.m().removeCallbacks(this.I);
                this.t.m().post(this.I);
                I();
            }
        }
    }

    public int a(androidx.fragment.app.a aVar) {
        synchronized (this) {
            if (this.q != null && this.q.size() > 0) {
                int intValue = this.q.remove(this.q.size() - 1).intValue();
                if (c) {
                    Log.v(d, "Adding back stack index " + intValue + " with " + aVar);
                }
                this.p.set(intValue, aVar);
                return intValue;
            }
            if (this.p == null) {
                this.p = new ArrayList<>();
            }
            int size = this.p.size();
            if (c) {
                Log.v(d, "Setting back stack index " + size + " to " + aVar);
            }
            this.p.add(aVar);
            return size;
        }
    }

    public void a(int i, androidx.fragment.app.a aVar) {
        synchronized (this) {
            if (this.p == null) {
                this.p = new ArrayList<>();
            }
            int size = this.p.size();
            if (i < size) {
                if (c) {
                    Log.v(d, "Setting back stack index " + i + " to " + aVar);
                }
                this.p.set(i, aVar);
            } else {
                while (size < i) {
                    this.p.add(null);
                    if (this.q == null) {
                        this.q = new ArrayList<>();
                    }
                    if (c) {
                        Log.v(d, "Adding available back stack index " + size);
                    }
                    this.q.add(Integer.valueOf(size));
                    size++;
                }
                if (c) {
                    Log.v(d, "Adding back stack index " + i + " with " + aVar);
                }
                this.p.add(aVar);
            }
        }
    }

    public void d(int i) {
        synchronized (this) {
            this.p.set(i, null);
            if (this.q == null) {
                this.q = new ArrayList<>();
            }
            if (c) {
                Log.v(d, "Freeing back stack index " + i);
            }
            this.q.add(Integer.valueOf(i));
        }
    }

    private void d(boolean z) {
        if (this.j) {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        }
        if (this.t == null) {
            throw new IllegalStateException("Fragment host has been destroyed");
        }
        if (Looper.myLooper() != this.t.m().getLooper()) {
            throw new IllegalStateException("Must be called from main thread of fragment host");
        }
        if (!z) {
            J();
        }
        if (this.C == null) {
            this.C = new ArrayList<>();
            this.D = new ArrayList<>();
        }
        this.j = true;
        try {
            a((ArrayList<androidx.fragment.app.a>) null, (ArrayList<Boolean>) null);
        } finally {
            this.j = false;
        }
    }

    public void b(e eVar, boolean z) {
        if (z && (this.t == null || this.A)) {
            return;
        }
        d(z);
        if (eVar.a(this.C, this.D)) {
            this.j = true;
            try {
                b(this.C, this.D);
            } finally {
                K();
            }
        }
        I();
        r();
        N();
    }

    private void K() {
        this.j = false;
        this.D.clear();
        this.C.clear();
    }

    public boolean q() {
        d(true);
        boolean z = false;
        while (c(this.C, this.D)) {
            this.j = true;
            try {
                b(this.C, this.D);
                K();
                z = true;
            } catch (Throwable th) {
                K();
                throw th;
            }
        }
        I();
        r();
        N();
        return z;
    }

    private void a(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2) {
        int indexOf;
        int indexOf2;
        int size = this.H == null ? 0 : this.H.size();
        int i = 0;
        while (i < size) {
            g gVar = this.H.get(i);
            if (arrayList != null && !gVar.f776a && (indexOf2 = arrayList.indexOf(gVar.b)) != -1 && arrayList2.get(indexOf2).booleanValue()) {
                this.H.remove(i);
                i--;
                size--;
                gVar.e();
            } else if (gVar.c() || (arrayList != null && gVar.b.a(arrayList, 0, arrayList.size()))) {
                this.H.remove(i);
                i--;
                size--;
                if (arrayList != null && !gVar.f776a && (indexOf = arrayList.indexOf(gVar.b)) != -1 && arrayList2.get(indexOf).booleanValue()) {
                    gVar.e();
                } else {
                    gVar.d();
                }
            }
            i++;
        }
    }

    private void b(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2) {
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        if (arrayList2 == null || arrayList.size() != arrayList2.size()) {
            throw new IllegalStateException("Internal error with the back stack records");
        }
        a(arrayList, arrayList2);
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (i < size) {
            if (!arrayList.get(i).F) {
                if (i2 != i) {
                    a(arrayList, arrayList2, i2, i);
                }
                i2 = i + 1;
                if (arrayList2.get(i).booleanValue()) {
                    while (i2 < size && arrayList2.get(i2).booleanValue() && !arrayList.get(i2).F) {
                        i2++;
                    }
                }
                a(arrayList, arrayList2, i, i2);
                i = i2 - 1;
            }
            i++;
        }
        if (i2 != size) {
            a(arrayList, arrayList2, i2, size);
        }
    }

    private void a(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2) {
        int i3;
        int i4 = i;
        boolean z = arrayList.get(i4).F;
        if (this.E == null) {
            this.E = new ArrayList<>();
        } else {
            this.E.clear();
        }
        this.E.addAll(this.l);
        androidx.fragment.app.d i5 = i();
        boolean z2 = false;
        for (int i6 = i4; i6 < i2; i6++) {
            androidx.fragment.app.a aVar = arrayList.get(i6);
            if (!arrayList2.get(i6).booleanValue()) {
                i5 = aVar.a(this.E, i5);
            } else {
                i5 = aVar.b(this.E, i5);
            }
            z2 = z2 || aVar.w;
        }
        this.E.clear();
        if (!z) {
            t.a(this, arrayList, arrayList2, i, i2, false);
        }
        b(arrayList, arrayList2, i, i2);
        if (z) {
            androidx.c.b<androidx.fragment.app.d> bVar = new androidx.c.b<>();
            b(bVar);
            int a2 = a(arrayList, arrayList2, i, i2, bVar);
            a(bVar);
            i3 = a2;
        } else {
            i3 = i2;
        }
        if (i3 != i4 && z) {
            t.a(this, arrayList, arrayList2, i, i3, true);
            a(this.s, true);
        }
        while (i4 < i2) {
            androidx.fragment.app.a aVar2 = arrayList.get(i4);
            if (arrayList2.get(i4).booleanValue() && aVar2.d >= 0) {
                d(aVar2.d);
                aVar2.d = -1;
            }
            aVar2.f();
            i4++;
        }
        if (z2) {
            s();
        }
    }

    private void a(androidx.c.b<androidx.fragment.app.d> bVar) {
        int size = bVar.size();
        for (int i = 0; i < size; i++) {
            androidx.fragment.app.d b2 = bVar.b(i);
            if (!b2.C) {
                View Y = b2.Y();
                b2.af = Y.getAlpha();
                Y.setAlpha(0.0f);
            }
        }
    }

    private int a(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2, androidx.c.b<androidx.fragment.app.d> bVar) {
        int i3 = i2;
        for (int i4 = i2 - 1; i4 >= i; i4--) {
            androidx.fragment.app.a aVar = arrayList.get(i4);
            boolean booleanValue = arrayList2.get(i4).booleanValue();
            if (aVar.l() && !aVar.a(arrayList, i4 + 1, i2)) {
                if (this.H == null) {
                    this.H = new ArrayList<>();
                }
                g gVar = new g(aVar, booleanValue);
                this.H.add(gVar);
                aVar.a(gVar);
                if (booleanValue) {
                    aVar.k();
                } else {
                    aVar.b(false);
                }
                i3--;
                if (i4 != i3) {
                    arrayList.remove(i4);
                    arrayList.add(i3, aVar);
                }
                b(bVar);
            }
        }
        return i3;
    }

    void a(androidx.fragment.app.a aVar, boolean z, boolean z2, boolean z3) {
        if (z) {
            aVar.b(z3);
        } else {
            aVar.k();
        }
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        arrayList.add(aVar);
        arrayList2.add(Boolean.valueOf(z));
        if (z2) {
            t.a(this, (ArrayList<androidx.fragment.app.a>) arrayList, (ArrayList<Boolean>) arrayList2, 0, 1, true);
        }
        if (z3) {
            a(this.s, true);
        }
        for (androidx.fragment.app.d dVar : this.m.values()) {
            if (dVar != null && dVar.X != null && dVar.ad && aVar.b(dVar.O)) {
                if (dVar.af > 0.0f) {
                    dVar.X.setAlpha(dVar.af);
                }
                if (z3) {
                    dVar.af = 0.0f;
                } else {
                    dVar.af = -1.0f;
                    dVar.ad = false;
                }
            }
        }
    }

    private androidx.fragment.app.d v(androidx.fragment.app.d dVar) {
        ViewGroup viewGroup = dVar.W;
        View view = dVar.X;
        if (viewGroup == null || view == null) {
            return null;
        }
        for (int indexOf = this.l.indexOf(dVar) - 1; indexOf >= 0; indexOf--) {
            androidx.fragment.app.d dVar2 = this.l.get(indexOf);
            if (dVar2.W == viewGroup && dVar2.X != null) {
                return dVar2;
            }
        }
        return null;
    }

    private static void b(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2) {
        while (i < i2) {
            androidx.fragment.app.a aVar = arrayList.get(i);
            if (arrayList2.get(i).booleanValue()) {
                aVar.a(-1);
                aVar.b(i == i2 + (-1));
            } else {
                aVar.a(1);
                aVar.k();
            }
            i++;
        }
    }

    private void b(androidx.c.b<androidx.fragment.app.d> bVar) {
        if (this.s < 1) {
            return;
        }
        int min = Math.min(this.s, 3);
        int size = this.l.size();
        for (int i = 0; i < size; i++) {
            androidx.fragment.app.d dVar = this.l.get(i);
            if (dVar.t < min) {
                a(dVar, min, dVar.aA(), dVar.aB(), false);
                if (dVar.X != null && !dVar.Q && dVar.ad) {
                    bVar.add(dVar);
                }
            }
        }
    }

    private void L() {
        if (this.H != null) {
            while (!this.H.isEmpty()) {
                this.H.remove(0).d();
            }
        }
    }

    private void M() {
        for (androidx.fragment.app.d dVar : this.m.values()) {
            if (dVar != null) {
                if (dVar.aF() != null) {
                    int aH = dVar.aH();
                    View aF = dVar.aF();
                    Animation animation = aF.getAnimation();
                    if (animation != null) {
                        animation.cancel();
                        aF.clearAnimation();
                    }
                    dVar.c((View) null);
                    a(dVar, aH, 0, 0, false);
                } else if (dVar.aG() != null) {
                    dVar.aG().end();
                }
            }
        }
    }

    private boolean c(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2) {
        synchronized (this) {
            if (this.i != null && this.i.size() != 0) {
                int size = this.i.size();
                boolean z = false;
                for (int i = 0; i < size; i++) {
                    z |= this.i.get(i).a(arrayList, arrayList2);
                }
                this.i.clear();
                this.t.m().removeCallbacks(this.I);
                return z;
            }
            return false;
        }
    }

    void r() {
        if (this.B) {
            this.B = false;
            o();
        }
    }

    void s() {
        if (this.r != null) {
            for (int i = 0; i < this.r.size(); i++) {
                this.r.get(i).a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(androidx.fragment.app.a aVar) {
        if (this.n == null) {
            this.n = new ArrayList<>();
        }
        this.n.add(aVar);
    }

    boolean a(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, String str, int i, int i2) {
        int size;
        if (this.n == null) {
            return false;
        }
        if (str == null && i < 0 && (i2 & 1) == 0) {
            int size2 = this.n.size() - 1;
            if (size2 < 0) {
                return false;
            }
            arrayList.add(this.n.remove(size2));
            arrayList2.add(true);
        } else {
            if (str != null || i >= 0) {
                size = this.n.size() - 1;
                while (size >= 0) {
                    androidx.fragment.app.a aVar = this.n.get(size);
                    if ((str != null && str.equals(aVar.m())) || (i >= 0 && i == aVar.d)) {
                        break;
                    }
                    size--;
                }
                if (size < 0) {
                    return false;
                }
                if ((i2 & 1) != 0) {
                    size--;
                    while (size >= 0) {
                        androidx.fragment.app.a aVar2 = this.n.get(size);
                        if ((str == null || !str.equals(aVar2.m())) && (i < 0 || i != aVar2.d)) {
                            break;
                        }
                        size--;
                    }
                }
            } else {
                size = -1;
            }
            if (size == this.n.size() - 1) {
                return false;
            }
            for (int size3 = this.n.size() - 1; size3 > size; size3--) {
                arrayList.add(this.n.remove(size3));
                arrayList2.add(true);
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    public l t() {
        if (this.t instanceof androidx.lifecycle.y) {
            a(new IllegalStateException("You cannot use retainNonConfig when your FragmentHostCallback implements ViewModelStoreOwner."));
        }
        return this.V.d();
    }

    void s(androidx.fragment.app.d dVar) {
        if (dVar.Y == null) {
            return;
        }
        if (this.G == null) {
            this.G = new SparseArray<>();
        } else {
            this.G.clear();
        }
        dVar.Y.saveHierarchyState(this.G);
        if (this.G.size() > 0) {
            dVar.v = this.G;
            this.G = null;
        }
    }

    Bundle t(androidx.fragment.app.d dVar) {
        Bundle bundle;
        if (this.F == null) {
            this.F = new Bundle();
        }
        dVar.n(this.F);
        d(dVar, this.F, false);
        if (this.F.isEmpty()) {
            bundle = null;
        } else {
            bundle = this.F;
            this.F = null;
        }
        if (dVar.X != null) {
            s(dVar);
        }
        if (dVar.v != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putSparseParcelableArray(g, dVar.v);
        }
        if (!dVar.aa) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBoolean(h, dVar.aa);
        }
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Parcelable u() {
        ArrayList<String> arrayList;
        int size;
        L();
        M();
        q();
        this.y = true;
        androidx.fragment.app.b[] bVarArr = null;
        if (this.m.isEmpty()) {
            return null;
        }
        ArrayList<p> arrayList2 = new ArrayList<>(this.m.size());
        boolean z = false;
        for (androidx.fragment.app.d dVar : this.m.values()) {
            if (dVar != null) {
                if (dVar.J != this) {
                    a(new IllegalStateException("Failure saving state: active " + dVar + " was removed from the FragmentManager"));
                }
                p pVar = new p(dVar);
                arrayList2.add(pVar);
                if (dVar.t > 0 && pVar.m == null) {
                    pVar.m = t(dVar);
                    if (dVar.A != null) {
                        androidx.fragment.app.d dVar2 = this.m.get(dVar.A);
                        if (dVar2 == null) {
                            a(new IllegalStateException("Failure saving state: " + dVar + " has target not in fragment manager: " + dVar.A));
                        }
                        if (pVar.m == null) {
                            pVar.m = new Bundle();
                        }
                        a(pVar.m, f, dVar2);
                        if (dVar.B != 0) {
                            pVar.m.putInt(e, dVar.B);
                        }
                    }
                } else {
                    pVar.m = dVar.u;
                }
                if (c) {
                    Log.v(d, "Saved state of " + dVar + ": " + pVar.m);
                }
                z = true;
            }
        }
        if (!z) {
            if (c) {
                Log.v(d, "saveAllState: no fragments!");
            }
            return null;
        }
        int size2 = this.l.size();
        if (size2 > 0) {
            arrayList = new ArrayList<>(size2);
            Iterator<androidx.fragment.app.d> it = this.l.iterator();
            while (it.hasNext()) {
                androidx.fragment.app.d next = it.next();
                arrayList.add(next.x);
                if (next.J != this) {
                    a(new IllegalStateException("Failure saving state: active " + next + " was removed from the FragmentManager"));
                }
                if (c) {
                    Log.v(d, "saveAllState: adding fragment (" + next.x + "): " + next);
                }
            }
        } else {
            arrayList = null;
        }
        if (this.n != null && (size = this.n.size()) > 0) {
            bVarArr = new androidx.fragment.app.b[size];
            for (int i = 0; i < size; i++) {
                bVarArr[i] = new androidx.fragment.app.b(this.n.get(i));
                if (c) {
                    Log.v(d, "saveAllState: adding back stack #" + i + ": " + this.n.get(i));
                }
            }
        }
        m mVar = new m();
        mVar.f778a = arrayList2;
        mVar.b = arrayList;
        mVar.c = bVarArr;
        if (this.w != null) {
            mVar.d = this.w.x;
        }
        mVar.e = this.k;
        return mVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Parcelable parcelable, l lVar) {
        if (this.t instanceof androidx.lifecycle.y) {
            a(new IllegalStateException("You must use restoreSaveState when your FragmentHostCallback implements ViewModelStoreOwner"));
        }
        this.V.a(lVar);
        a(parcelable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Parcelable parcelable) {
        p pVar;
        if (parcelable == null) {
            return;
        }
        m mVar = (m) parcelable;
        if (mVar.f778a == null) {
            return;
        }
        for (androidx.fragment.app.d dVar : this.V.c()) {
            if (c) {
                Log.v(d, "restoreSaveState: re-attaching retained " + dVar);
            }
            Iterator<p> it = mVar.f778a.iterator();
            while (true) {
                if (it.hasNext()) {
                    pVar = it.next();
                    if (pVar.b.equals(dVar.x)) {
                        break;
                    }
                } else {
                    pVar = null;
                    break;
                }
            }
            if (pVar == null) {
                if (c) {
                    Log.v(d, "Discarding retained Fragment " + dVar + " that was not found in the set of active Fragments " + mVar.f778a);
                }
                a(dVar, 1, 0, 0, false);
                dVar.D = true;
                a(dVar, 0, 0, 0, false);
            } else {
                pVar.n = dVar;
                dVar.v = null;
                dVar.I = 0;
                dVar.F = false;
                dVar.C = false;
                dVar.A = dVar.z != null ? dVar.z.x : null;
                dVar.z = null;
                if (pVar.m != null) {
                    pVar.m.setClassLoader(this.t.l().getClassLoader());
                    dVar.v = pVar.m.getSparseParcelableArray(g);
                    dVar.u = pVar.m;
                }
            }
        }
        this.m.clear();
        Iterator<p> it2 = mVar.f778a.iterator();
        while (it2.hasNext()) {
            p next = it2.next();
            if (next != null) {
                androidx.fragment.app.d a2 = next.a(this.t.l().getClassLoader(), j());
                a2.J = this;
                if (c) {
                    Log.v(d, "restoreSaveState: active (" + a2.x + "): " + a2);
                }
                this.m.put(a2.x, a2);
                next.n = null;
            }
        }
        this.l.clear();
        if (mVar.b != null) {
            Iterator<String> it3 = mVar.b.iterator();
            while (it3.hasNext()) {
                String next2 = it3.next();
                androidx.fragment.app.d dVar2 = this.m.get(next2);
                if (dVar2 == null) {
                    a(new IllegalStateException("No instantiated fragment for (" + next2 + ")"));
                }
                dVar2.C = true;
                if (c) {
                    Log.v(d, "restoreSaveState: added (" + next2 + "): " + dVar2);
                }
                if (this.l.contains(dVar2)) {
                    throw new IllegalStateException("Already added " + dVar2);
                }
                synchronized (this.l) {
                    this.l.add(dVar2);
                }
            }
        }
        if (mVar.c != null) {
            this.n = new ArrayList<>(mVar.c.length);
            for (int i = 0; i < mVar.c.length; i++) {
                androidx.fragment.app.a a3 = mVar.c[i].a(this);
                if (c) {
                    Log.v(d, "restoreAllState: back stack #" + i + " (index " + a3.d + "): " + a3);
                    PrintWriter printWriter = new PrintWriter(new androidx.core.m.d(d));
                    a3.a("  ", printWriter, false);
                    printWriter.close();
                }
                this.n.add(a3);
                if (a3.d >= 0) {
                    a(a3.d, a3);
                }
            }
        } else {
            this.n = null;
        }
        if (mVar.d != null) {
            this.w = this.m.get(mVar.d);
            w(this.w);
        }
        this.k = mVar.e;
    }

    private void N() {
        this.m.values().removeAll(Collections.singleton(null));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void a(@ah i iVar, @ah androidx.fragment.app.f fVar, @ai androidx.fragment.app.d dVar) {
        if (this.t != null) {
            throw new IllegalStateException("Already attached");
        }
        this.t = iVar;
        this.u = fVar;
        this.v = dVar;
        if (this.v != null) {
            I();
        }
        if (iVar instanceof androidx.activity.d) {
            androidx.activity.d dVar2 = (androidx.activity.d) iVar;
            this.S = dVar2.e();
            androidx.fragment.app.d dVar3 = dVar2;
            if (dVar != null) {
                dVar3 = dVar;
            }
            this.S.a(dVar3, this.T);
        }
        if (dVar != null) {
            this.V = dVar.J.d(dVar);
        } else if (iVar instanceof androidx.lifecycle.y) {
            this.V = n.a(((androidx.lifecycle.y) iVar).d());
        } else {
            this.V = new n(false);
        }
    }

    public void v() {
        this.y = false;
        this.z = false;
        int size = this.l.size();
        for (int i = 0; i < size; i++) {
            androidx.fragment.app.d dVar = this.l.get(i);
            if (dVar != null) {
                dVar.as();
            }
        }
    }

    public void w() {
        this.y = false;
        this.z = false;
        f(1);
    }

    public void x() {
        this.y = false;
        this.z = false;
        f(2);
    }

    public void y() {
        this.y = false;
        this.z = false;
        f(3);
    }

    public void z() {
        this.y = false;
        this.z = false;
        f(4);
    }

    public void A() {
        f(3);
    }

    public void B() {
        this.z = true;
        f(2);
    }

    public void C() {
        f(1);
    }

    public void D() {
        this.A = true;
        q();
        f(0);
        this.t = null;
        this.u = null;
        this.v = null;
        if (this.S != null) {
            this.T.b();
            this.S = null;
        }
    }

    private void f(int i) {
        try {
            this.j = true;
            a(i, false);
            this.j = false;
            q();
        } catch (Throwable th) {
            this.j = false;
            throw th;
        }
    }

    public void b(boolean z) {
        for (int size = this.l.size() - 1; size >= 0; size--) {
            androidx.fragment.app.d dVar = this.l.get(size);
            if (dVar != null) {
                dVar.m(z);
            }
        }
    }

    public void c(boolean z) {
        for (int size = this.l.size() - 1; size >= 0; size--) {
            androidx.fragment.app.d dVar = this.l.get(size);
            if (dVar != null) {
                dVar.n(z);
            }
        }
    }

    public void a(@ah Configuration configuration) {
        for (int i = 0; i < this.l.size(); i++) {
            androidx.fragment.app.d dVar = this.l.get(i);
            if (dVar != null) {
                dVar.a(configuration);
            }
        }
    }

    public void E() {
        for (int i = 0; i < this.l.size(); i++) {
            androidx.fragment.app.d dVar = this.l.get(i);
            if (dVar != null) {
                dVar.au();
            }
        }
    }

    public boolean a(@ah Menu menu, @ah MenuInflater menuInflater) {
        if (this.s < 1) {
            return false;
        }
        ArrayList<androidx.fragment.app.d> arrayList = null;
        boolean z = false;
        for (int i = 0; i < this.l.size(); i++) {
            androidx.fragment.app.d dVar = this.l.get(i);
            if (dVar != null && dVar.b(menu, menuInflater)) {
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                }
                arrayList.add(dVar);
                z = true;
            }
        }
        if (this.o != null) {
            for (int i2 = 0; i2 < this.o.size(); i2++) {
                androidx.fragment.app.d dVar2 = this.o.get(i2);
                if (arrayList == null || !arrayList.contains(dVar2)) {
                    dVar2.ad();
                }
            }
        }
        this.o = arrayList;
        return z;
    }

    public boolean a(@ah Menu menu) {
        if (this.s < 1) {
            return false;
        }
        boolean z = false;
        for (int i = 0; i < this.l.size(); i++) {
            androidx.fragment.app.d dVar = this.l.get(i);
            if (dVar != null && dVar.c(menu)) {
                z = true;
            }
        }
        return z;
    }

    public boolean a(@ah MenuItem menuItem) {
        if (this.s < 1) {
            return false;
        }
        for (int i = 0; i < this.l.size(); i++) {
            androidx.fragment.app.d dVar = this.l.get(i);
            if (dVar != null && dVar.c(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public boolean b(@ah MenuItem menuItem) {
        if (this.s < 1) {
            return false;
        }
        for (int i = 0; i < this.l.size(); i++) {
            androidx.fragment.app.d dVar = this.l.get(i);
            if (dVar != null && dVar.d(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public void b(@ah Menu menu) {
        if (this.s < 1) {
            return;
        }
        for (int i = 0; i < this.l.size(); i++) {
            androidx.fragment.app.d dVar = this.l.get(i);
            if (dVar != null) {
                dVar.d(menu);
            }
        }
    }

    public void u(androidx.fragment.app.d dVar) {
        if (dVar != null && (this.m.get(dVar.x) != dVar || (dVar.K != null && dVar.F() != this))) {
            throw new IllegalArgumentException("Fragment " + dVar + " is not an active fragment of FragmentManager " + this);
        }
        androidx.fragment.app.d dVar2 = this.w;
        this.w = dVar;
        w(dVar2);
        w(this.w);
    }

    private void w(@ai androidx.fragment.app.d dVar) {
        if (dVar == null || this.m.get(dVar.x) != dVar) {
            return;
        }
        dVar.at();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void F() {
        I();
        w(this.w);
    }

    @Override // androidx.fragment.app.j
    @ai
    public androidx.fragment.app.d i() {
        return this.w;
    }

    public void a(androidx.fragment.app.d dVar, g.b bVar) {
        if (this.m.get(dVar.x) != dVar || (dVar.K != null && dVar.F() != this)) {
            throw new IllegalArgumentException("Fragment " + dVar + " is not an active fragment of FragmentManager " + this);
        }
        dVar.ai = bVar;
    }

    @Override // androidx.fragment.app.j
    @ah
    public h j() {
        if (super.j() == f763a) {
            if (this.v != null) {
                return this.v.J.j();
            }
            a(new h() { // from class: androidx.fragment.app.k.6
                @Override // androidx.fragment.app.h
                @ah
                public androidx.fragment.app.d c(@ah ClassLoader classLoader, @ah String str) {
                    return k.this.t.a(k.this.t.l(), str, (Bundle) null);
                }
            });
        }
        return super.j();
    }

    @Override // androidx.fragment.app.j
    public void a(@ah j.b bVar, boolean z) {
        this.U.add(new c(bVar, z));
    }

    @Override // androidx.fragment.app.j
    public void a(@ah j.b bVar) {
        synchronized (this.U) {
            int i = 0;
            int size = this.U.size();
            while (true) {
                if (i >= size) {
                    break;
                }
                if (this.U.get(i).f773a == bVar) {
                    this.U.remove(i);
                    break;
                }
                i++;
            }
        }
    }

    void a(@ah androidx.fragment.app.d dVar, @ah Context context, boolean z) {
        if (this.v != null) {
            j F = this.v.F();
            if (F instanceof k) {
                ((k) F).a(dVar, context, true);
            }
        }
        Iterator<c> it = this.U.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (!z || next.b) {
                next.f773a.a(this, dVar, context);
            }
        }
    }

    void b(@ah androidx.fragment.app.d dVar, @ah Context context, boolean z) {
        if (this.v != null) {
            j F = this.v.F();
            if (F instanceof k) {
                ((k) F).b(dVar, context, true);
            }
        }
        Iterator<c> it = this.U.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (!z || next.b) {
                next.f773a.b(this, dVar, context);
            }
        }
    }

    void a(@ah androidx.fragment.app.d dVar, @ai Bundle bundle, boolean z) {
        if (this.v != null) {
            j F = this.v.F();
            if (F instanceof k) {
                ((k) F).a(dVar, bundle, true);
            }
        }
        Iterator<c> it = this.U.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (!z || next.b) {
                next.f773a.a(this, dVar, bundle);
            }
        }
    }

    void b(@ah androidx.fragment.app.d dVar, @ai Bundle bundle, boolean z) {
        if (this.v != null) {
            j F = this.v.F();
            if (F instanceof k) {
                ((k) F).b(dVar, bundle, true);
            }
        }
        Iterator<c> it = this.U.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (!z || next.b) {
                next.f773a.b(this, dVar, bundle);
            }
        }
    }

    void c(@ah androidx.fragment.app.d dVar, @ai Bundle bundle, boolean z) {
        if (this.v != null) {
            j F = this.v.F();
            if (F instanceof k) {
                ((k) F).c(dVar, bundle, true);
            }
        }
        Iterator<c> it = this.U.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (!z || next.b) {
                next.f773a.c(this, dVar, bundle);
            }
        }
    }

    void a(@ah androidx.fragment.app.d dVar, @ah View view, @ai Bundle bundle, boolean z) {
        if (this.v != null) {
            j F = this.v.F();
            if (F instanceof k) {
                ((k) F).a(dVar, view, bundle, true);
            }
        }
        Iterator<c> it = this.U.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (!z || next.b) {
                next.f773a.a(this, dVar, view, bundle);
            }
        }
    }

    void b(@ah androidx.fragment.app.d dVar, boolean z) {
        if (this.v != null) {
            j F = this.v.F();
            if (F instanceof k) {
                ((k) F).b(dVar, true);
            }
        }
        Iterator<c> it = this.U.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (!z || next.b) {
                next.f773a.a(this, dVar);
            }
        }
    }

    void c(@ah androidx.fragment.app.d dVar, boolean z) {
        if (this.v != null) {
            j F = this.v.F();
            if (F instanceof k) {
                ((k) F).c(dVar, true);
            }
        }
        Iterator<c> it = this.U.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (!z || next.b) {
                next.f773a.b(this, dVar);
            }
        }
    }

    void d(@ah androidx.fragment.app.d dVar, boolean z) {
        if (this.v != null) {
            j F = this.v.F();
            if (F instanceof k) {
                ((k) F).d(dVar, true);
            }
        }
        Iterator<c> it = this.U.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (!z || next.b) {
                next.f773a.c(this, dVar);
            }
        }
    }

    void e(@ah androidx.fragment.app.d dVar, boolean z) {
        if (this.v != null) {
            j F = this.v.F();
            if (F instanceof k) {
                ((k) F).e(dVar, true);
            }
        }
        Iterator<c> it = this.U.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (!z || next.b) {
                next.f773a.d(this, dVar);
            }
        }
    }

    void d(@ah androidx.fragment.app.d dVar, @ah Bundle bundle, boolean z) {
        if (this.v != null) {
            j F = this.v.F();
            if (F instanceof k) {
                ((k) F).d(dVar, bundle, true);
            }
        }
        Iterator<c> it = this.U.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (!z || next.b) {
                next.f773a.d(this, dVar, bundle);
            }
        }
    }

    void f(@ah androidx.fragment.app.d dVar, boolean z) {
        if (this.v != null) {
            j F = this.v.F();
            if (F instanceof k) {
                ((k) F).f(dVar, true);
            }
        }
        Iterator<c> it = this.U.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (!z || next.b) {
                next.f773a.e(this, dVar);
            }
        }
    }

    void g(@ah androidx.fragment.app.d dVar, boolean z) {
        if (this.v != null) {
            j F = this.v.F();
            if (F instanceof k) {
                ((k) F).g(dVar, true);
            }
        }
        Iterator<c> it = this.U.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (!z || next.b) {
                next.f773a.f(this, dVar);
            }
        }
    }

    void h(@ah androidx.fragment.app.d dVar, boolean z) {
        if (this.v != null) {
            j F = this.v.F();
            if (F instanceof k) {
                ((k) F).h(dVar, true);
            }
        }
        Iterator<c> it = this.U.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (!z || next.b) {
                next.f773a.g(this, dVar);
            }
        }
    }

    boolean G() {
        boolean z = false;
        for (androidx.fragment.app.d dVar : this.m.values()) {
            if (dVar != null) {
                z = x(dVar);
            }
            if (z) {
                return true;
            }
        }
        return false;
    }

    private boolean x(androidx.fragment.app.d dVar) {
        return (dVar.U && dVar.V) || dVar.L.G();
    }

    @Override // android.view.LayoutInflater.Factory2
    @ai
    public View onCreateView(@ai View view, @ah String str, @ah Context context, @ah AttributeSet attributeSet) {
        androidx.fragment.app.d dVar;
        if (!"fragment".equals(str)) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d.f774a);
        if (attributeValue == null) {
            attributeValue = obtainStyledAttributes.getString(0);
        }
        String str2 = attributeValue;
        int resourceId = obtainStyledAttributes.getResourceId(1, -1);
        String string = obtainStyledAttributes.getString(2);
        obtainStyledAttributes.recycle();
        if (str2 == null || !h.a(context.getClassLoader(), str2)) {
            return null;
        }
        int id = view != null ? view.getId() : 0;
        if (id == -1 && resourceId == -1 && string == null) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + str2);
        }
        androidx.fragment.app.d a2 = resourceId != -1 ? a(resourceId) : null;
        if (a2 == null && string != null) {
            a2 = a(string);
        }
        if (a2 == null && id != -1) {
            a2 = a(id);
        }
        if (c) {
            Log.v(d, "onCreateView: id=0x" + Integer.toHexString(resourceId) + " fname=" + str2 + " existing=" + a2);
        }
        if (a2 == null) {
            androidx.fragment.app.d c2 = j().c(context.getClassLoader(), str2);
            c2.E = true;
            c2.N = resourceId != 0 ? resourceId : id;
            c2.O = id;
            c2.P = string;
            c2.F = true;
            c2.J = this;
            c2.K = this.t;
            c2.a(this.t.l(), attributeSet, c2.u);
            a(c2, true);
            dVar = c2;
        } else {
            if (a2.F) {
                throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + str2);
            }
            a2.F = true;
            a2.K = this.t;
            a2.a(this.t.l(), attributeSet, a2.u);
            dVar = a2;
        }
        if (this.s < 1 && dVar.E) {
            a(dVar, 1, 0, 0, false);
        } else {
            h(dVar);
        }
        if (dVar.X == null) {
            throw new IllegalStateException("Fragment " + str2 + " did not create a view.");
        }
        if (resourceId != 0) {
            dVar.X.setId(resourceId);
        }
        if (dVar.X.getTag() == null) {
            dVar.X.setTag(string);
        }
        return dVar.X;
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class d {

        /* renamed from: a, reason: collision with root package name */
        public static final int[] f774a = {R.attr.name, R.attr.id, R.attr.tag};
        public static final int b = 1;
        public static final int c = 0;
        public static final int d = 2;

        private d() {
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private class f implements e {

        /* renamed from: a, reason: collision with root package name */
        final String f775a;
        final int b;
        final int c;

        f(String str, int i, int i2) {
            this.f775a = str;
            this.b = i;
            this.c = i2;
        }

        @Override // androidx.fragment.app.k.e
        public boolean a(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2) {
            if (k.this.w == null || this.b >= 0 || this.f775a != null || !k.this.w.H().e()) {
                return k.this.a(arrayList, arrayList2, this.f775a, this.b, this.c);
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class g implements d.c {

        /* renamed from: a, reason: collision with root package name */
        final boolean f776a;
        final androidx.fragment.app.a b;
        private int c;

        g(androidx.fragment.app.a aVar, boolean z) {
            this.f776a = z;
            this.b = aVar;
        }

        @Override // androidx.fragment.app.d.c
        public void a() {
            this.c--;
            if (this.c != 0) {
                return;
            }
            this.b.b.p();
        }

        @Override // androidx.fragment.app.d.c
        public void b() {
            this.c++;
        }

        public boolean c() {
            return this.c == 0;
        }

        public void d() {
            boolean z = this.c > 0;
            k kVar = this.b.b;
            int size = kVar.l.size();
            for (int i = 0; i < size; i++) {
                androidx.fragment.app.d dVar = kVar.l.get(i);
                dVar.a((d.c) null);
                if (z && dVar.aI()) {
                    dVar.an();
                }
            }
            this.b.b.a(this.b, this.f776a, !z, true);
        }

        public void e() {
            this.b.b.a(this.b, this.f776a, false, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public final Animation f771a;
        public final Animator b;

        a(Animation animation) {
            this.f771a = animation;
            this.b = null;
            if (animation == null) {
                throw new IllegalStateException("Animation cannot be null");
            }
        }

        a(Animator animator) {
            this.f771a = null;
            this.b = animator;
            if (animator == null) {
                throw new IllegalStateException("Animator cannot be null");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class b extends AnimationSet implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        private final ViewGroup f772a;
        private final View b;
        private boolean c;
        private boolean d;
        private boolean e;

        b(@ah Animation animation, @ah ViewGroup viewGroup, @ah View view) {
            super(false);
            this.e = true;
            this.f772a = viewGroup;
            this.b = view;
            addAnimation(animation);
            this.f772a.post(this);
        }

        @Override // android.view.animation.AnimationSet, android.view.animation.Animation
        public boolean getTransformation(long j, Transformation transformation) {
            this.e = true;
            if (this.c) {
                return !this.d;
            }
            if (!super.getTransformation(j, transformation)) {
                this.c = true;
                z.a(this.f772a, this);
            }
            return true;
        }

        @Override // android.view.animation.Animation
        public boolean getTransformation(long j, Transformation transformation, float f) {
            this.e = true;
            if (this.c) {
                return !this.d;
            }
            if (!super.getTransformation(j, transformation, f)) {
                this.c = true;
                z.a(this.f772a, this);
            }
            return true;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.c && this.e) {
                this.e = false;
                this.f772a.post(this);
            } else {
                this.f772a.endViewTransition(this.b);
                this.d = true;
            }
        }
    }
}
