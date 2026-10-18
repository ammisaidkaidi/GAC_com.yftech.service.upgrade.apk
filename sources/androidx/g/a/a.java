package androidx.g.a;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import androidx.annotation.k;
import androidx.annotation.q;
import androidx.core.n.a.d;
import androidx.core.n.af;
import androidx.core.n.h;
import androidx.f.b.c;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class a extends ViewGroup {

    /* renamed from: a, reason: collision with root package name */
    public static final int f805a = 0;
    public static final int b = 1;
    public static final int c = 2;
    public static final int d = 0;
    public static final int e = 1;
    public static final int f = 2;
    public static final int g = 3;
    static final int[] h;
    static final boolean i;
    private static final String j = "DrawerLayout";
    private static final int[] k;
    private static final int l = 64;
    private static final int m = 10;
    private static final int n = -1728053248;
    private static final int o = 160;
    private static final int p = 400;
    private static final boolean q = false;
    private static final boolean r = true;
    private static final float s = 1.0f;
    private static final boolean t;
    private final androidx.f.b.c A;
    private final androidx.f.b.c B;
    private final g C;
    private final g D;
    private int E;
    private boolean F;
    private boolean G;
    private int H;
    private int I;
    private int J;
    private int K;
    private boolean L;
    private boolean M;

    @ai
    private c N;
    private List<c> O;
    private float P;
    private float Q;
    private Drawable R;
    private Drawable S;
    private Drawable T;
    private CharSequence U;
    private CharSequence V;
    private Object W;
    private boolean aa;
    private Drawable ab;
    private Drawable ac;
    private Drawable ad;
    private Drawable ae;
    private final ArrayList<View> af;
    private Rect ag;
    private Matrix ah;
    private final b u;
    private float v;
    private int w;
    private int x;
    private float y;
    private Paint z;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface c {
        void a(@ah View view);

        void a(@ah View view, float f);

        void b(int i);

        void b(@ah View view);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class f implements c {
        @Override // androidx.g.a.a.c
        public void a(View view) {
        }

        @Override // androidx.g.a.a.c
        public void a(View view, float f) {
        }

        @Override // androidx.g.a.a.c
        public void b(int i) {
        }

        @Override // androidx.g.a.a.c
        public void b(View view) {
        }
    }

    static {
        boolean z = r;
        k = new int[]{R.attr.colorPrimaryDark};
        h = new int[]{R.attr.layout_gravity};
        i = Build.VERSION.SDK_INT >= 19;
        if (Build.VERSION.SDK_INT < 21) {
            z = false;
        }
        t = z;
    }

    public a(@ah Context context) {
        this(context, null);
    }

    public a(@ah Context context, @ai AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public a(@ah Context context, @ai AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.u = new b();
        this.x = n;
        this.z = new Paint();
        this.G = r;
        this.H = 3;
        this.I = 3;
        this.J = 3;
        this.K = 3;
        this.ab = null;
        this.ac = null;
        this.ad = null;
        this.ae = null;
        setDescendantFocusability(262144);
        float f2 = getResources().getDisplayMetrics().density;
        this.w = (int) ((64.0f * f2) + 0.5f);
        float f3 = 400.0f * f2;
        this.C = new g(3);
        this.D = new g(5);
        this.A = androidx.f.b.c.a(this, 1.0f, this.C);
        this.A.a(1);
        this.A.a(f3);
        this.C.a(this.A);
        this.B = androidx.f.b.c.a(this, 1.0f, this.D);
        this.B.a(2);
        this.B.a(f3);
        this.D.a(this.B);
        setFocusableInTouchMode(r);
        af.e((View) this, 1);
        af.a(this, new C0060a());
        setMotionEventSplittingEnabled(false);
        if (af.U(this)) {
            if (Build.VERSION.SDK_INT >= 21) {
                setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: androidx.g.a.a.1
                    @Override // android.view.View.OnApplyWindowInsetsListener
                    public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                        ((a) view).a(windowInsets, windowInsets.getSystemWindowInsetTop() > 0 ? a.r : false);
                        return windowInsets.consumeSystemWindowInsets();
                    }
                });
                setSystemUiVisibility(1280);
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(k);
                try {
                    this.R = obtainStyledAttributes.getDrawable(0);
                } finally {
                    obtainStyledAttributes.recycle();
                }
            } else {
                this.R = null;
            }
        }
        this.v = f2 * 10.0f;
        this.af = new ArrayList<>();
    }

    public void setDrawerElevation(float f2) {
        this.v = f2;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (g(childAt)) {
                af.m(childAt, this.v);
            }
        }
    }

    public float getDrawerElevation() {
        if (t) {
            return this.v;
        }
        return 0.0f;
    }

    @ap(a = {ap.a.LIBRARY_GROUP})
    public void a(Object obj, boolean z) {
        this.W = obj;
        this.aa = z;
        setWillNotDraw((z || getBackground() != null) ? false : r);
        requestLayout();
    }

    public void a(Drawable drawable, int i2) {
        if (t) {
            return;
        }
        if ((i2 & h.b) == 8388611) {
            this.ab = drawable;
        } else if ((i2 & h.c) == 8388613) {
            this.ac = drawable;
        } else if ((i2 & 3) == 3) {
            this.ad = drawable;
        } else if ((i2 & 5) != 5) {
            return;
        } else {
            this.ae = drawable;
        }
        e();
        invalidate();
    }

    public void a(@q int i2, int i3) {
        a(androidx.core.b.c.a(getContext(), i2), i3);
    }

    public void setScrimColor(@k int i2) {
        this.x = i2;
        invalidate();
    }

    @Deprecated
    public void setDrawerListener(c cVar) {
        if (this.N != null) {
            b(this.N);
        }
        if (cVar != null) {
            a(cVar);
        }
        this.N = cVar;
    }

    public void a(@ah c cVar) {
        if (cVar == null) {
            return;
        }
        if (this.O == null) {
            this.O = new ArrayList();
        }
        this.O.add(cVar);
    }

    public void b(@ah c cVar) {
        if (cVar == null || this.O == null) {
            return;
        }
        this.O.remove(cVar);
    }

    public void setDrawerLockMode(int i2) {
        b(i2, 3);
        b(i2, 5);
    }

    public void b(int i2, int i3) {
        int a2 = h.a(i3, af.p(this));
        if (i3 == 3) {
            this.H = i2;
        } else if (i3 == 5) {
            this.I = i2;
        } else if (i3 == 8388611) {
            this.J = i2;
        } else if (i3 == 8388613) {
            this.K = i2;
        }
        if (i2 != 0) {
            (a2 == 3 ? this.A : this.B).g();
        }
        switch (i2) {
            case 1:
                View c2 = c(a2);
                if (c2 != null) {
                    i(c2);
                    return;
                }
                return;
            case 2:
                View c3 = c(a2);
                if (c3 != null) {
                    h(c3);
                    return;
                }
                return;
            default:
                return;
        }
    }

    public void a(int i2, @ah View view) {
        if (!g(view)) {
            throw new IllegalArgumentException("View " + view + " is not a drawer with appropriate layout_gravity");
        }
        b(i2, ((d) view.getLayoutParams()).f808a);
    }

    public int a(int i2) {
        int p2 = af.p(this);
        if (i2 == 3) {
            if (this.H != 3) {
                return this.H;
            }
            int i3 = p2 == 0 ? this.J : this.K;
            if (i3 != 3) {
                return i3;
            }
            return 0;
        }
        if (i2 == 5) {
            if (this.I != 3) {
                return this.I;
            }
            int i4 = p2 == 0 ? this.K : this.J;
            if (i4 != 3) {
                return i4;
            }
            return 0;
        }
        if (i2 == 8388611) {
            if (this.J != 3) {
                return this.J;
            }
            int i5 = p2 == 0 ? this.H : this.I;
            if (i5 != 3) {
                return i5;
            }
            return 0;
        }
        if (i2 != 8388613) {
            return 0;
        }
        if (this.K != 3) {
            return this.K;
        }
        int i6 = p2 == 0 ? this.I : this.H;
        if (i6 != 3) {
            return i6;
        }
        return 0;
    }

    public int a(@ah View view) {
        if (!g(view)) {
            throw new IllegalArgumentException("View " + view + " is not a drawer");
        }
        return a(((d) view.getLayoutParams()).f808a);
    }

    public void a(int i2, @ai CharSequence charSequence) {
        int a2 = h.a(i2, af.p(this));
        if (a2 == 3) {
            this.U = charSequence;
        } else if (a2 == 5) {
            this.V = charSequence;
        }
    }

    @ai
    public CharSequence b(int i2) {
        int a2 = h.a(i2, af.p(this));
        if (a2 == 3) {
            return this.U;
        }
        if (a2 == 5) {
            return this.V;
        }
        return null;
    }

    private boolean a(float f2, float f3, View view) {
        if (this.ag == null) {
            this.ag = new Rect();
        }
        view.getHitRect(this.ag);
        return this.ag.contains((int) f2, (int) f3);
    }

    private boolean a(MotionEvent motionEvent, View view) {
        if (!view.getMatrix().isIdentity()) {
            MotionEvent b2 = b(motionEvent, view);
            boolean dispatchGenericMotionEvent = view.dispatchGenericMotionEvent(b2);
            b2.recycle();
            return dispatchGenericMotionEvent;
        }
        float scrollX = getScrollX() - view.getLeft();
        float scrollY = getScrollY() - view.getTop();
        motionEvent.offsetLocation(scrollX, scrollY);
        boolean dispatchGenericMotionEvent2 = view.dispatchGenericMotionEvent(motionEvent);
        motionEvent.offsetLocation(-scrollX, -scrollY);
        return dispatchGenericMotionEvent2;
    }

    private MotionEvent b(MotionEvent motionEvent, View view) {
        float scrollX = getScrollX() - view.getLeft();
        float scrollY = getScrollY() - view.getTop();
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.offsetLocation(scrollX, scrollY);
        Matrix matrix = view.getMatrix();
        if (!matrix.isIdentity()) {
            if (this.ah == null) {
                this.ah = new Matrix();
            }
            matrix.invert(this.ah);
            obtain.transform(this.ah);
        }
        return obtain;
    }

    void a(int i2, int i3, View view) {
        int b2 = this.A.b();
        int b3 = this.B.b();
        int i4 = 2;
        if (b2 == 1 || b3 == 1) {
            i4 = 1;
        } else if (b2 != 2 && b3 != 2) {
            i4 = 0;
        }
        if (view != null && i3 == 0) {
            d dVar = (d) view.getLayoutParams();
            if (dVar.b == 0.0f) {
                b(view);
            } else if (dVar.b == 1.0f) {
                c(view);
            }
        }
        if (i4 != this.E) {
            this.E = i4;
            if (this.O != null) {
                for (int size = this.O.size() - 1; size >= 0; size--) {
                    this.O.get(size).b(i4);
                }
            }
        }
    }

    void b(View view) {
        View rootView;
        d dVar = (d) view.getLayoutParams();
        if ((dVar.d & 1) == 1) {
            dVar.d = 0;
            if (this.O != null) {
                for (int size = this.O.size() - 1; size >= 0; size--) {
                    this.O.get(size).b(view);
                }
            }
            c(view, false);
            if (!hasWindowFocus() || (rootView = getRootView()) == null) {
                return;
            }
            rootView.sendAccessibilityEvent(32);
        }
    }

    void c(View view) {
        d dVar = (d) view.getLayoutParams();
        if ((dVar.d & 1) == 0) {
            dVar.d = 1;
            if (this.O != null) {
                for (int size = this.O.size() - 1; size >= 0; size--) {
                    this.O.get(size).a(view);
                }
            }
            c(view, r);
            if (hasWindowFocus()) {
                sendAccessibilityEvent(32);
            }
        }
    }

    private void c(View view, boolean z) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if ((!z && !g(childAt)) || (z && childAt == view)) {
                af.e(childAt, 1);
            } else {
                af.e(childAt, 4);
            }
        }
    }

    void a(View view, float f2) {
        if (this.O != null) {
            for (int size = this.O.size() - 1; size >= 0; size--) {
                this.O.get(size).a(view, f2);
            }
        }
    }

    void b(View view, float f2) {
        d dVar = (d) view.getLayoutParams();
        if (f2 == dVar.b) {
            return;
        }
        dVar.b = f2;
        a(view, f2);
    }

    float d(View view) {
        return ((d) view.getLayoutParams()).b;
    }

    int e(View view) {
        return h.a(((d) view.getLayoutParams()).f808a, af.p(this));
    }

    boolean a(View view, int i2) {
        if ((e(view) & i2) == i2) {
            return r;
        }
        return false;
    }

    View a() {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if ((((d) childAt.getLayoutParams()).d & 1) == 1) {
                return childAt;
            }
        }
        return null;
    }

    void c(View view, float f2) {
        float d2 = d(view);
        float width = view.getWidth();
        int i2 = ((int) (width * f2)) - ((int) (d2 * width));
        if (!a(view, 3)) {
            i2 = -i2;
        }
        view.offsetLeftAndRight(i2);
        b(view, f2);
    }

    View c(int i2) {
        int a2 = h.a(i2, af.p(this)) & 7;
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if ((e(childAt) & 7) == a2) {
                return childAt;
            }
        }
        return null;
    }

    static String d(int i2) {
        return (i2 & 3) == 3 ? "LEFT" : (i2 & 5) == 5 ? "RIGHT" : Integer.toHexString(i2);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.G = r;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.G = r;
    }

    @Override // android.view.View
    @SuppressLint({"WrongConstant"})
    protected void onMeasure(int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i3);
        if (mode != 1073741824 || mode2 != 1073741824) {
            if (!isInEditMode()) {
                throw new IllegalArgumentException("DrawerLayout must be measured with MeasureSpec.EXACTLY.");
            }
            if (mode != Integer.MIN_VALUE && mode == 0) {
                size = 300;
            }
            if (mode2 != Integer.MIN_VALUE && mode2 == 0) {
                size2 = 300;
            }
        }
        setMeasuredDimension(size, size2);
        int i4 = 0;
        boolean z = (this.W == null || !af.U(this)) ? false : r;
        int p2 = af.p(this);
        int childCount = getChildCount();
        int i5 = 0;
        boolean z2 = false;
        boolean z3 = false;
        while (i5 < childCount) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                d dVar = (d) childAt.getLayoutParams();
                if (z) {
                    int a2 = h.a(dVar.f808a, p2);
                    if (af.U(childAt)) {
                        if (Build.VERSION.SDK_INT >= 21) {
                            WindowInsets windowInsets = (WindowInsets) this.W;
                            if (a2 == 3) {
                                windowInsets = windowInsets.replaceSystemWindowInsets(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), i4, windowInsets.getSystemWindowInsetBottom());
                            } else if (a2 == 5) {
                                windowInsets = windowInsets.replaceSystemWindowInsets(i4, windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
                            }
                            childAt.dispatchApplyWindowInsets(windowInsets);
                        }
                    } else if (Build.VERSION.SDK_INT >= 21) {
                        WindowInsets windowInsets2 = (WindowInsets) this.W;
                        if (a2 == 3) {
                            windowInsets2 = windowInsets2.replaceSystemWindowInsets(windowInsets2.getSystemWindowInsetLeft(), windowInsets2.getSystemWindowInsetTop(), i4, windowInsets2.getSystemWindowInsetBottom());
                        } else if (a2 == 5) {
                            windowInsets2 = windowInsets2.replaceSystemWindowInsets(i4, windowInsets2.getSystemWindowInsetTop(), windowInsets2.getSystemWindowInsetRight(), windowInsets2.getSystemWindowInsetBottom());
                        }
                        dVar.leftMargin = windowInsets2.getSystemWindowInsetLeft();
                        dVar.topMargin = windowInsets2.getSystemWindowInsetTop();
                        dVar.rightMargin = windowInsets2.getSystemWindowInsetRight();
                        dVar.bottomMargin = windowInsets2.getSystemWindowInsetBottom();
                    }
                }
                if (f(childAt)) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec((size - dVar.leftMargin) - dVar.rightMargin, androidx.d.c.b.a.b.b), View.MeasureSpec.makeMeasureSpec((size2 - dVar.topMargin) - dVar.bottomMargin, androidx.d.c.b.a.b.b));
                } else if (g(childAt)) {
                    if (t && af.P(childAt) != this.v) {
                        af.m(childAt, this.v);
                    }
                    int e2 = e(childAt) & 7;
                    int i6 = e2 == 3 ? 1 : i4;
                    if ((i6 != 0 && z2) || (i6 == 0 && z3)) {
                        throw new IllegalStateException("Child drawer has absolute gravity " + d(e2) + " but this " + j + " already has a drawer view along that edge");
                    }
                    if (i6 != 0) {
                        z2 = r;
                    } else {
                        z3 = r;
                    }
                    childAt.measure(getChildMeasureSpec(i2, this.w + dVar.leftMargin + dVar.rightMargin, dVar.width), getChildMeasureSpec(i3, dVar.topMargin + dVar.bottomMargin, dVar.height));
                    i5++;
                    i4 = 0;
                } else {
                    throw new IllegalStateException("Child " + childAt + " at index " + i5 + " does not have a valid layout_gravity - must be Gravity.LEFT, Gravity.RIGHT or Gravity.NO_GRAVITY");
                }
            }
            i5++;
            i4 = 0;
        }
    }

    private void e() {
        if (t) {
            return;
        }
        this.S = f();
        this.T = g();
    }

    private Drawable f() {
        int p2 = af.p(this);
        if (p2 == 0) {
            if (this.ab != null) {
                b(this.ab, p2);
                return this.ab;
            }
        } else if (this.ac != null) {
            b(this.ac, p2);
            return this.ac;
        }
        return this.ad;
    }

    private Drawable g() {
        int p2 = af.p(this);
        if (p2 == 0) {
            if (this.ac != null) {
                b(this.ac, p2);
                return this.ac;
            }
        } else if (this.ab != null) {
            b(this.ab, p2);
            return this.ab;
        }
        return this.ae;
    }

    private boolean b(Drawable drawable, int i2) {
        if (drawable == null || !androidx.core.graphics.drawable.a.b(drawable)) {
            return false;
        }
        androidx.core.graphics.drawable.a.b(drawable, i2);
        return r;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        float f2;
        int i6;
        boolean z2 = r;
        this.F = r;
        int i7 = i4 - i2;
        int childCount = getChildCount();
        int i8 = 0;
        while (i8 < childCount) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                d dVar = (d) childAt.getLayoutParams();
                if (f(childAt)) {
                    childAt.layout(dVar.leftMargin, dVar.topMargin, dVar.leftMargin + childAt.getMeasuredWidth(), dVar.topMargin + childAt.getMeasuredHeight());
                } else {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (a(childAt, 3)) {
                        float f3 = measuredWidth;
                        i6 = (-measuredWidth) + ((int) (dVar.b * f3));
                        f2 = (measuredWidth + i6) / f3;
                    } else {
                        float f4 = measuredWidth;
                        f2 = (i7 - r12) / f4;
                        i6 = i7 - ((int) (dVar.b * f4));
                    }
                    boolean z3 = f2 != dVar.b ? z2 : false;
                    int i9 = dVar.f808a & 112;
                    if (i9 == 16) {
                        int i10 = i5 - i3;
                        int i11 = (i10 - measuredHeight) / 2;
                        if (i11 < dVar.topMargin) {
                            i11 = dVar.topMargin;
                        } else if (i11 + measuredHeight > i10 - dVar.bottomMargin) {
                            i11 = (i10 - dVar.bottomMargin) - measuredHeight;
                        }
                        childAt.layout(i6, i11, measuredWidth + i6, measuredHeight + i11);
                    } else if (i9 != 80) {
                        childAt.layout(i6, dVar.topMargin, measuredWidth + i6, dVar.topMargin + measuredHeight);
                    } else {
                        int i12 = i5 - i3;
                        childAt.layout(i6, (i12 - dVar.bottomMargin) - childAt.getMeasuredHeight(), measuredWidth + i6, i12 - dVar.bottomMargin);
                    }
                    if (z3) {
                        b(childAt, f2);
                    }
                    int i13 = dVar.b > 0.0f ? 0 : 4;
                    if (childAt.getVisibility() != i13) {
                        childAt.setVisibility(i13);
                    }
                }
            }
            i8++;
            z2 = r;
        }
        this.F = false;
        this.G = false;
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.F) {
            return;
        }
        super.requestLayout();
    }

    @Override // android.view.View
    public void computeScroll() {
        int childCount = getChildCount();
        float f2 = 0.0f;
        for (int i2 = 0; i2 < childCount; i2++) {
            f2 = Math.max(f2, ((d) getChildAt(i2).getLayoutParams()).b);
        }
        this.y = f2;
        boolean a2 = this.A.a(r);
        boolean a3 = this.B.a(r);
        if (a2 || a3) {
            af.h(this);
        }
    }

    private static boolean m(View view) {
        Drawable background = view.getBackground();
        if (background == null || background.getOpacity() != -1) {
            return false;
        }
        return r;
    }

    public void setStatusBarBackground(@ai Drawable drawable) {
        this.R = drawable;
        invalidate();
    }

    @ai
    public Drawable getStatusBarBackgroundDrawable() {
        return this.R;
    }

    public void setStatusBarBackground(int i2) {
        this.R = i2 != 0 ? androidx.core.b.c.a(getContext(), i2) : null;
        invalidate();
    }

    public void setStatusBarBackgroundColor(@k int i2) {
        this.R = new ColorDrawable(i2);
        invalidate();
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i2) {
        e();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.aa || this.R == null) {
            return;
        }
        int systemWindowInsetTop = (Build.VERSION.SDK_INT < 21 || this.W == null) ? 0 : ((WindowInsets) this.W).getSystemWindowInsetTop();
        if (systemWindowInsetTop > 0) {
            this.R.setBounds(0, 0, getWidth(), systemWindowInsetTop);
            this.R.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j2) {
        int i2;
        int height = getHeight();
        boolean f2 = f(view);
        int width = getWidth();
        int save = canvas.save();
        int i3 = 0;
        if (f2) {
            int childCount = getChildCount();
            i2 = width;
            int i4 = 0;
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = getChildAt(i5);
                if (childAt != view && childAt.getVisibility() == 0 && m(childAt) && g(childAt) && childAt.getHeight() >= height) {
                    if (a(childAt, 3)) {
                        int right = childAt.getRight();
                        if (right > i4) {
                            i4 = right;
                        }
                    } else {
                        int left = childAt.getLeft();
                        if (left < i2) {
                            i2 = left;
                        }
                    }
                }
            }
            canvas.clipRect(i4, 0, i2, getHeight());
            i3 = i4;
        } else {
            i2 = width;
        }
        boolean drawChild = super.drawChild(canvas, view, j2);
        canvas.restoreToCount(save);
        if (this.y > 0.0f && f2) {
            this.z.setColor((((int) (((this.x & af.s) >>> 24) * this.y)) << 24) | (this.x & af.r));
            canvas.drawRect(i3, 0.0f, i2, getHeight(), this.z);
        } else if (this.S != null && a(view, 3)) {
            int intrinsicWidth = this.S.getIntrinsicWidth();
            int right2 = view.getRight();
            float max = Math.max(0.0f, Math.min(right2 / this.A.c(), 1.0f));
            this.S.setBounds(right2, view.getTop(), intrinsicWidth + right2, view.getBottom());
            this.S.setAlpha((int) (max * 255.0f));
            this.S.draw(canvas);
        } else if (this.T != null && a(view, 5)) {
            int intrinsicWidth2 = this.T.getIntrinsicWidth();
            int left2 = view.getLeft();
            float max2 = Math.max(0.0f, Math.min((getWidth() - left2) / this.B.c(), 1.0f));
            this.T.setBounds(left2 - intrinsicWidth2, view.getTop(), left2, view.getBottom());
            this.T.setAlpha((int) (max2 * 255.0f));
            this.T.draw(canvas);
        }
        return drawChild;
    }

    boolean f(View view) {
        if (((d) view.getLayoutParams()).f808a == 0) {
            return r;
        }
        return false;
    }

    boolean g(View view) {
        int a2 = h.a(((d) view.getLayoutParams()).f808a, af.p(view));
        if ((a2 & 3) == 0 && (a2 & 5) == 0) {
            return false;
        }
        return r;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        View e2;
        int actionMasked = motionEvent.getActionMasked();
        boolean a2 = this.A.a(motionEvent) | this.B.a(motionEvent);
        switch (actionMasked) {
            case 0:
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                this.P = x;
                this.Q = y;
                z = this.y > 0.0f && (e2 = this.A.e((int) x, (int) y)) != null && f(e2);
                this.L = false;
                this.M = false;
                break;
            case 1:
            case 3:
                a(r);
                this.L = false;
                this.M = false;
                z = false;
                break;
            case 2:
                if (this.A.d(3)) {
                    this.C.a();
                    this.D.a();
                }
                z = false;
                break;
            default:
                z = false;
                break;
        }
        if (a2 || z || h() || this.M) {
            return r;
        }
        return false;
    }

    @Override // android.view.View
    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 2) == 0 || motionEvent.getAction() == 10 || this.y <= 0.0f) {
            return super.dispatchGenericMotionEvent(motionEvent);
        }
        int childCount = getChildCount();
        if (childCount == 0) {
            return false;
        }
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        for (int i2 = childCount - 1; i2 >= 0; i2--) {
            View childAt = getChildAt(i2);
            if (a(x, y, childAt) && !f(childAt) && a(motionEvent, childAt)) {
                return r;
            }
        }
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        View a2;
        this.A.b(motionEvent);
        this.B.b(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action != 3) {
            switch (action) {
                case 0:
                    float x = motionEvent.getX();
                    float y = motionEvent.getY();
                    this.P = x;
                    this.Q = y;
                    this.L = false;
                    this.M = false;
                    break;
                case 1:
                    float x2 = motionEvent.getX();
                    float y2 = motionEvent.getY();
                    View e2 = this.A.e((int) x2, (int) y2);
                    if (e2 != null && f(e2)) {
                        float f2 = x2 - this.P;
                        float f3 = y2 - this.Q;
                        int f4 = this.A.f();
                        if ((f2 * f2) + (f3 * f3) < f4 * f4 && (a2 = a()) != null && a(a2) != 2) {
                            z = false;
                            a(z);
                            this.L = false;
                            break;
                        }
                    }
                    z = true;
                    a(z);
                    this.L = false;
                    break;
            }
        } else {
            a(r);
            this.L = false;
            this.M = false;
        }
        return r;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        this.L = z;
        if (z) {
            a(r);
        }
    }

    public void b() {
        a(false);
    }

    void a(boolean z) {
        int childCount = getChildCount();
        boolean z2 = false;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            d dVar = (d) childAt.getLayoutParams();
            if (g(childAt) && (!z || dVar.c)) {
                int width = childAt.getWidth();
                if (a(childAt, 3)) {
                    z2 |= this.A.a(childAt, -width, childAt.getTop());
                } else {
                    z2 |= this.B.a(childAt, getWidth(), childAt.getTop());
                }
                dVar.c = false;
            }
        }
        this.C.a();
        this.D.a();
        if (z2) {
            invalidate();
        }
    }

    public void h(@ah View view) {
        a(view, r);
    }

    public void a(@ah View view, boolean z) {
        if (!g(view)) {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
        d dVar = (d) view.getLayoutParams();
        if (this.G) {
            dVar.b = 1.0f;
            dVar.d = 1;
            c(view, r);
        } else if (z) {
            dVar.d |= 2;
            if (a(view, 3)) {
                this.A.a(view, 0, view.getTop());
            } else {
                this.B.a(view, getWidth() - view.getWidth(), view.getTop());
            }
        } else {
            c(view, 1.0f);
            a(dVar.f808a, 0, view);
            view.setVisibility(0);
        }
        invalidate();
    }

    public void e(int i2) {
        a(i2, r);
    }

    public void a(int i2, boolean z) {
        View c2 = c(i2);
        if (c2 == null) {
            throw new IllegalArgumentException("No drawer view found with gravity " + d(i2));
        }
        a(c2, z);
    }

    public void i(@ah View view) {
        b(view, r);
    }

    public void b(@ah View view, boolean z) {
        if (!g(view)) {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
        d dVar = (d) view.getLayoutParams();
        if (this.G) {
            dVar.b = 0.0f;
            dVar.d = 0;
        } else if (z) {
            dVar.d |= 4;
            if (a(view, 3)) {
                this.A.a(view, -view.getWidth(), view.getTop());
            } else {
                this.B.a(view, getWidth(), view.getTop());
            }
        } else {
            c(view, 0.0f);
            a(dVar.f808a, 0, view);
            view.setVisibility(4);
        }
        invalidate();
    }

    public void f(int i2) {
        b(i2, r);
    }

    public void b(int i2, boolean z) {
        View c2 = c(i2);
        if (c2 == null) {
            throw new IllegalArgumentException("No drawer view found with gravity " + d(i2));
        }
        b(c2, z);
    }

    public boolean j(@ah View view) {
        if (!g(view)) {
            throw new IllegalArgumentException("View " + view + " is not a drawer");
        }
        if ((((d) view.getLayoutParams()).d & 1) == 1) {
            return r;
        }
        return false;
    }

    public boolean g(int i2) {
        View c2 = c(i2);
        if (c2 != null) {
            return j(c2);
        }
        return false;
    }

    public boolean k(@ah View view) {
        if (g(view)) {
            if (((d) view.getLayoutParams()).b > 0.0f) {
                return r;
            }
            return false;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    public boolean h(int i2) {
        View c2 = c(i2);
        if (c2 != null) {
            return k(c2);
        }
        return false;
    }

    private boolean h() {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            if (((d) getChildAt(i2).getLayoutParams()).c) {
                return r;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new d(-1, -1);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof d ? new d((d) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new d((ViewGroup.MarginLayoutParams) layoutParams) : new d(layoutParams);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if ((layoutParams instanceof d) && super.checkLayoutParams(layoutParams)) {
            return r;
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new d(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i2, int i3) {
        if (getDescendantFocusability() == 393216) {
            return;
        }
        int childCount = getChildCount();
        boolean z = false;
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            if (g(childAt)) {
                if (j(childAt)) {
                    childAt.addFocusables(arrayList, i2, i3);
                    z = r;
                }
            } else {
                this.af.add(childAt);
            }
        }
        if (!z) {
            int size = this.af.size();
            for (int i5 = 0; i5 < size; i5++) {
                View view = this.af.get(i5);
                if (view.getVisibility() == 0) {
                    view.addFocusables(arrayList, i2, i3);
                }
            }
        }
        this.af.clear();
    }

    private boolean i() {
        if (c() != null) {
            return r;
        }
        return false;
    }

    View c() {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (g(childAt) && k(childAt)) {
                return childAt;
            }
        }
        return null;
    }

    void d() {
        if (this.M) {
            return;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            getChildAt(i2).dispatchTouchEvent(obtain);
        }
        obtain.recycle();
        this.M = r;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 4 && i()) {
            keyEvent.startTracking();
            return r;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        if (i2 == 4) {
            View c2 = c();
            if (c2 != null && a(c2) == 0) {
                b();
            }
            if (c2 != null) {
                return r;
            }
            return false;
        }
        return super.onKeyUp(i2, keyEvent);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        View c2;
        if (!(parcelable instanceof e)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        e eVar = (e) parcelable;
        super.onRestoreInstanceState(eVar.a());
        if (eVar.f809a != 0 && (c2 = c(eVar.f809a)) != null) {
            h(c2);
        }
        if (eVar.b != 3) {
            b(eVar.b, 3);
        }
        if (eVar.d != 3) {
            b(eVar.d, 5);
        }
        if (eVar.e != 3) {
            b(eVar.e, h.b);
        }
        if (eVar.f != 3) {
            b(eVar.f, h.c);
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        e eVar = new e(super.onSaveInstanceState());
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            d dVar = (d) getChildAt(i2).getLayoutParams();
            int i3 = dVar.d;
            boolean z = r;
            boolean z2 = i3 == 1;
            if (dVar.d != 2) {
                z = false;
            }
            if (z2 || z) {
                eVar.f809a = dVar.f808a;
                break;
            }
        }
        eVar.b = this.H;
        eVar.d = this.I;
        eVar.e = this.J;
        eVar.f = this.K;
        return eVar;
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i2, layoutParams);
        if (a() != null || g(view)) {
            af.e(view, 4);
        } else {
            af.e(view, 1);
        }
        if (i) {
            return;
        }
        af.a(view, this.u);
    }

    static boolean l(View view) {
        if (af.i(view) == 4 || af.i(view) == 2) {
            return false;
        }
        return r;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class e extends androidx.f.a.a {
        public static final Parcelable.Creator<e> CREATOR = new Parcelable.ClassLoaderCreator<e>() { // from class: androidx.g.a.a.e.1
            @Override // android.os.Parcelable.ClassLoaderCreator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public e createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new e(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public e createFromParcel(Parcel parcel) {
                return new e(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public e[] newArray(int i) {
                return new e[i];
            }
        };

        /* renamed from: a, reason: collision with root package name */
        int f809a;
        int b;
        int d;
        int e;
        int f;

        public e(@ah Parcel parcel, @ai ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f809a = 0;
            this.f809a = parcel.readInt();
            this.b = parcel.readInt();
            this.d = parcel.readInt();
            this.e = parcel.readInt();
            this.f = parcel.readInt();
        }

        public e(@ah Parcelable parcelable) {
            super(parcelable);
            this.f809a = 0;
        }

        @Override // androidx.f.a.a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f809a);
            parcel.writeInt(this.b);
            parcel.writeInt(this.d);
            parcel.writeInt(this.e);
            parcel.writeInt(this.f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class g extends c.a {
        private final int b;
        private androidx.f.b.c c;
        private final Runnable d = new Runnable() { // from class: androidx.g.a.a.g.1
            @Override // java.lang.Runnable
            public void run() {
                g.this.b();
            }
        };

        @Override // androidx.f.b.c.a
        public boolean b(int i) {
            return false;
        }

        g(int i) {
            this.b = i;
        }

        public void a(androidx.f.b.c cVar) {
            this.c = cVar;
        }

        public void a() {
            a.this.removeCallbacks(this.d);
        }

        @Override // androidx.f.b.c.a
        public boolean b(View view, int i) {
            if (a.this.g(view) && a.this.a(view, this.b) && a.this.a(view) == 0) {
                return a.r;
            }
            return false;
        }

        @Override // androidx.f.b.c.a
        public void a(int i) {
            a.this.a(this.b, i, this.c.d());
        }

        @Override // androidx.f.b.c.a
        public void a(View view, int i, int i2, int i3, int i4) {
            int width = view.getWidth();
            float width2 = a.this.a(view, 3) ? (i + width) / width : (a.this.getWidth() - i) / width;
            a.this.b(view, width2);
            view.setVisibility(width2 == 0.0f ? 4 : 0);
            a.this.invalidate();
        }

        @Override // androidx.f.b.c.a
        public void a(View view, int i) {
            ((d) view.getLayoutParams()).c = false;
            c();
        }

        private void c() {
            View c = a.this.c(this.b == 3 ? 5 : 3);
            if (c != null) {
                a.this.i(c);
            }
        }

        @Override // androidx.f.b.c.a
        public void a(View view, float f, float f2) {
            int i;
            float d = a.this.d(view);
            int width = view.getWidth();
            if (a.this.a(view, 3)) {
                i = (f > 0.0f || (f == 0.0f && d > 0.5f)) ? 0 : -width;
            } else {
                int width2 = a.this.getWidth();
                if (f < 0.0f || (f == 0.0f && d > 0.5f)) {
                    width2 -= width;
                }
                i = width2;
            }
            this.c.a(i, view.getTop());
            a.this.invalidate();
        }

        @Override // androidx.f.b.c.a
        public void a(int i, int i2) {
            a.this.postDelayed(this.d, 160L);
        }

        void b() {
            View c;
            int width;
            int c2 = this.c.c();
            boolean z = this.b == 3;
            if (z) {
                c = a.this.c(3);
                width = (c != null ? -c.getWidth() : 0) + c2;
            } else {
                c = a.this.c(5);
                width = a.this.getWidth() - c2;
            }
            if (c != null) {
                if (((!z || c.getLeft() >= width) && (z || c.getLeft() <= width)) || a.this.a(c) != 0) {
                    return;
                }
                d dVar = (d) c.getLayoutParams();
                this.c.a(c, width, c.getTop());
                dVar.c = a.r;
                a.this.invalidate();
                c();
                a.this.d();
            }
        }

        @Override // androidx.f.b.c.a
        public void b(int i, int i2) {
            View c;
            if ((i & 1) == 1) {
                c = a.this.c(3);
            } else {
                c = a.this.c(5);
            }
            if (c == null || a.this.a(c) != 0) {
                return;
            }
            this.c.a(c, i2);
        }

        @Override // androidx.f.b.c.a
        public int a(View view) {
            if (a.this.g(view)) {
                return view.getWidth();
            }
            return 0;
        }

        @Override // androidx.f.b.c.a
        public int a(View view, int i, int i2) {
            if (a.this.a(view, 3)) {
                return Math.max(-view.getWidth(), Math.min(i, 0));
            }
            int width = a.this.getWidth();
            return Math.max(width - view.getWidth(), Math.min(i, width));
        }

        @Override // androidx.f.b.c.a
        public int b(View view, int i, int i2) {
            return view.getTop();
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class d extends ViewGroup.MarginLayoutParams {
        private static final int e = 1;
        private static final int f = 2;
        private static final int g = 4;

        /* renamed from: a, reason: collision with root package name */
        public int f808a;
        float b;
        boolean c;
        int d;

        public d(@ah Context context, @ai AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f808a = 0;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.h);
            this.f808a = obtainStyledAttributes.getInt(0, 0);
            obtainStyledAttributes.recycle();
        }

        public d(int i, int i2) {
            super(i, i2);
            this.f808a = 0;
        }

        public d(int i, int i2, int i3) {
            this(i, i2);
            this.f808a = i3;
        }

        public d(@ah d dVar) {
            super((ViewGroup.MarginLayoutParams) dVar);
            this.f808a = 0;
            this.f808a = dVar.f808a;
        }

        public d(@ah ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f808a = 0;
        }

        public d(@ah ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f808a = 0;
        }
    }

    /* renamed from: androidx.g.a.a$a, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    class C0060a extends androidx.core.n.a {
        private final Rect b = new Rect();

        C0060a() {
        }

        @Override // androidx.core.n.a
        public void a(View view, androidx.core.n.a.d dVar) {
            if (a.i) {
                super.a(view, dVar);
            } else {
                androidx.core.n.a.d a2 = androidx.core.n.a.d.a(dVar);
                super.a(view, a2);
                dVar.b(view);
                Object q = af.q(view);
                if (q instanceof View) {
                    dVar.e((View) q);
                }
                a(dVar, a2);
                a2.z();
                a(dVar, (ViewGroup) view);
            }
            dVar.b((CharSequence) a.class.getName());
            dVar.c(false);
            dVar.d(false);
            dVar.b(d.a.f515a);
            dVar.b(d.a.b);
        }

        @Override // androidx.core.n.a
        public void d(View view, AccessibilityEvent accessibilityEvent) {
            super.d(view, accessibilityEvent);
            accessibilityEvent.setClassName(a.class.getName());
        }

        @Override // androidx.core.n.a
        public boolean b(View view, AccessibilityEvent accessibilityEvent) {
            if (accessibilityEvent.getEventType() == 32) {
                List<CharSequence> text = accessibilityEvent.getText();
                View c = a.this.c();
                if (c == null) {
                    return a.r;
                }
                CharSequence b = a.this.b(a.this.e(c));
                if (b == null) {
                    return a.r;
                }
                text.add(b);
                return a.r;
            }
            return super.b(view, accessibilityEvent);
        }

        @Override // androidx.core.n.a
        public boolean a(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            if (a.i || a.l(view)) {
                return super.a(viewGroup, view, accessibilityEvent);
            }
            return false;
        }

        private void a(androidx.core.n.a.d dVar, ViewGroup viewGroup) {
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                if (a.l(childAt)) {
                    dVar.c(childAt);
                }
            }
        }

        private void a(androidx.core.n.a.d dVar, androidx.core.n.a.d dVar2) {
            Rect rect = this.b;
            dVar2.a(rect);
            dVar.b(rect);
            dVar2.c(rect);
            dVar.d(rect);
            dVar.e(dVar2.m());
            dVar.a(dVar2.v());
            dVar.b(dVar2.w());
            dVar.e(dVar2.y());
            dVar.j(dVar2.r());
            dVar.h(dVar2.p());
            dVar.c(dVar2.k());
            dVar.d(dVar2.l());
            dVar.f(dVar2.n());
            dVar.g(dVar2.o());
            dVar.i(dVar2.q());
            dVar.d(dVar2.f());
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    static final class b extends androidx.core.n.a {
        b() {
        }

        @Override // androidx.core.n.a
        public void a(View view, androidx.core.n.a.d dVar) {
            super.a(view, dVar);
            if (a.l(view)) {
                return;
            }
            dVar.e((View) null);
        }
    }
}
