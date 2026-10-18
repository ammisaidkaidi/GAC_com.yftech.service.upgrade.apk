package androidx.coordinatorlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import androidx.annotation.ax;
import androidx.annotation.k;
import androidx.annotation.q;
import androidx.annotation.r;
import androidx.coordinatorlayout.a;
import androidx.core.m.h;
import androidx.core.n.af;
import androidx.core.n.ao;
import androidx.core.n.v;
import androidx.core.n.w;
import androidx.core.n.x;
import androidx.core.n.y;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes.dex */
public class CoordinatorLayout extends ViewGroup implements v, w {

    /* renamed from: a, reason: collision with root package name */
    static final String f322a = "CoordinatorLayout";
    static final String b;
    static final Class<?>[] c;
    static final ThreadLocal<Map<String, Constructor<b>>> d;
    static final int e = 0;
    static final int f = 1;
    static final int g = 2;
    static final Comparator<View> h;
    private static final int j = 0;
    private static final int k = 1;
    private static final h.a<Rect> l;
    private ao A;
    private boolean B;
    private Drawable C;
    private y D;
    private final x E;
    ViewGroup.OnHierarchyChangeListener i;
    private final List<View> m;
    private final androidx.coordinatorlayout.widget.a<View> n;
    private final List<View> o;
    private final List<View> p;
    private Paint q;
    private final int[] r;
    private final int[] s;
    private boolean t;
    private boolean u;
    private int[] v;
    private View w;
    private View x;
    private g y;
    private boolean z;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface a {
        @ah
        b getBehavior();
    }

    @Retention(RetentionPolicy.RUNTIME)
    @Deprecated
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface c {
        Class<? extends b> a();
    }

    @Retention(RetentionPolicy.SOURCE)
    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface d {
    }

    private static int a(int i2, int i3, int i4) {
        return i2 < i3 ? i3 : i2 > i4 ? i4 : i2;
    }

    private static int c(int i2) {
        if ((i2 & 7) == 0) {
            i2 |= androidx.core.n.h.b;
        }
        return (i2 & 112) == 0 ? i2 | 48 : i2;
    }

    private static int d(int i2) {
        return i2 == 0 ? com.google.android.material.b.a.f1174a : i2;
    }

    private static int e(int i2) {
        if (i2 == 0) {
            return 17;
        }
        return i2;
    }

    static {
        Package r0 = CoordinatorLayout.class.getPackage();
        b = r0 != null ? r0.getName() : null;
        if (Build.VERSION.SDK_INT >= 21) {
            h = new i();
        } else {
            h = null;
        }
        c = new Class[]{Context.class, AttributeSet.class};
        d = new ThreadLocal<>();
        l = new h.c(12);
    }

    @ah
    private static Rect e() {
        Rect a2 = l.a();
        return a2 == null ? new Rect() : a2;
    }

    private static void a(@ah Rect rect) {
        rect.setEmpty();
        l.a(rect);
    }

    public CoordinatorLayout(@ah Context context) {
        this(context, null);
    }

    public CoordinatorLayout(@ah Context context, @ai AttributeSet attributeSet) {
        this(context, attributeSet, a.C0021a.coordinatorLayoutStyle);
    }

