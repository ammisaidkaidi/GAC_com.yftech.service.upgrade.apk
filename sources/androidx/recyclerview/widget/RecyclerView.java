package androidx.recyclerview.widget;

import android.R;
import android.animation.LayoutTransition;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Observable;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import androidx.annotation.ai;
import androidx.annotation.ak;
import androidx.annotation.ap;
import androidx.annotation.ax;
import androidx.appcompat.widget.ActivityChooserView;
import androidx.core.n.a.d;
import androidx.recyclerview.a;
import androidx.recyclerview.widget.a;
import androidx.recyclerview.widget.ag;
import androidx.recyclerview.widget.ah;
import androidx.recyclerview.widget.g;
import androidx.recyclerview.widget.l;
import androidx.recyclerview.widget.y;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class RecyclerView extends ViewGroup implements androidx.core.n.ac, androidx.core.n.r, androidx.core.n.s {
    public static final int T = 0;
    public static final int U = 1;
    public static final int V = 2;
    static final long W = Long.MAX_VALUE;

    /* renamed from: a, reason: collision with root package name */
    static final String f992a = "RecyclerView";
    private static final int aJ = -1;
    static final Interpolator ak;
    private static final int[] al = {R.attr.nestedScrollingEnabled};
    private static final boolean am;
    private static final boolean an;
    private static final String ao = "RV OnLayout";
    private static final String ap = "RV FullInvalidate";
    private static final String aq = "RV PartialInvalidate";
    private static final Class<?>[] ar;
    static final boolean b = false;
    static final boolean c = false;
    static final boolean d;
    static final boolean e;
    static final boolean f;
    static final boolean g;
    static final boolean h = false;
    public static final int i = 0;
    public static final int j = 1;
    static final int k = 1;
    public static final int l = -1;
    public static final long m = -1;
    public static final int n = -1;
    public static final int o = 0;
    public static final int p = 1;
    public static final int q = Integer.MIN_VALUE;
    static final int r = 2000;
    static final String s = "RV Scroll";
    static final String t = "RV OnBindView";
    static final String u = "RV Prefetch";
    static final String v = "RV Nested Prefetch";
    static final String w = "RV CreateView";
    final ah A;
    boolean B;
    final Runnable C;
    final Rect D;
    final RectF E;
    a F;

    @ax
    i G;
    r H;
    final ArrayList<h> I;
    boolean J;
    boolean K;
    boolean L;

    @ax
    boolean M;
    boolean N;
    boolean O;
    boolean P;
    boolean Q;
    boolean R;
    f S;
    private final AccessibilityManager aA;
    private List<k> aB;
    private int aC;
    private int aD;

    @androidx.annotation.ah
    private e aE;
    private EdgeEffect aF;
    private EdgeEffect aG;
    private EdgeEffect aH;
    private EdgeEffect aI;
    private int aK;
    private int aL;
    private VelocityTracker aM;
    private int aN;
    private int aO;
    private int aP;
    private int aQ;
    private int aR;
    private l aS;
    private final int aT;
    private final int aU;
    private float aV;
    private float aW;
    private boolean aX;
    private n aY;
    private List<n> aZ;
    final y aa;
    androidx.recyclerview.widget.l ab;
    l.a ac;
    final w ad;
    boolean ae;
    boolean af;
    boolean ag;
    androidx.recyclerview.widget.y ah;
    final int[] ai;

    @ax
    final List<z> aj;
    private final s as;
    private t at;
    private final Rect au;
    private final ArrayList<m> av;
    private m aw;
    private int ax;
    private boolean ay;
    private int az;
    private f.c ba;
    private d bb;
    private final int[] bc;
    private androidx.core.n.t bd;
    private final int[] be;
    private final int[] bf;
    private Runnable bg;
    private final ah.b bh;
    final q x;
    androidx.recyclerview.widget.a y;
    androidx.recyclerview.widget.g z;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface d {
        int a(int i, int i2);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface k {
        void a(@androidx.annotation.ah View view);

        void b(@androidx.annotation.ah View view);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class l {
        public abstract boolean a(int i, int i2);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface m {
        void a(boolean z);

        boolean a(@androidx.annotation.ah RecyclerView recyclerView, @androidx.annotation.ah MotionEvent motionEvent);

        void b(@androidx.annotation.ah RecyclerView recyclerView, @androidx.annotation.ah MotionEvent motionEvent);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class n {
        public void a(@androidx.annotation.ah RecyclerView recyclerView, int i) {
        }

        public void a(@androidx.annotation.ah RecyclerView recyclerView, int i, int i2) {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface o {
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface r {
        void a(@androidx.annotation.ah z zVar);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class u implements m {
        @Override // androidx.recyclerview.widget.RecyclerView.m
        public void a(boolean z) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.m
        public boolean a(@androidx.annotation.ah RecyclerView recyclerView, @androidx.annotation.ah MotionEvent motionEvent) {
            return false;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.m
        public void b(@androidx.annotation.ah RecyclerView recyclerView, @androidx.annotation.ah MotionEvent motionEvent) {
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class x {
        @ai
        public abstract View a(@androidx.annotation.ah q qVar, int i, int i2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.recyclerview.widget.RecyclerView";
    }

    public void i(@ak int i2, @ak int i3) {
    }

    public void j(@androidx.annotation.ah View view) {
    }

    public void k(@androidx.annotation.ah View view) {
    }

    public void m(int i2) {
    }

    static {
        d = Build.VERSION.SDK_INT == 18 || Build.VERSION.SDK_INT == 19 || Build.VERSION.SDK_INT == 20;
        e = Build.VERSION.SDK_INT >= 23;
        f = Build.VERSION.SDK_INT >= 16;
        g = Build.VERSION.SDK_INT >= 21;
        am = Build.VERSION.SDK_INT <= 15;
        an = Build.VERSION.SDK_INT <= 15;
        ar = new Class[]{Context.class, AttributeSet.class, Integer.TYPE, Integer.TYPE};
        ak = new Interpolator() { // from class: androidx.recyclerview.widget.RecyclerView.3
            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float f2) {
                float f3 = f2 - 1.0f;
                return (f3 * f3 * f3 * f3 * f3) + 1.0f;
            }
        };
    }

    public RecyclerView(@androidx.annotation.ah Context context) {
        this(context, null);
    }

    public RecyclerView(@androidx.annotation.ah Context context, @ai AttributeSet attributeSet) {
        this(context, attributeSet, a.C0073a.recyclerViewStyle);
    }

    public RecyclerView(@androidx.annotation.ah Context context, @ai AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.as = new s();
        this.x = new q();
        this.A = new ah();
        this.C = new Runnable() { // from class: androidx.recyclerview.widget.RecyclerView.1
            @Override // java.lang.Runnable
            public void run() {
                if (!RecyclerView.this.M || RecyclerView.this.isLayoutRequested()) {
                    return;
                }
                if (!RecyclerView.this.J) {
                    RecyclerView.this.requestLayout();
                } else if (RecyclerView.this.O) {
                    RecyclerView.this.N = true;
                } else {
                    RecyclerView.this.g();
                }
            }
        };
        this.D = new Rect();
        this.au = new Rect();
        this.E = new RectF();
        this.I = new ArrayList<>();
        this.av = new ArrayList<>();
        this.ax = 0;
        this.Q = false;
        this.R = false;
        this.aC = 0;
        this.aD = 0;
        this.aE = new e();
        this.S = new androidx.recyclerview.widget.h();
        this.aK = 0;
        this.aL = -1;
        this.aV = Float.MIN_VALUE;
        this.aW = Float.MIN_VALUE;
        boolean z2 = true;
        this.aX = true;
        this.aa = new y();
        this.ac = g ? new l.a() : null;
        this.ad = new w();
        this.ae = false;
        this.af = false;
        this.ba = new g();
        this.ag = false;
        this.bc = new int[2];
        this.be = new int[2];
        this.bf = new int[2];
        this.ai = new int[2];
        this.aj = new ArrayList();
        this.bg = new Runnable() { // from class: androidx.recyclerview.widget.RecyclerView.2
            @Override // java.lang.Runnable
            public void run() {
                if (RecyclerView.this.S != null) {
                    RecyclerView.this.S.a();
                }
                RecyclerView.this.ag = false;
            }
        };
        this.bh = new ah.b() { // from class: androidx.recyclerview.widget.RecyclerView.4
            @Override // androidx.recyclerview.widget.ah.b
            public void a(z zVar, @androidx.annotation.ah f.d dVar, @ai f.d dVar2) {
                RecyclerView.this.x.c(zVar);
                RecyclerView.this.b(zVar, dVar, dVar2);
            }

            @Override // androidx.recyclerview.widget.ah.b
            public void b(z zVar, f.d dVar, f.d dVar2) {
                RecyclerView.this.a(zVar, dVar, dVar2);
            }

            @Override // androidx.recyclerview.widget.ah.b
            public void c(z zVar, @androidx.annotation.ah f.d dVar, @androidx.annotation.ah f.d dVar2) {
                zVar.a(false);
                if (RecyclerView.this.Q) {
                    if (RecyclerView.this.S.a(zVar, zVar, dVar, dVar2)) {
                        RecyclerView.this.t();
                    }
                } else if (RecyclerView.this.S.c(zVar, dVar, dVar2)) {
                    RecyclerView.this.t();
                }
            }

            @Override // androidx.recyclerview.widget.ah.b
            public void a(z zVar) {
                RecyclerView.this.G.b(zVar.f1016a, RecyclerView.this.x);
            }
        };
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.aR = viewConfiguration.getScaledTouchSlop();
        this.aV = androidx.core.n.ag.a(viewConfiguration, context);
        this.aW = androidx.core.n.ag.b(viewConfiguration, context);
        this.aT = viewConfiguration.getScaledMinimumFlingVelocity();
        this.aU = viewConfiguration.getScaledMaximumFlingVelocity();
        setWillNotDraw(getOverScrollMode() == 2);
        this.S.a(this.ba);
        b();
        F();
        E();
        if (androidx.core.n.af.i(this) == 0) {
            androidx.core.n.af.e((View) this, 1);
        }
        this.aA = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new androidx.recyclerview.widget.y(this));
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.j.RecyclerView, i2, 0);
        if (Build.VERSION.SDK_INT >= 29) {
            saveAttributeDataForStyleable(context, a.j.RecyclerView, attributeSet, obtainStyledAttributes, i2, 0);
        }
        String string = obtainStyledAttributes.getString(a.j.RecyclerView_layoutManager);
        if (obtainStyledAttributes.getInt(a.j.RecyclerView_android_descendantFocusability, -1) == -1) {
            setDescendantFocusability(262144);
        }
        this.B = obtainStyledAttributes.getBoolean(a.j.RecyclerView_android_clipToPadding, true);
        this.L = obtainStyledAttributes.getBoolean(a.j.RecyclerView_fastScrollEnabled, false);
        if (this.L) {
            a((StateListDrawable) obtainStyledAttributes.getDrawable(a.j.RecyclerView_fastScrollVerticalThumbDrawable), obtainStyledAttributes.getDrawable(a.j.RecyclerView_fastScrollVerticalTrackDrawable), (StateListDrawable) obtainStyledAttributes.getDrawable(a.j.RecyclerView_fastScrollHorizontalThumbDrawable), obtainStyledAttributes.getDrawable(a.j.RecyclerView_fastScrollHorizontalTrackDrawable));
        }
        obtainStyledAttributes.recycle();
        a(context, string, attributeSet, i2, 0);
        if (Build.VERSION.SDK_INT >= 21) {
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, al, i2, 0);
            if (Build.VERSION.SDK_INT >= 29) {
                saveAttributeDataForStyleable(context, al, attributeSet, obtainStyledAttributes2, i2, 0);
            }
            z2 = obtainStyledAttributes2.getBoolean(0, true);
            obtainStyledAttributes2.recycle();
        }
        setNestedScrollingEnabled(z2);
    }

    String a() {
        return " " + super.toString() + ", adapter:" + this.F + ", layout:" + this.G + ", context:" + getContext();
    }

    @SuppressLint({"InlinedApi"})
    private void E() {
        if (androidx.core.n.af.b(this) == 0) {
            androidx.core.n.af.d((View) this, 8);
        }
    }

    @ai
    public androidx.recyclerview.widget.y getCompatAccessibilityDelegate() {
        return this.ah;
    }

    public void setAccessibilityDelegateCompat(@ai androidx.recyclerview.widget.y yVar) {
        this.ah = yVar;
        androidx.core.n.af.a(this, this.ah);
    }

    private void a(Context context, String str, AttributeSet attributeSet, int i2, int i3) {
        ClassLoader classLoader;
        Constructor constructor;
        if (str != null) {
            String trim = str.trim();
            if (trim.isEmpty()) {
                return;
            }
            String a2 = a(context, trim);
            try {
                if (isInEditMode()) {
                    classLoader = getClass().getClassLoader();
                } else {
                    classLoader = context.getClassLoader();
                }
                Class<? extends U> asSubclass = Class.forName(a2, false, classLoader).asSubclass(i.class);
                Object[] objArr = null;
                try {
                    constructor = asSubclass.getConstructor(ar);
                    objArr = new Object[]{context, attributeSet, Integer.valueOf(i2), Integer.valueOf(i3)};
                } catch (NoSuchMethodException e2) {
                    try {
                        constructor = asSubclass.getConstructor(new Class[0]);
                    } catch (NoSuchMethodException e3) {
                        e3.initCause(e2);
                        throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + a2, e3);
                    }
                }
                constructor.setAccessible(true);
                setLayoutManager((i) constructor.newInstance(objArr));
            } catch (ClassCastException e4) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Class is not a LayoutManager " + a2, e4);
            } catch (ClassNotFoundException e5) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Unable to find LayoutManager " + a2, e5);
            } catch (IllegalAccessException e6) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Cannot access non-public constructor " + a2, e6);
            } catch (InstantiationException e7) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + a2, e7);
            } catch (InvocationTargetException e8) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + a2, e8);
            }
        }
    }

    private String a(Context context, String str) {
        if (str.charAt(0) == '.') {
            return context.getPackageName() + str;
        }
        if (str.contains(".")) {
            return str;
        }
        return RecyclerView.class.getPackage().getName() + '.' + str;
    }

    private void F() {
        this.z = new androidx.recyclerview.widget.g(new g.b() { // from class: androidx.recyclerview.widget.RecyclerView.5
            @Override // androidx.recyclerview.widget.g.b
            public int a() {
                return RecyclerView.this.getChildCount();
            }

            @Override // androidx.recyclerview.widget.g.b
            public void a(View view, int i2) {
                RecyclerView.this.addView(view, i2);
                RecyclerView.this.o(view);
            }

            @Override // androidx.recyclerview.widget.g.b
            public int a(View view) {
                return RecyclerView.this.indexOfChild(view);
            }

            @Override // androidx.recyclerview.widget.g.b
            public void a(int i2) {
                View childAt = RecyclerView.this.getChildAt(i2);
                if (childAt != null) {
                    RecyclerView.this.n(childAt);
                    childAt.clearAnimation();
                }
                RecyclerView.this.removeViewAt(i2);
            }

            @Override // androidx.recyclerview.widget.g.b
            public View b(int i2) {
                return RecyclerView.this.getChildAt(i2);
            }

            @Override // androidx.recyclerview.widget.g.b
            public void b() {
                int a2 = a();
                for (int i2 = 0; i2 < a2; i2++) {
                    View b2 = b(i2);
                    RecyclerView.this.n(b2);
                    b2.clearAnimation();
                }
                RecyclerView.this.removeAllViews();
            }

            @Override // androidx.recyclerview.widget.g.b
            public z b(View view) {
                return RecyclerView.e(view);
            }

            @Override // androidx.recyclerview.widget.g.b
            public void a(View view, int i2, ViewGroup.LayoutParams layoutParams) {
                z e2 = RecyclerView.e(view);
                if (e2 != null) {
                    if (!e2.t() && !e2.c()) {
                        throw new IllegalArgumentException("Called attach on a child which is not detached: " + e2 + RecyclerView.this.a());
                    }
                    e2.n();
                }
                RecyclerView.this.attachViewToParent(view, i2, layoutParams);
            }

            @Override // androidx.recyclerview.widget.g.b
            public void c(int i2) {
                z e2;
                View b2 = b(i2);
                if (b2 != null && (e2 = RecyclerView.e(b2)) != null) {
                    if (e2.t() && !e2.c()) {
                        throw new IllegalArgumentException("called detach on an already detached child " + e2 + RecyclerView.this.a());
                    }
                    e2.b(256);
                }
                RecyclerView.this.detachViewFromParent(i2);
            }

            @Override // androidx.recyclerview.widget.g.b
            public void c(View view) {
                z e2 = RecyclerView.e(view);
                if (e2 != null) {
                    e2.a(RecyclerView.this);
                }
            }

            @Override // androidx.recyclerview.widget.g.b
            public void d(View view) {
                z e2 = RecyclerView.e(view);
                if (e2 != null) {
                    e2.b(RecyclerView.this);
                }
            }
        });
    }

    void b() {
        this.y = new androidx.recyclerview.widget.a(new a.InterfaceC0074a() { // from class: androidx.recyclerview.widget.RecyclerView.6
            @Override // androidx.recyclerview.widget.a.InterfaceC0074a
            public z a(int i2) {
                z a2 = RecyclerView.this.a(i2, true);
                if (a2 == null || RecyclerView.this.z.c(a2.f1016a)) {
                    return null;
                }
                return a2;
            }

            @Override // androidx.recyclerview.widget.a.InterfaceC0074a
            public void a(int i2, int i3) {
                RecyclerView.this.a(i2, i3, true);
                RecyclerView.this.ae = true;
                RecyclerView.this.ad.f += i3;
            }

            @Override // androidx.recyclerview.widget.a.InterfaceC0074a
            public void b(int i2, int i3) {
                RecyclerView.this.a(i2, i3, false);
                RecyclerView.this.ae = true;
            }

            @Override // androidx.recyclerview.widget.a.InterfaceC0074a
            public void a(int i2, int i3, Object obj) {
                RecyclerView.this.a(i2, i3, obj);
                RecyclerView.this.af = true;
            }

            @Override // androidx.recyclerview.widget.a.InterfaceC0074a
            public void a(a.b bVar) {
                c(bVar);
            }

            void c(a.b bVar) {
                int i2 = bVar.f;
                if (i2 == 4) {
                    RecyclerView.this.G.a(RecyclerView.this, bVar.g, bVar.i, bVar.h);
                    return;
                }
                if (i2 != 8) {
                    switch (i2) {
                        case 1:
                            RecyclerView.this.G.a(RecyclerView.this, bVar.g, bVar.i);
                            return;
                        case 2:
                            RecyclerView.this.G.b(RecyclerView.this, bVar.g, bVar.i);
                            return;
                        default:
                            return;
                    }
                }
                RecyclerView.this.G.a(RecyclerView.this, bVar.g, bVar.i, 1);
            }

            @Override // androidx.recyclerview.widget.a.InterfaceC0074a
            public void b(a.b bVar) {
                c(bVar);
            }

            @Override // androidx.recyclerview.widget.a.InterfaceC0074a
            public void c(int i2, int i3) {
                RecyclerView.this.h(i2, i3);
                RecyclerView.this.ae = true;
            }

            @Override // androidx.recyclerview.widget.a.InterfaceC0074a
            public void d(int i2, int i3) {
                RecyclerView.this.g(i2, i3);
                RecyclerView.this.ae = true;
            }
        });
    }

    public void setHasFixedSize(boolean z2) {
        this.K = z2;
    }

    public boolean c() {
        return this.K;
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z2) {
        if (z2 != this.B) {
            o();
        }
        this.B = z2;
        super.setClipToPadding(z2);
        if (this.M) {
            requestLayout();
        }
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.B;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0008. Please report as an issue. */
    public void setScrollingTouchSlop(int i2) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        switch (i2) {
            case 0:
                this.aR = viewConfiguration.getScaledTouchSlop();
                return;
            case 1:
                this.aR = viewConfiguration.getScaledPagingTouchSlop();
                return;
            default:
                Log.w(f992a, "setScrollingTouchSlop(): bad argument constant " + i2 + "; using default value");
                this.aR = viewConfiguration.getScaledTouchSlop();
                return;
        }
    }

    public void a(@ai a aVar, boolean z2) {
        setLayoutFrozen(false);
        a(aVar, true, z2);
        c(true);
        requestLayout();
    }

    public void setAdapter(@ai a aVar) {
        setLayoutFrozen(false);
        a(aVar, false, true);
        c(false);
        requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        if (this.S != null) {
            this.S.d();
        }
        if (this.G != null) {
            this.G.c(this.x);
            this.G.b(this.x);
        }
        this.x.a();
    }

    private void a(@ai a aVar, boolean z2, boolean z3) {
        if (this.F != null) {
            this.F.b(this.as);
            this.F.b(this);
        }
        if (!z2 || z3) {
            d();
        }
        this.y.a();
        a aVar2 = this.F;
        this.F = aVar;
        if (aVar != null) {
            aVar.a(this.as);
            aVar.a(this);
        }
        if (this.G != null) {
            this.G.a(aVar2, this.F);
        }
        this.x.a(aVar2, this.F, z2);
        this.ad.i = true;
    }

    @ai
    public a getAdapter() {
        return this.F;
    }

    public void setRecyclerListener(@ai r rVar) {
        this.H = rVar;
    }

    @Override // android.view.View
    public int getBaseline() {
        if (this.G != null) {
            return this.G.G();
        }
        return super.getBaseline();
    }

    public void a(@androidx.annotation.ah k kVar) {
        if (this.aB == null) {
            this.aB = new ArrayList();
        }
        this.aB.add(kVar);
    }

    public void b(@androidx.annotation.ah k kVar) {
        if (this.aB == null) {
            return;
        }
        this.aB.remove(kVar);
    }

    public void e() {
        if (this.aB != null) {
            this.aB.clear();
        }
    }

    public void setLayoutManager(@ai i iVar) {
        if (iVar == this.G) {
            return;
        }
        j();
        if (this.G != null) {
            if (this.S != null) {
                this.S.d();
            }
            this.G.c(this.x);
            this.G.b(this.x);
            this.x.a();
            if (this.J) {
                this.G.b(this, this.x);
            }
            this.G.b((RecyclerView) null);
            this.G = null;
        } else {
            this.x.a();
        }
        this.z.a();
        this.G = iVar;
        if (iVar != null) {
            if (iVar.v != null) {
                throw new IllegalArgumentException("LayoutManager " + iVar + " is already attached to a RecyclerView:" + iVar.v.a());
            }
            this.G.b(this);
            if (this.J) {
                this.G.c(this);
            }
        }
        this.x.b();
        requestLayout();
    }

    public void setOnFlingListener(@ai l lVar) {
        this.aS = lVar;
    }

    @ai
    public l getOnFlingListener() {
        return this.aS;
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        t tVar = new t(super.onSaveInstanceState());
        if (this.at != null) {
            tVar.a(this.at);
        } else if (this.G != null) {
            tVar.f1011a = this.G.h();
        } else {
            tVar.f1011a = null;
        }
        return tVar;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof t)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        this.at = (t) parcelable;
        super.onRestoreInstanceState(this.at.a());
        if (this.G == null || this.at.f1011a == null) {
            return;
        }
        this.G.a(this.at.f1011a);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    private void e(z zVar) {
        View view = zVar.f1016a;
        boolean z2 = view.getParent() == this;
        this.x.c(b(view));
        if (zVar.t()) {
            this.z.a(view, -1, view.getLayoutParams(), true);
        } else if (!z2) {
            this.z.a(view, true);
        } else {
            this.z.d(view);
        }
    }

    boolean a(View view) {
        h();
        boolean f2 = this.z.f(view);
        if (f2) {
            z e2 = e(view);
            this.x.c(e2);
            this.x.b(e2);
        }
        a(!f2);
        return f2;
    }

    @ai
    public i getLayoutManager() {
        return this.G;
    }

    @androidx.annotation.ah
    public p getRecycledViewPool() {
        return this.x.g();
    }

    public void setRecycledViewPool(@ai p pVar) {
        this.x.a(pVar);
    }

    public void setViewCacheExtension(@ai x xVar) {
        this.x.a(xVar);
    }

    public void setItemViewCacheSize(int i2) {
        this.x.a(i2);
    }

    public int getScrollState() {
        return this.aK;
    }

    void setScrollState(int i2) {
        if (i2 == this.aK) {
            return;
        }
        this.aK = i2;
        if (i2 != 2) {
            H();
        }
        n(i2);
    }

    public void a(@androidx.annotation.ah h hVar, int i2) {
        if (this.G != null) {
            this.G.a("Cannot add item decoration during a scroll  or layout");
        }
        if (this.I.isEmpty()) {
            setWillNotDraw(false);
        }
        if (i2 < 0) {
            this.I.add(hVar);
        } else {
            this.I.add(i2, hVar);
        }
        v();
        requestLayout();
    }

    public void a(@androidx.annotation.ah h hVar) {
        a(hVar, -1);
    }

    @androidx.annotation.ah
    public h c(int i2) {
        int itemDecorationCount = getItemDecorationCount();
        if (i2 < 0 || i2 >= itemDecorationCount) {
            throw new IndexOutOfBoundsException(i2 + " is an invalid index for size " + itemDecorationCount);
        }
        return this.I.get(i2);
    }

    public int getItemDecorationCount() {
        return this.I.size();
    }

    public void d(int i2) {
        int itemDecorationCount = getItemDecorationCount();
        if (i2 < 0 || i2 >= itemDecorationCount) {
            throw new IndexOutOfBoundsException(i2 + " is an invalid index for size " + itemDecorationCount);
        }
        b(c(i2));
    }

    public void b(@androidx.annotation.ah h hVar) {
        if (this.G != null) {
            this.G.a("Cannot remove item decoration during a scroll  or layout");
        }
        this.I.remove(hVar);
        if (this.I.isEmpty()) {
            setWillNotDraw(getOverScrollMode() == 2);
        }
        v();
        requestLayout();
    }

    public void setChildDrawingOrderCallback(@ai d dVar) {
        if (dVar == this.bb) {
            return;
        }
        this.bb = dVar;
        setChildrenDrawingOrderEnabled(this.bb != null);
    }

    @Deprecated
    public void setOnScrollListener(@ai n nVar) {
        this.aY = nVar;
    }

    public void a(@androidx.annotation.ah n nVar) {
        if (this.aZ == null) {
            this.aZ = new ArrayList();
        }
        this.aZ.add(nVar);
    }

    public void b(@androidx.annotation.ah n nVar) {
        if (this.aZ != null) {
            this.aZ.remove(nVar);
        }
    }

    public void f() {
        if (this.aZ != null) {
            this.aZ.clear();
        }
    }

    public void e(int i2) {
        if (this.O) {
            return;
        }
        j();
        if (this.G == null) {
            Log.e(f992a, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            this.G.e(i2);
            awakenScrollBars();
        }
    }

    void f(int i2) {
        if (this.G == null) {
            return;
        }
        setScrollState(2);
        this.G.e(i2);
        awakenScrollBars();
    }

    public void g(int i2) {
        if (this.O) {
            return;
        }
        if (this.G == null) {
            Log.e(f992a, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            this.G.a(this, this.ad, i2);
        }
    }

    @Override // android.view.View
    public void scrollTo(int i2, int i3) {
        Log.w(f992a, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    @Override // android.view.View
    public void scrollBy(int i2, int i3) {
        if (this.G == null) {
            Log.e(f992a, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.O) {
            return;
        }
        boolean i4 = this.G.i();
        boolean j2 = this.G.j();
        if (i4 || j2) {
            if (!i4) {
                i2 = 0;
            }
            if (!j2) {
                i3 = 0;
            }
            a(i2, i3, (MotionEvent) null);
        }
    }

    void a(int i2, int i3, @ai int[] iArr) {
        h();
        p();
        androidx.core.i.o.a(s);
        a(this.ad);
        int a2 = i2 != 0 ? this.G.a(i2, this.x, this.ad) : 0;
        int b2 = i3 != 0 ? this.G.b(i3, this.x, this.ad) : 0;
        androidx.core.i.o.b();
        C();
        q();
        a(false);
        if (iArr != null) {
            iArr[0] = a2;
            iArr[1] = b2;
        }
    }

    void g() {
        if (!this.M || this.Q) {
            androidx.core.i.o.a(ap);
            u();
            androidx.core.i.o.b();
            return;
        }
        if (this.y.d()) {
            if (this.y.a(4) && !this.y.a(11)) {
                androidx.core.i.o.a(aq);
                h();
                p();
                this.y.b();
                if (!this.N) {
                    if (G()) {
                        u();
                    } else {
                        this.y.c();
                    }
                }
                a(true);
                q();
                androidx.core.i.o.b();
                return;
            }
            if (this.y.d()) {
                androidx.core.i.o.a(ap);
                u();
                androidx.core.i.o.b();
            }
        }
    }

    private boolean G() {
        int b2 = this.z.b();
        for (int i2 = 0; i2 < b2; i2++) {
            z e2 = e(this.z.b(i2));
            if (e2 != null && !e2.c() && e2.C()) {
                return true;
            }
        }
        return false;
    }

    boolean a(int i2, int i3, MotionEvent motionEvent) {
        int i4;
        int i5;
        int i6;
        int i7;
        g();
        if (this.F != null) {
            this.ai[0] = 0;
            this.ai[1] = 0;
            a(i2, i3, this.ai);
            int i8 = this.ai[0];
            int i9 = this.ai[1];
            i4 = i8;
            i5 = i9;
            i6 = i2 - i8;
            i7 = i3 - i9;
        } else {
            i4 = 0;
            i5 = 0;
            i6 = 0;
            i7 = 0;
        }
        if (!this.I.isEmpty()) {
            invalidate();
        }
        this.ai[0] = 0;
        this.ai[1] = 0;
        a(i4, i5, i6, i7, this.be, 0, this.ai);
        int i10 = i6 - this.ai[0];
        int i11 = i7 - this.ai[1];
        boolean z2 = (this.ai[0] == 0 && this.ai[1] == 0) ? false : true;
        this.aP -= this.be[0];
        this.aQ -= this.be[1];
        int[] iArr = this.bf;
        iArr[0] = iArr[0] + this.be[0];
        int[] iArr2 = this.bf;
        iArr2[1] = iArr2[1] + this.be[1];
        if (getOverScrollMode() != 2) {
            if (motionEvent != null && !androidx.core.n.p.e(motionEvent, 8194)) {
                a(motionEvent.getX(), i10, motionEvent.getY(), i11);
            }
            d(i2, i3);
        }
        if (i4 != 0 || i5 != 0) {
            j(i4, i5);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        return (!z2 && i4 == 0 && i5 == 0) ? false : true;
    }

    @Override // android.view.View, androidx.core.n.ac
    public int computeHorizontalScrollOffset() {
        if (this.G != null && this.G.i()) {
            return this.G.d(this.ad);
        }
        return 0;
    }

    @Override // android.view.View, androidx.core.n.ac
    public int computeHorizontalScrollExtent() {
        if (this.G != null && this.G.i()) {
            return this.G.g(this.ad);
        }
        return 0;
    }

    @Override // android.view.View, androidx.core.n.ac
    public int computeHorizontalScrollRange() {
        if (this.G != null && this.G.i()) {
            return this.G.b(this.ad);
        }
        return 0;
    }

    @Override // android.view.View, androidx.core.n.ac
    public int computeVerticalScrollOffset() {
        if (this.G != null && this.G.j()) {
            return this.G.e(this.ad);
        }
        return 0;
    }

    @Override // android.view.View, androidx.core.n.ac
    public int computeVerticalScrollExtent() {
        if (this.G != null && this.G.j()) {
            return this.G.h(this.ad);
        }
        return 0;
    }

    @Override // android.view.View, androidx.core.n.ac
    public int computeVerticalScrollRange() {
        if (this.G != null && this.G.j()) {
            return this.G.c(this.ad);
        }
        return 0;
    }

    void h() {
        this.ax++;
        if (this.ax != 1 || this.O) {
            return;
        }
        this.N = false;
    }

    void a(boolean z2) {
        if (this.ax < 1) {
            this.ax = 1;
        }
        if (!z2 && !this.O) {
            this.N = false;
        }
        if (this.ax == 1) {
            if (z2 && this.N && !this.O && this.G != null && this.F != null) {
                u();
            }
            if (!this.O) {
                this.N = false;
            }
        }
        this.ax--;
    }

    @Override // android.view.ViewGroup
    public final void suppressLayout(boolean z2) {
        if (z2 != this.O) {
            b("Do not suppressLayout in layout or scroll");
            if (!z2) {
                this.O = false;
                if (this.N && this.G != null && this.F != null) {
                    requestLayout();
                }
                this.N = false;
                return;
            }
            long uptimeMillis = SystemClock.uptimeMillis();
            onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0));
            this.O = true;
            this.ay = true;
            j();
        }
    }

    @Override // android.view.ViewGroup
    public final boolean isLayoutSuppressed() {
        return this.O;
    }

    @Deprecated
    public void setLayoutFrozen(boolean z2) {
        suppressLayout(z2);
    }

    @Deprecated
    public boolean i() {
        return isLayoutSuppressed();
    }

    @Override // android.view.ViewGroup
    @Deprecated
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (Build.VERSION.SDK_INT < 18) {
            if (layoutTransition == null) {
                suppressLayout(false);
                return;
            } else if (layoutTransition.getAnimator(0) == null && layoutTransition.getAnimator(1) == null && layoutTransition.getAnimator(2) == null && layoutTransition.getAnimator(3) == null && layoutTransition.getAnimator(4) == null) {
                suppressLayout(true);
                return;
            }
        }
        if (layoutTransition == null) {
            super.setLayoutTransition(null);
            return;
        }
        throw new IllegalArgumentException("Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView");
    }

    public void b(@ak int i2, @ak int i3) {
        a(i2, i3, (Interpolator) null);
    }

    public void a(@ak int i2, @ak int i3, @ai Interpolator interpolator) {
        a(i2, i3, interpolator, Integer.MIN_VALUE);
    }

    public void a(@ak int i2, @ak int i3, @ai Interpolator interpolator, int i4) {
        a(i2, i3, interpolator, i4, false);
    }

    void a(@ak int i2, @ak int i3, @ai Interpolator interpolator, int i4, boolean z2) {
        if (this.G == null) {
            Log.e(f992a, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.O) {
            return;
        }
        if (!this.G.i()) {
            i2 = 0;
        }
        if (!this.G.j()) {
            i3 = 0;
        }
        if (i2 == 0 && i3 == 0) {
            return;
        }
        if (i4 == Integer.MIN_VALUE || i4 > 0) {
            if (z2) {
                int i5 = i2 != 0 ? 1 : 0;
                if (i3 != 0) {
                    i5 |= 2;
                }
                a(i5, 1);
            }
            this.aa.a(i2, i3, i4, interpolator);
            return;
        }
        scrollBy(i2, i3);
    }

    public boolean c(int i2, int i3) {
        if (this.G == null) {
            Log.e(f992a, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return false;
        }
        if (this.O) {
            return false;
        }
        boolean i4 = this.G.i();
        boolean j2 = this.G.j();
        if (!i4 || Math.abs(i2) < this.aT) {
            i2 = 0;
        }
        if (!j2 || Math.abs(i3) < this.aT) {
            i3 = 0;
        }
        if (i2 == 0 && i3 == 0) {
            return false;
        }
        float f2 = i2;
        float f3 = i3;
        if (!dispatchNestedPreFling(f2, f3)) {
            boolean z2 = i4 || j2;
            dispatchNestedFling(f2, f3, z2);
            if (this.aS != null && this.aS.a(i2, i3)) {
                return true;
            }
            if (z2) {
                int i5 = i4 ? 1 : 0;
                if (j2) {
                    i5 |= 2;
                }
                a(i5, 1);
                this.aa.a(Math.max(-this.aU, Math.min(i2, this.aU)), Math.max(-this.aU, Math.min(i3, this.aU)));
                return true;
            }
        }
        return false;
    }

    public void j() {
        setScrollState(0);
        H();
    }

    private void H() {
        this.aa.b();
        if (this.G != null) {
            this.G.Z();
        }
    }

    public int getMinFlingVelocity() {
        return this.aT;
    }

    public int getMaxFlingVelocity() {
        return this.aU;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0040  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void a(float f2, float f3, float f4, float f5) {
        boolean z2;
        boolean z3 = true;
        if (f3 < 0.0f) {
            k();
            androidx.core.widget.e.a(this.aF, (-f3) / getWidth(), 1.0f - (f4 / getHeight()));
        } else {
            if (f3 <= 0.0f) {
                z2 = false;
                if (f5 >= 0.0f) {
                    m();
                    androidx.core.widget.e.a(this.aG, (-f5) / getHeight(), f2 / getWidth());
                } else if (f5 > 0.0f) {
                    n();
                    androidx.core.widget.e.a(this.aI, f5 / getHeight(), 1.0f - (f2 / getWidth()));
                } else {
                    z3 = z2;
                }
                if (z3 && f3 == 0.0f && f5 == 0.0f) {
                    return;
                }
                androidx.core.n.af.h(this);
            }
            l();
            androidx.core.widget.e.a(this.aH, f3 / getWidth(), f4 / getHeight());
        }
        z2 = true;
        if (f5 >= 0.0f) {
        }
        if (z3) {
        }
        androidx.core.n.af.h(this);
    }

    private void I() {
        boolean z2;
        if (this.aF != null) {
            this.aF.onRelease();
            z2 = this.aF.isFinished();
        } else {
            z2 = false;
        }
        if (this.aG != null) {
            this.aG.onRelease();
            z2 |= this.aG.isFinished();
        }
        if (this.aH != null) {
            this.aH.onRelease();
            z2 |= this.aH.isFinished();
        }
        if (this.aI != null) {
            this.aI.onRelease();
            z2 |= this.aI.isFinished();
        }
        if (z2) {
            androidx.core.n.af.h(this);
        }
    }

    void d(int i2, int i3) {
        boolean z2;
        if (this.aF == null || this.aF.isFinished() || i2 <= 0) {
            z2 = false;
        } else {
            this.aF.onRelease();
            z2 = this.aF.isFinished();
        }
        if (this.aH != null && !this.aH.isFinished() && i2 < 0) {
            this.aH.onRelease();
            z2 |= this.aH.isFinished();
        }
        if (this.aG != null && !this.aG.isFinished() && i3 > 0) {
            this.aG.onRelease();
            z2 |= this.aG.isFinished();
        }
        if (this.aI != null && !this.aI.isFinished() && i3 < 0) {
            this.aI.onRelease();
            z2 |= this.aI.isFinished();
        }
        if (z2) {
            androidx.core.n.af.h(this);
        }
    }

    void e(int i2, int i3) {
        if (i2 < 0) {
            k();
            if (this.aF.isFinished()) {
                this.aF.onAbsorb(-i2);
            }
        } else if (i2 > 0) {
            l();
            if (this.aH.isFinished()) {
                this.aH.onAbsorb(i2);
            }
        }
        if (i3 < 0) {
            m();
            if (this.aG.isFinished()) {
                this.aG.onAbsorb(-i3);
            }
        } else if (i3 > 0) {
            n();
            if (this.aI.isFinished()) {
                this.aI.onAbsorb(i3);
            }
        }
        if (i2 == 0 && i3 == 0) {
            return;
        }
        androidx.core.n.af.h(this);
    }

    void k() {
        if (this.aF != null) {
            return;
        }
        this.aF = this.aE.a(this, 0);
        if (this.B) {
            this.aF.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            this.aF.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    void l() {
        if (this.aH != null) {
            return;
        }
        this.aH = this.aE.a(this, 2);
        if (this.B) {
            this.aH.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            this.aH.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    void m() {
        if (this.aG != null) {
            return;
        }
        this.aG = this.aE.a(this, 1);
        if (this.B) {
            this.aG.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            this.aG.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    void n() {
        if (this.aI != null) {
            return;
        }
        this.aI = this.aE.a(this, 3);
        if (this.B) {
            this.aI.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            this.aI.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    void o() {
        this.aI = null;
        this.aG = null;
        this.aH = null;
        this.aF = null;
    }

    public void setEdgeEffectFactory(@androidx.annotation.ah e eVar) {
        androidx.core.m.i.a(eVar);
        this.aE = eVar;
        o();
    }

    @androidx.annotation.ah
    public e getEdgeEffectFactory() {
        return this.aE;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public View focusSearch(View view, int i2) {
        View view2;
        boolean z2;
        View d2 = this.G.d(view, i2);
        if (d2 != null) {
            return d2;
        }
        boolean z3 = (this.F == null || this.G == null || s() || this.O) ? false : true;
        FocusFinder focusFinder = FocusFinder.getInstance();
        if (z3 && (i2 == 2 || i2 == 1)) {
            if (this.G.j()) {
                int i3 = i2 == 2 ? 130 : 33;
                z2 = focusFinder.findNextFocus(this, view, i3) == null;
                if (am) {
                    i2 = i3;
                }
            } else {
                z2 = false;
            }
            if (!z2 && this.G.i()) {
                int i4 = (this.G.E() == 1) ^ (i2 == 2) ? 66 : 17;
                z2 = focusFinder.findNextFocus(this, view, i4) == null;
                if (am) {
                    i2 = i4;
                }
            }
            if (z2) {
                g();
                if (c(view) == null) {
                    return null;
                }
                h();
                this.G.a(view, i2, this.x, this.ad);
                a(false);
            }
            view2 = focusFinder.findNextFocus(this, view, i2);
        } else {
            View findNextFocus = focusFinder.findNextFocus(this, view, i2);
            if (findNextFocus == null && z3) {
                g();
                if (c(view) == null) {
                    return null;
                }
                h();
                view2 = this.G.a(view, i2, this.x, this.ad);
                a(false);
            } else {
                view2 = findNextFocus;
            }
        }
        if (view2 == null || view2.hasFocusable()) {
            return a(view, view2, i2) ? view2 : super.focusSearch(view, i2);
        }
        if (getFocusedChild() == null) {
            return super.focusSearch(view, i2);
        }
        a(view2, (View) null);
        return view;
    }

    private boolean a(View view, View view2, int i2) {
        int i3;
        if (view2 == null || view2 == this || c(view2) == null) {
            return false;
        }
        if (view == null || c(view) == null) {
            return true;
        }
        this.D.set(0, 0, view.getWidth(), view.getHeight());
        this.au.set(0, 0, view2.getWidth(), view2.getHeight());
        offsetDescendantRectToMyCoords(view, this.D);
        offsetDescendantRectToMyCoords(view2, this.au);
        char c2 = 65535;
        int i4 = this.G.E() == 1 ? -1 : 1;
        if ((this.D.left < this.au.left || this.D.right <= this.au.left) && this.D.right < this.au.right) {
            i3 = 1;
        } else {
            i3 = ((this.D.right > this.au.right || this.D.left >= this.au.right) && this.D.left > this.au.left) ? -1 : 0;
        }
        if ((this.D.top < this.au.top || this.D.bottom <= this.au.top) && this.D.bottom < this.au.bottom) {
            c2 = 1;
        } else if ((this.D.bottom <= this.au.bottom && this.D.top < this.au.bottom) || this.D.top <= this.au.top) {
            c2 = 0;
        }
        if (i2 == 17) {
            return i3 < 0;
        }
        if (i2 == 33) {
            return c2 < 0;
        }
        if (i2 == 66) {
            return i3 > 0;
        }
        if (i2 == 130) {
            return c2 > 0;
        }
        switch (i2) {
            case 1:
                return c2 < 0 || (c2 == 0 && i3 * i4 <= 0);
            case 2:
                return c2 > 0 || (c2 == 0 && i3 * i4 >= 0);
            default:
                throw new IllegalArgumentException("Invalid direction: " + i2 + a());
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.G.a(this, this.ad, view, view2) && view2 != null) {
            a(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    private void a(@androidx.annotation.ah View view, @ai View view2) {
        View view3 = view2 != null ? view2 : view;
        this.D.set(0, 0, view3.getWidth(), view3.getHeight());
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof j) {
            j jVar = (j) layoutParams;
            if (!jVar.f) {
                Rect rect = jVar.e;
                this.D.left -= rect.left;
                this.D.right += rect.right;
                this.D.top -= rect.top;
                this.D.bottom += rect.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, this.D);
            offsetRectIntoDescendantCoords(view, this.D);
        }
        this.G.a(this, view, this.D, !this.M, view2 == null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z2) {
        return this.G.a(this, view, rect, z2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i2, int i3) {
        if (this.G == null || !this.G.a(this, arrayList, i2, i3)) {
            super.addFocusables(arrayList, i2, i3);
        }
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i2, Rect rect) {
        if (s()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i2, rect);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0051, code lost:
    
        if (r0 >= 30.0f) goto L22;
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onAttachedToWindow() {
        float f2;
        super.onAttachedToWindow();
        this.aC = 0;
        this.J = true;
        this.M = this.M && !isLayoutRequested();
        if (this.G != null) {
            this.G.c(this);
        }
        this.ag = false;
        if (g) {
            this.ab = androidx.recyclerview.widget.l.f1076a.get();
            if (this.ab == null) {
                this.ab = new androidx.recyclerview.widget.l();
                Display an2 = androidx.core.n.af.an(this);
                if (!isInEditMode() && an2 != null) {
                    f2 = an2.getRefreshRate();
                }
                f2 = 60.0f;
                this.ab.d = 1.0E9f / f2;
                androidx.recyclerview.widget.l.f1076a.set(this.ab);
            }
            this.ab.a(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.S != null) {
            this.S.d();
        }
        j();
        this.J = false;
        if (this.G != null) {
            this.G.b(this, this.x);
        }
        this.aj.clear();
        removeCallbacks(this.bg);
        this.A.b();
        if (!g || this.ab == null) {
            return;
        }
        this.ab.b(this);
        this.ab = null;
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return this.J;
    }

    void a(String str) {
        if (s()) {
            return;
        }
        if (str == null) {
            throw new IllegalStateException("Cannot call this method unless RecyclerView is computing a layout or scrolling" + a());
        }
        throw new IllegalStateException(str + a());
    }

    void b(String str) {
        if (s()) {
            if (str == null) {
                throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling" + a());
            }
            throw new IllegalStateException(str);
        }
        if (this.aD > 0) {
            Log.w(f992a, "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException(com.yftech.service.upgrade.a.d + a()));
        }
    }

    public void a(@androidx.annotation.ah m mVar) {
        this.av.add(mVar);
    }

    public void b(@androidx.annotation.ah m mVar) {
        this.av.remove(mVar);
        if (this.aw == mVar) {
            this.aw = null;
        }
    }

    private boolean a(MotionEvent motionEvent) {
        if (this.aw == null) {
            if (motionEvent.getAction() == 0) {
                return false;
            }
            return b(motionEvent);
        }
        this.aw.b(this, motionEvent);
        int action = motionEvent.getAction();
        if (action == 3 || action == 1) {
            this.aw = null;
        }
        return true;
    }

    private boolean b(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        int size = this.av.size();
        for (int i2 = 0; i2 < size; i2++) {
            m mVar = this.av.get(i2);
            if (mVar.a(this, motionEvent) && action != 3) {
                this.aw = mVar;
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z2;
        if (this.O) {
            return false;
        }
        this.aw = null;
        if (b(motionEvent)) {
            K();
            return true;
        }
        if (this.G == null) {
            return false;
        }
        boolean i2 = this.G.i();
        boolean j2 = this.G.j();
        if (this.aM == null) {
            this.aM = VelocityTracker.obtain();
        }
        this.aM.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        switch (actionMasked) {
            case 0:
                if (this.ay) {
                    this.ay = false;
                }
                this.aL = motionEvent.getPointerId(0);
                int x2 = (int) (motionEvent.getX() + 0.5f);
                this.aP = x2;
                this.aN = x2;
                int y2 = (int) (motionEvent.getY() + 0.5f);
                this.aQ = y2;
                this.aO = y2;
                if (this.aK == 2) {
                    getParent().requestDisallowInterceptTouchEvent(true);
                    setScrollState(1);
                    a(1);
                }
                int[] iArr = this.bf;
                this.bf[1] = 0;
                iArr[0] = 0;
                int i3 = i2 ? 1 : 0;
                if (j2) {
                    i3 |= 2;
                }
                a(i3, 0);
                break;
            case 1:
                this.aM.clear();
                a(0);
                break;
            case 2:
                int findPointerIndex = motionEvent.findPointerIndex(this.aL);
                if (findPointerIndex < 0) {
                    Log.e(f992a, "Error processing scroll; pointer index for id " + this.aL + " not found. Did any MotionEvents get skipped?");
                    return false;
                }
                int x3 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
                int y3 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
                if (this.aK != 1) {
                    int i4 = x3 - this.aN;
                    int i5 = y3 - this.aO;
                    if (!i2 || Math.abs(i4) <= this.aR) {
                        z2 = false;
                    } else {
                        this.aP = x3;
                        z2 = true;
                    }
                    if (j2 && Math.abs(i5) > this.aR) {
                        this.aQ = y3;
                        z2 = true;
                    }
                    if (z2) {
                        setScrollState(1);
                        break;
                    }
                }
                break;
            case 3:
                K();
                break;
            case 5:
                this.aL = motionEvent.getPointerId(actionIndex);
                int x4 = (int) (motionEvent.getX(actionIndex) + 0.5f);
                this.aP = x4;
                this.aN = x4;
                int y4 = (int) (motionEvent.getY(actionIndex) + 0.5f);
                this.aQ = y4;
                this.aO = y4;
                break;
            case 6:
                c(motionEvent);
                break;
        }
        return this.aK == 1;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z2) {
        int size = this.av.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.av.get(i2).a(z2);
        }
        super.requestDisallowInterceptTouchEvent(z2);
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00f1  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z2;
        boolean z3 = false;
        if (this.O || this.ay) {
            return false;
        }
        if (a(motionEvent)) {
            K();
            return true;
        }
        if (this.G == null) {
            return false;
        }
        boolean i2 = this.G.i();
        boolean j2 = this.G.j();
        if (this.aM == null) {
            this.aM = VelocityTracker.obtain();
        }
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            int[] iArr = this.bf;
            this.bf[1] = 0;
            iArr[0] = 0;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.offsetLocation(this.bf[0], this.bf[1]);
        switch (actionMasked) {
            case 0:
                this.aL = motionEvent.getPointerId(0);
                int x2 = (int) (motionEvent.getX() + 0.5f);
                this.aP = x2;
                this.aN = x2;
                int y2 = (int) (motionEvent.getY() + 0.5f);
                this.aQ = y2;
                this.aO = y2;
                int i3 = i2 ? 1 : 0;
                if (j2) {
                    i3 |= 2;
                }
                a(i3, 0);
                break;
            case 1:
                this.aM.addMovement(obtain);
                this.aM.computeCurrentVelocity(1000, this.aU);
                float f2 = i2 ? -this.aM.getXVelocity(this.aL) : 0.0f;
                float f3 = j2 ? -this.aM.getYVelocity(this.aL) : 0.0f;
                if ((f2 == 0.0f && f3 == 0.0f) || !c((int) f2, (int) f3)) {
                    setScrollState(0);
                }
                J();
                z3 = true;
                break;
            case 2:
                int findPointerIndex = motionEvent.findPointerIndex(this.aL);
                if (findPointerIndex < 0) {
                    Log.e(f992a, "Error processing scroll; pointer index for id " + this.aL + " not found. Did any MotionEvents get skipped?");
                    return false;
                }
                int x3 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
                int y3 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
                int i4 = this.aP - x3;
                int i5 = this.aQ - y3;
                if (this.aK != 1) {
                    if (i2) {
                        if (i4 > 0) {
                            i4 = Math.max(0, i4 - this.aR);
                        } else {
                            i4 = Math.min(0, i4 + this.aR);
                        }
                        if (i4 != 0) {
                            z2 = true;
                            if (j2) {
                                if (i5 > 0) {
                                    i5 = Math.max(0, i5 - this.aR);
                                } else {
                                    i5 = Math.min(0, i5 + this.aR);
                                }
                                if (i5 != 0) {
                                    z2 = true;
                                }
                            }
                            if (z2) {
                                setScrollState(1);
                            }
                        }
                    }
                    z2 = false;
                    if (j2) {
                    }
                    if (z2) {
                    }
                }
                int i6 = i4;
                int i7 = i5;
                if (this.aK == 1) {
                    this.ai[0] = 0;
                    this.ai[1] = 0;
                    if (a(i2 ? i6 : 0, j2 ? i7 : 0, this.ai, this.be, 0)) {
                        i6 -= this.ai[0];
                        i7 -= this.ai[1];
                        int[] iArr2 = this.bf;
                        iArr2[0] = iArr2[0] + this.be[0];
                        int[] iArr3 = this.bf;
                        iArr3[1] = iArr3[1] + this.be[1];
                        getParent().requestDisallowInterceptTouchEvent(true);
                    }
                    int i8 = i7;
                    this.aP = x3 - this.be[0];
                    this.aQ = y3 - this.be[1];
                    if (a(i2 ? i6 : 0, j2 ? i8 : 0, motionEvent)) {
                        getParent().requestDisallowInterceptTouchEvent(true);
                    }
                    if (this.ab != null && (i6 != 0 || i8 != 0)) {
                        this.ab.a(this, i6, i8);
                        break;
                    }
                }
                break;
            case 3:
                K();
                break;
            case 5:
                this.aL = motionEvent.getPointerId(actionIndex);
                int x4 = (int) (motionEvent.getX(actionIndex) + 0.5f);
                this.aP = x4;
                this.aN = x4;
                int y4 = (int) (motionEvent.getY(actionIndex) + 0.5f);
                this.aQ = y4;
                this.aO = y4;
                break;
            case 6:
                c(motionEvent);
                break;
        }
        if (!z3) {
            this.aM.addMovement(obtain);
        }
        obtain.recycle();
        return true;
    }

    private void J() {
        if (this.aM != null) {
            this.aM.clear();
        }
        a(0);
        I();
    }

    private void K() {
        J();
        setScrollState(0);
    }

    private void c(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.aL) {
            int i2 = actionIndex == 0 ? 1 : 0;
            this.aL = motionEvent.getPointerId(i2);
            int x2 = (int) (motionEvent.getX(i2) + 0.5f);
            this.aP = x2;
            this.aN = x2;
            int y2 = (int) (motionEvent.getY(i2) + 0.5f);
            this.aQ = y2;
            this.aO = y2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0068  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float f2;
        float f3;
        if (this.G != null && !this.O && motionEvent.getAction() == 8) {
            if ((motionEvent.getSource() & 2) != 0) {
                f2 = this.G.j() ? -motionEvent.getAxisValue(9) : 0.0f;
                if (this.G.i()) {
                    f3 = motionEvent.getAxisValue(10);
                    if (f2 == 0.0f || f3 != 0.0f) {
                        a((int) (f3 * this.aV), (int) (f2 * this.aW), motionEvent);
                    }
                }
                f3 = 0.0f;
                if (f2 == 0.0f) {
                }
                a((int) (f3 * this.aV), (int) (f2 * this.aW), motionEvent);
            } else {
                if ((motionEvent.getSource() & 4194304) != 0) {
                    float axisValue = motionEvent.getAxisValue(26);
                    if (!this.G.j()) {
                        if (this.G.i()) {
                            f3 = axisValue;
                            f2 = 0.0f;
                            if (f2 == 0.0f) {
                            }
                            a((int) (f3 * this.aV), (int) (f2 * this.aW), motionEvent);
                        }
                    } else {
                        f2 = -axisValue;
                        f3 = 0.0f;
                        if (f2 == 0.0f) {
                        }
                        a((int) (f3 * this.aV), (int) (f2 * this.aW), motionEvent);
                    }
                }
                f2 = 0.0f;
                f3 = 0.0f;
                if (f2 == 0.0f) {
                }
                a((int) (f3 * this.aV), (int) (f2 * this.aW), motionEvent);
            }
        }
        return false;
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i3) {
        if (this.G == null) {
            f(i2, i3);
            return;
        }
        boolean z2 = false;
        if (this.G.f()) {
            int mode = View.MeasureSpec.getMode(i2);
            int mode2 = View.MeasureSpec.getMode(i3);
            this.G.a(this.x, this.ad, i2, i3);
            if (mode == 1073741824 && mode2 == 1073741824) {
                z2 = true;
            }
            if (z2 || this.F == null) {
                return;
            }
            if (this.ad.g == 1) {
                S();
            }
            this.G.d(i2, i3);
            this.ad.l = true;
            T();
            this.G.e(i2, i3);
            if (this.G.t()) {
                this.G.d(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), androidx.d.c.b.a.b.b), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), androidx.d.c.b.a.b.b));
                this.ad.l = true;
                T();
                this.G.e(i2, i3);
                return;
            }
            return;
        }
        if (this.K) {
            this.G.a(this.x, this.ad, i2, i3);
            return;
        }
        if (this.P) {
            h();
            p();
            N();
            q();
            if (this.ad.n) {
                this.ad.j = true;
            } else {
                this.y.e();
                this.ad.j = false;
            }
            this.P = false;
            a(false);
        } else if (this.ad.n) {
            setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
            return;
        }
        if (this.F != null) {
            this.ad.h = this.F.a();
        } else {
            this.ad.h = 0;
        }
        h();
        this.G.a(this.x, this.ad, i2, i3);
        a(false);
        this.ad.j = false;
    }

    void f(int i2, int i3) {
        setMeasuredDimension(i.a(i2, getPaddingLeft() + getPaddingRight(), androidx.core.n.af.D(this)), i.a(i3, getPaddingTop() + getPaddingBottom(), androidx.core.n.af.E(this)));
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (i2 == i4 && i3 == i5) {
            return;
        }
        o();
    }

    public void setItemAnimator(@ai f fVar) {
        if (this.S != null) {
            this.S.d();
            this.S.a((f.c) null);
        }
        this.S = fVar;
        if (this.S != null) {
            this.S.a(this.ba);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void p() {
        this.aC++;
    }

    void q() {
        b(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(boolean z2) {
        this.aC--;
        if (this.aC < 1) {
            this.aC = 0;
            if (z2) {
                L();
                D();
            }
        }
    }

    boolean r() {
        return this.aA != null && this.aA.isEnabled();
    }

    private void L() {
        int i2 = this.az;
        this.az = 0;
        if (i2 == 0 || !r()) {
            return;
        }
        AccessibilityEvent obtain = AccessibilityEvent.obtain();
        obtain.setEventType(2048);
        androidx.core.n.a.b.b(obtain, i2);
        sendAccessibilityEventUnchecked(obtain);
    }

    public boolean s() {
        return this.aC > 0;
    }

    boolean a(AccessibilityEvent accessibilityEvent) {
        if (!s()) {
            return false;
        }
        int c2 = accessibilityEvent != null ? androidx.core.n.a.b.c(accessibilityEvent) : 0;
        if (c2 == 0) {
            c2 = 0;
        }
        this.az = c2 | this.az;
        return true;
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (a(accessibilityEvent)) {
            return;
        }
        super.sendAccessibilityEventUnchecked(accessibilityEvent);
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @ai
    public f getItemAnimator() {
        return this.S;
    }

    void t() {
        if (this.ag || !this.J) {
            return;
        }
        androidx.core.n.af.a(this, this.bg);
        this.ag = true;
    }

    private boolean M() {
        return this.S != null && this.G.d();
    }

    private void N() {
        if (this.Q) {
            this.y.a();
            if (this.R) {
                this.G.a(this);
            }
        }
        if (M()) {
            this.y.b();
        } else {
            this.y.e();
        }
        boolean z2 = false;
        boolean z3 = this.ae || this.af;
        this.ad.m = this.M && this.S != null && (this.Q || z3 || this.G.z) && (!this.Q || this.F.c());
        w wVar = this.ad;
        if (this.ad.m && z3 && !this.Q && M()) {
            z2 = true;
        }
        wVar.n = z2;
    }

    void u() {
        if (this.F == null) {
            Log.e(f992a, "No adapter attached; skipping layout");
            return;
        }
        if (this.G == null) {
            Log.e(f992a, "No layout manager attached; skipping layout");
            return;
        }
        this.ad.l = false;
        if (this.ad.g == 1) {
            S();
            this.G.f(this);
            T();
        } else if (this.y.f() || this.G.K() != getWidth() || this.G.L() != getHeight()) {
            this.G.f(this);
            T();
        } else {
            this.G.f(this);
        }
        U();
    }

    private void O() {
        int f2;
        View focusedChild = (this.aX && hasFocus() && this.F != null) ? getFocusedChild() : null;
        z d2 = focusedChild != null ? d(focusedChild) : null;
        if (d2 == null) {
            P();
            return;
        }
        this.ad.p = this.F.c() ? d2.h() : -1L;
        w wVar = this.ad;
        if (this.Q) {
            f2 = -1;
        } else {
            f2 = d2.s() ? d2.d : d2.f();
        }
        wVar.o = f2;
        this.ad.q = p(d2.f1016a);
    }

    private void P() {
        this.ad.p = -1L;
        this.ad.o = -1;
        this.ad.q = -1;
    }

    @ai
    private View Q() {
        z j2;
        int i2 = this.ad.o != -1 ? this.ad.o : 0;
        int h2 = this.ad.h();
        for (int i3 = i2; i3 < h2; i3++) {
            z j3 = j(i3);
            if (j3 == null) {
                break;
            }
            if (j3.f1016a.hasFocusable()) {
                return j3.f1016a;
            }
        }
        int min = Math.min(h2, i2);
        do {
            min--;
            if (min < 0 || (j2 = j(min)) == null) {
                return null;
            }
        } while (!j2.f1016a.hasFocusable());
        return j2.f1016a;
    }

    private void R() {
        View view;
        if (!this.aX || this.F == null || !hasFocus() || getDescendantFocusability() == 393216) {
            return;
        }
        if (getDescendantFocusability() == 131072 && isFocused()) {
            return;
        }
        if (!isFocused()) {
            View focusedChild = getFocusedChild();
            if (an && (focusedChild.getParent() == null || !focusedChild.hasFocus())) {
                if (this.z.b() == 0) {
                    requestFocus();
                    return;
                }
            } else if (!this.z.c(focusedChild)) {
                return;
            }
        }
        View view2 = null;
        z a2 = (this.ad.p == -1 || !this.F.c()) ? null : a(this.ad.p);
        if (a2 == null || this.z.c(a2.f1016a) || !a2.f1016a.hasFocusable()) {
            if (this.z.b() > 0) {
                view2 = Q();
            }
        } else {
            view2 = a2.f1016a;
        }
        if (view2 != null) {
            if (this.ad.q == -1 || (view = view2.findViewById(this.ad.q)) == null || !view.isFocusable()) {
                view = view2;
            }
            view.requestFocus();
        }
    }

    private int p(View view) {
        int id = view.getId();
        while (!view.isFocused() && (view instanceof ViewGroup) && view.hasFocus()) {
            view = ((ViewGroup) view).getFocusedChild();
            if (view.getId() != -1) {
                id = view.getId();
            }
        }
        return id;
    }

    final void a(w wVar) {
        if (getScrollState() == 2) {
            OverScroller overScroller = this.aa.f1015a;
            wVar.r = overScroller.getFinalX() - overScroller.getCurrX();
            wVar.s = overScroller.getFinalY() - overScroller.getCurrY();
        } else {
            wVar.r = 0;
            wVar.s = 0;
        }
    }

    private void S() {
        this.ad.a(1);
        a(this.ad);
        this.ad.l = false;
        h();
        this.A.a();
        p();
        N();
        O();
        this.ad.k = this.ad.m && this.af;
        this.af = false;
        this.ae = false;
        this.ad.j = this.ad.n;
        this.ad.h = this.F.a();
        a(this.bc);
        if (this.ad.m) {
            int b2 = this.z.b();
            for (int i2 = 0; i2 < b2; i2++) {
                z e2 = e(this.z.b(i2));
                if (!e2.c() && (!e2.p() || this.F.c())) {
                    this.A.a(e2, this.S.a(this.ad, e2, f.e(e2), e2.x()));
                    if (this.ad.k && e2.C() && !e2.s() && !e2.c() && !e2.p()) {
                        this.A.a(a(e2), e2);
                    }
                }
            }
        }
        if (this.ad.n) {
            x();
            boolean z2 = this.ad.i;
            this.ad.i = false;
            this.G.c(this.x, this.ad);
            this.ad.i = z2;
            for (int i3 = 0; i3 < this.z.b(); i3++) {
                z e3 = e(this.z.b(i3));
                if (!e3.c() && !this.A.d(e3)) {
                    int e4 = f.e(e3);
                    boolean a2 = e3.a(8192);
                    if (!a2) {
                        e4 |= 4096;
                    }
                    f.d a3 = this.S.a(this.ad, e3, e4, e3.x());
                    if (a2) {
                        a(e3, a3);
                    } else {
                        this.A.b(e3, a3);
                    }
                }
            }
            y();
        } else {
            y();
        }
        q();
        a(false);
        this.ad.g = 2;
    }

    private void T() {
        h();
        p();
        this.ad.a(6);
        this.y.e();
        this.ad.h = this.F.a();
        this.ad.f = 0;
        this.ad.j = false;
        this.G.c(this.x, this.ad);
        this.ad.i = false;
        this.at = null;
        this.ad.m = this.ad.m && this.S != null;
        this.ad.g = 4;
        q();
        a(false);
    }

    private void U() {
        this.ad.a(4);
        h();
        p();
        this.ad.g = 1;
        if (this.ad.m) {
            for (int b2 = this.z.b() - 1; b2 >= 0; b2--) {
                z e2 = e(this.z.b(b2));
                if (!e2.c()) {
                    long a2 = a(e2);
                    f.d a3 = this.S.a(this.ad, e2);
                    z a4 = this.A.a(a2);
                    if (a4 != null && !a4.c()) {
                        boolean a5 = this.A.a(a4);
                        boolean a6 = this.A.a(e2);
                        if (a5 && a4 == e2) {
                            this.A.c(e2, a3);
                        } else {
                            f.d b3 = this.A.b(a4);
                            this.A.c(e2, a3);
                            f.d c2 = this.A.c(e2);
                            if (b3 == null) {
                                a(a2, e2, a4);
                            } else {
                                a(a4, e2, b3, c2, a5, a6);
                            }
                        }
                    } else {
                        this.A.c(e2, a3);
                    }
                }
            }
            this.A.a(this.bh);
        }
        this.G.b(this.x);
        this.ad.e = this.ad.h;
        this.Q = false;
        this.R = false;
        this.ad.m = false;
        this.ad.n = false;
        this.G.z = false;
        if (this.x.b != null) {
            this.x.b.clear();
        }
        if (this.G.D) {
            this.G.C = 0;
            this.G.D = false;
            this.x.b();
        }
        this.G.a(this.ad);
        q();
        a(false);
        this.A.a();
        if (k(this.bc[0], this.bc[1])) {
            j(0, 0);
        }
        R();
        P();
    }

    private void a(long j2, z zVar, z zVar2) {
        int b2 = this.z.b();
        for (int i2 = 0; i2 < b2; i2++) {
            z e2 = e(this.z.b(i2));
            if (e2 != zVar && a(e2) == j2) {
                if (this.F != null && this.F.c()) {
                    throw new IllegalStateException("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:" + e2 + " \n View Holder 2:" + zVar + a());
                }
                throw new IllegalStateException("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:" + e2 + " \n View Holder 2:" + zVar + a());
            }
        }
        Log.e(f992a, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + zVar2 + " cannot be found but it is necessary for " + zVar + a());
    }

    void a(z zVar, f.d dVar) {
        zVar.a(0, 8192);
        if (this.ad.k && zVar.C() && !zVar.s() && !zVar.c()) {
            this.A.a(a(zVar), zVar);
        }
        this.A.a(zVar, dVar);
    }

    private void a(int[] iArr) {
        int b2 = this.z.b();
        if (b2 == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i2 = Integer.MIN_VALUE;
        int i3 = Integer.MAX_VALUE;
        for (int i4 = 0; i4 < b2; i4++) {
            z e2 = e(this.z.b(i4));
            if (!e2.c()) {
                int e3 = e2.e();
                if (e3 < i3) {
                    i3 = e3;
                }
                if (e3 > i2) {
                    i2 = e3;
                }
            }
        }
        iArr[0] = i3;
        iArr[1] = i2;
    }

    private boolean k(int i2, int i3) {
        a(this.bc);
        return (this.bc[0] == i2 && this.bc[1] == i3) ? false : true;
    }

    @Override // android.view.ViewGroup
    protected void removeDetachedView(View view, boolean z2) {
        z e2 = e(view);
        if (e2 != null) {
            if (e2.t()) {
                e2.n();
            } else if (!e2.c()) {
                throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + e2 + a());
            }
        }
        view.clearAnimation();
        n(view);
        super.removeDetachedView(view, z2);
    }

    long a(z zVar) {
        return this.F.c() ? zVar.h() : zVar.c;
    }

    void a(@androidx.annotation.ah z zVar, @ai f.d dVar, @androidx.annotation.ah f.d dVar2) {
        zVar.a(false);
        if (this.S.b(zVar, dVar, dVar2)) {
            t();
        }
    }

    void b(@androidx.annotation.ah z zVar, @androidx.annotation.ah f.d dVar, @ai f.d dVar2) {
        e(zVar);
        zVar.a(false);
        if (this.S.a(zVar, dVar, dVar2)) {
            t();
        }
    }

    private void a(@androidx.annotation.ah z zVar, @androidx.annotation.ah z zVar2, @androidx.annotation.ah f.d dVar, @androidx.annotation.ah f.d dVar2, boolean z2, boolean z3) {
        zVar.a(false);
        if (z2) {
            e(zVar);
        }
        if (zVar != zVar2) {
            if (z3) {
                e(zVar2);
            }
            zVar.h = zVar2;
            e(zVar);
            this.x.c(zVar);
            zVar2.a(false);
            zVar2.i = zVar;
        }
        if (this.S.a(zVar, zVar2, dVar, dVar2)) {
            t();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        androidx.core.i.o.a(ao);
        u();
        androidx.core.i.o.b();
        this.M = true;
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.ax == 0 && !this.O) {
            super.requestLayout();
        } else {
            this.N = true;
        }
    }

    void v() {
        int c2 = this.z.c();
        for (int i2 = 0; i2 < c2; i2++) {
            ((j) this.z.d(i2).getLayoutParams()).f = true;
        }
        this.x.j();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        boolean z2;
        boolean z3;
        super.draw(canvas);
        int size = this.I.size();
        boolean z4 = false;
        for (int i2 = 0; i2 < size; i2++) {
            this.I.get(i2).b(canvas, this, this.ad);
        }
        if (this.aF == null || this.aF.isFinished()) {
            z2 = false;
        } else {
            int save = canvas.save();
            int paddingBottom = this.B ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + paddingBottom, 0.0f);
            z2 = this.aF != null && this.aF.draw(canvas);
            canvas.restoreToCount(save);
        }
        if (this.aG != null && !this.aG.isFinished()) {
            int save2 = canvas.save();
            if (this.B) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            z2 |= this.aG != null && this.aG.draw(canvas);
            canvas.restoreToCount(save2);
        }
        if (this.aH != null && !this.aH.isFinished()) {
            int save3 = canvas.save();
            int width = getWidth();
            int paddingTop = this.B ? getPaddingTop() : 0;
            canvas.rotate(90.0f);
            canvas.translate(-paddingTop, -width);
            z2 |= this.aH != null && this.aH.draw(canvas);
            canvas.restoreToCount(save3);
        }
        if (this.aI == null || this.aI.isFinished()) {
            z3 = z2;
        } else {
            int save4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.B) {
                canvas.translate((-getWidth()) + getPaddingRight(), (-getHeight()) + getPaddingBottom());
            } else {
                canvas.translate(-getWidth(), -getHeight());
            }
            if (this.aI != null && this.aI.draw(canvas)) {
                z4 = true;
            }
            z3 = z4 | z2;
            canvas.restoreToCount(save4);
        }
        if (!z3 && this.S != null && this.I.size() > 0 && this.S.b()) {
            z3 = true;
        }
        if (z3) {
            androidx.core.n.af.h(this);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int size = this.I.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.I.get(i2).a(canvas, this, this.ad);
        }
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof j) && this.G.a((j) layoutParams);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        if (this.G == null) {
            throw new IllegalStateException("RecyclerView has no LayoutManager" + a());
        }
        return this.G.a();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        if (this.G == null) {
            throw new IllegalStateException("RecyclerView has no LayoutManager" + a());
        }
        return this.G.a(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (this.G == null) {
            throw new IllegalStateException("RecyclerView has no LayoutManager" + a());
        }
        return this.G.a(layoutParams);
    }

    public boolean w() {
        return this.S != null && this.S.b();
    }

    void x() {
        int c2 = this.z.c();
        for (int i2 = 0; i2 < c2; i2++) {
            z e2 = e(this.z.d(i2));
            if (!e2.c()) {
                e2.b();
            }
        }
    }

    void y() {
        int c2 = this.z.c();
        for (int i2 = 0; i2 < c2; i2++) {
            z e2 = e(this.z.d(i2));
            if (!e2.c()) {
                e2.a();
            }
        }
        this.x.i();
    }

    void g(int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int c2 = this.z.c();
        if (i2 < i3) {
            i4 = i3;
            i6 = -1;
            i5 = i2;
        } else {
            i4 = i2;
            i5 = i3;
            i6 = 1;
        }
        for (int i7 = 0; i7 < c2; i7++) {
            z e2 = e(this.z.d(i7));
            if (e2 != null && e2.c >= i5 && e2.c <= i4) {
                if (e2.c == i2) {
                    e2.a(i3 - i2, false);
                } else {
                    e2.a(i6, false);
                }
                this.ad.i = true;
            }
        }
        this.x.a(i2, i3);
        requestLayout();
    }

    void h(int i2, int i3) {
        int c2 = this.z.c();
        for (int i4 = 0; i4 < c2; i4++) {
            z e2 = e(this.z.d(i4));
            if (e2 != null && !e2.c() && e2.c >= i2) {
                e2.a(i3, false);
                this.ad.i = true;
            }
        }
        this.x.b(i2, i3);
        requestLayout();
    }

    void a(int i2, int i3, boolean z2) {
        int i4 = i2 + i3;
        int c2 = this.z.c();
        for (int i5 = 0; i5 < c2; i5++) {
            z e2 = e(this.z.d(i5));
            if (e2 != null && !e2.c()) {
                if (e2.c >= i4) {
                    e2.a(-i3, z2);
                    this.ad.i = true;
                } else if (e2.c >= i2) {
                    e2.a(i2 - 1, -i3, z2);
                    this.ad.i = true;
                }
            }
        }
        this.x.a(i2, i3, z2);
        requestLayout();
    }

    void a(int i2, int i3, Object obj) {
        int c2 = this.z.c();
        int i4 = i2 + i3;
        for (int i5 = 0; i5 < c2; i5++) {
            View d2 = this.z.d(i5);
            z e2 = e(d2);
            if (e2 != null && !e2.c() && e2.c >= i2 && e2.c < i4) {
                e2.b(2);
                e2.a(obj);
                ((j) d2.getLayoutParams()).f = true;
            }
        }
        this.x.c(i2, i3);
    }

    boolean b(z zVar) {
        return this.S == null || this.S.a(zVar, zVar.x());
    }

    void c(boolean z2) {
        this.R = z2 | this.R;
        this.Q = true;
        z();
    }

    void z() {
        int c2 = this.z.c();
        for (int i2 = 0; i2 < c2; i2++) {
            z e2 = e(this.z.d(i2));
            if (e2 != null && !e2.c()) {
                e2.b(6);
            }
        }
        v();
        this.x.h();
    }

    public void A() {
        if (this.I.size() == 0) {
            return;
        }
        if (this.G != null) {
            this.G.a("Cannot invalidate item decorations during a scroll or layout");
        }
        v();
        requestLayout();
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.aX;
    }

    public void setPreserveFocusAfterLayout(boolean z2) {
        this.aX = z2;
    }

    public z b(@androidx.annotation.ah View view) {
        ViewParent parent = view.getParent();
        if (parent != null && parent != this) {
            throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
        }
        return e(view);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:?, code lost:
    
        return r3;
     */
    @ai
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public View c(@androidx.annotation.ah View view) {
        ViewParent parent = view.getParent();
        while (parent != null && parent != this && (parent instanceof View)) {
            view = parent;
            parent = view.getParent();
        }
        return null;
    }

    @ai
    public z d(@androidx.annotation.ah View view) {
        View c2 = c(view);
        if (c2 == null) {
            return null;
        }
        return b(c2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static z e(View view) {
        if (view == null) {
            return null;
        }
        return ((j) view.getLayoutParams()).d;
    }

    @Deprecated
    public int f(@androidx.annotation.ah View view) {
        return g(view);
    }

    public int g(@androidx.annotation.ah View view) {
        z e2 = e(view);
        if (e2 != null) {
            return e2.f();
        }
        return -1;
    }

    public int h(@androidx.annotation.ah View view) {
        z e2 = e(view);
        if (e2 != null) {
            return e2.e();
        }
        return -1;
    }

    public long i(@androidx.annotation.ah View view) {
        z e2;
        if (this.F == null || !this.F.c() || (e2 = e(view)) == null) {
            return -1L;
        }
        return e2.h();
    }

    @ai
    @Deprecated
    public z h(int i2) {
        return a(i2, false);
    }

    @ai
    public z i(int i2) {
        return a(i2, false);
    }

    @ai
    public z j(int i2) {
        z zVar = null;
        if (this.Q) {
            return null;
        }
        int c2 = this.z.c();
        for (int i3 = 0; i3 < c2; i3++) {
            z e2 = e(this.z.d(i3));
            if (e2 != null && !e2.s() && d(e2) == i2) {
                if (!this.z.c(e2.f1016a)) {
                    return e2;
                }
                zVar = e2;
            }
        }
        return zVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0036 A[SYNTHETIC] */
    @ai
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    z a(int i2, boolean z2) {
        int c2 = this.z.c();
        z zVar = null;
        for (int i3 = 0; i3 < c2; i3++) {
            z e2 = e(this.z.d(i3));
            if (e2 != null && !e2.s()) {
                if (z2) {
                    if (e2.c != i2) {
                        continue;
                    }
                    if (this.z.c(e2.f1016a)) {
                        return e2;
                    }
                    zVar = e2;
                } else {
                    if (e2.e() != i2) {
                        continue;
                    }
                    if (this.z.c(e2.f1016a)) {
                    }
                }
            }
        }
        return zVar;
    }

    public z a(long j2) {
        z zVar = null;
        if (this.F == null || !this.F.c()) {
            return null;
        }
        int c2 = this.z.c();
        for (int i2 = 0; i2 < c2; i2++) {
            z e2 = e(this.z.d(i2));
            if (e2 != null && !e2.s() && e2.h() == j2) {
                if (!this.z.c(e2.f1016a)) {
                    return e2;
                }
                zVar = e2;
            }
        }
        return zVar;
    }

    @ai
    public View a(float f2, float f3) {
        for (int b2 = this.z.b() - 1; b2 >= 0; b2--) {
            View b3 = this.z.b(b2);
            float translationX = b3.getTranslationX();
            float translationY = b3.getTranslationY();
            if (f2 >= b3.getLeft() + translationX && f2 <= b3.getRight() + translationX && f3 >= b3.getTop() + translationY && f3 <= b3.getBottom() + translationY) {
                return b3;
            }
        }
        return null;
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j2) {
        return super.drawChild(canvas, view, j2);
    }

    public void k(@ak int i2) {
        int b2 = this.z.b();
        for (int i3 = 0; i3 < b2; i3++) {
            this.z.b(i3).offsetTopAndBottom(i2);
        }
    }

    public void l(@ak int i2) {
        int b2 = this.z.b();
        for (int i3 = 0; i3 < b2; i3++) {
            this.z.b(i3).offsetLeftAndRight(i2);
        }
    }

    public void a(@androidx.annotation.ah View view, @androidx.annotation.ah Rect rect) {
        b(view, rect);
    }

    static void b(View view, Rect rect) {
        j jVar = (j) view.getLayoutParams();
        Rect rect2 = jVar.e;
        rect.set((view.getLeft() - rect2.left) - jVar.leftMargin, (view.getTop() - rect2.top) - jVar.topMargin, view.getRight() + rect2.right + jVar.rightMargin, view.getBottom() + rect2.bottom + jVar.bottomMargin);
    }

    Rect l(View view) {
        j jVar = (j) view.getLayoutParams();
        if (!jVar.f) {
            return jVar.e;
        }
        if (this.ad.b() && (jVar.f() || jVar.d())) {
            return jVar.e;
        }
        Rect rect = jVar.e;
        rect.set(0, 0, 0, 0);
        int size = this.I.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.D.set(0, 0, 0, 0);
            this.I.get(i2).a(this.D, view, this, this.ad);
            rect.left += this.D.left;
            rect.top += this.D.top;
            rect.right += this.D.right;
            rect.bottom += this.D.bottom;
        }
        jVar.f = false;
        return rect;
    }

    void j(int i2, int i3) {
        this.aD++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX - i2, scrollY - i3);
        i(i2, i3);
        if (this.aY != null) {
            this.aY.a(this, i2, i3);
        }
        if (this.aZ != null) {
            for (int size = this.aZ.size() - 1; size >= 0; size--) {
                this.aZ.get(size).a(this, i2, i3);
            }
        }
        this.aD--;
    }

    void n(int i2) {
        if (this.G != null) {
            this.G.m(i2);
        }
        m(i2);
        if (this.aY != null) {
            this.aY.a(this, i2);
        }
        if (this.aZ != null) {
            for (int size = this.aZ.size() - 1; size >= 0; size--) {
                this.aZ.get(size).a(this, i2);
            }
        }
    }

    public boolean B() {
        return !this.M || this.Q || this.y.d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class y implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        OverScroller f1015a;
        private int d;
        private int e;
        Interpolator b = RecyclerView.ak;
        private boolean f = false;
        private boolean g = false;

        y() {
            this.f1015a = new OverScroller(RecyclerView.this.getContext(), RecyclerView.ak);
        }

        @Override // java.lang.Runnable
        public void run() {
            int i;
            int i2;
            if (RecyclerView.this.G == null) {
                b();
                return;
            }
            this.g = false;
            this.f = true;
            RecyclerView.this.g();
            OverScroller overScroller = this.f1015a;
            if (overScroller.computeScrollOffset()) {
                int currX = overScroller.getCurrX();
                int currY = overScroller.getCurrY();
                int i3 = currX - this.d;
                int i4 = currY - this.e;
                this.d = currX;
                this.e = currY;
                RecyclerView.this.ai[0] = 0;
                RecyclerView.this.ai[1] = 0;
                if (RecyclerView.this.a(i3, i4, RecyclerView.this.ai, (int[]) null, 1)) {
                    i3 -= RecyclerView.this.ai[0];
                    i4 -= RecyclerView.this.ai[1];
                }
                if (RecyclerView.this.getOverScrollMode() != 2) {
                    RecyclerView.this.d(i3, i4);
                }
                if (RecyclerView.this.F != null) {
                    RecyclerView.this.ai[0] = 0;
                    RecyclerView.this.ai[1] = 0;
                    RecyclerView.this.a(i3, i4, RecyclerView.this.ai);
                    i = RecyclerView.this.ai[0];
                    i2 = RecyclerView.this.ai[1];
                    i3 -= i;
                    i4 -= i2;
                    v vVar = RecyclerView.this.G.y;
                    if (vVar != null && !vVar.g() && vVar.h()) {
                        int h = RecyclerView.this.ad.h();
                        if (h == 0) {
                            vVar.f();
                        } else if (vVar.i() >= h) {
                            vVar.c(h - 1);
                            vVar.a(i, i2);
                        } else {
                            vVar.a(i, i2);
                        }
                    }
                } else {
                    i = 0;
                    i2 = 0;
                }
                if (!RecyclerView.this.I.isEmpty()) {
                    RecyclerView.this.invalidate();
                }
                RecyclerView.this.ai[0] = 0;
                RecyclerView.this.ai[1] = 0;
                RecyclerView.this.a(i, i2, i3, i4, null, 1, RecyclerView.this.ai);
                int i5 = i3 - RecyclerView.this.ai[0];
                int i6 = i4 - RecyclerView.this.ai[1];
                if (i != 0 || i2 != 0) {
                    RecyclerView.this.j(i, i2);
                }
                if (!RecyclerView.this.awakenScrollBars()) {
                    RecyclerView.this.invalidate();
                }
                boolean z = overScroller.isFinished() || (((overScroller.getCurrX() == overScroller.getFinalX()) || i5 != 0) && ((overScroller.getCurrY() == overScroller.getFinalY()) || i6 != 0));
                v vVar2 = RecyclerView.this.G.y;
                if (!(vVar2 != null && vVar2.g()) && z) {
                    if (RecyclerView.this.getOverScrollMode() != 2) {
                        int currVelocity = (int) overScroller.getCurrVelocity();
                        int i7 = i5 < 0 ? -currVelocity : i5 > 0 ? currVelocity : 0;
                        if (i6 < 0) {
                            currVelocity = -currVelocity;
                        } else if (i6 <= 0) {
                            currVelocity = 0;
                        }
                        RecyclerView.this.e(i7, currVelocity);
                    }
                    if (RecyclerView.g) {
                        RecyclerView.this.ac.a();
                    }
                } else {
                    a();
                    if (RecyclerView.this.ab != null) {
                        RecyclerView.this.ab.a(RecyclerView.this, i, i2);
                    }
                }
            }
            v vVar3 = RecyclerView.this.G.y;
            if (vVar3 != null && vVar3.g()) {
                vVar3.a(0, 0);
            }
            this.f = false;
            if (this.g) {
                c();
            } else {
                RecyclerView.this.setScrollState(0);
                RecyclerView.this.a(1);
            }
        }

        void a() {
            if (this.f) {
                this.g = true;
            } else {
                c();
            }
        }

        private void c() {
            RecyclerView.this.removeCallbacks(this);
            androidx.core.n.af.a(RecyclerView.this, this);
        }

        public void a(int i, int i2) {
            RecyclerView.this.setScrollState(2);
            this.e = 0;
            this.d = 0;
            if (this.b != RecyclerView.ak) {
                this.b = RecyclerView.ak;
                this.f1015a = new OverScroller(RecyclerView.this.getContext(), RecyclerView.ak);
            }
            this.f1015a.fling(0, 0, i, i2, Integer.MIN_VALUE, ActivityChooserView.a.f166a, Integer.MIN_VALUE, ActivityChooserView.a.f166a);
            a();
        }

        public void a(int i, int i2, int i3, @ai Interpolator interpolator) {
            if (i3 == Integer.MIN_VALUE) {
                i3 = a(i, i2, 0, 0);
            }
            int i4 = i3;
            if (interpolator == null) {
                interpolator = RecyclerView.ak;
            }
            if (this.b != interpolator) {
                this.b = interpolator;
                this.f1015a = new OverScroller(RecyclerView.this.getContext(), interpolator);
            }
            this.e = 0;
            this.d = 0;
            RecyclerView.this.setScrollState(2);
            this.f1015a.startScroll(0, 0, i, i2, i4);
            if (Build.VERSION.SDK_INT < 23) {
                this.f1015a.computeScrollOffset();
            }
            a();
        }

        private float a(float f) {
            return (float) Math.sin((f - 0.5f) * 0.47123894f);
        }

        private int a(int i, int i2, int i3, int i4) {
            int i5;
            int abs = Math.abs(i);
            int abs2 = Math.abs(i2);
            boolean z = abs > abs2;
            int sqrt = (int) Math.sqrt((i3 * i3) + (i4 * i4));
            int sqrt2 = (int) Math.sqrt((i * i) + (i2 * i2));
            int width = z ? RecyclerView.this.getWidth() : RecyclerView.this.getHeight();
            int i6 = width / 2;
            float f = width;
            float f2 = i6;
            float a2 = f2 + (a(Math.min(1.0f, (sqrt2 * 1.0f) / f)) * f2);
            if (sqrt > 0) {
                i5 = Math.round(Math.abs(a2 / sqrt) * 1000.0f) * 4;
            } else {
                if (!z) {
                    abs = abs2;
                }
                i5 = (int) (((abs / f) + 1.0f) * 300.0f);
            }
            return Math.min(i5, RecyclerView.r);
        }

        public void b() {
            RecyclerView.this.removeCallbacks(this);
            this.f1015a.abortAnimation();
        }
    }

    void C() {
        int b2 = this.z.b();
        for (int i2 = 0; i2 < b2; i2++) {
            View b3 = this.z.b(i2);
            z b4 = b(b3);
            if (b4 != null && b4.i != null) {
                View view = b4.i.f1016a;
                int left = b3.getLeft();
                int top = b3.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class s extends c {
        s() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.c
        public void a() {
            RecyclerView.this.b((String) null);
            RecyclerView.this.ad.i = true;
            RecyclerView.this.c(true);
            if (RecyclerView.this.y.d()) {
                return;
            }
            RecyclerView.this.requestLayout();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.c
        public void a(int i, int i2, Object obj) {
            RecyclerView.this.b((String) null);
            if (RecyclerView.this.y.a(i, i2, obj)) {
                b();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.c
        public void b(int i, int i2) {
            RecyclerView.this.b((String) null);
            if (RecyclerView.this.y.b(i, i2)) {
                b();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.c
        public void c(int i, int i2) {
            RecyclerView.this.b((String) null);
            if (RecyclerView.this.y.c(i, i2)) {
                b();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.c
        public void a(int i, int i2, int i3) {
            RecyclerView.this.b((String) null);
            if (RecyclerView.this.y.a(i, i2, i3)) {
                b();
            }
        }

        void b() {
            if (RecyclerView.f && RecyclerView.this.K && RecyclerView.this.J) {
                androidx.core.n.af.a(RecyclerView.this, RecyclerView.this.C);
            } else {
                RecyclerView.this.P = true;
                RecyclerView.this.requestLayout();
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class e {

        /* renamed from: a, reason: collision with root package name */
        public static final int f999a = 0;
        public static final int b = 1;
        public static final int c = 2;
        public static final int d = 3;

        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: /home/user/work/dex/classes.dex */
        public @interface a {
        }

        @androidx.annotation.ah
        protected EdgeEffect a(@androidx.annotation.ah RecyclerView recyclerView, int i) {
            return new EdgeEffect(recyclerView.getContext());
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class p {
        private static final int b = 5;

        /* renamed from: a, reason: collision with root package name */
        SparseArray<a> f1007a = new SparseArray<>();
        private int c = 0;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: /home/user/work/dex/classes.dex */
        public static class a {

            /* renamed from: a, reason: collision with root package name */
            final ArrayList<z> f1008a = new ArrayList<>();
            int b = 5;
            long c = 0;
            long d = 0;

            a() {
            }
        }

        public void a() {
            for (int i = 0; i < this.f1007a.size(); i++) {
                this.f1007a.valueAt(i).f1008a.clear();
            }
        }

        public void a(int i, int i2) {
            a c = c(i);
            c.b = i2;
            ArrayList<z> arrayList = c.f1008a;
            while (arrayList.size() > i2) {
                arrayList.remove(arrayList.size() - 1);
            }
        }

        public int a(int i) {
            return c(i).f1008a.size();
        }

        @ai
        public z b(int i) {
            a aVar = this.f1007a.get(i);
            if (aVar == null || aVar.f1008a.isEmpty()) {
                return null;
            }
            ArrayList<z> arrayList = aVar.f1008a;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (!arrayList.get(size).u()) {
                    return arrayList.remove(size);
                }
            }
            return null;
        }

        int b() {
            int i = 0;
            for (int i2 = 0; i2 < this.f1007a.size(); i2++) {
                ArrayList<z> arrayList = this.f1007a.valueAt(i2).f1008a;
                if (arrayList != null) {
                    i += arrayList.size();
                }
            }
            return i;
        }

        public void a(z zVar) {
            int i = zVar.i();
            ArrayList<z> arrayList = c(i).f1008a;
            if (this.f1007a.get(i).b <= arrayList.size()) {
                return;
            }
            zVar.y();
            arrayList.add(zVar);
        }

        long a(long j, long j2) {
            return j == 0 ? j2 : ((j / 4) * 3) + (j2 / 4);
        }

        void a(int i, long j) {
            a c = c(i);
            c.c = a(c.c, j);
        }

        void b(int i, long j) {
            a c = c(i);
            c.d = a(c.d, j);
        }

        boolean a(int i, long j, long j2) {
            long j3 = c(i).c;
            return j3 == 0 || j + j3 < j2;
        }

        boolean b(int i, long j, long j2) {
            long j3 = c(i).d;
            return j3 == 0 || j + j3 < j2;
        }

        void c() {
            this.c++;
        }

        void d() {
            this.c--;
        }

        void a(a aVar, a aVar2, boolean z) {
            if (aVar != null) {
                d();
            }
            if (!z && this.c == 0) {
                a();
            }
            if (aVar2 != null) {
                c();
            }
        }

        private a c(int i) {
            a aVar = this.f1007a.get(i);
            if (aVar != null) {
                return aVar;
            }
            a aVar2 = new a();
            this.f1007a.put(i, aVar2);
            return aVar2;
        }
    }

    @ai
    static RecyclerView m(@androidx.annotation.ah View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            RecyclerView m2 = m(viewGroup.getChildAt(i2));
            if (m2 != null) {
                return m2;
            }
        }
        return null;
    }

    static void c(@androidx.annotation.ah z zVar) {
        if (zVar.b != null) {
            RecyclerView recyclerView = zVar.b.get();
            while (recyclerView != null) {
                if (recyclerView == zVar.f1016a) {
                    return;
                }
                Object parent = recyclerView.getParent();
                recyclerView = parent instanceof View ? (View) parent : null;
            }
            zVar.b = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getNanoTime() {
        if (g) {
            return System.nanoTime();
        }
        return 0L;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public final class q {
        static final int f = 2;
        p e;
        private x j;

        /* renamed from: a, reason: collision with root package name */
        final ArrayList<z> f1009a = new ArrayList<>();
        ArrayList<z> b = null;
        final ArrayList<z> c = new ArrayList<>();
        private final List<z> h = Collections.unmodifiableList(this.f1009a);
        private int i = 2;
        int d = 2;

        public q() {
        }

        public void a() {
            this.f1009a.clear();
            d();
        }

        public void a(int i) {
            this.i = i;
            b();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void b() {
            this.d = this.i + (RecyclerView.this.G != null ? RecyclerView.this.G.C : 0);
            for (int size = this.c.size() - 1; size >= 0 && this.c.size() > this.d; size--) {
                d(size);
            }
        }

        @androidx.annotation.ah
        public List<z> c() {
            return this.h;
        }

        boolean a(z zVar) {
            if (zVar.s()) {
                return RecyclerView.this.ad.b();
            }
            if (zVar.c < 0 || zVar.c >= RecyclerView.this.F.a()) {
                throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + zVar + RecyclerView.this.a());
            }
            if (RecyclerView.this.ad.b() || RecyclerView.this.F.b(zVar.c) == zVar.i()) {
                return !RecyclerView.this.F.c() || zVar.h() == RecyclerView.this.F.c(zVar.c);
            }
            return false;
        }

        private boolean a(@androidx.annotation.ah z zVar, int i, int i2, long j) {
            zVar.D = RecyclerView.this;
            int i3 = zVar.i();
            long nanoTime = RecyclerView.this.getNanoTime();
            if (j != RecyclerView.W && !this.e.b(i3, nanoTime, j)) {
                return false;
            }
            RecyclerView.this.F.b((a) zVar, i);
            this.e.b(zVar.i(), RecyclerView.this.getNanoTime() - nanoTime);
            e(zVar);
            if (!RecyclerView.this.ad.b()) {
                return true;
            }
            zVar.g = i2;
            return true;
        }

        public void a(@androidx.annotation.ah View view, int i) {
            j jVar;
            z e = RecyclerView.e(view);
            if (e == null) {
                throw new IllegalArgumentException("The view does not have a ViewHolder. You cannot pass arbitrary views to this method, they should be created by the Adapter" + RecyclerView.this.a());
            }
            int b = RecyclerView.this.y.b(i);
            if (b < 0 || b >= RecyclerView.this.F.a()) {
                throw new IndexOutOfBoundsException("Inconsistency detected. Invalid item position " + i + "(offset:" + b + ").state:" + RecyclerView.this.ad.h() + RecyclerView.this.a());
            }
            a(e, b, i, RecyclerView.W);
            ViewGroup.LayoutParams layoutParams = e.f1016a.getLayoutParams();
            if (layoutParams == null) {
                jVar = (j) RecyclerView.this.generateDefaultLayoutParams();
                e.f1016a.setLayoutParams(jVar);
            } else if (!RecyclerView.this.checkLayoutParams(layoutParams)) {
                jVar = (j) RecyclerView.this.generateLayoutParams(layoutParams);
                e.f1016a.setLayoutParams(jVar);
            } else {
                jVar = (j) layoutParams;
            }
            jVar.f = true;
            jVar.d = e;
            jVar.g = e.f1016a.getParent() == null;
        }

        public int b(int i) {
            if (i >= 0 && i < RecyclerView.this.ad.h()) {
                return !RecyclerView.this.ad.b() ? i : RecyclerView.this.y.b(i);
            }
            throw new IndexOutOfBoundsException("invalid position " + i + ". State item count is " + RecyclerView.this.ad.h() + RecyclerView.this.a());
        }

        @androidx.annotation.ah
        public View c(int i) {
            return a(i, false);
        }

        View a(int i, boolean z) {
            return a(i, z, RecyclerView.W).f1016a;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0037  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x005c  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x005f  */
        /* JADX WARN: Removed duplicated region for block: B:69:0x0188  */
        /* JADX WARN: Removed duplicated region for block: B:75:0x01a5  */
        /* JADX WARN: Removed duplicated region for block: B:78:0x01ca  */
        /* JADX WARN: Removed duplicated region for block: B:84:0x0203  */
        /* JADX WARN: Removed duplicated region for block: B:87:0x022d A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:91:0x0211  */
        /* JADX WARN: Removed duplicated region for block: B:97:0x01d9  */
        @ai
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public z a(int i, boolean z, long j) {
            z zVar;
            boolean z2;
            z zVar2;
            boolean z3;
            boolean a2;
            ViewGroup.LayoutParams layoutParams;
            j jVar;
            RecyclerView m;
            View a3;
            if (i < 0 || i >= RecyclerView.this.ad.h()) {
                throw new IndexOutOfBoundsException("Invalid item position " + i + "(" + i + "). Item count:" + RecyclerView.this.ad.h() + RecyclerView.this.a());
            }
            if (RecyclerView.this.ad.b()) {
                zVar = f(i);
                if (zVar != null) {
                    z2 = true;
                    if (zVar == null && (zVar = b(i, z)) != null) {
                        if (a(zVar)) {
                            if (!z) {
                                zVar.b(4);
                                if (zVar.j()) {
                                    RecyclerView.this.removeDetachedView(zVar.f1016a, false);
                                    zVar.k();
                                } else if (zVar.l()) {
                                    zVar.m();
                                }
                                b(zVar);
                            }
                            zVar = null;
                        } else {
                            z2 = true;
                        }
                    }
                    if (zVar == null) {
                        int b = RecyclerView.this.y.b(i);
                        if (b < 0 || b >= RecyclerView.this.F.a()) {
                            throw new IndexOutOfBoundsException("Inconsistency detected. Invalid item position " + i + "(offset:" + b + ").state:" + RecyclerView.this.ad.h() + RecyclerView.this.a());
                        }
                        int b2 = RecyclerView.this.F.b(b);
                        if (RecyclerView.this.F.c() && (zVar = a(RecyclerView.this.F.c(b), b2, z)) != null) {
                            zVar.c = b;
                            z2 = true;
                        }
                        if (zVar == null && this.j != null && (a3 = this.j.a(this, i, b2)) != null) {
                            zVar = RecyclerView.this.b(a3);
                            if (zVar == null) {
                                throw new IllegalArgumentException("getViewForPositionAndType returned a view which does not have a ViewHolder" + RecyclerView.this.a());
                            }
                            if (zVar.c()) {
                                throw new IllegalArgumentException("getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view." + RecyclerView.this.a());
                            }
                        }
                        if (zVar == null && (zVar = g().b(b2)) != null) {
                            zVar.y();
                            if (RecyclerView.d) {
                                f(zVar);
                            }
                        }
                        if (zVar == null) {
                            long nanoTime = RecyclerView.this.getNanoTime();
                            if (j != RecyclerView.W && !this.e.a(b2, nanoTime, j)) {
                                return null;
                            }
                            z b3 = RecyclerView.this.F.b(RecyclerView.this, b2);
                            if (RecyclerView.g && (m = RecyclerView.m(b3.f1016a)) != null) {
                                b3.b = new WeakReference<>(m);
                            }
                            this.e.a(b2, RecyclerView.this.getNanoTime() - nanoTime);
                            zVar2 = b3;
                            z3 = z2;
                            if (z3 && !RecyclerView.this.ad.b() && zVar2.a(8192)) {
                                zVar2.a(0, 8192);
                                if (RecyclerView.this.ad.m) {
                                    RecyclerView.this.a(zVar2, RecyclerView.this.S.a(RecyclerView.this.ad, zVar2, f.e(zVar2) | 4096, zVar2.x()));
                                }
                            }
                            if (!RecyclerView.this.ad.b() && zVar2.r()) {
                                zVar2.g = i;
                            } else if (zVar2.r() || zVar2.q() || zVar2.p()) {
                                a2 = a(zVar2, RecyclerView.this.y.b(i), i, j);
                                layoutParams = zVar2.f1016a.getLayoutParams();
                                if (layoutParams != null) {
                                    jVar = (j) RecyclerView.this.generateDefaultLayoutParams();
                                    zVar2.f1016a.setLayoutParams(jVar);
                                } else if (!RecyclerView.this.checkLayoutParams(layoutParams)) {
                                    jVar = (j) RecyclerView.this.generateLayoutParams(layoutParams);
                                    zVar2.f1016a.setLayoutParams(jVar);
                                } else {
                                    jVar = (j) layoutParams;
                                }
                                jVar.d = zVar2;
                                jVar.g = !z3 && a2;
                                return zVar2;
                            }
                            a2 = false;
                            layoutParams = zVar2.f1016a.getLayoutParams();
                            if (layoutParams != null) {
                            }
                            jVar.d = zVar2;
                            jVar.g = !z3 && a2;
                            return zVar2;
                        }
                    }
                    zVar2 = zVar;
                    z3 = z2;
                    if (z3) {
                        zVar2.a(0, 8192);
                        if (RecyclerView.this.ad.m) {
                        }
                    }
                    if (!RecyclerView.this.ad.b()) {
                    }
                    if (zVar2.r()) {
                    }
                    a2 = a(zVar2, RecyclerView.this.y.b(i), i, j);
                    layoutParams = zVar2.f1016a.getLayoutParams();
                    if (layoutParams != null) {
                    }
                    jVar.d = zVar2;
                    jVar.g = !z3 && a2;
                    return zVar2;
                }
            } else {
                zVar = null;
            }
            z2 = false;
            if (zVar == null) {
                if (a(zVar)) {
                }
            }
            if (zVar == null) {
            }
            zVar2 = zVar;
            z3 = z2;
            if (z3) {
            }
            if (!RecyclerView.this.ad.b()) {
            }
            if (zVar2.r()) {
            }
            a2 = a(zVar2, RecyclerView.this.y.b(i), i, j);
            layoutParams = zVar2.f1016a.getLayoutParams();
            if (layoutParams != null) {
            }
            jVar.d = zVar2;
            jVar.g = !z3 && a2;
            return zVar2;
        }

        private void e(z zVar) {
            if (RecyclerView.this.r()) {
                View view = zVar.f1016a;
                if (androidx.core.n.af.i(view) == 0) {
                    androidx.core.n.af.e(view, 1);
                }
                if (RecyclerView.this.ah == null) {
                    return;
                }
                androidx.core.n.a c = RecyclerView.this.ah.c();
                if (c instanceof y.a) {
                    ((y.a) c).c(view);
                }
                androidx.core.n.af.a(view, c);
            }
        }

        private void f(z zVar) {
            if (zVar.f1016a instanceof ViewGroup) {
                a((ViewGroup) zVar.f1016a, false);
            }
        }

        private void a(ViewGroup viewGroup, boolean z) {
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (childAt instanceof ViewGroup) {
                    a((ViewGroup) childAt, true);
                }
            }
            if (z) {
                if (viewGroup.getVisibility() == 4) {
                    viewGroup.setVisibility(0);
                    viewGroup.setVisibility(4);
                } else {
                    int visibility = viewGroup.getVisibility();
                    viewGroup.setVisibility(4);
                    viewGroup.setVisibility(visibility);
                }
            }
        }

        public void a(@androidx.annotation.ah View view) {
            z e = RecyclerView.e(view);
            if (e.t()) {
                RecyclerView.this.removeDetachedView(view, false);
            }
            if (e.j()) {
                e.k();
            } else if (e.l()) {
                e.m();
            }
            b(e);
            if (RecyclerView.this.S == null || e.z()) {
                return;
            }
            RecyclerView.this.S.d(e);
        }

        void d() {
            for (int size = this.c.size() - 1; size >= 0; size--) {
                d(size);
            }
            this.c.clear();
            if (RecyclerView.g) {
                RecyclerView.this.ac.a();
            }
        }

        void d(int i) {
            a(this.c.get(i), true);
            this.c.remove(i);
        }

        void b(z zVar) {
            boolean z;
            if (zVar.j() || zVar.f1016a.getParent() != null) {
                StringBuilder sb = new StringBuilder();
                sb.append("Scrapped or attached views may not be recycled. isScrap:");
                sb.append(zVar.j());
                sb.append(" isAttached:");
                sb.append(zVar.f1016a.getParent() != null);
                sb.append(RecyclerView.this.a());
                throw new IllegalArgumentException(sb.toString());
            }
            if (zVar.t()) {
                throw new IllegalArgumentException("Tmp detached view should be removed from RecyclerView before it can be recycled: " + zVar + RecyclerView.this.a());
            }
            if (zVar.c()) {
                throw new IllegalArgumentException("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle." + RecyclerView.this.a());
            }
            boolean B = zVar.B();
            if ((RecyclerView.this.F != null && B && RecyclerView.this.F.b((a) zVar)) || zVar.z()) {
                if (this.d <= 0 || zVar.a(526)) {
                    z = false;
                } else {
                    int size = this.c.size();
                    if (size >= this.d && size > 0) {
                        d(0);
                        size--;
                    }
                    if (RecyclerView.g && size > 0 && !RecyclerView.this.ac.a(zVar.c)) {
                        int i = size - 1;
                        while (i >= 0) {
                            if (!RecyclerView.this.ac.a(this.c.get(i).c)) {
                                break;
                            } else {
                                i--;
                            }
                        }
                        size = i + 1;
                    }
                    this.c.add(size, zVar);
                    z = true;
                }
                if (!z) {
                    a(zVar, true);
                    r1 = true;
                }
            } else {
                z = false;
            }
            RecyclerView.this.A.g(zVar);
            if (z || r1 || !B) {
                return;
            }
            zVar.D = null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a(@androidx.annotation.ah z zVar, boolean z) {
            RecyclerView.c(zVar);
            View view = zVar.f1016a;
            if (RecyclerView.this.ah != null) {
                androidx.core.n.a c = RecyclerView.this.ah.c();
                androidx.core.n.af.a(view, c instanceof y.a ? ((y.a) c).d(view) : null);
            }
            if (z) {
                d(zVar);
            }
            zVar.D = null;
            g().a(zVar);
        }

        void b(View view) {
            z e = RecyclerView.e(view);
            e.A = null;
            e.B = false;
            e.m();
            b(e);
        }

        void c(View view) {
            z e = RecyclerView.e(view);
            if (e.a(12) || !e.C() || RecyclerView.this.b(e)) {
                if (e.p() && !e.s() && !RecyclerView.this.F.c()) {
                    throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool." + RecyclerView.this.a());
                }
                e.a(this, false);
                this.f1009a.add(e);
                return;
            }
            if (this.b == null) {
                this.b = new ArrayList<>();
            }
            e.a(this, true);
            this.b.add(e);
        }

        void c(z zVar) {
            if (zVar.B) {
                this.b.remove(zVar);
            } else {
                this.f1009a.remove(zVar);
            }
            zVar.A = null;
            zVar.B = false;
            zVar.m();
        }

        int e() {
            return this.f1009a.size();
        }

        View e(int i) {
            return this.f1009a.get(i).f1016a;
        }

        void f() {
            this.f1009a.clear();
            if (this.b != null) {
                this.b.clear();
            }
        }

        z f(int i) {
            int size;
            int b;
            if (this.b == null || (size = this.b.size()) == 0) {
                return null;
            }
            for (int i2 = 0; i2 < size; i2++) {
                z zVar = this.b.get(i2);
                if (!zVar.l() && zVar.e() == i) {
                    zVar.b(32);
                    return zVar;
                }
            }
            if (RecyclerView.this.F.c() && (b = RecyclerView.this.y.b(i)) > 0 && b < RecyclerView.this.F.a()) {
                long c = RecyclerView.this.F.c(b);
                for (int i3 = 0; i3 < size; i3++) {
                    z zVar2 = this.b.get(i3);
                    if (!zVar2.l() && zVar2.h() == c) {
                        zVar2.b(32);
                        return zVar2;
                    }
                }
            }
            return null;
        }

        z b(int i, boolean z) {
            View c;
            int size = this.f1009a.size();
            for (int i2 = 0; i2 < size; i2++) {
                z zVar = this.f1009a.get(i2);
                if (!zVar.l() && zVar.e() == i && !zVar.p() && (RecyclerView.this.ad.j || !zVar.s())) {
                    zVar.b(32);
                    return zVar;
                }
            }
            if (!z && (c = RecyclerView.this.z.c(i)) != null) {
                z e = RecyclerView.e(c);
                RecyclerView.this.z.e(c);
                int b = RecyclerView.this.z.b(c);
                if (b == -1) {
                    throw new IllegalStateException("layout index should not be -1 after unhiding a view:" + e + RecyclerView.this.a());
                }
                RecyclerView.this.z.e(b);
                c(c);
                e.b(8224);
                return e;
            }
            int size2 = this.c.size();
            for (int i3 = 0; i3 < size2; i3++) {
                z zVar2 = this.c.get(i3);
                if (!zVar2.p() && zVar2.e() == i && !zVar2.u()) {
                    if (!z) {
                        this.c.remove(i3);
                    }
                    return zVar2;
                }
            }
            return null;
        }

        z a(long j, int i, boolean z) {
            for (int size = this.f1009a.size() - 1; size >= 0; size--) {
                z zVar = this.f1009a.get(size);
                if (zVar.h() == j && !zVar.l()) {
                    if (i == zVar.i()) {
                        zVar.b(32);
                        if (zVar.s() && !RecyclerView.this.ad.b()) {
                            zVar.a(2, 14);
                        }
                        return zVar;
                    }
                    if (!z) {
                        this.f1009a.remove(size);
                        RecyclerView.this.removeDetachedView(zVar.f1016a, false);
                        b(zVar.f1016a);
                    }
                }
            }
            int size2 = this.c.size();
            while (true) {
                size2--;
                if (size2 < 0) {
                    return null;
                }
                z zVar2 = this.c.get(size2);
                if (zVar2.h() == j && !zVar2.u()) {
                    if (i == zVar2.i()) {
                        if (!z) {
                            this.c.remove(size2);
                        }
                        return zVar2;
                    }
                    if (!z) {
                        d(size2);
                        return null;
                    }
                }
            }
        }

        void d(@androidx.annotation.ah z zVar) {
            if (RecyclerView.this.H != null) {
                RecyclerView.this.H.a(zVar);
            }
            if (RecyclerView.this.F != null) {
                RecyclerView.this.F.a((a) zVar);
            }
            if (RecyclerView.this.ad != null) {
                RecyclerView.this.A.g(zVar);
            }
        }

        void a(a aVar, a aVar2, boolean z) {
            a();
            g().a(aVar, aVar2, z);
        }

        void a(int i, int i2) {
            int i3;
            int i4;
            int i5;
            if (i < i2) {
                i3 = i2;
                i4 = -1;
                i5 = i;
            } else {
                i3 = i;
                i4 = 1;
                i5 = i2;
            }
            int size = this.c.size();
            for (int i6 = 0; i6 < size; i6++) {
                z zVar = this.c.get(i6);
                if (zVar != null && zVar.c >= i5 && zVar.c <= i3) {
                    if (zVar.c == i) {
                        zVar.a(i2 - i, false);
                    } else {
                        zVar.a(i4, false);
                    }
                }
            }
        }

        void b(int i, int i2) {
            int size = this.c.size();
            for (int i3 = 0; i3 < size; i3++) {
                z zVar = this.c.get(i3);
                if (zVar != null && zVar.c >= i) {
                    zVar.a(i2, true);
                }
            }
        }

        void a(int i, int i2, boolean z) {
            int i3 = i + i2;
            for (int size = this.c.size() - 1; size >= 0; size--) {
                z zVar = this.c.get(size);
                if (zVar != null) {
                    if (zVar.c >= i3) {
                        zVar.a(-i2, z);
                    } else if (zVar.c >= i) {
                        zVar.b(8);
                        d(size);
                    }
                }
            }
        }

        void a(x xVar) {
            this.j = xVar;
        }

        void a(p pVar) {
            if (this.e != null) {
                this.e.d();
            }
            this.e = pVar;
            if (this.e == null || RecyclerView.this.getAdapter() == null) {
                return;
            }
            this.e.c();
        }

        p g() {
            if (this.e == null) {
                this.e = new p();
            }
            return this.e;
        }

        void c(int i, int i2) {
            int i3;
            int i4 = i2 + i;
            for (int size = this.c.size() - 1; size >= 0; size--) {
                z zVar = this.c.get(size);
                if (zVar != null && (i3 = zVar.c) >= i && i3 < i4) {
                    zVar.b(2);
                    d(size);
                }
            }
        }

        void h() {
            int size = this.c.size();
            for (int i = 0; i < size; i++) {
                z zVar = this.c.get(i);
                if (zVar != null) {
                    zVar.b(6);
                    zVar.a((Object) null);
                }
            }
            if (RecyclerView.this.F == null || !RecyclerView.this.F.c()) {
                d();
            }
        }

        void i() {
            int size = this.c.size();
            for (int i = 0; i < size; i++) {
                this.c.get(i).a();
            }
            int size2 = this.f1009a.size();
            for (int i2 = 0; i2 < size2; i2++) {
                this.f1009a.get(i2).a();
            }
            if (this.b != null) {
                int size3 = this.b.size();
                for (int i3 = 0; i3 < size3; i3++) {
                    this.b.get(i3).a();
                }
            }
        }

        void j() {
            int size = this.c.size();
            for (int i = 0; i < size; i++) {
                j jVar = (j) this.c.get(i).f1016a.getLayoutParams();
                if (jVar != null) {
                    jVar.f = true;
                }
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class a<VH extends z> {

        /* renamed from: a, reason: collision with root package name */
        private final b f998a = new b();
        private boolean b = false;

        public abstract int a();

        @androidx.annotation.ah
        public abstract VH a(@androidx.annotation.ah ViewGroup viewGroup, int i);

        public void a(@androidx.annotation.ah VH vh) {
        }

        public abstract void a(@androidx.annotation.ah VH vh, int i);

        public void a(@androidx.annotation.ah RecyclerView recyclerView) {
        }

        public int b(int i) {
            return 0;
        }

        public void b(@androidx.annotation.ah RecyclerView recyclerView) {
        }

        public boolean b(@androidx.annotation.ah VH vh) {
            return false;
        }

        public long c(int i) {
            return -1L;
        }

        public void c(@androidx.annotation.ah VH vh) {
        }

        public void d(@androidx.annotation.ah VH vh) {
        }

        public void a(@androidx.annotation.ah VH vh, int i, @androidx.annotation.ah List<Object> list) {
            a((a<VH>) vh, i);
        }

        @androidx.annotation.ah
        public final VH b(@androidx.annotation.ah ViewGroup viewGroup, int i) {
            try {
                androidx.core.i.o.a(RecyclerView.w);
                VH a2 = a(viewGroup, i);
                if (a2.f1016a.getParent() != null) {
                    throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
                }
                a2.f = i;
                return a2;
            } finally {
                androidx.core.i.o.b();
            }
        }

        public final void b(@androidx.annotation.ah VH vh, int i) {
            vh.c = i;
            if (c()) {
                vh.e = c(i);
            }
            vh.a(1, 519);
            androidx.core.i.o.a(RecyclerView.t);
            a((a<VH>) vh, i, vh.x());
            vh.w();
            ViewGroup.LayoutParams layoutParams = vh.f1016a.getLayoutParams();
            if (layoutParams instanceof j) {
                ((j) layoutParams).f = true;
            }
            androidx.core.i.o.b();
        }

        public void a(boolean z) {
            if (d()) {
                throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
            }
            this.b = z;
        }

        public final boolean c() {
            return this.b;
        }

        public final boolean d() {
            return this.f998a.a();
        }

        public void a(@androidx.annotation.ah c cVar) {
            this.f998a.registerObserver(cVar);
        }

        public void b(@androidx.annotation.ah c cVar) {
            this.f998a.unregisterObserver(cVar);
        }

        public final void e() {
            this.f998a.b();
        }

        public final void d(int i) {
            this.f998a.a(i, 1);
        }

        public final void a(int i, @ai Object obj) {
            this.f998a.a(i, 1, obj);
        }

        public final void a(int i, int i2) {
            this.f998a.a(i, i2);
        }

        public final void a(int i, int i2, @ai Object obj) {
            this.f998a.a(i, i2, obj);
        }

        public final void e(int i) {
            this.f998a.b(i, 1);
        }

        public final void b(int i, int i2) {
            this.f998a.d(i, i2);
        }

        public final void c(int i, int i2) {
            this.f998a.b(i, i2);
        }

        public final void f(int i) {
            this.f998a.c(i, 1);
        }

        public final void d(int i, int i2) {
            this.f998a.c(i, i2);
        }
    }

    void n(View view) {
        z e2 = e(view);
        k(view);
        if (this.F != null && e2 != null) {
            this.F.d((a) e2);
        }
        if (this.aB != null) {
            for (int size = this.aB.size() - 1; size >= 0; size--) {
                this.aB.get(size).b(view);
            }
        }
    }

    void o(View view) {
        z e2 = e(view);
        j(view);
        if (this.F != null && e2 != null) {
            this.F.c((a) e2);
        }
        if (this.aB != null) {
            for (int size = this.aB.size() - 1; size >= 0; size--) {
                this.aB.get(size).a(view);
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class i {
        int C;
        boolean D;
        private int e;
        private int f;
        private int g;
        private int h;
        androidx.recyclerview.widget.g u;
        RecyclerView v;

        @ai
        v y;

        /* renamed from: a, reason: collision with root package name */
        private final ag.b f1003a = new ag.b() { // from class: androidx.recyclerview.widget.RecyclerView.i.1
            @Override // androidx.recyclerview.widget.ag.b
            public View a(int i) {
                return i.this.j(i);
            }

            @Override // androidx.recyclerview.widget.ag.b
            public int a() {
                return i.this.M();
            }

            @Override // androidx.recyclerview.widget.ag.b
            public int b() {
                return i.this.K() - i.this.O();
            }

            @Override // androidx.recyclerview.widget.ag.b
            public int a(View view) {
                return i.this.o(view) - ((j) view.getLayoutParams()).leftMargin;
            }

            @Override // androidx.recyclerview.widget.ag.b
            public int b(View view) {
                return i.this.q(view) + ((j) view.getLayoutParams()).rightMargin;
            }
        };
        private final ag.b b = new ag.b() { // from class: androidx.recyclerview.widget.RecyclerView.i.2
            @Override // androidx.recyclerview.widget.ag.b
            public View a(int i) {
                return i.this.j(i);
            }

            @Override // androidx.recyclerview.widget.ag.b
            public int a() {
                return i.this.N();
            }

            @Override // androidx.recyclerview.widget.ag.b
            public int b() {
                return i.this.L() - i.this.P();
            }

            @Override // androidx.recyclerview.widget.ag.b
            public int a(View view) {
                return i.this.p(view) - ((j) view.getLayoutParams()).topMargin;
            }

            @Override // androidx.recyclerview.widget.ag.b
            public int b(View view) {
                return i.this.r(view) + ((j) view.getLayoutParams()).bottomMargin;
            }
        };
        ag w = new ag(this.f1003a);
        ag x = new ag(this.b);
        boolean z = false;
        boolean A = false;
        boolean B = false;
        private boolean c = true;
        private boolean d = true;

        /* loaded from: /home/user/work/dex/classes.dex */
        public interface a {
            void b(int i, int i2);
        }

        /* loaded from: /home/user/work/dex/classes.dex */
        public static class b {

            /* renamed from: a, reason: collision with root package name */
            public int f1006a;
            public int b;
            public boolean c;
            public boolean d;
        }

        public int G() {
            return -1;
        }

        public int a(int i, q qVar, w wVar) {
            return 0;
        }

        @ai
        public View a(@androidx.annotation.ah View view, int i, @androidx.annotation.ah q qVar, @androidx.annotation.ah w wVar) {
            return null;
        }

        public abstract j a();

        public void a(int i, int i2, w wVar, a aVar) {
        }

        public void a(int i, a aVar) {
        }

        public void a(Parcelable parcelable) {
        }

        public void a(@ai a aVar, @ai a aVar2) {
        }

        public void a(w wVar) {
        }

        public void a(@androidx.annotation.ah RecyclerView recyclerView) {
        }

        public void a(@androidx.annotation.ah RecyclerView recyclerView, int i, int i2) {
        }

        public void a(@androidx.annotation.ah RecyclerView recyclerView, int i, int i2, int i3) {
        }

        public boolean a(j jVar) {
            return jVar != null;
        }

        public boolean a(@androidx.annotation.ah q qVar, @androidx.annotation.ah w wVar, @androidx.annotation.ah View view, int i, @ai Bundle bundle) {
            return false;
        }

        public boolean a(@androidx.annotation.ah RecyclerView recyclerView, @androidx.annotation.ah ArrayList<View> arrayList, int i, int i2) {
            return false;
        }

        public int b(int i, q qVar, w wVar) {
            return 0;
        }

        public int b(@androidx.annotation.ah w wVar) {
            return 0;
        }

        public void b(@androidx.annotation.ah RecyclerView recyclerView, int i, int i2) {
        }

        public int c(@androidx.annotation.ah w wVar) {
            return 0;
        }

        public void c(@androidx.annotation.ah RecyclerView recyclerView, int i, int i2) {
        }

        public int d(@androidx.annotation.ah q qVar, @androidx.annotation.ah w wVar) {
            return 0;
        }

        public int d(@androidx.annotation.ah w wVar) {
            return 0;
        }

        @ai
        public View d(@androidx.annotation.ah View view, int i) {
            return null;
        }

        @androidx.annotation.i
        public void d(RecyclerView recyclerView) {
        }

        public boolean d() {
            return false;
        }

        public int e(@androidx.annotation.ah w wVar) {
            return 0;
        }

        public void e(int i) {
        }

        @Deprecated
        public void e(RecyclerView recyclerView) {
        }

        public boolean e(@androidx.annotation.ah q qVar, @androidx.annotation.ah w wVar) {
            return false;
        }

        public int g(@androidx.annotation.ah w wVar) {
            return 0;
        }

        public int h(@androidx.annotation.ah w wVar) {
            return 0;
        }

        @ai
        public Parcelable h() {
            return null;
        }

        public boolean i() {
            return false;
        }

        public boolean j() {
            return false;
        }

        public void m(int i) {
        }

        boolean t() {
            return false;
        }

        void b(RecyclerView recyclerView) {
            if (recyclerView == null) {
                this.v = null;
                this.u = null;
                this.g = 0;
                this.h = 0;
            } else {
                this.v = recyclerView;
                this.u = recyclerView.z;
                this.g = recyclerView.getWidth();
                this.h = recyclerView.getHeight();
            }
            this.e = androidx.d.c.b.a.b.b;
            this.f = androidx.d.c.b.a.b.b;
        }

        void d(int i, int i2) {
            this.g = View.MeasureSpec.getSize(i);
            this.e = View.MeasureSpec.getMode(i);
            if (this.e == 0 && !RecyclerView.e) {
                this.g = 0;
            }
            this.h = View.MeasureSpec.getSize(i2);
            this.f = View.MeasureSpec.getMode(i2);
            if (this.f != 0 || RecyclerView.e) {
                return;
            }
            this.h = 0;
        }

        void e(int i, int i2) {
            int H = H();
            if (H == 0) {
                this.v.f(i, i2);
                return;
            }
            int i3 = ActivityChooserView.a.f166a;
            int i4 = Integer.MIN_VALUE;
            int i5 = Integer.MIN_VALUE;
            int i6 = Integer.MAX_VALUE;
            for (int i7 = 0; i7 < H; i7++) {
                View j = j(i7);
                Rect rect = this.v.D;
                a(j, rect);
                if (rect.left < i3) {
                    i3 = rect.left;
                }
                if (rect.right > i4) {
                    i4 = rect.right;
                }
                if (rect.top < i6) {
                    i6 = rect.top;
                }
                if (rect.bottom > i5) {
                    i5 = rect.bottom;
                }
            }
            this.v.D.set(i3, i6, i4, i5);
            a(this.v.D, i, i2);
        }

        public void a(Rect rect, int i, int i2) {
            g(a(i, rect.width() + M() + O(), X()), a(i2, rect.height() + N() + P(), Y()));
        }

        public void z() {
            if (this.v != null) {
                this.v.requestLayout();
            }
        }

        public void b(String str) {
            if (this.v != null) {
                this.v.a(str);
            }
        }

        public static int a(int i, int i2, int i3) {
            int mode = View.MeasureSpec.getMode(i);
            int size = View.MeasureSpec.getSize(i);
            if (mode != Integer.MIN_VALUE) {
                return mode != 1073741824 ? Math.max(i2, i3) : size;
            }
            return Math.min(size, Math.max(i2, i3));
        }

        public void a(String str) {
            if (this.v != null) {
                this.v.b(str);
            }
        }

        @Deprecated
        public void f(boolean z) {
            this.B = z;
        }

        public boolean f() {
            return this.B;
        }

        public final void g(boolean z) {
            if (z != this.d) {
                this.d = z;
                this.C = 0;
                if (this.v != null) {
                    this.v.x.b();
                }
            }
        }

        public final boolean A() {
            return this.d;
        }

        void c(RecyclerView recyclerView) {
            this.A = true;
            d(recyclerView);
        }

        void b(RecyclerView recyclerView, q qVar) {
            this.A = false;
            a(recyclerView, qVar);
        }

        public boolean B() {
            return this.A;
        }

        public void a(Runnable runnable) {
            if (this.v != null) {
                androidx.core.n.af.a(this.v, runnable);
            }
        }

        public boolean b(Runnable runnable) {
            if (this.v != null) {
                return this.v.removeCallbacks(runnable);
            }
            return false;
        }

        @androidx.annotation.i
        public void a(RecyclerView recyclerView, q qVar) {
            e(recyclerView);
        }

        public boolean C() {
            return this.v != null && this.v.B;
        }

        public void c(q qVar, w wVar) {
            Log.e(RecyclerView.f992a, "You must override onLayoutChildren(Recycler recycler, State state) ");
        }

        public j a(ViewGroup.LayoutParams layoutParams) {
            if (layoutParams instanceof j) {
                return new j((j) layoutParams);
            }
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                return new j((ViewGroup.MarginLayoutParams) layoutParams);
            }
            return new j(layoutParams);
        }

        public j a(Context context, AttributeSet attributeSet) {
            return new j(context, attributeSet);
        }

        public void a(RecyclerView recyclerView, w wVar, int i) {
            Log.e(RecyclerView.f992a, "You must override smoothScrollToPosition to support smooth scrolling");
        }

        public void a(v vVar) {
            if (this.y != null && vVar != this.y && this.y.h()) {
                this.y.f();
            }
            this.y = vVar;
            this.y.a(this.v, this);
        }

        public boolean D() {
            return this.y != null && this.y.h();
        }

        public int E() {
            return androidx.core.n.af.p(this.v);
        }

        public void a(View view) {
            if (this.v.S != null) {
                this.v.S.d(RecyclerView.e(view));
            }
        }

        public void b(View view) {
            a(view, -1);
        }

        public void a(View view, int i) {
            a(view, i, true);
        }

        public void c(View view) {
            b(view, -1);
        }

        public void b(View view, int i) {
            a(view, i, false);
        }

        private void a(View view, int i, boolean z) {
            z e = RecyclerView.e(view);
            if (z || e.s()) {
                this.v.A.e(e);
            } else {
                this.v.A.f(e);
            }
            j jVar = (j) view.getLayoutParams();
            if (e.l() || e.j()) {
                if (e.j()) {
                    e.k();
                } else {
                    e.m();
                }
                this.u.a(view, i, view.getLayoutParams(), false);
            } else if (view.getParent() == this.v) {
                int b2 = this.u.b(view);
                if (i == -1) {
                    i = this.u.b();
                }
                if (b2 == -1) {
                    throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + this.v.indexOfChild(view) + this.v.a());
                }
                if (b2 != i) {
                    this.v.G.f(b2, i);
                }
            } else {
                this.u.a(view, i, false);
                jVar.f = true;
                if (this.y != null && this.y.h()) {
                    this.y.b(view);
                }
            }
            if (jVar.g) {
                e.f1016a.invalidate();
                jVar.g = false;
            }
        }

        public void d(View view) {
            this.u.a(view);
        }

        public void h(int i) {
            if (j(i) != null) {
                this.u.a(i);
            }
        }

        public void F() {
            for (int H = H() - 1; H >= 0; H--) {
                this.u.a(H);
            }
        }

        public int e(@androidx.annotation.ah View view) {
            return ((j) view.getLayoutParams()).h();
        }

        public int f(@androidx.annotation.ah View view) {
            return RecyclerView.e(view).i();
        }

        @ai
        public View g(@androidx.annotation.ah View view) {
            View c;
            if (this.v == null || (c = this.v.c(view)) == null || this.u.c(c)) {
                return null;
            }
            return c;
        }

        @ai
        public View c(int i) {
            int H = H();
            for (int i2 = 0; i2 < H; i2++) {
                View j = j(i2);
                z e = RecyclerView.e(j);
                if (e != null && e.e() == i && !e.c() && (this.v.ad.b() || !e.s())) {
                    return j;
                }
            }
            return null;
        }

        public void h(@androidx.annotation.ah View view) {
            int b2 = this.u.b(view);
            if (b2 >= 0) {
                a(b2, view);
            }
        }

        public void i(int i) {
            a(i, j(i));
        }

        private void a(int i, @androidx.annotation.ah View view) {
            this.u.e(i);
        }

        public void a(@androidx.annotation.ah View view, int i, j jVar) {
            z e = RecyclerView.e(view);
            if (e.s()) {
                this.v.A.e(e);
            } else {
                this.v.A.f(e);
            }
            this.u.a(view, i, jVar, e.s());
        }

        public void c(@androidx.annotation.ah View view, int i) {
            a(view, i, (j) view.getLayoutParams());
        }

        public void i(@androidx.annotation.ah View view) {
            c(view, -1);
        }

        public void j(@androidx.annotation.ah View view) {
            this.v.removeDetachedView(view, false);
        }

        public void f(int i, int i2) {
            View j = j(i);
            if (j == null) {
                throw new IllegalArgumentException("Cannot move a child from non-existing index:" + i + this.v.toString());
            }
            i(i);
            c(j, i2);
        }

        public void a(@androidx.annotation.ah View view, @androidx.annotation.ah q qVar) {
            a(qVar, this.u.b(view), view);
        }

        public void a(int i, @androidx.annotation.ah q qVar) {
            a(qVar, i, j(i));
        }

        public void b(@androidx.annotation.ah View view, @androidx.annotation.ah q qVar) {
            d(view);
            qVar.a(view);
        }

        public void b(int i, @androidx.annotation.ah q qVar) {
            View j = j(i);
            h(i);
            qVar.a(j);
        }

        public int H() {
            if (this.u != null) {
                return this.u.b();
            }
            return 0;
        }

        @ai
        public View j(int i) {
            if (this.u != null) {
                return this.u.b(i);
            }
            return null;
        }

        public int I() {
            return this.e;
        }

        public int J() {
            return this.f;
        }

        @ak
        public int K() {
            return this.g;
        }

        @ak
        public int L() {
            return this.h;
        }

        @ak
        public int M() {
            if (this.v != null) {
                return this.v.getPaddingLeft();
            }
            return 0;
        }

        @ak
        public int N() {
            if (this.v != null) {
                return this.v.getPaddingTop();
            }
            return 0;
        }

        @ak
        public int O() {
            if (this.v != null) {
                return this.v.getPaddingRight();
            }
            return 0;
        }

        @ak
        public int P() {
            if (this.v != null) {
                return this.v.getPaddingBottom();
            }
            return 0;
        }

        @ak
        public int Q() {
            if (this.v != null) {
                return androidx.core.n.af.w(this.v);
            }
            return 0;
        }

        @ak
        public int R() {
            if (this.v != null) {
                return androidx.core.n.af.x(this.v);
            }
            return 0;
        }

        public boolean S() {
            return this.v != null && this.v.isFocused();
        }

        public boolean T() {
            return this.v != null && this.v.hasFocus();
        }

        @ai
        public View U() {
            View focusedChild;
            if (this.v == null || (focusedChild = this.v.getFocusedChild()) == null || this.u.c(focusedChild)) {
                return null;
            }
            return focusedChild;
        }

        public int V() {
            a adapter = this.v != null ? this.v.getAdapter() : null;
            if (adapter != null) {
                return adapter.a();
            }
            return 0;
        }

        public void k(@ak int i) {
            if (this.v != null) {
                this.v.l(i);
            }
        }

        public void l(@ak int i) {
            if (this.v != null) {
                this.v.k(i);
            }
        }

        public void k(@androidx.annotation.ah View view) {
            if (view.getParent() != this.v || this.v.indexOfChild(view) == -1) {
                throw new IllegalArgumentException("View should be fully attached to be ignored" + this.v.a());
            }
            z e = RecyclerView.e(view);
            e.b(128);
            this.v.A.g(e);
        }

        public void l(@androidx.annotation.ah View view) {
            z e = RecyclerView.e(view);
            e.o();
            e.y();
            e.b(4);
        }

        public void a(@androidx.annotation.ah q qVar) {
            for (int H = H() - 1; H >= 0; H--) {
                a(qVar, H, j(H));
            }
        }

        private void a(q qVar, int i, View view) {
            z e = RecyclerView.e(view);
            if (e.c()) {
                return;
            }
            if (e.p() && !e.s() && !this.v.F.c()) {
                h(i);
                qVar.b(e);
            } else {
                i(i);
                qVar.c(view);
                this.v.A.h(e);
            }
        }

        void b(q qVar) {
            int e = qVar.e();
            for (int i = e - 1; i >= 0; i--) {
                View e2 = qVar.e(i);
                z e3 = RecyclerView.e(e2);
                if (!e3.c()) {
                    e3.a(false);
                    if (e3.t()) {
                        this.v.removeDetachedView(e2, false);
                    }
                    if (this.v.S != null) {
                        this.v.S.d(e3);
                    }
                    e3.a(true);
                    qVar.b(e2);
                }
            }
            qVar.f();
            if (e > 0) {
                this.v.invalidate();
            }
        }

        public void a(@androidx.annotation.ah View view, int i, int i2) {
            j jVar = (j) view.getLayoutParams();
            Rect l = this.v.l(view);
            int i3 = i + l.left + l.right;
            int i4 = i2 + l.top + l.bottom;
            int a2 = a(K(), I(), M() + O() + i3, jVar.width, i());
            int a3 = a(L(), J(), N() + P() + i4, jVar.height, j());
            if (b(view, a2, a3, jVar)) {
                view.measure(a2, a3);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean a(View view, int i, int i2, j jVar) {
            return (this.c && b(view.getMeasuredWidth(), i, jVar.width) && b(view.getMeasuredHeight(), i2, jVar.height)) ? false : true;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean b(View view, int i, int i2, j jVar) {
            return (!view.isLayoutRequested() && this.c && b(view.getWidth(), i, jVar.width) && b(view.getHeight(), i2, jVar.height)) ? false : true;
        }

        public boolean W() {
            return this.c;
        }

        public void h(boolean z) {
            this.c = z;
        }

        private static boolean b(int i, int i2, int i3) {
            int mode = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i2);
            if (i3 > 0 && i != i3) {
                return false;
            }
            if (mode == Integer.MIN_VALUE) {
                return size >= i;
            }
            if (mode != 0) {
                return mode == 1073741824 && size == i;
            }
            return true;
        }

        public void b(@androidx.annotation.ah View view, int i, int i2) {
            j jVar = (j) view.getLayoutParams();
            Rect l = this.v.l(view);
            int i3 = i + l.left + l.right;
            int i4 = i2 + l.top + l.bottom;
            int a2 = a(K(), I(), M() + O() + jVar.leftMargin + jVar.rightMargin + i3, jVar.width, i());
            int a3 = a(L(), J(), N() + P() + jVar.topMargin + jVar.bottomMargin + i4, jVar.height, j());
            if (b(view, a2, a3, jVar)) {
                view.measure(a2, a3);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:3:0x000a, code lost:
        
            if (r3 >= 0) goto L5;
         */
        @Deprecated
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public static int a(int i, int i2, int i3, boolean z) {
            int i4 = i - i2;
            int i5 = 0;
            int max = Math.max(0, i4);
            if (!z) {
                if (i3 < 0) {
                    if (i3 != -1) {
                        if (i3 == -2) {
                            i5 = Integer.MIN_VALUE;
                        }
                        max = 0;
                    }
                    i5 = 1073741824;
                }
                max = i3;
                i5 = 1073741824;
            }
            return View.MeasureSpec.makeMeasureSpec(max, i5);
        }

        public static int a(int i, int i2, int i3, int i4, boolean z) {
            int i5;
            int i6 = i - i3;
            int i7 = 0;
            int max = Math.max(0, i6);
            if (z) {
                if (i4 < 0) {
                    if (i4 == -1) {
                        if (i2 == Integer.MIN_VALUE || (i2 != 0 && i2 == 1073741824)) {
                            i5 = max;
                        } else {
                            i2 = 0;
                            i5 = 0;
                        }
                        i7 = i2;
                        max = i5;
                    }
                    max = 0;
                }
                max = i4;
                i7 = 1073741824;
            } else {
                if (i4 < 0) {
                    if (i4 == -1) {
                        i7 = i2;
                    } else {
                        if (i4 == -2) {
                            if (i2 == Integer.MIN_VALUE || i2 == 1073741824) {
                                i7 = Integer.MIN_VALUE;
                            }
                        }
                        max = 0;
                    }
                }
                max = i4;
                i7 = 1073741824;
            }
            return View.MeasureSpec.makeMeasureSpec(max, i7);
        }

        public int m(@androidx.annotation.ah View view) {
            Rect rect = ((j) view.getLayoutParams()).e;
            return view.getMeasuredWidth() + rect.left + rect.right;
        }

        public int n(@androidx.annotation.ah View view) {
            Rect rect = ((j) view.getLayoutParams()).e;
            return view.getMeasuredHeight() + rect.top + rect.bottom;
        }

        public void a(@androidx.annotation.ah View view, int i, int i2, int i3, int i4) {
            Rect rect = ((j) view.getLayoutParams()).e;
            view.layout(i + rect.left, i2 + rect.top, i3 - rect.right, i4 - rect.bottom);
        }

        public void b(@androidx.annotation.ah View view, int i, int i2, int i3, int i4) {
            j jVar = (j) view.getLayoutParams();
            Rect rect = jVar.e;
            view.layout(i + rect.left + jVar.leftMargin, i2 + rect.top + jVar.topMargin, (i3 - rect.right) - jVar.rightMargin, (i4 - rect.bottom) - jVar.bottomMargin);
        }

        public void a(@androidx.annotation.ah View view, boolean z, @androidx.annotation.ah Rect rect) {
            Matrix matrix;
            if (z) {
                Rect rect2 = ((j) view.getLayoutParams()).e;
                rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
            } else {
                rect.set(0, 0, view.getWidth(), view.getHeight());
            }
            if (this.v != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
                RectF rectF = this.v.E;
                rectF.set(rect);
                matrix.mapRect(rectF);
                rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
            }
            rect.offset(view.getLeft(), view.getTop());
        }

        public void a(@androidx.annotation.ah View view, @androidx.annotation.ah Rect rect) {
            RecyclerView.b(view, rect);
        }

        public int o(@androidx.annotation.ah View view) {
            return view.getLeft() - u(view);
        }

        public int p(@androidx.annotation.ah View view) {
            return view.getTop() - s(view);
        }

        public int q(@androidx.annotation.ah View view) {
            return view.getRight() + v(view);
        }

        public int r(@androidx.annotation.ah View view) {
            return view.getBottom() + t(view);
        }

        public void b(@androidx.annotation.ah View view, @androidx.annotation.ah Rect rect) {
            if (this.v == null) {
                rect.set(0, 0, 0, 0);
            } else {
                rect.set(this.v.l(view));
            }
        }

        public int s(@androidx.annotation.ah View view) {
            return ((j) view.getLayoutParams()).e.top;
        }

        public int t(@androidx.annotation.ah View view) {
            return ((j) view.getLayoutParams()).e.bottom;
        }

        public int u(@androidx.annotation.ah View view) {
            return ((j) view.getLayoutParams()).e.left;
        }

        public int v(@androidx.annotation.ah View view) {
            return ((j) view.getLayoutParams()).e.right;
        }

        private int[] c(View view, Rect rect) {
            int[] iArr = new int[2];
            int M = M();
            int N = N();
            int K = K() - O();
            int L = L() - P();
            int left = (view.getLeft() + rect.left) - view.getScrollX();
            int top = (view.getTop() + rect.top) - view.getScrollY();
            int width = rect.width() + left;
            int height = rect.height() + top;
            int i = left - M;
            int min = Math.min(0, i);
            int i2 = top - N;
            int min2 = Math.min(0, i2);
            int i3 = width - K;
            int max = Math.max(0, i3);
            int max2 = Math.max(0, height - L);
            if (E() != 1) {
                if (min == 0) {
                    min = Math.min(i, max);
                }
                max = min;
            } else if (max == 0) {
                max = Math.max(min, i3);
            }
            if (min2 == 0) {
                min2 = Math.min(i2, max2);
            }
            iArr[0] = max;
            iArr[1] = min2;
            return iArr;
        }

        public boolean a(@androidx.annotation.ah RecyclerView recyclerView, @androidx.annotation.ah View view, @androidx.annotation.ah Rect rect, boolean z) {
            return a(recyclerView, view, rect, z, false);
        }

        public boolean a(@androidx.annotation.ah RecyclerView recyclerView, @androidx.annotation.ah View view, @androidx.annotation.ah Rect rect, boolean z, boolean z2) {
            int[] c = c(view, rect);
            int i = c[0];
            int i2 = c[1];
            if ((z2 && !d(recyclerView, i, i2)) || (i == 0 && i2 == 0)) {
                return false;
            }
            if (z) {
                recyclerView.scrollBy(i, i2);
            } else {
                recyclerView.b(i, i2);
            }
            return true;
        }

        public boolean a(@androidx.annotation.ah View view, boolean z, boolean z2) {
            boolean z3 = this.w.a(view, 24579) && this.x.a(view, 24579);
            return z ? z3 : !z3;
        }

        private boolean d(RecyclerView recyclerView, int i, int i2) {
            View focusedChild = recyclerView.getFocusedChild();
            if (focusedChild == null) {
                return false;
            }
            int M = M();
            int N = N();
            int K = K() - O();
            int L = L() - P();
            Rect rect = this.v.D;
            a(focusedChild, rect);
            return rect.left - i < K && rect.right - i > M && rect.top - i2 < L && rect.bottom - i2 > N;
        }

        @Deprecated
        public boolean a(@androidx.annotation.ah RecyclerView recyclerView, @androidx.annotation.ah View view, @ai View view2) {
            return D() || recyclerView.s();
        }

        public boolean a(@androidx.annotation.ah RecyclerView recyclerView, @androidx.annotation.ah w wVar, @androidx.annotation.ah View view, @ai View view2) {
            return a(recyclerView, view, view2);
        }

        public void a(@androidx.annotation.ah RecyclerView recyclerView, int i, int i2, @ai Object obj) {
            c(recyclerView, i, i2);
        }

        public void a(@androidx.annotation.ah q qVar, @androidx.annotation.ah w wVar, int i, int i2) {
            this.v.f(i, i2);
        }

        public void g(int i, int i2) {
            this.v.setMeasuredDimension(i, i2);
        }

        @ak
        public int X() {
            return androidx.core.n.af.D(this.v);
        }

        @ak
        public int Y() {
            return androidx.core.n.af.E(this.v);
        }

        void Z() {
            if (this.y != null) {
                this.y.f();
            }
        }

        void b(v vVar) {
            if (this.y == vVar) {
                this.y = null;
            }
        }

        public void c(@androidx.annotation.ah q qVar) {
            for (int H = H() - 1; H >= 0; H--) {
                if (!RecyclerView.e(j(H)).c()) {
                    b(H, qVar);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a(androidx.core.n.a.d dVar) {
            a(this.v.x, this.v.ad, dVar);
        }

        public void a(@androidx.annotation.ah q qVar, @androidx.annotation.ah w wVar, @androidx.annotation.ah androidx.core.n.a.d dVar) {
            if (this.v.canScrollVertically(-1) || this.v.canScrollHorizontally(-1)) {
                dVar.d(8192);
                dVar.l(true);
            }
            if (this.v.canScrollVertically(1) || this.v.canScrollHorizontally(1)) {
                dVar.d(4096);
                dVar.l(true);
            }
            dVar.b(d.b.a(a(qVar, wVar), b(qVar, wVar), e(qVar, wVar), d(qVar, wVar)));
        }

        public void a(@androidx.annotation.ah AccessibilityEvent accessibilityEvent) {
            a(this.v.x, this.v.ad, accessibilityEvent);
        }

        public void a(@androidx.annotation.ah q qVar, @androidx.annotation.ah w wVar, @androidx.annotation.ah AccessibilityEvent accessibilityEvent) {
            if (this.v == null || accessibilityEvent == null) {
                return;
            }
            boolean z = true;
            if (!this.v.canScrollVertically(1) && !this.v.canScrollVertically(-1) && !this.v.canScrollHorizontally(-1) && !this.v.canScrollHorizontally(1)) {
                z = false;
            }
            accessibilityEvent.setScrollable(z);
            if (this.v.F != null) {
                accessibilityEvent.setItemCount(this.v.F.a());
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a(View view, androidx.core.n.a.d dVar) {
            z e = RecyclerView.e(view);
            if (e == null || e.s() || this.u.c(e.f1016a)) {
                return;
            }
            a(this.v.x, this.v.ad, view, dVar);
        }

        public void a(@androidx.annotation.ah q qVar, @androidx.annotation.ah w wVar, @androidx.annotation.ah View view, @androidx.annotation.ah androidx.core.n.a.d dVar) {
            dVar.c(d.c.a(j() ? e(view) : 0, 1, i() ? e(view) : 0, 1, false, false));
        }

        public void aa() {
            this.z = true;
        }

        public int a(@androidx.annotation.ah q qVar, @androidx.annotation.ah w wVar) {
            if (this.v == null || this.v.F == null || !j()) {
                return 1;
            }
            return this.v.F.a();
        }

        public int b(@androidx.annotation.ah q qVar, @androidx.annotation.ah w wVar) {
            if (this.v == null || this.v.F == null || !i()) {
                return 1;
            }
            return this.v.F.a();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean a(int i, @ai Bundle bundle) {
            return a(this.v.x, this.v.ad, i, bundle);
        }

        public boolean a(@androidx.annotation.ah q qVar, @androidx.annotation.ah w wVar, int i, @ai Bundle bundle) {
            int L;
            int K;
            int i2;
            int i3;
            if (this.v == null) {
                return false;
            }
            if (i == 4096) {
                L = this.v.canScrollVertically(1) ? (L() - N()) - P() : 0;
                if (this.v.canScrollHorizontally(1)) {
                    K = (K() - M()) - O();
                    i2 = L;
                    i3 = K;
                }
                i2 = L;
                i3 = 0;
            } else if (i != 8192) {
                i3 = 0;
                i2 = 0;
            } else {
                L = this.v.canScrollVertically(-1) ? -((L() - N()) - P()) : 0;
                if (this.v.canScrollHorizontally(-1)) {
                    K = -((K() - M()) - O());
                    i2 = L;
                    i3 = K;
                }
                i2 = L;
                i3 = 0;
            }
            if (i2 == 0 && i3 == 0) {
                return false;
            }
            this.v.a(i3, i2, (Interpolator) null, Integer.MIN_VALUE, true);
            return true;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean a(@androidx.annotation.ah View view, int i, @ai Bundle bundle) {
            return a(this.v.x, this.v.ad, view, i, bundle);
        }

        public static b a(@androidx.annotation.ah Context context, @ai AttributeSet attributeSet, int i, int i2) {
            b bVar = new b();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.j.RecyclerView, i, i2);
            bVar.f1006a = obtainStyledAttributes.getInt(a.j.RecyclerView_android_orientation, 1);
            bVar.b = obtainStyledAttributes.getInt(a.j.RecyclerView_spanCount, 1);
            bVar.c = obtainStyledAttributes.getBoolean(a.j.RecyclerView_reverseLayout, false);
            bVar.d = obtainStyledAttributes.getBoolean(a.j.RecyclerView_stackFromEnd, false);
            obtainStyledAttributes.recycle();
            return bVar;
        }

        void f(RecyclerView recyclerView) {
            d(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), androidx.d.c.b.a.b.b), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), androidx.d.c.b.a.b.b));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean ab() {
            int H = H();
            for (int i = 0; i < H; i++) {
                ViewGroup.LayoutParams layoutParams = j(i).getLayoutParams();
                if (layoutParams.width < 0 && layoutParams.height < 0) {
                    return true;
                }
            }
            return false;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class h {
        @Deprecated
        public void a(@androidx.annotation.ah Canvas canvas, @androidx.annotation.ah RecyclerView recyclerView) {
        }

        @Deprecated
        public void b(@androidx.annotation.ah Canvas canvas, @androidx.annotation.ah RecyclerView recyclerView) {
        }

        public void a(@androidx.annotation.ah Canvas canvas, @androidx.annotation.ah RecyclerView recyclerView, @androidx.annotation.ah w wVar) {
            a(canvas, recyclerView);
        }

        public void b(@androidx.annotation.ah Canvas canvas, @androidx.annotation.ah RecyclerView recyclerView, @androidx.annotation.ah w wVar) {
            b(canvas, recyclerView);
        }

        @Deprecated
        public void a(@androidx.annotation.ah Rect rect, int i, @androidx.annotation.ah RecyclerView recyclerView) {
            rect.set(0, 0, 0, 0);
        }

        public void a(@androidx.annotation.ah Rect rect, @androidx.annotation.ah View view, @androidx.annotation.ah RecyclerView recyclerView, @androidx.annotation.ah w wVar) {
            a(rect, ((j) view.getLayoutParams()).h(), recyclerView);
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class z {
        private static final List<Object> E = Collections.emptyList();
        static final int j = 1;
        static final int k = 2;
        static final int l = 4;
        static final int m = 8;
        static final int n = 16;
        static final int o = 32;
        static final int p = 128;
        static final int q = 256;
        static final int r = 512;
        static final int s = 1024;
        static final int t = 2048;
        static final int u = 4096;
        static final int v = -1;
        static final int w = 8192;
        RecyclerView D;

        /* renamed from: a, reason: collision with root package name */
        @androidx.annotation.ah
        public final View f1016a;
        WeakReference<RecyclerView> b;
        int x;
        int c = -1;
        int d = -1;
        long e = -1;
        int f = -1;
        int g = -1;
        z h = null;
        z i = null;
        List<Object> y = null;
        List<Object> z = null;
        private int F = 0;
        q A = null;
        boolean B = false;
        private int G = 0;

        @ax
        int C = -1;

        public z(@androidx.annotation.ah View view) {
            if (view == null) {
                throw new IllegalArgumentException("itemView may not be null");
            }
            this.f1016a = view;
        }

        void a(int i, int i2, boolean z) {
            b(8);
            a(i2, z);
            this.c = i;
        }

        void a(int i, boolean z) {
            if (this.d == -1) {
                this.d = this.c;
            }
            if (this.g == -1) {
                this.g = this.c;
            }
            if (z) {
                this.g += i;
            }
            this.c += i;
            if (this.f1016a.getLayoutParams() != null) {
                ((j) this.f1016a.getLayoutParams()).f = true;
            }
        }

        void a() {
            this.d = -1;
            this.g = -1;
        }

        void b() {
            if (this.d == -1) {
                this.d = this.c;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean c() {
            return (this.x & 128) != 0;
        }

        @Deprecated
        public final int d() {
            return this.g == -1 ? this.c : this.g;
        }

        public final int e() {
            return this.g == -1 ? this.c : this.g;
        }

        public final int f() {
            if (this.D == null) {
                return -1;
            }
            return this.D.d(this);
        }

        public final int g() {
            return this.d;
        }

        public final long h() {
            return this.e;
        }

        public final int i() {
            return this.f;
        }

        boolean j() {
            return this.A != null;
        }

        void k() {
            this.A.c(this);
        }

        boolean l() {
            return (this.x & 32) != 0;
        }

        void m() {
            this.x &= -33;
        }

        void n() {
            this.x &= -257;
        }

        void o() {
            this.x &= -129;
        }

        void a(q qVar, boolean z) {
            this.A = qVar;
            this.B = z;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean p() {
            return (this.x & 4) != 0;
        }

        boolean q() {
            return (this.x & 2) != 0;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean r() {
            return (this.x & 1) != 0;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean s() {
            return (this.x & 8) != 0;
        }

        boolean a(int i) {
            return (this.x & i) != 0;
        }

        boolean t() {
            return (this.x & 256) != 0;
        }

        boolean u() {
            return (this.f1016a.getParent() == null || this.f1016a.getParent() == this.D) ? false : true;
        }

        boolean v() {
            return (this.x & 512) != 0 || p();
        }

        void a(int i, int i2) {
            this.x = (i & i2) | (this.x & (~i2));
        }

        void b(int i) {
            this.x = i | this.x;
        }

        void a(Object obj) {
            if (obj == null) {
                b(1024);
            } else if ((1024 & this.x) == 0) {
                D();
                this.y.add(obj);
            }
        }

        private void D() {
            if (this.y == null) {
                this.y = new ArrayList();
                this.z = Collections.unmodifiableList(this.y);
            }
        }

        void w() {
            if (this.y != null) {
                this.y.clear();
            }
            this.x &= -1025;
        }

        List<Object> x() {
            if ((this.x & 1024) == 0) {
                if (this.y == null || this.y.size() == 0) {
                    return E;
                }
                return this.z;
            }
            return E;
        }

        void y() {
            this.x = 0;
            this.c = -1;
            this.d = -1;
            this.e = -1L;
            this.g = -1;
            this.F = 0;
            this.h = null;
            this.i = null;
            w();
            this.G = 0;
            this.C = -1;
            RecyclerView.c(this);
        }

        void a(RecyclerView recyclerView) {
            if (this.C != -1) {
                this.G = this.C;
            } else {
                this.G = androidx.core.n.af.i(this.f1016a);
            }
            recyclerView.a(this, 4);
        }

        void b(RecyclerView recyclerView) {
            recyclerView.a(this, this.G);
            this.G = 0;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder((getClass().isAnonymousClass() ? "ViewHolder" : getClass().getSimpleName()) + "{" + Integer.toHexString(hashCode()) + " position=" + this.c + " id=" + this.e + ", oldPos=" + this.d + ", pLpos:" + this.g);
            if (j()) {
                sb.append(" scrap ");
                sb.append(this.B ? "[changeScrap]" : "[attachedScrap]");
            }
            if (p()) {
                sb.append(" invalid");
            }
            if (!r()) {
                sb.append(" unbound");
            }
            if (q()) {
                sb.append(" update");
            }
            if (s()) {
                sb.append(" removed");
            }
            if (c()) {
                sb.append(" ignored");
            }
            if (t()) {
                sb.append(" tmpDetached");
            }
            if (!z()) {
                sb.append(" not recyclable(" + this.F + ")");
            }
            if (v()) {
                sb.append(" undefined adapter position");
            }
            if (this.f1016a.getParent() == null) {
                sb.append(" no parent");
            }
            sb.append("}");
            return sb.toString();
        }

        public final void a(boolean z) {
            this.F = z ? this.F - 1 : this.F + 1;
            if (this.F < 0) {
                this.F = 0;
                Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
                return;
            }
            if (!z && this.F == 1) {
                this.x |= 16;
            } else if (z && this.F == 0) {
                this.x &= -17;
            }
        }

        public final boolean z() {
            return (this.x & 16) == 0 && !androidx.core.n.af.g(this.f1016a);
        }

        boolean A() {
            return (this.x & 16) != 0;
        }

        boolean B() {
            return (this.x & 16) == 0 && androidx.core.n.af.g(this.f1016a);
        }

        boolean C() {
            return (this.x & 2) != 0;
        }
    }

    @ax
    boolean a(z zVar, int i2) {
        if (s()) {
            zVar.C = i2;
            this.aj.add(zVar);
            return false;
        }
        androidx.core.n.af.e(zVar.f1016a, i2);
        return true;
    }

    void D() {
        int i2;
        for (int size = this.aj.size() - 1; size >= 0; size--) {
            z zVar = this.aj.get(size);
            if (zVar.f1016a.getParent() == this && !zVar.c() && (i2 = zVar.C) != -1) {
                androidx.core.n.af.e(zVar.f1016a, i2);
                zVar.C = -1;
            }
        }
        this.aj.clear();
    }

    int d(z zVar) {
        if (zVar.a(524) || !zVar.r()) {
            return -1;
        }
        return this.y.c(zVar.c);
    }

    @ax
    void a(StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2) {
        if (stateListDrawable == null || drawable == null || stateListDrawable2 == null || drawable2 == null) {
            throw new IllegalArgumentException("Trying to set fast scroller without both required drawables." + a());
        }
        Resources resources = getContext().getResources();
        new androidx.recyclerview.widget.k(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(a.c.fastscroll_default_thickness), resources.getDimensionPixelSize(a.c.fastscroll_minimum_range), resources.getDimensionPixelOffset(a.c.fastscroll_margin));
    }

    @Override // android.view.View, androidx.core.n.q
    public void setNestedScrollingEnabled(boolean z2) {
        getScrollingChildHelper().a(z2);
    }

    @Override // android.view.View, androidx.core.n.q
    public boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().a();
    }

    @Override // android.view.View, androidx.core.n.q
    public boolean startNestedScroll(int i2) {
        return getScrollingChildHelper().b(i2);
    }

    @Override // androidx.core.n.r
    public boolean a(int i2, int i3) {
        return getScrollingChildHelper().a(i2, i3);
    }

    @Override // android.view.View, androidx.core.n.q
    public void stopNestedScroll() {
        getScrollingChildHelper().c();
    }

    @Override // androidx.core.n.r
    public void a(int i2) {
        getScrollingChildHelper().c(i2);
    }

    @Override // android.view.View, androidx.core.n.q
    public boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().b();
    }

    @Override // androidx.core.n.r
    public boolean b(int i2) {
        return getScrollingChildHelper().a(i2);
    }

    @Override // android.view.View, androidx.core.n.q
    public boolean dispatchNestedScroll(int i2, int i3, int i4, int i5, int[] iArr) {
        return getScrollingChildHelper().a(i2, i3, i4, i5, iArr);
    }

    @Override // androidx.core.n.r
    public boolean a(int i2, int i3, int i4, int i5, int[] iArr, int i6) {
        return getScrollingChildHelper().a(i2, i3, i4, i5, iArr, i6);
    }

    @Override // androidx.core.n.s
    public final void a(int i2, int i3, int i4, int i5, int[] iArr, int i6, @androidx.annotation.ah int[] iArr2) {
        getScrollingChildHelper().a(i2, i3, i4, i5, iArr, i6, iArr2);
    }

    @Override // android.view.View, androidx.core.n.q
    public boolean dispatchNestedPreScroll(int i2, int i3, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().a(i2, i3, iArr, iArr2);
    }

    @Override // androidx.core.n.r
    public boolean a(int i2, int i3, int[] iArr, int[] iArr2, int i4) {
        return getScrollingChildHelper().a(i2, i3, iArr, iArr2, i4);
    }

    @Override // android.view.View, androidx.core.n.q
    public boolean dispatchNestedFling(float f2, float f3, boolean z2) {
        return getScrollingChildHelper().a(f2, f3, z2);
    }

    @Override // android.view.View, androidx.core.n.q
    public boolean dispatchNestedPreFling(float f2, float f3) {
        return getScrollingChildHelper().a(f2, f3);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class j extends ViewGroup.MarginLayoutParams {
        z d;
        final Rect e;
        boolean f;
        boolean g;

        public j(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.e = new Rect();
            this.f = true;
            this.g = false;
        }

        public j(int i, int i2) {
            super(i, i2);
            this.e = new Rect();
            this.f = true;
            this.g = false;
        }

        public j(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.e = new Rect();
            this.f = true;
            this.g = false;
        }

        public j(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.e = new Rect();
            this.f = true;
            this.g = false;
        }

        public j(j jVar) {
            super((ViewGroup.LayoutParams) jVar);
            this.e = new Rect();
            this.f = true;
            this.g = false;
        }

        public boolean c() {
            return this.d.q();
        }

        public boolean d() {
            return this.d.p();
        }

        public boolean e() {
            return this.d.s();
        }

        public boolean f() {
            return this.d.C();
        }

        @Deprecated
        public int g() {
            return this.d.d();
        }

        public int h() {
            return this.d.e();
        }

        public int i() {
            return this.d.f();
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class c {
        public void a() {
        }

        public void a(int i, int i2) {
        }

        public void a(int i, int i2, int i3) {
        }

        public void b(int i, int i2) {
        }

        public void c(int i, int i2) {
        }

        public void a(int i, int i2, @ai Object obj) {
            a(i, i2);
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class v {
        private RecyclerView b;
        private i c;
        private boolean d;
        private boolean e;
        private View f;
        private boolean h;

        /* renamed from: a, reason: collision with root package name */
        private int f1012a = -1;
        private final a g = new a(0, 0);

        /* loaded from: /home/user/work/dex/classes.dex */
        public interface b {
            @ai
            PointF d(int i);
        }

        protected abstract void a();

        protected abstract void a(@ak int i, @ak int i2, @androidx.annotation.ah w wVar, @androidx.annotation.ah a aVar);

        protected abstract void a(@androidx.annotation.ah View view, @androidx.annotation.ah w wVar, @androidx.annotation.ah a aVar);

        protected abstract void b();

        void a(RecyclerView recyclerView, i iVar) {
            recyclerView.aa.b();
            if (this.h) {
                Log.w(RecyclerView.f992a, "An instance of " + getClass().getSimpleName() + " was started more than once. Each instance of" + getClass().getSimpleName() + " is intended to only be used once. You should create a new instance for each use.");
            }
            this.b = recyclerView;
            this.c = iVar;
            if (this.f1012a == -1) {
                throw new IllegalArgumentException("Invalid target position");
            }
            this.b.ad.d = this.f1012a;
            this.e = true;
            this.d = true;
            this.f = e(i());
            a();
            this.b.aa.a();
            this.h = true;
        }

        public void c(int i) {
            this.f1012a = i;
        }

        @ai
        public PointF d(int i) {
            Object e = e();
            if (e instanceof b) {
                return ((b) e).d(i);
            }
            Log.w(RecyclerView.f992a, "You should override computeScrollVectorForPosition when the LayoutManager does not implement " + b.class.getCanonicalName());
            return null;
        }

        @ai
        public i e() {
            return this.c;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final void f() {
            if (this.e) {
                this.e = false;
                b();
                this.b.ad.d = -1;
                this.f = null;
                this.f1012a = -1;
                this.d = false;
                this.c.b(this);
                this.c = null;
                this.b = null;
            }
        }

        public boolean g() {
            return this.d;
        }

        public boolean h() {
            return this.e;
        }

        public int i() {
            return this.f1012a;
        }

        void a(int i, int i2) {
            PointF d;
            RecyclerView recyclerView = this.b;
            if (this.f1012a == -1 || recyclerView == null) {
                f();
            }
            if (this.d && this.f == null && this.c != null && (d = d(this.f1012a)) != null && (d.x != 0.0f || d.y != 0.0f)) {
                recyclerView.a((int) Math.signum(d.x), (int) Math.signum(d.y), (int[]) null);
            }
            this.d = false;
            if (this.f != null) {
                if (a(this.f) == this.f1012a) {
                    a(this.f, recyclerView.ad, this.g);
                    this.g.a(recyclerView);
                    f();
                } else {
                    Log.e(RecyclerView.f992a, "Passed over target position while smooth scrolling.");
                    this.f = null;
                }
            }
            if (this.e) {
                a(i, i2, recyclerView.ad, this.g);
                boolean a2 = this.g.a();
                this.g.a(recyclerView);
                if (a2 && this.e) {
                    this.d = true;
                    recyclerView.aa.a();
                }
            }
        }

        public int a(View view) {
            return this.b.h(view);
        }

        public int j() {
            return this.b.G.H();
        }

        public View e(int i) {
            return this.b.G.c(i);
        }

        @Deprecated
        public void f(int i) {
            this.b.e(i);
        }

        protected void b(View view) {
            if (a(view) == i()) {
                this.f = view;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void a(@androidx.annotation.ah PointF pointF) {
            float sqrt = (float) Math.sqrt((pointF.x * pointF.x) + (pointF.y * pointF.y));
            pointF.x /= sqrt;
            pointF.y /= sqrt;
        }

        /* loaded from: /home/user/work/dex/classes.dex */
        public static class a {

            /* renamed from: a, reason: collision with root package name */
            public static final int f1013a = Integer.MIN_VALUE;
            private int b;
            private int c;
            private int d;
            private int e;
            private Interpolator f;
            private boolean g;
            private int h;

            public a(@ak int i, @ak int i2) {
                this(i, i2, Integer.MIN_VALUE, null);
            }

            public a(@ak int i, @ak int i2, int i3) {
                this(i, i2, i3, null);
            }

            public a(@ak int i, @ak int i2, int i3, @ai Interpolator interpolator) {
                this.e = -1;
                this.g = false;
                this.h = 0;
                this.b = i;
                this.c = i2;
                this.d = i3;
                this.f = interpolator;
            }

            public void a(int i) {
                this.e = i;
            }

            boolean a() {
                return this.e >= 0;
            }

            void a(RecyclerView recyclerView) {
                if (this.e >= 0) {
                    int i = this.e;
                    this.e = -1;
                    recyclerView.f(i);
                    this.g = false;
                    return;
                }
                if (this.g) {
                    f();
                    recyclerView.aa.a(this.b, this.c, this.d, this.f);
                    this.h++;
                    if (this.h > 10) {
                        Log.e(RecyclerView.f992a, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
                    }
                    this.g = false;
                    return;
                }
                this.h = 0;
            }

            private void f() {
                if (this.f != null && this.d < 1) {
                    throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
                }
                if (this.d < 1) {
                    throw new IllegalStateException("Scroll duration must be a positive number");
                }
            }

            @ak
            public int b() {
                return this.b;
            }

            public void b(@ak int i) {
                this.g = true;
                this.b = i;
            }

            @ak
            public int c() {
                return this.c;
            }

            public void c(@ak int i) {
                this.g = true;
                this.c = i;
            }

            public int d() {
                return this.d;
            }

            public void d(int i) {
                this.g = true;
                this.d = i;
            }

            @ai
            public Interpolator e() {
                return this.f;
            }

            public void a(@ai Interpolator interpolator) {
                this.g = true;
                this.f = interpolator;
            }

            public void a(@ak int i, @ak int i2, int i3, @ai Interpolator interpolator) {
                this.b = i;
                this.c = i2;
                this.d = i3;
                this.f = interpolator;
                this.g = true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class b extends Observable<c> {
        b() {
        }

        public boolean a() {
            return !this.mObservers.isEmpty();
        }

        public void b() {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((c) this.mObservers.get(size)).a();
            }
        }

        public void a(int i, int i2) {
            a(i, i2, null);
        }

        public void a(int i, int i2, @ai Object obj) {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((c) this.mObservers.get(size)).a(i, i2, obj);
            }
        }

        public void b(int i, int i2) {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((c) this.mObservers.get(size)).b(i, i2);
            }
        }

        public void c(int i, int i2) {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((c) this.mObservers.get(size)).c(i, i2);
            }
        }

        public void d(int i, int i2) {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((c) this.mObservers.get(size)).a(i, i2, 1);
            }
        }
    }

    @ap(a = {ap.a.LIBRARY})
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class t extends androidx.f.a.a {
        public static final Parcelable.Creator<t> CREATOR = new Parcelable.ClassLoaderCreator<t>() { // from class: androidx.recyclerview.widget.RecyclerView.t.1
            @Override // android.os.Parcelable.ClassLoaderCreator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public t createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new t(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public t createFromParcel(Parcel parcel) {
                return new t(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public t[] newArray(int i) {
                return new t[i];
            }
        };

        /* renamed from: a, reason: collision with root package name */
        Parcelable f1011a;

        t(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f1011a = parcel.readParcelable(classLoader == null ? i.class.getClassLoader() : classLoader);
        }

        t(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.f.a.a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeParcelable(this.f1011a, 0);
        }

        void a(t tVar) {
            this.f1011a = tVar.f1011a;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class w {

        /* renamed from: a, reason: collision with root package name */
        static final int f1014a = 1;
        static final int b = 2;
        static final int c = 4;
        int d = -1;
        int e = 0;
        int f = 0;
        int g = 1;
        int h = 0;
        boolean i = false;
        boolean j = false;
        boolean k = false;
        boolean l = false;
        boolean m = false;
        boolean n = false;
        int o;
        long p;
        int q;
        int r;
        int s;
        private SparseArray<Object> t;

        void a(int i) {
            if ((this.g & i) != 0) {
                return;
            }
            throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(i) + " but it is " + Integer.toBinaryString(this.g));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a(a aVar) {
            this.g = 1;
            this.h = aVar.a();
            this.j = false;
            this.k = false;
            this.l = false;
        }

        public boolean a() {
            return this.l;
        }

        public boolean b() {
            return this.j;
        }

        public boolean c() {
            return this.n;
        }

        public boolean d() {
            return this.m;
        }

        public void b(int i) {
            if (this.t == null) {
                return;
            }
            this.t.remove(i);
        }

        public <T> T c(int i) {
            if (this.t == null) {
                return null;
            }
            return (T) this.t.get(i);
        }

        public void a(int i, Object obj) {
            if (this.t == null) {
                this.t = new SparseArray<>();
            }
            this.t.put(i, obj);
        }

        public int e() {
            return this.d;
        }

        public boolean f() {
            return this.d != -1;
        }

        public boolean g() {
            return this.i;
        }

        public int h() {
            return this.j ? this.e - this.f : this.h;
        }

        public int i() {
            return this.r;
        }

        public int j() {
            return this.s;
        }

        public String toString() {
            return "State{mTargetPosition=" + this.d + ", mData=" + this.t + ", mItemCount=" + this.h + ", mIsMeasuring=" + this.l + ", mPreviousLayoutItemCount=" + this.e + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.f + ", mStructureChanged=" + this.i + ", mInPreLayout=" + this.j + ", mRunSimpleAnimations=" + this.m + ", mRunPredictiveAnimations=" + this.n + '}';
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private class g implements f.c {
        g() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.f.c
        public void a(z zVar) {
            zVar.a(true);
            if (zVar.h != null && zVar.i == null) {
                zVar.h = null;
            }
            zVar.i = null;
            if (zVar.A() || RecyclerView.this.a(zVar.f1016a) || !zVar.t()) {
                return;
            }
            RecyclerView.this.removeDetachedView(zVar.f1016a, false);
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class f {
        public static final int h = 2;
        public static final int i = 8;
        public static final int j = 4;
        public static final int k = 2048;
        public static final int l = 4096;

        /* renamed from: a, reason: collision with root package name */
        private c f1000a = null;
        private ArrayList<b> b = new ArrayList<>();
        private long c = 120;
        private long d = 120;
        private long e = 250;
        private long f = 250;

        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: /home/user/work/dex/classes.dex */
        public @interface a {
        }

        /* loaded from: /home/user/work/dex/classes.dex */
        public interface b {
            void a();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: /home/user/work/dex/classes.dex */
        public interface c {
            void a(@androidx.annotation.ah z zVar);
        }

        public abstract void a();

        public abstract boolean a(@androidx.annotation.ah z zVar, @androidx.annotation.ah d dVar, @ai d dVar2);

        public abstract boolean a(@androidx.annotation.ah z zVar, @androidx.annotation.ah z zVar2, @androidx.annotation.ah d dVar, @androidx.annotation.ah d dVar2);

        public abstract boolean b();

        public abstract boolean b(@androidx.annotation.ah z zVar, @ai d dVar, @androidx.annotation.ah d dVar2);

        public abstract boolean c(@androidx.annotation.ah z zVar, @androidx.annotation.ah d dVar, @androidx.annotation.ah d dVar2);

        public abstract void d();

        public abstract void d(@androidx.annotation.ah z zVar);

        public void g(@androidx.annotation.ah z zVar) {
        }

        public void i(@androidx.annotation.ah z zVar) {
        }

        public boolean j(@androidx.annotation.ah z zVar) {
            return true;
        }

        public long e() {
            return this.e;
        }

        public void a(long j2) {
            this.e = j2;
        }

        public long f() {
            return this.c;
        }

        public void b(long j2) {
            this.c = j2;
        }

        public long g() {
            return this.d;
        }

        public void c(long j2) {
            this.d = j2;
        }

        public long h() {
            return this.f;
        }

        public void d(long j2) {
            this.f = j2;
        }

        void a(c cVar) {
            this.f1000a = cVar;
        }

        @androidx.annotation.ah
        public d a(@androidx.annotation.ah w wVar, @androidx.annotation.ah z zVar, int i2, @androidx.annotation.ah List<Object> list) {
            return j().a(zVar);
        }

        @androidx.annotation.ah
        public d a(@androidx.annotation.ah w wVar, @androidx.annotation.ah z zVar) {
            return j().a(zVar);
        }

        static int e(z zVar) {
            int i2 = zVar.x & 14;
            if (zVar.p()) {
                return 4;
            }
            if ((i2 & 4) != 0) {
                return i2;
            }
            int g = zVar.g();
            int f = zVar.f();
            return (g == -1 || f == -1 || g == f) ? i2 : i2 | 2048;
        }

        public final void f(@androidx.annotation.ah z zVar) {
            g(zVar);
            if (this.f1000a != null) {
                this.f1000a.a(zVar);
            }
        }

        public final void h(@androidx.annotation.ah z zVar) {
            i(zVar);
        }

        public final boolean a(@ai b bVar) {
            boolean b2 = b();
            if (bVar != null) {
                if (!b2) {
                    bVar.a();
                } else {
                    this.b.add(bVar);
                }
            }
            return b2;
        }

        public boolean a(@androidx.annotation.ah z zVar, @androidx.annotation.ah List<Object> list) {
            return j(zVar);
        }

        public final void i() {
            int size = this.b.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.b.get(i2).a();
            }
            this.b.clear();
        }

        @androidx.annotation.ah
        public d j() {
            return new d();
        }

        /* loaded from: /home/user/work/dex/classes.dex */
        public static class d {

            /* renamed from: a, reason: collision with root package name */
            public int f1001a;
            public int b;
            public int c;
            public int d;
            public int e;

            @androidx.annotation.ah
            public d a(@androidx.annotation.ah z zVar) {
                return a(zVar, 0);
            }

            @androidx.annotation.ah
            public d a(@androidx.annotation.ah z zVar, int i) {
                View view = zVar.f1016a;
                this.f1001a = view.getLeft();
                this.b = view.getTop();
                this.c = view.getRight();
                this.d = view.getBottom();
                return this;
            }
        }
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i2, int i3) {
        if (this.bb == null) {
            return super.getChildDrawingOrder(i2, i3);
        }
        return this.bb.a(i2, i3);
    }

    private androidx.core.n.t getScrollingChildHelper() {
        if (this.bd == null) {
            this.bd = new androidx.core.n.t(this);
        }
        return this.bd;
    }
}