    public CoordinatorLayout(@ah Context context, @ai AttributeSet attributeSet, @androidx.annotation.f int i2) {
        super(context, attributeSet, i2);
        TypedArray obtainStyledAttributes;
        this.m = new ArrayList();
        this.n = new androidx.coordinatorlayout.widget.a<>();
        this.o = new ArrayList();
        this.p = new ArrayList();
        this.r = new int[2];
        this.s = new int[2];
        this.E = new x(this);
        if (i2 == 0) {
            obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.j.CoordinatorLayout, 0, a.i.Widget_Support_CoordinatorLayout);
        } else {
            obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.j.CoordinatorLayout, i2, 0);
        }
        if (Build.VERSION.SDK_INT >= 29) {
            if (i2 == 0) {
                saveAttributeDataForStyleable(context, a.j.CoordinatorLayout, attributeSet, obtainStyledAttributes, 0, a.i.Widget_Support_CoordinatorLayout);
            } else {
                saveAttributeDataForStyleable(context, a.j.CoordinatorLayout, attributeSet, obtainStyledAttributes, i2, 0);
            }
        }
        int resourceId = obtainStyledAttributes.getResourceId(a.j.CoordinatorLayout_keylines, 0);
        if (resourceId != 0) {
            Resources resources = context.getResources();
            this.v = resources.getIntArray(resourceId);
            float f2 = resources.getDisplayMetrics().density;
            int length = this.v.length;
            for (int i3 = 0; i3 < length; i3++) {
                this.v[i3] = (int) (this.v[i3] * f2);
            }
        }
        this.C = obtainStyledAttributes.getDrawable(a.j.CoordinatorLayout_statusBarBackground);
        obtainStyledAttributes.recycle();
        g();
        super.setOnHierarchyChangeListener(new e());
        if (af.i(this) == 0) {
            af.e((View) this, 1);
        }
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.i = onHierarchyChangeListener;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        a(false);
        if (this.z) {
            if (this.y == null) {
                this.y = new g();
            }
            getViewTreeObserver().addOnPreDrawListener(this.y);
        }
        if (this.A == null && af.U(this)) {
            af.T(this);
        }
        this.u = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a(false);
        if (this.z && this.y != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.y);
        }
        if (this.x != null) {
            onStopNestedScroll(this.x);
        }
        this.u = false;
    }

    public void setStatusBarBackground(@ai Drawable drawable) {
        if (this.C != drawable) {
            if (this.C != null) {
                this.C.setCallback(null);
            }
            this.C = drawable != null ? drawable.mutate() : null;
            if (this.C != null) {
                if (this.C.isStateful()) {
                    this.C.setState(getDrawableState());
                }
                androidx.core.graphics.drawable.a.b(this.C, af.p(this));
                this.C.setVisible(getVisibility() == 0, false);
                this.C.setCallback(this);
            }
            af.h(this);
        }
    }

    @ai
    public Drawable getStatusBarBackground() {
        return this.C;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.C;
        boolean z = false;
        if (drawable != null && drawable.isStateful()) {
            z = false | drawable.setState(drawableState);
        }
        if (z) {
            invalidate();
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.C;
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        super.setVisibility(i2);
        boolean z = i2 == 0;
        if (this.C == null || this.C.isVisible() == z) {
            return;
        }
        this.C.setVisible(z, false);
    }

    public void setStatusBarBackgroundResource(@q int i2) {
        setStatusBarBackground(i2 != 0 ? androidx.core.b.c.a(getContext(), i2) : null);
    }

    public void setStatusBarBackgroundColor(@k int i2) {
        setStatusBarBackground(new ColorDrawable(i2));
    }

    final ao a(ao aoVar) {
        if (androidx.core.m.e.a(this.A, aoVar)) {
            return aoVar;
        }
        this.A = aoVar;
        this.B = aoVar != null && aoVar.b() > 0;
        setWillNotDraw(!this.B && getBackground() == null);
        ao b2 = b(aoVar);
        requestLayout();
        return b2;
    }

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public final ao getLastWindowInsets() {
        return this.A;
    }

    private void a(boolean z) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            b b2 = ((f) childAt.getLayoutParams()).b();
            if (b2 != null) {
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                if (z) {
                    b2.a(this, (CoordinatorLayout) childAt, obtain);
                } else {
                    b2.b(this, (CoordinatorLayout) childAt, obtain);
                }
                obtain.recycle();
            }
        }
        for (int i3 = 0; i3 < childCount; i3++) {
            ((f) getChildAt(i3).getLayoutParams()).f();
        }
        this.w = null;
        this.t = false;
    }

    private void a(List<View> list) {
        list.clear();
        boolean isChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i2 = childCount - 1; i2 >= 0; i2--) {
            list.add(getChildAt(isChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i2) : i2));
        }
        if (h != null) {
            Collections.sort(list, h);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0061, code lost:
    
        if (r7 == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0063, code lost:
    
        r21.w = r10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean a(MotionEvent motionEvent, int i2) {
        int actionMasked = motionEvent.getActionMasked();
        List<View> list = this.o;
        a(list);
        int size = list.size();
        boolean z = false;
        boolean z2 = false;
        MotionEvent motionEvent2 = null;
        for (int i3 = 0; i3 < size; i3++) {
            View view = list.get(i3);
            f fVar = (f) view.getLayoutParams();
            b b2 = fVar.b();
            if (!(z || z2) || actionMasked == 0) {
                if (!z && b2 != null) {
                    switch (i2) {
                        case 0:
                            z = b2.a(this, (CoordinatorLayout) view, motionEvent);
                            break;
                        case 1:
                            z = b2.b(this, (CoordinatorLayout) view, motionEvent);
                            break;
                    }
                }
                boolean e2 = fVar.e();
                boolean a2 = fVar.a(this, view);
                z2 = a2 && !e2;
                if (a2 && !z2) {
                    list.clear();
                    return z;
                }
            } else if (b2 != null) {
                if (motionEvent2 == null) {
                    long uptimeMillis = SystemClock.uptimeMillis();
                    motionEvent2 = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                }
                switch (i2) {
                    case 0:
                        b2.a(this, (CoordinatorLayout) view, motionEvent2);
                        break;
                    case 1:
                        b2.b(this, (CoordinatorLayout) view, motionEvent2);
                        break;
                }
            }
        }
        list.clear();
        return z;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            a(true);
        }
        boolean a2 = a(motionEvent, 0);
        if (actionMasked == 1 || actionMasked == 3) {
            a(true);
        }
        return a2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0012, code lost:
    
        if (r3 != false) goto L9;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0031  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean b2;
        MotionEvent motionEvent2;
        int actionMasked = motionEvent.getActionMasked();
        if (this.w == null) {
            z = a(motionEvent, 1);
        } else {
            z = false;
        }
        b b3 = ((f) this.w.getLayoutParams()).b();
        if (b3 != null) {
            b2 = b3.b(this, (CoordinatorLayout) this.w, motionEvent);
            motionEvent2 = null;
            if (this.w != null) {
                b2 |= super.onTouchEvent(motionEvent);
            } else if (z) {
                long uptimeMillis = SystemClock.uptimeMillis();
                motionEvent2 = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                super.onTouchEvent(motionEvent2);
            }
            if (motionEvent2 != null) {
                motionEvent2.recycle();
            }
            if (actionMasked != 1 || actionMasked == 3) {
                a(false);
            }
            return b2;
        }
        b2 = false;
        motionEvent2 = null;
        if (this.w != null) {
        }
        if (motionEvent2 != null) {
        }
        if (actionMasked != 1) {
        }
        a(false);
        return b2;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        if (!z || this.t) {
            return;
        }
        a(false);
        this.t = true;
    }

    private int b(int i2) {
        if (this.v == null) {
            Log.e(f322a, "No keylines defined for " + this + " - attempted index lookup " + i2);
            return 0;
        }
        if (i2 < 0 || i2 >= this.v.length) {
            Log.e(f322a, "Keyline index " + i2 + " out of range for " + this);
            return 0;
        }
        return this.v[i2];
    }

    /* JADX WARN: Multi-variable type inference failed */
    static b a(Context context, AttributeSet attributeSet, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.startsWith(".")) {
            str = context.getPackageName() + str;
        } else if (str.indexOf(46) < 0 && !TextUtils.isEmpty(b)) {
            str = b + '.' + str;
        }
        try {
            Map<String, Constructor<b>> map = d.get();
            if (map == null) {
                map = new HashMap<>();
                d.set(map);
            }
            Constructor<b> constructor = map.get(str);
            if (constructor == null) {
                constructor = Class.forName(str, false, context.getClassLoader()).getConstructor(c);
                constructor.setAccessible(true);
                map.put(str, constructor);
            }
            return constructor.newInstance(context, attributeSet);
        } catch (Exception e2) {
            throw new RuntimeException("Could not inflate Behavior subclass " + str, e2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    f a(View view) {
        f fVar = (f) view.getLayoutParams();
        if (!fVar.b) {
            if (view instanceof a) {
                b behavior = ((a) view).getBehavior();
                if (behavior == null) {
                    Log.e(f322a, "Attached behavior class is null");
                }
                fVar.a(behavior);
                fVar.b = true;
            } else {
                c cVar = null;
                for (Class<?> cls = view.getClass(); cls != null; cls = cls.getSuperclass()) {
                    cVar = (c) cls.getAnnotation(c.class);
                    if (cVar != null) {
                        break;
                    }
                }
                if (cVar != null) {
                    try {
                        fVar.a(cVar.a().getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
                    } catch (Exception e2) {
                        Log.e(f322a, "Default behavior class " + cVar.a().getName() + " could not be instantiated. Did you forget a default constructor?", e2);
                    }
                }
                fVar.b = true;
            }
        }
        return fVar;
    }

    private void f() {
        this.m.clear();
        this.n.a();
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            f a2 = a(childAt);
            a2.b(this, childAt);
            this.n.a((androidx.coordinatorlayout.widget.a<View>) childAt);
            for (int i3 = 0; i3 < childCount; i3++) {
                if (i3 != i2) {
                    View childAt2 = getChildAt(i3);
                    if (a2.a(this, childAt, childAt2)) {
                        if (!this.n.b(childAt2)) {
                            this.n.a((androidx.coordinatorlayout.widget.a<View>) childAt2);
                        }
                        this.n.a(childAt2, childAt);
                    }
                }
            }
        }
        this.m.addAll(this.n.b());
        Collections.reverse(this.m);
    }

    void a(View view, Rect rect) {
        androidx.coordinatorlayout.widget.b.b(this, view, rect);
    }

    @Override // android.view.View
    protected int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), getPaddingLeft() + getPaddingRight());
    }

    @Override // android.view.View
    protected int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), getPaddingTop() + getPaddingBottom());
    }

    public void a(View view, int i2, int i3, int i4, int i5) {
        measureChildWithMargins(view, i2, i3, i4, i5);
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0119, code lost:
    
        if (r0.a(r30, (androidx.coordinatorlayout.widget.CoordinatorLayout) r20, r11, r21, r23, 0) == false) goto L46;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x011c  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onMeasure(int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        b b2;
        f fVar;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        f();
        h_();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int p = af.p(this);
        boolean z = p == 1;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        int i13 = paddingLeft + paddingRight;
        int i14 = paddingTop + paddingBottom;
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        int suggestedMinimumHeight = getSuggestedMinimumHeight();
        boolean z2 = this.A != null && af.U(this);
        int size3 = this.m.size();
        int i15 = suggestedMinimumWidth;
        int i16 = suggestedMinimumHeight;
        int i17 = 0;
        int i18 = 0;
        while (i18 < size3) {
            View view = this.m.get(i18);
            if (view.getVisibility() == 8) {
                i12 = i18;
                i10 = size3;
            } else {
                f fVar2 = (f) view.getLayoutParams();
                if (fVar2.e < 0 || mode == 0) {
                    i4 = i16;
                } else {
                    int b3 = b(fVar2.e);
                    int a2 = androidx.core.n.h.a(d(fVar2.c), p) & 7;
                    i4 = i16;
                    if ((a2 == 3 && !z) || (a2 == 5 && z)) {
                        i5 = Math.max(0, (size - paddingRight) - b3);
                    } else if ((a2 == 5 && !z) || (a2 == 3 && z)) {
                        i5 = Math.max(0, b3 - paddingLeft);
                    }
                    if (z2 || af.U(view)) {
                        i6 = i2;
                        i7 = i3;
                    } else {
                        int a3 = this.A.a() + this.A.c();
                        int b4 = this.A.b() + this.A.d();
                        i6 = View.MeasureSpec.makeMeasureSpec(size - a3, mode);
                        i7 = View.MeasureSpec.makeMeasureSpec(size2 - b4, mode2);
                    }
                    b2 = fVar2.b();
                    if (b2 == null) {
                        fVar = fVar2;
                        i11 = i4;
                        i8 = i17;
                        i9 = i15;
                        i12 = i18;
                        i10 = size3;
                    } else {
                        fVar = fVar2;
                        i8 = i17;
                        i9 = i15;
                        i10 = size3;
                        i11 = i4;
                        i12 = i18;
                    }
                    a(view, i6, i5, i7, 0);
                    f fVar3 = fVar;
                    int max = Math.max(i9, i13 + view.getMeasuredWidth() + fVar3.leftMargin + fVar3.rightMargin);
                    int max2 = Math.max(i11, i14 + view.getMeasuredHeight() + fVar3.topMargin + fVar3.bottomMargin);
                    i15 = max;
                    i17 = View.combineMeasuredStates(i8, view.getMeasuredState());
                    i16 = max2;
                }
                i5 = 0;
                if (z2) {
                }
                i6 = i2;
                i7 = i3;
                b2 = fVar2.b();
                if (b2 == null) {
                }
                a(view, i6, i5, i7, 0);
                f fVar32 = fVar;
                int max3 = Math.max(i9, i13 + view.getMeasuredWidth() + fVar32.leftMargin + fVar32.rightMargin);
                int max22 = Math.max(i11, i14 + view.getMeasuredHeight() + fVar32.topMargin + fVar32.bottomMargin);
                i15 = max3;
                i17 = View.combineMeasuredStates(i8, view.getMeasuredState());
                i16 = max22;
            }
            i18 = i12 + 1;
            size3 = i10;
        }
        int i19 = i17;
        setMeasuredDimension(View.resolveSizeAndState(i15, i2, (-16777216) & i19), View.resolveSizeAndState(i16, i3, i19 << 16));
    }

    private ao b(ao aoVar) {
        b b2;
        if (aoVar.g()) {
            return aoVar;
        }
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (af.U(childAt) && (b2 = ((f) childAt.getLayoutParams()).b()) != null) {
                aoVar = b2.a(this, (CoordinatorLayout) childAt, aoVar);
                if (aoVar.g()) {
                    break;
                }
            }
        }
        return aoVar;
    }

    public void b(@ah View view, int i2) {
        f fVar = (f) view.getLayoutParams();
        if (fVar.d()) {
            throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
        }
        if (fVar.k != null) {
            a(view, fVar.k, i2);
        } else if (fVar.e >= 0) {
            b(view, fVar.e, i2);
        } else {
            d(view, i2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        b b2;
        int p = af.p(this);
        int size = this.m.size();
        for (int i6 = 0; i6 < size; i6++) {
            View view = this.m.get(i6);
            if (view.getVisibility() != 8 && ((b2 = ((f) view.getLayoutParams()).b()) == null || !b2.a(this, (CoordinatorLayout) view, p))) {
                b(view, p);
            }
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.B || this.C == null) {
            return;
        }
        int b2 = this.A != null ? this.A.b() : 0;
        if (b2 > 0) {
            this.C.setBounds(0, 0, getWidth(), b2);
            this.C.draw(canvas);
        }
    }

    @Override // android.view.View
    public void setFitsSystemWindows(boolean z) {
        super.setFitsSystemWindows(z);
        g();
    }

    void b(View view, Rect rect) {
        ((f) view.getLayoutParams()).a(rect);
    }

    void c(View view, Rect rect) {
        rect.set(((f) view.getLayoutParams()).c());
    }

    void a(View view, boolean z, Rect rect) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
        } else if (z) {
            a(view, rect);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    private void a(View view, int i2, Rect rect, Rect rect2, f fVar, int i3, int i4) {
        int width;
        int height;
        int a2 = androidx.core.n.h.a(e(fVar.c), i2);
        int a3 = androidx.core.n.h.a(c(fVar.d), i2);
        int i5 = a2 & 7;
        int i6 = a2 & 112;
        int i7 = a3 & 7;
        int i8 = a3 & 112;
        if (i7 == 1) {
            width = rect.left + (rect.width() / 2);
        } else if (i7 != 5) {
            width = rect.left;
        } else {
            width = rect.right;
        }
        if (i8 == 16) {
            height = rect.top + (rect.height() / 2);
        } else if (i8 != 80) {
            height = rect.top;
        } else {
            height = rect.bottom;
        }
        if (i5 == 1) {
            width -= i3 / 2;
        } else if (i5 != 5) {
            width -= i3;
        }
        if (i6 == 16) {
            height -= i4 / 2;
        } else if (i6 != 80) {
            height -= i4;
        }
        rect2.set(width, height, i3 + width, i4 + height);
    }

    private void a(f fVar, Rect rect, int i2, int i3) {
        int width = getWidth();
        int height = getHeight();
        int max = Math.max(getPaddingLeft() + fVar.leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i2) - fVar.rightMargin));
        int max2 = Math.max(getPaddingTop() + fVar.topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i3) - fVar.bottomMargin));
        rect.set(max, max2, i2 + max, i3 + max2);
    }

    void a(View view, int i2, Rect rect, Rect rect2) {
        f fVar = (f) view.getLayoutParams();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        a(view, i2, rect, rect2, fVar, measuredWidth, measuredHeight);
        a(fVar, rect2, measuredWidth, measuredHeight);
    }

    private void a(View view, View view2, int i2) {
        Rect e2 = e();
        Rect e3 = e();
        try {
            a(view2, e2);
            a(view, i2, e2, e3);
            view.layout(e3.left, e3.top, e3.right, e3.bottom);
        } finally {
            a(e2);
            a(e3);
        }
    }

    private void b(View view, int i2, int i3) {
        f fVar = (f) view.getLayoutParams();
        int a2 = androidx.core.n.h.a(d(fVar.c), i3);
        int i4 = a2 & 7;
        int i5 = a2 & 112;
        int width = getWidth();
        int height = getHeight();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        if (i3 == 1) {
            i2 = width - i2;
        }
        int b2 = b(i2) - measuredWidth;
        int i6 = 0;
        if (i4 == 1) {
            b2 += measuredWidth / 2;
        } else if (i4 == 5) {
            b2 += measuredWidth;
        }
        if (i5 == 16) {
            i6 = 0 + (measuredHeight / 2);
        } else if (i5 == 80) {
            i6 = measuredHeight + 0;
        }
        int max = Math.max(getPaddingLeft() + fVar.leftMargin, Math.min(b2, ((width - getPaddingRight()) - measuredWidth) - fVar.rightMargin));
        int max2 = Math.max(getPaddingTop() + fVar.topMargin, Math.min(i6, ((height - getPaddingBottom()) - measuredHeight) - fVar.bottomMargin));
        view.layout(max, max2, measuredWidth + max, measuredHeight + max2);
    }

    private void d(View view, int i2) {
        f fVar = (f) view.getLayoutParams();
        Rect e2 = e();
        e2.set(getPaddingLeft() + fVar.leftMargin, getPaddingTop() + fVar.topMargin, (getWidth() - getPaddingRight()) - fVar.rightMargin, (getHeight() - getPaddingBottom()) - fVar.bottomMargin);
        if (this.A != null && af.U(this) && !af.U(view)) {
            e2.left += this.A.a();
            e2.top += this.A.b();
            e2.right -= this.A.c();
            e2.bottom -= this.A.d();
        }
        Rect e3 = e();
        androidx.core.n.h.a(c(fVar.c), view.getMeasuredWidth(), view.getMeasuredHeight(), e2, e3, i2);
        view.layout(e3.left, e3.top, e3.right, e3.bottom);
        a(e2);
        a(e3);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j2) {
        f fVar = (f) view.getLayoutParams();
        if (fVar.f325a != null) {
            float b2 = fVar.f325a.b(this, view);
            if (b2 > 0.0f) {
                if (this.q == null) {
                    this.q = new Paint();
                }
                this.q.setColor(fVar.f325a.a(this, (CoordinatorLayout) view));
                this.q.setAlpha(a(Math.round(b2 * 255.0f), 0, 255));
                int save = canvas.save();
                if (view.isOpaque()) {
                    canvas.clipRect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom(), Region.Op.DIFFERENCE);
                }
                canvas.drawRect(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom(), this.q);
                canvas.restoreToCount(save);
            }
        }
        return super.drawChild(canvas, view, j2);
    }

    final void a(int i2) {
        boolean z;
        int p = af.p(this);
        int size = this.m.size();
        Rect e2 = e();
        Rect e3 = e();
        Rect e4 = e();
        for (int i3 = 0; i3 < size; i3++) {
            View view = this.m.get(i3);
            f fVar = (f) view.getLayoutParams();
            if (i2 != 0 || view.getVisibility() != 8) {
                for (int i4 = 0; i4 < i3; i4++) {
                    if (fVar.l == this.m.get(i4)) {
                        c(view, p);
                    }
                }
                a(view, true, e3);
                if (fVar.g != 0 && !e3.isEmpty()) {
                    int a2 = androidx.core.n.h.a(fVar.g, p);
                    int i5 = a2 & 112;
                    if (i5 == 48) {
                        e2.top = Math.max(e2.top, e3.bottom);
                    } else if (i5 == 80) {
                        e2.bottom = Math.max(e2.bottom, getHeight() - e3.top);
                    }
                    int i6 = a2 & 7;
                    if (i6 == 3) {
                        e2.left = Math.max(e2.left, e3.right);
                    } else if (i6 == 5) {
                        e2.right = Math.max(e2.right, getWidth() - e3.left);
                    }
                }
                if (fVar.h != 0 && view.getVisibility() == 0) {
                    a(view, e2, p);
                }
                if (i2 != 2) {
                    c(view, e4);
                    if (!e4.equals(e3)) {
                        b(view, e3);
                    }
                }
                for (int i7 = i3 + 1; i7 < size; i7++) {
                    View view2 = this.m.get(i7);
                    f fVar2 = (f) view2.getLayoutParams();
                    b b2 = fVar2.b();
                    if (b2 != null && b2.a(this, (CoordinatorLayout) view2, view)) {
                        if (i2 == 0 && fVar2.g()) {
                            fVar2.h();
                        } else {
                            if (i2 == 2) {
                                b2.c(this, view2, view);
                                z = true;
                            } else {
                                z = b2.b(this, (CoordinatorLayout) view2, view);
                            }
                            if (i2 == 1) {
                                fVar2.a(z);
                            }
                        }
                    }
                }
            }
        }
        a(e2);
        a(e3);
        a(e4);
    }

    private void a(View view, Rect rect, int i2) {
        boolean z;
        boolean z2;
        int width;
        int i3;
        int height;
        int i4;
        if (af.ag(view) && view.getWidth() > 0 && view.getHeight() > 0) {
            f fVar = (f) view.getLayoutParams();
            b b2 = fVar.b();
            Rect e2 = e();
            Rect e3 = e();
            e3.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            if (b2 != null && b2.a(this, (CoordinatorLayout) view, e2)) {
                if (!e3.contains(e2)) {
                    throw new IllegalArgumentException("Rect should be within the child's bounds. Rect:" + e2.toShortString() + " | Bounds:" + e3.toShortString());
                }
            } else {
                e2.set(e3);
            }
            a(e3);
            if (e2.isEmpty()) {
                a(e2);
                return;
            }
            int a2 = androidx.core.n.h.a(fVar.h, i2);
            if ((a2 & 48) != 48 || (i4 = (e2.top - fVar.topMargin) - fVar.j) >= rect.top) {
                z = false;
            } else {
                f(view, rect.top - i4);
                z = true;
            }
            if ((a2 & 80) == 80 && (height = ((getHeight() - e2.bottom) - fVar.bottomMargin) + fVar.j) < rect.bottom) {
                f(view, height - rect.bottom);
                z = true;
            }
            if (!z) {
                f(view, 0);
            }
            if ((a2 & 3) != 3 || (i3 = (e2.left - fVar.leftMargin) - fVar.i) >= rect.left) {
                z2 = false;
            } else {
                e(view, rect.left - i3);
                z2 = true;
            }
            if ((a2 & 5) == 5 && (width = ((getWidth() - e2.right) - fVar.rightMargin) + fVar.i) < rect.right) {
                e(view, width - rect.right);
                z2 = true;
            }
            if (!z2) {
                e(view, 0);
            }
            a(e2);
        }
    }

    private void e(View view, int i2) {
        f fVar = (f) view.getLayoutParams();
        if (fVar.i != i2) {
            af.o(view, i2 - fVar.i);
            fVar.i = i2;
        }
    }

    private void f(View view, int i2) {
        f fVar = (f) view.getLayoutParams();
        if (fVar.j != i2) {
            af.n(view, i2 - fVar.j);
            fVar.j = i2;
        }
    }

    public void b(@ah View view) {
        List c2 = this.n.c(view);
        if (c2 == null || c2.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < c2.size(); i2++) {
            View view2 = (View) c2.get(i2);
            b b2 = ((f) view2.getLayoutParams()).b();
            if (b2 != null) {
                b2.b(this, (CoordinatorLayout) view2, view);
            }
        }
    }

    @ah
    public List<View> c(@ah View view) {
        List<View> d2 = this.n.d(view);
        this.p.clear();
        if (d2 != null) {
            this.p.addAll(d2);
        }
        return this.p;
    }

    @ah
    public List<View> d(@ah View view) {
        List c2 = this.n.c(view);
        this.p.clear();
        if (c2 != null) {
            this.p.addAll(c2);
        }
        return this.p;
    }

    @ax
    final List<View> getDependencySortedChildren() {
        f();
        return Collections.unmodifiableList(this.m);
    }

    void h_() {
        int childCount = getChildCount();
        boolean z = false;
        int i2 = 0;
        while (true) {
            if (i2 >= childCount) {
                break;
            }
            if (e(getChildAt(i2))) {
                z = true;
                break;
            }
            i2++;
        }
        if (z != this.z) {
            if (z) {
                b();
            } else {
                i_();
            }
        }
    }

    private boolean e(View view) {
        return this.n.e(view);
    }

    void b() {
        if (this.u) {
            if (this.y == null) {
                this.y = new g();
            }
            getViewTreeObserver().addOnPreDrawListener(this.y);
        }
        this.z = true;
    }

    void i_() {
        if (this.u && this.y != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.y);
        }
        this.z = false;
    }

    void c(View view, int i2) {
        b b2;
        f fVar = (f) view.getLayoutParams();
        if (fVar.k != null) {
            Rect e2 = e();
            Rect e3 = e();
            Rect e4 = e();
            a(fVar.k, e2);
            a(view, false, e3);
            int measuredWidth = view.getMeasuredWidth();
            int measuredHeight = view.getMeasuredHeight();
            a(view, i2, e2, e4, fVar, measuredWidth, measuredHeight);
            boolean z = (e4.left == e3.left && e4.top == e3.top) ? false : true;
            a(fVar, e4, measuredWidth, measuredHeight);
            int i3 = e4.left - e3.left;
            int i4 = e4.top - e3.top;
            if (i3 != 0) {
                af.o(view, i3);
            }
            if (i4 != 0) {
                af.n(view, i4);
            }
            if (z && (b2 = fVar.b()) != null) {
                b2.b(this, (CoordinatorLayout) view, fVar.k);
            }
            a(e2);
            a(e3);
            a(e4);
        }
    }

    public boolean a(@ah View view, int i2, int i3) {
        Rect e2 = e();
        a(view, e2);
        try {
            return e2.contains(i2, i3);
        } finally {
            a(e2);
        }
    }

    public boolean a(@ah View view, @ah View view2) {
        boolean z = false;
        if (view.getVisibility() != 0 || view2.getVisibility() != 0) {
            return false;
        }
        Rect e2 = e();
        a(view, view.getParent() != this, e2);
        Rect e3 = e();
        a(view2, view2.getParent() != this, e3);
        try {
            if (e2.left <= e3.right && e2.top <= e3.bottom && e2.right >= e3.left) {
                if (e2.bottom >= e3.top) {
                    z = true;
                }
            }
            return z;
        } finally {
            a(e2);
            a(e3);
        }
    }

    @Override // android.view.ViewGroup
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public f generateLayoutParams(AttributeSet attributeSet) {
        return new f(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public f generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof f) {
            return new f((f) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new f((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new f(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public f generateDefaultLayoutParams() {
        return new f(-2, -2);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof f) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.n.u
    public boolean onStartNestedScroll(View view, View view2, int i2) {
        return a(view, view2, i2, 0);
    }

    @Override // androidx.core.n.v
    public boolean a(View view, View view2, int i2, int i3) {
        int childCount = getChildCount();
        boolean z = false;
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                b b2 = fVar.b();
                if (b2 != null) {
                    boolean a2 = b2.a(this, (CoordinatorLayout) childAt, view, view2, i2, i3);
                    fVar.a(i3, a2);
                    z |= a2;
                } else {
                    fVar.a(i3, false);
                }
            }
        }
        return z;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.n.u
    public void onNestedScrollAccepted(View view, View view2, int i2) {
        b(view, view2, i2, 0);
    }

    @Override // androidx.core.n.v
    public void b(View view, View view2, int i2, int i3) {
        b b2;
        this.E.a(view, view2, i2, i3);
        this.x = view2;
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            f fVar = (f) childAt.getLayoutParams();
            if (fVar.c(i3) && (b2 = fVar.b()) != null) {
                b2.b(this, childAt, view, view2, i2, i3);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.n.u
    public void onStopNestedScroll(View view) {
        a(view, 0);
    }

    @Override // androidx.core.n.v
    public void a(View view, int i2) {
        this.E.a(view, i2);
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            f fVar = (f) childAt.getLayoutParams();
            if (fVar.c(i2)) {
                b b2 = fVar.b();
                if (b2 != null) {
                    b2.a(this, (CoordinatorLayout) childAt, view, i2);
                }
                fVar.b(i2);
                fVar.h();
            }
        }
        this.x = null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.n.u
    public void onNestedScroll(View view, int i2, int i3, int i4, int i5) {
        a(view, i2, i3, i4, i5, 0);
    }

    @Override // androidx.core.n.v
    public void a(View view, int i2, int i3, int i4, int i5, int i6) {
        a(view, i2, i3, i4, i5, 0, this.s);
    }

    @Override // androidx.core.n.w
    public void a(@ah View view, int i2, int i3, int i4, int i5, int i6, @ah int[] iArr) {
        b b2;
        int min;
        boolean z;
        int min2;
        int childCount = getChildCount();
        boolean z2 = false;
        int i7 = 0;
        int i8 = 0;
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                if (fVar.c(i6) && (b2 = fVar.b()) != null) {
                    this.r[0] = 0;
                    this.r[1] = 0;
                    int i10 = i7;
                    b2.a(this, childAt, view, i2, i3, i4, i5, i6, this.r);
                    if (i4 > 0) {
                        min = Math.max(i8, this.r[0]);
                    } else {
                        min = Math.min(i8, this.r[0]);
                    }
                    if (i5 > 0) {
                        z = true;
                        min2 = Math.max(i10, this.r[1]);
                    } else {
                        z = true;
                        min2 = Math.min(i10, this.r[1]);
                    }
                    i8 = min;
                    i7 = min2;
                    z2 = z;
                }
            }
            i7 = i7;
        }
        iArr[0] = iArr[0] + i8;
        iArr[1] = iArr[1] + i7;
        if (z2) {
            a(1);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.n.u
    public void onNestedPreScroll(View view, int i2, int i3, int[] iArr) {
        a(view, i2, i3, iArr, 0);
    }

    @Override // androidx.core.n.v
    public void a(View view, int i2, int i3, int[] iArr, int i4) {
        b b2;
        int min;
        int min2;
        int childCount = getChildCount();
        boolean z = false;
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                if (fVar.c(i4) && (b2 = fVar.b()) != null) {
                    this.r[0] = 0;
                    this.r[1] = 0;
                    b2.a(this, (CoordinatorLayout) childAt, view, i2, i3, this.r, i4);
                    if (i2 > 0) {
                        min = Math.max(i5, this.r[0]);
                    } else {
                        min = Math.min(i5, this.r[0]);
                    }
                    if (i3 > 0) {
                        min2 = Math.max(i6, this.r[1]);
                    } else {
                        min2 = Math.min(i6, this.r[1]);
                    }
                    i5 = min;
                    i6 = min2;
                    z = true;
                }
            }
        }
        iArr[0] = i5;
        iArr[1] = i6;
        if (z) {
            a(1);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.n.u
    public boolean onNestedFling(View view, float f2, float f3, boolean z) {
        b b2;
        int childCount = getChildCount();
        boolean z2 = false;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                if (fVar.c(0) && (b2 = fVar.b()) != null) {
                    z2 |= b2.a(this, (CoordinatorLayout) childAt, view, f2, f3, z);
                }
            }
        }
        if (z2) {
            a(1);
        }
        return z2;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.n.u
    public boolean onNestedPreFling(View view, float f2, float f3) {
        b b2;
        int childCount = getChildCount();
        boolean z = false;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                if (fVar.c(0) && (b2 = fVar.b()) != null) {
                    z |= b2.a(this, (CoordinatorLayout) childAt, view, f2, f3);
                }
            }
        }
        return z;
    }

    @Override // android.view.ViewGroup, androidx.core.n.u
    public int getNestedScrollAxes() {
        return this.E.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class g implements ViewTreeObserver.OnPreDrawListener {
        g() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            CoordinatorLayout.this.a(0);
            return true;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    static class i implements Comparator<View> {
        i() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(View view, View view2) {
            float ai = af.ai(view);
            float ai2 = af.ai(view2);
            if (ai > ai2) {
                return -1;
            }
            return ai < ai2 ? 1 : 0;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class b<V extends View> {
        @k
        public int a(@ah CoordinatorLayout coordinatorLayout, @ah V v) {
            return af.s;
        }

        @ah
        public ao a(@ah CoordinatorLayout coordinatorLayout, @ah V v, @ah ao aoVar) {
            return aoVar;
        }

        public void a() {
        }

        public void a(@ah f fVar) {
        }

        public void a(@ah CoordinatorLayout coordinatorLayout, @ah V v, @ah Parcelable parcelable) {
        }

        @Deprecated
        public void a(@ah CoordinatorLayout coordinatorLayout, @ah V v, @ah View view, int i, int i2, int i3, int i4) {
        }

        @Deprecated
        public void a(@ah CoordinatorLayout coordinatorLayout, @ah V v, @ah View view, int i, int i2, @ah int[] iArr) {
        }

        public boolean a(@ah CoordinatorLayout coordinatorLayout, @ah V v, int i) {
            return false;
        }

        public boolean a(@ah CoordinatorLayout coordinatorLayout, @ah V v, int i, int i2, int i3, int i4) {
            return false;
        }

        public boolean a(@ah CoordinatorLayout coordinatorLayout, @ah V v, @ah Rect rect) {
            return false;
        }

        public boolean a(@ah CoordinatorLayout coordinatorLayout, @ah V v, @ah Rect rect, boolean z) {
            return false;
        }

        public boolean a(@ah CoordinatorLayout coordinatorLayout, @ah V v, @ah MotionEvent motionEvent) {
            return false;
        }

        public boolean a(@ah CoordinatorLayout coordinatorLayout, @ah V v, @ah View view) {
            return false;
        }

        public boolean a(@ah CoordinatorLayout coordinatorLayout, @ah V v, @ah View view, float f, float f2) {
            return false;
        }

        public boolean a(@ah CoordinatorLayout coordinatorLayout, @ah V v, @ah View view, float f, float f2, boolean z) {
            return false;
        }

        @Deprecated
        public boolean a(@ah CoordinatorLayout coordinatorLayout, @ah V v, @ah View view, @ah View view2, int i) {
            return false;
        }

        @r(a = 0.0d, b = 1.0d)
        public float b(@ah CoordinatorLayout coordinatorLayout, @ah V v) {
            return 0.0f;
        }

        @Deprecated
        public void b(@ah CoordinatorLayout coordinatorLayout, @ah V v, @ah View view, @ah View view2, int i) {
        }

        public boolean b(@ah CoordinatorLayout coordinatorLayout, @ah V v, @ah MotionEvent motionEvent) {
            return false;
        }

        public boolean b(@ah CoordinatorLayout coordinatorLayout, @ah V v, @ah View view) {
            return false;
        }

        public void c(@ah CoordinatorLayout coordinatorLayout, @ah V v, @ah View view) {
        }

        @Deprecated
        public void d(@ah CoordinatorLayout coordinatorLayout, @ah V v, @ah View view) {
        }

        public b() {
        }

        public b(Context context, AttributeSet attributeSet) {
        }

        public boolean c(@ah CoordinatorLayout coordinatorLayout, @ah V v) {
            return b(coordinatorLayout, v) > 0.0f;
        }

        public static void a(@ah View view, @ai Object obj) {
            ((f) view.getLayoutParams()).n = obj;
        }

        @ai
        public static Object a(@ah View view) {
            return ((f) view.getLayoutParams()).n;
        }

        public boolean a(@ah CoordinatorLayout coordinatorLayout, @ah V v, @ah View view, @ah View view2, int i, int i2) {
            if (i2 == 0) {
                return a(coordinatorLayout, (CoordinatorLayout) v, view, view2, i);
            }
            return false;
        }

        public void b(@ah CoordinatorLayout coordinatorLayout, @ah V v, @ah View view, @ah View view2, int i, int i2) {
            if (i2 == 0) {
                b(coordinatorLayout, v, view, view2, i);
            }
        }

        public void a(@ah CoordinatorLayout coordinatorLayout, @ah V v, @ah View view, int i) {
            if (i == 0) {
                d(coordinatorLayout, v, view);
            }
        }

        @Deprecated
        public void a(@ah CoordinatorLayout coordinatorLayout, @ah V v, @ah View view, int i, int i2, int i3, int i4, int i5) {
            if (i5 == 0) {
                a(coordinatorLayout, (CoordinatorLayout) v, view, i, i2, i3, i4);
            }
        }

        public void a(@ah CoordinatorLayout coordinatorLayout, @ah V v, @ah View view, int i, int i2, int i3, int i4, int i5, @ah int[] iArr) {
            iArr[0] = iArr[0] + i3;
            iArr[1] = iArr[1] + i4;
            a(coordinatorLayout, v, view, i, i2, i3, i4, i5);
        }

        public void a(@ah CoordinatorLayout coordinatorLayout, @ah V v, @ah View view, int i, int i2, @ah int[] iArr, int i3) {
            if (i3 == 0) {
                a(coordinatorLayout, (CoordinatorLayout) v, view, i, i2, iArr);
            }
        }

        @ai
        public Parcelable d(@ah CoordinatorLayout coordinatorLayout, @ah V v) {
            return View.BaseSavedState.EMPTY_STATE;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class f extends ViewGroup.MarginLayoutParams {

        /* renamed from: a, reason: collision with root package name */
        b f325a;
        boolean b;
        public int c;
        public int d;
        public int e;
        int f;
        public int g;
        public int h;
        int i;
        int j;
        View k;
        View l;
        final Rect m;
        Object n;
        private boolean o;
        private boolean p;
        private boolean q;
        private boolean r;

        public f(int i, int i2) {
            super(i, i2);
            this.b = false;
            this.c = 0;
            this.d = 0;
            this.e = -1;
            this.f = -1;
            this.g = 0;
            this.h = 0;
            this.m = new Rect();
        }

        f(@ah Context context, @ai AttributeSet attributeSet) {
            super(context, attributeSet);
            this.b = false;
            this.c = 0;
            this.d = 0;
            this.e = -1;
            this.f = -1;
            this.g = 0;
            this.h = 0;
            this.m = new Rect();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.j.CoordinatorLayout_Layout);
            this.c = obtainStyledAttributes.getInteger(a.j.CoordinatorLayout_Layout_android_layout_gravity, 0);
            this.f = obtainStyledAttributes.getResourceId(a.j.CoordinatorLayout_Layout_layout_anchor, -1);
            this.d = obtainStyledAttributes.getInteger(a.j.CoordinatorLayout_Layout_layout_anchorGravity, 0);
            this.e = obtainStyledAttributes.getInteger(a.j.CoordinatorLayout_Layout_layout_keyline, -1);
            this.g = obtainStyledAttributes.getInt(a.j.CoordinatorLayout_Layout_layout_insetEdge, 0);
            this.h = obtainStyledAttributes.getInt(a.j.CoordinatorLayout_Layout_layout_dodgeInsetEdges, 0);
            this.b = obtainStyledAttributes.hasValue(a.j.CoordinatorLayout_Layout_layout_behavior);
            if (this.b) {
                this.f325a = CoordinatorLayout.a(context, attributeSet, obtainStyledAttributes.getString(a.j.CoordinatorLayout_Layout_layout_behavior));
            }
            obtainStyledAttributes.recycle();
            if (this.f325a != null) {
                this.f325a.a(this);
            }
        }

        public f(f fVar) {
            super((ViewGroup.MarginLayoutParams) fVar);
            this.b = false;
            this.c = 0;
            this.d = 0;
            this.e = -1;
            this.f = -1;
            this.g = 0;
            this.h = 0;
            this.m = new Rect();
        }

        public f(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.b = false;
            this.c = 0;
            this.d = 0;
            this.e = -1;
            this.f = -1;
            this.g = 0;
            this.h = 0;
            this.m = new Rect();
        }

        public f(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.b = false;
            this.c = 0;
            this.d = 0;
            this.e = -1;
            this.f = -1;
            this.g = 0;
            this.h = 0;
            this.m = new Rect();
        }

        @androidx.annotation.w
        public int a() {
            return this.f;
        }

        public void a(@androidx.annotation.w int i) {
            i();
            this.f = i;
        }

        @ai
        public b b() {
            return this.f325a;
        }

        public void a(@ai b bVar) {
            if (this.f325a != bVar) {
                if (this.f325a != null) {
                    this.f325a.a();
                }
                this.f325a = bVar;
                this.n = null;
                this.b = true;
                if (bVar != null) {
                    bVar.a(this);
                }
            }
        }

        void a(Rect rect) {
            this.m.set(rect);
        }

        Rect c() {
            return this.m;
        }

        boolean d() {
            return this.k == null && this.f != -1;
        }

        boolean e() {
            if (this.f325a == null) {
                this.o = false;
            }
            return this.o;
        }

        boolean a(CoordinatorLayout coordinatorLayout, View view) {
            if (this.o) {
                return true;
            }
            boolean c = (this.f325a != null ? this.f325a.c(coordinatorLayout, view) : false) | this.o;
            this.o = c;
            return c;
        }

        void f() {
            this.o = false;
        }

        void b(int i) {
            a(i, false);
        }

        void a(int i, boolean z) {
            switch (i) {
                case 0:
                    this.p = z;
                    return;
                case 1:
                    this.q = z;
                    return;
                default:
                    return;
            }
        }

        boolean c(int i) {
            switch (i) {
                case 0:
                    return this.p;
                case 1:
                    return this.q;
                default:
                    return false;
            }
        }

        boolean g() {
            return this.r;
        }

        void a(boolean z) {
            this.r = z;
        }

        void h() {
            this.r = false;
        }

        boolean a(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return view2 == this.l || a(view2, af.p(coordinatorLayout)) || (this.f325a != null && this.f325a.a(coordinatorLayout, (CoordinatorLayout) view, view2));
        }

        void i() {
            this.l = null;
            this.k = null;
        }

        View b(CoordinatorLayout coordinatorLayout, View view) {
            if (this.f == -1) {
                this.l = null;
                this.k = null;
                return null;
            }
            if (this.k == null || !b(view, coordinatorLayout)) {
                a(view, coordinatorLayout);
            }
            return this.k;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v2, types: [android.view.ViewParent] */
        private void a(View view, CoordinatorLayout coordinatorLayout) {
            this.k = coordinatorLayout.findViewById(this.f);
            if (this.k != null) {
                if (this.k == coordinatorLayout) {
                    if (coordinatorLayout.isInEditMode()) {
                        this.l = null;
                        this.k = null;
                        return;
                    }
                    throw new IllegalStateException("View can not be anchored to the the parent CoordinatorLayout");
                }
                CoordinatorLayout coordinatorLayout2 = this.k;
                for (CoordinatorLayout coordinatorLayout3 = this.k.getParent(); coordinatorLayout3 != coordinatorLayout && coordinatorLayout3 != null; coordinatorLayout3 = coordinatorLayout3.getParent()) {
                    if (coordinatorLayout3 == view) {
                        if (coordinatorLayout.isInEditMode()) {
                            this.l = null;
                            this.k = null;
                            return;
                        }
                        throw new IllegalStateException("Anchor must not be a descendant of the anchored view");
                    }
                    if (coordinatorLayout3 instanceof View) {
                        coordinatorLayout2 = coordinatorLayout3;
                    }
                }
                this.l = coordinatorLayout2;
                return;
            }
            if (coordinatorLayout.isInEditMode()) {
                this.l = null;
                this.k = null;
                return;
            }
            throw new IllegalStateException("Could not find CoordinatorLayout descendant view with id " + coordinatorLayout.getResources().getResourceName(this.f) + " to anchor view " + view);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v2, types: [android.view.ViewParent] */
        private boolean b(View view, CoordinatorLayout coordinatorLayout) {
            if (this.k.getId() != this.f) {
                return false;
            }
            CoordinatorLayout coordinatorLayout2 = this.k;
            for (CoordinatorLayout coordinatorLayout3 = this.k.getParent(); coordinatorLayout3 != coordinatorLayout; coordinatorLayout3 = coordinatorLayout3.getParent()) {
                if (coordinatorLayout3 == null || coordinatorLayout3 == view) {
                    this.l = null;
                    this.k = null;
                    return false;
                }
                if (coordinatorLayout3 instanceof View) {
                    coordinatorLayout2 = coordinatorLayout3;
                }
            }
            this.l = coordinatorLayout2;
            return true;
        }

        private boolean a(View view, int i) {
            int a2 = androidx.core.n.h.a(((f) view.getLayoutParams()).g, i);
            return a2 != 0 && (androidx.core.n.h.a(this.h, i) & a2) == a2;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private class e implements ViewGroup.OnHierarchyChangeListener {
        e() {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View view, View view2) {
            if (CoordinatorLayout.this.i != null) {
                CoordinatorLayout.this.i.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View view, View view2) {
            CoordinatorLayout.this.a(2);
            if (CoordinatorLayout.this.i != null) {
                CoordinatorLayout.this.i.onChildViewRemoved(view, view2);
            }
        }
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof h)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        h hVar = (h) parcelable;
        super.onRestoreInstanceState(hVar.a());
        SparseArray<Parcelable> sparseArray = hVar.f327a;
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            int id = childAt.getId();
            b b2 = a(childAt).b();
            if (id != -1 && b2 != null && (parcelable2 = sparseArray.get(id)) != null) {
                b2.a(this, (CoordinatorLayout) childAt, parcelable2);
            }
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Parcelable d2;
        h hVar = new h(super.onSaveInstanceState());
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            int id = childAt.getId();
            b b2 = ((f) childAt.getLayoutParams()).b();
            if (id != -1 && b2 != null && (d2 = b2.d(this, childAt)) != null) {
                sparseArray.append(id, d2);
            }
        }
        hVar.f327a = sparseArray;
        return hVar;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        b b2 = ((f) view.getLayoutParams()).b();
        if (b2 == null || !b2.a(this, (CoordinatorLayout) view, rect, z)) {
            return super.requestChildRectangleOnScreen(view, rect, z);
        }
        return true;
    }

    private void g() {
        if (Build.VERSION.SDK_INT < 21) {
            return;
        }
        if (af.U(this)) {
            if (this.D == null) {
                this.D = new y() { // from class: androidx.coordinatorlayout.widget.CoordinatorLayout.1
                    @Override // androidx.core.n.y
                    public ao a(View view, ao aoVar) {
                        return CoordinatorLayout.this.a(aoVar);
                    }
                };
            }
            af.a(this, this.D);
            setSystemUiVisibility(1280);
            return;
        }
        af.a(this, (y) null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class h extends androidx.f.a.a {
        public static final Parcelable.Creator<h> CREATOR = new Parcelable.ClassLoaderCreator<h>() { // from class: androidx.coordinatorlayout.widget.CoordinatorLayout.h.1
            @Override // android.os.Parcelable.ClassLoaderCreator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public h createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new h(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public h createFromParcel(Parcel parcel) {
                return new h(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public h[] newArray(int i) {
                return new h[i];
            }
        };

        /* renamed from: a, reason: collision with root package name */
        SparseArray<Parcelable> f327a;

        public h(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            int readInt = parcel.readInt();
            int[] iArr = new int[readInt];
            parcel.readIntArray(iArr);
            Parcelable[] readParcelableArray = parcel.readParcelableArray(classLoader);
            this.f327a = new SparseArray<>(readInt);
            for (int i = 0; i < readInt; i++) {
                this.f327a.append(iArr[i], readParcelableArray[i]);
            }
        }

        public h(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.f.a.a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            int size = this.f327a != null ? this.f327a.size() : 0;
            parcel.writeInt(size);
            int[] iArr = new int[size];
            Parcelable[] parcelableArr = new Parcelable[size];
            for (int i2 = 0; i2 < size; i2++) {
                iArr[i2] = this.f327a.keyAt(i2);
                parcelableArr[i2] = this.f327a.valueAt(i2);
            }
            parcel.writeIntArray(iArr);
            parcel.writeParcelableArray(parcelableArr, i);
        }
    }
}
