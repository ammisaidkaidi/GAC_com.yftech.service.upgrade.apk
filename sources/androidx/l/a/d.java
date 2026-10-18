package androidx.l.a;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.Scroller;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ak;
import androidx.annotation.q;
import androidx.core.n.af;
import androidx.core.n.ao;
import androidx.core.n.y;
import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class d extends ViewGroup {
    private static final int W = -1;
    private static final int af = 2;
    private static final int au = 0;
    private static final int av = 1;
    private static final int aw = 2;
    public static final int d = 0;
    public static final int e = 1;
    public static final int f = 2;
    private static final String g = "ViewPager";
    private static final boolean h = false;
    private static final boolean i = false;
    private static final int j = 1;
    private static final int k = 600;
    private static final int l = 25;
    private static final int m = 16;
    private static final int n = 400;
    private int A;
    private Drawable B;
    private int C;
    private int D;
    private float E;
    private float F;
    private int G;
    private int H;
    private boolean I;
    private boolean J;
    private boolean K;
    private int L;
    private boolean M;
    private boolean N;
    private int O;
    private int P;
    private int Q;
    private float R;
    private float S;
    private float T;
    private float U;
    private int V;
    private final Runnable aA;
    private int aB;
    private VelocityTracker aa;
    private int ab;
    private int ac;
    private int ad;
    private int ae;
    private boolean ag;
    private long ah;
    private EdgeEffect ai;
    private EdgeEffect aj;
    private boolean ak;
    private boolean al;
    private boolean am;
    private int an;
    private List<f> ao;
    private f ap;
    private f aq;
    private List<e> ar;
    private g as;
    private int at;
    private int ax;
    private ArrayList<View> ay;
    androidx.l.a.a b;
    int c;
    private int o;
    private final ArrayList<b> r;
    private final b s;
    private final Rect t;
    private int u;
    private Parcelable v;
    private ClassLoader w;
    private Scroller x;
    private boolean y;
    private h z;

    /* renamed from: a, reason: collision with root package name */
    static final int[] f942a = {R.attr.layout_gravity};
    private static final Comparator<b> p = new Comparator<b>() { // from class: androidx.l.a.d.1
        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(b bVar, b bVar2) {
            return bVar.b - bVar2.b;
        }
    };
    private static final Interpolator q = new Interpolator() { // from class: androidx.l.a.d.2
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f2) {
            float f3 = f2 - 1.0f;
            return (f3 * f3 * f3 * f3 * f3) + 1.0f;
        }
    };
    private static final k az = new k();

    @Target({ElementType.TYPE})
    @Inherited
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface a {
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface e {
        void a(@ah d dVar, @ai androidx.l.a.a aVar, @ai androidx.l.a.a aVar2);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface f {
        void a(int i);

        void a(int i, float f, @ak int i2);

        void b(int i);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface g {
        void a(@ah View view, float f);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class j implements f {
        @Override // androidx.l.a.d.f
        public void a(int i) {
        }

        @Override // androidx.l.a.d.f
        public void a(int i, float f, int i2) {
        }

        @Override // androidx.l.a.d.f
        public void b(int i) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        Object f945a;
        int b;
        boolean c;
        float d;
        float e;

        b() {
        }
    }

    public d(@ah Context context) {
        super(context);
        this.r = new ArrayList<>();
        this.s = new b();
        this.t = new Rect();
        this.u = -1;
        this.v = null;
        this.w = null;
        this.E = -3.4028235E38f;
        this.F = Float.MAX_VALUE;
        this.L = 1;
        this.V = -1;
        this.ak = true;
        this.al = false;
        this.aA = new Runnable() { // from class: androidx.l.a.d.3
            @Override // java.lang.Runnable
            public void run() {
                d.this.setScrollState(0);
                d.this.d();
            }
        };
        this.aB = 0;
        a();
    }

    public d(@ah Context context, @ai AttributeSet attributeSet) {
        super(context, attributeSet);
        this.r = new ArrayList<>();
        this.s = new b();
        this.t = new Rect();
        this.u = -1;
        this.v = null;
        this.w = null;
        this.E = -3.4028235E38f;
        this.F = Float.MAX_VALUE;
        this.L = 1;
        this.V = -1;
        this.ak = true;
        this.al = false;
        this.aA = new Runnable() { // from class: androidx.l.a.d.3
            @Override // java.lang.Runnable
            public void run() {
                d.this.setScrollState(0);
                d.this.d();
            }
        };
        this.aB = 0;
        a();
    }

    void a() {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context = getContext();
        this.x = new Scroller(context, q);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f2 = context.getResources().getDisplayMetrics().density;
        this.Q = viewConfiguration.getScaledPagingTouchSlop();
        this.ab = (int) (400.0f * f2);
        this.ac = viewConfiguration.getScaledMaximumFlingVelocity();
        this.ai = new EdgeEffect(context);
        this.aj = new EdgeEffect(context);
        this.ad = (int) (25.0f * f2);
        this.ae = (int) (2.0f * f2);
        this.O = (int) (f2 * 16.0f);
        af.a(this, new C0071d());
        if (af.i(this) == 0) {
            af.e((View) this, 1);
        }
        af.a(this, new y() { // from class: androidx.l.a.d.4
            private final Rect b = new Rect();

            @Override // androidx.core.n.y
            public ao a(View view, ao aoVar) {
                ao a2 = af.a(view, aoVar);
                if (a2.g()) {
                    return a2;
                }
                Rect rect = this.b;
                rect.left = a2.a();
                rect.top = a2.b();
                rect.right = a2.c();
                rect.bottom = a2.d();
                int childCount = d.this.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    ao b2 = af.b(d.this.getChildAt(i2), a2);
                    rect.left = Math.min(b2.a(), rect.left);
                    rect.top = Math.min(b2.b(), rect.top);
                    rect.right = Math.min(b2.c(), rect.right);
                    rect.bottom = Math.min(b2.d(), rect.bottom);
                }
                return a2.a(rect.left, rect.top, rect.right, rect.bottom);
            }
        });
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.aA);
        if (this.x != null && !this.x.isFinished()) {
            this.x.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    void setScrollState(int i2) {
        if (this.aB == i2) {
            return;
        }
        this.aB = i2;
        if (this.as != null) {
            b(i2 != 0);
        }
        f(i2);
    }

    public void setAdapter(@ai androidx.l.a.a aVar) {
        if (this.b != null) {
            this.b.c((DataSetObserver) null);
            this.b.a((ViewGroup) this);
            for (int i2 = 0; i2 < this.r.size(); i2++) {
                b bVar = this.r.get(i2);
                this.b.a((ViewGroup) this, bVar.b, bVar.f945a);
            }
            this.b.b((ViewGroup) this);
            this.r.clear();
            j();
            this.c = 0;
            scrollTo(0, 0);
        }
        androidx.l.a.a aVar2 = this.b;
        this.b = aVar;
        this.o = 0;
        if (this.b != null) {
            if (this.z == null) {
                this.z = new h();
            }
            this.b.c(this.z);
            this.K = false;
            boolean z = this.ak;
            this.ak = true;
            this.o = this.b.b();
            if (this.u >= 0) {
                this.b.a(this.v, this.w);
                a(this.u, false, true);
                this.u = -1;
                this.v = null;
                this.w = null;
            } else if (!z) {
                d();
            } else {
                requestLayout();
            }
        }
        if (this.ar == null || this.ar.isEmpty()) {
            return;
        }
        int size = this.ar.size();
        for (int i3 = 0; i3 < size; i3++) {
            this.ar.get(i3).a(this, aVar2, aVar);
        }
    }

    private void j() {
        int i2 = 0;
        while (i2 < getChildCount()) {
            if (!((c) getChildAt(i2).getLayoutParams()).f946a) {
                removeViewAt(i2);
                i2--;
            }
            i2++;
        }
    }

    @ai
    public androidx.l.a.a getAdapter() {
        return this.b;
    }

    public void a(@ah e eVar) {
        if (this.ar == null) {
            this.ar = new ArrayList();
        }
        this.ar.add(eVar);
    }

    public void b(@ah e eVar) {
        if (this.ar != null) {
            this.ar.remove(eVar);
        }
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    public void setCurrentItem(int i2) {
        this.K = false;
        a(i2, !this.ak, false);
    }

    public void a(int i2, boolean z) {
        this.K = false;
        a(i2, z, false);
    }

    public int getCurrentItem() {
        return this.c;
    }

    void a(int i2, boolean z, boolean z2) {
        a(i2, z, z2, 0);
    }

    void a(int i2, boolean z, boolean z2, int i3) {
        if (this.b == null || this.b.b() <= 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if (!z2 && this.c == i2 && this.r.size() != 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 >= this.b.b()) {
            i2 = this.b.b() - 1;
        }
        int i4 = this.L;
        if (i2 > this.c + i4 || i2 < this.c - i4) {
            for (int i5 = 0; i5 < this.r.size(); i5++) {
                this.r.get(i5).c = true;
            }
        }
        boolean z3 = this.c != i2;
        if (this.ak) {
            this.c = i2;
            if (z3) {
                e(i2);
            }
            requestLayout();
            return;
        }
        a(i2);
        a(i2, z, i3, z3);
    }

    private void a(int i2, boolean z, int i3, boolean z2) {
        b b2 = b(i2);
        int clientWidth = b2 != null ? (int) (getClientWidth() * Math.max(this.E, Math.min(b2.e, this.F))) : 0;
        if (z) {
            a(clientWidth, 0, i3);
            if (z2) {
                e(i2);
                return;
            }
            return;
        }
        if (z2) {
            e(i2);
        }
        a(false);
        scrollTo(clientWidth, 0);
        d(clientWidth);
    }

    @Deprecated
    public void setOnPageChangeListener(f fVar) {
        this.ap = fVar;
    }

    public void a(@ah f fVar) {
        if (this.ao == null) {
            this.ao = new ArrayList();
        }
        this.ao.add(fVar);
    }

    public void b(@ah f fVar) {
        if (this.ao != null) {
            this.ao.remove(fVar);
        }
    }

    public void b() {
        if (this.ao != null) {
            this.ao.clear();
        }
    }

    public void a(boolean z, @ai g gVar) {
        a(z, gVar, 2);
    }

    public void a(boolean z, @ai g gVar, int i2) {
        boolean z2 = gVar != null;
        boolean z3 = z2 != (this.as != null);
        this.as = gVar;
        setChildrenDrawingOrderEnabled(z2);
        if (z2) {
            this.ax = z ? 2 : 1;
            this.at = i2;
        } else {
            this.ax = 0;
        }
        if (z3) {
            d();
        }
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i2, int i3) {
        if (this.ax == 2) {
            i3 = (i2 - 1) - i3;
        }
        return ((c) this.ay.get(i3).getLayoutParams()).f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f c(f fVar) {
        f fVar2 = this.aq;
        this.aq = fVar;
        return fVar2;
    }

    public int getOffscreenPageLimit() {
        return this.L;
    }

    public void setOffscreenPageLimit(int i2) {
        if (i2 < 1) {
            Log.w(g, "Requested offscreen page limit " + i2 + " too small; defaulting to 1");
            i2 = 1;
        }
        if (i2 != this.L) {
            this.L = i2;
            d();
        }
    }

    public void setPageMargin(int i2) {
        int i3 = this.A;
        this.A = i2;
        int width = getWidth();
        a(width, width, i2, i3);
        requestLayout();
    }

    public int getPageMargin() {
        return this.A;
    }

    public void setPageMarginDrawable(@ai Drawable drawable) {
        this.B = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    public void setPageMarginDrawable(@q int i2) {
        setPageMarginDrawable(androidx.core.b.c.a(getContext(), i2));
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.B;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.B;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        drawable.setState(getDrawableState());
    }

    float a(float f2) {
        return (float) Math.sin((f2 - 0.5f) * 0.47123894f);
    }

    void a(int i2, int i3) {
        a(i2, i3, 0);
    }

    void a(int i2, int i3, int i4) {
        int scrollX;
        int abs;
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if ((this.x == null || this.x.isFinished()) ? false : true) {
            scrollX = this.y ? this.x.getCurrX() : this.x.getStartX();
            this.x.abortAnimation();
            setScrollingCacheEnabled(false);
        } else {
            scrollX = getScrollX();
        }
        int i5 = scrollX;
        int scrollY = getScrollY();
        int i6 = i2 - i5;
        int i7 = i3 - scrollY;
        if (i6 == 0 && i7 == 0) {
            a(false);
            d();
            setScrollState(0);
            return;
        }
        setScrollingCacheEnabled(true);
        setScrollState(2);
        int clientWidth = getClientWidth();
        int i8 = clientWidth / 2;
        float f2 = clientWidth;
        float f3 = i8;
        float a2 = f3 + (a(Math.min(1.0f, (Math.abs(i6) * 1.0f) / f2)) * f3);
        int abs2 = Math.abs(i4);
        if (abs2 > 0) {
            abs = Math.round(Math.abs(a2 / abs2) * 1000.0f) * 4;
        } else {
            abs = (int) (((Math.abs(i6) / ((f2 * this.b.d(this.c)) + this.A)) + 1.0f) * 100.0f);
        }
        int min = Math.min(abs, k);
        this.y = false;
        this.x.startScroll(i5, scrollY, i6, i7, min);
        af.h(this);
    }

    b b(int i2, int i3) {
        b bVar = new b();
        bVar.b = i2;
        bVar.f945a = this.b.a((ViewGroup) this, i2);
        bVar.d = this.b.d(i2);
        if (i3 < 0 || i3 >= this.r.size()) {
            this.r.add(bVar);
        } else {
            this.r.add(i3, bVar);
        }
        return bVar;
    }

    void c() {
        int b2 = this.b.b();
        this.o = b2;
        boolean z = this.r.size() < (this.L * 2) + 1 && this.r.size() < b2;
        int i2 = this.c;
        int i3 = 0;
        boolean z2 = false;
        while (i3 < this.r.size()) {
            b bVar = this.r.get(i3);
            int a2 = this.b.a(bVar.f945a);
            if (a2 != -1) {
                if (a2 == -2) {
                    this.r.remove(i3);
                    i3--;
                    if (!z2) {
                        this.b.a((ViewGroup) this);
                        z2 = true;
                    }
                    this.b.a((ViewGroup) this, bVar.b, bVar.f945a);
                    if (this.c == bVar.b) {
                        i2 = Math.max(0, Math.min(this.c, b2 - 1));
                    }
                } else if (bVar.b != a2) {
                    if (bVar.b == this.c) {
                        i2 = a2;
                    }
                    bVar.b = a2;
                }
                z = true;
            }
            i3++;
        }
        if (z2) {
            this.b.b((ViewGroup) this);
        }
        Collections.sort(this.r, p);
        if (z) {
            int childCount = getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                c cVar = (c) getChildAt(i4).getLayoutParams();
                if (!cVar.f946a) {
                    cVar.c = 0.0f;
                }
            }
            a(i2, false, true);
            requestLayout();
        }
    }

    void d() {
        a(this.c);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0066, code lost:
    
        if (r8.b == r17.c) goto L29;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void a(int i2) {
        b bVar;
        String hexString;
        b bVar2;
        b a2;
        b bVar3;
        if (this.c != i2) {
            bVar = b(this.c);
            this.c = i2;
        } else {
            bVar = null;
        }
        if (this.b == null) {
            k();
            return;
        }
        if (this.K) {
            k();
            return;
        }
        if (getWindowToken() == null) {
            return;
        }
        this.b.a((ViewGroup) this);
        int i3 = this.L;
        int max = Math.max(0, this.c - i3);
        int b2 = this.b.b();
        int min = Math.min(b2 - 1, this.c + i3);
        if (b2 != this.o) {
            try {
                hexString = getResources().getResourceName(getId());
            } catch (Resources.NotFoundException unused) {
                hexString = Integer.toHexString(getId());
            }
            throw new IllegalStateException("The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: " + this.o + ", found: " + b2 + " Pager id: " + hexString + " Pager class: " + getClass() + " Problematic adapter: " + this.b.getClass());
        }
        int i4 = 0;
        while (true) {
            if (i4 >= this.r.size()) {
                break;
            }
            bVar2 = this.r.get(i4);
            if (bVar2.b < this.c) {
                i4++;
            }
        }
        bVar2 = null;
        if (bVar2 == null && b2 > 0) {
            bVar2 = b(this.c, i4);
        }
        if (bVar2 != null) {
            int i5 = i4 - 1;
            b bVar4 = i5 >= 0 ? this.r.get(i5) : null;
            int clientWidth = getClientWidth();
            float paddingLeft = clientWidth <= 0 ? 0.0f : (2.0f - bVar2.d) + (getPaddingLeft() / clientWidth);
            int i6 = i4;
            float f2 = 0.0f;
            for (int i7 = this.c - 1; i7 >= 0; i7--) {
                if (f2 >= paddingLeft && i7 < max) {
                    if (bVar4 == null) {
                        break;
                    }
                    if (i7 == bVar4.b && !bVar4.c) {
                        this.r.remove(i5);
                        this.b.a((ViewGroup) this, i7, bVar4.f945a);
                        i5--;
                        i6--;
                        if (i5 >= 0) {
                            bVar3 = this.r.get(i5);
                            bVar4 = bVar3;
                        }
                        bVar3 = null;
                        bVar4 = bVar3;
                    }
                } else if (bVar4 != null && i7 == bVar4.b) {
                    f2 += bVar4.d;
                    i5--;
                    if (i5 >= 0) {
                        bVar3 = this.r.get(i5);
                        bVar4 = bVar3;
                    }
                    bVar3 = null;
                    bVar4 = bVar3;
                } else {
                    f2 += b(i7, i5 + 1).d;
                    i6++;
                    if (i5 >= 0) {
                        bVar3 = this.r.get(i5);
                        bVar4 = bVar3;
                    }
                    bVar3 = null;
                    bVar4 = bVar3;
                }
            }
            float f3 = bVar2.d;
            int i8 = i6 + 1;
            if (f3 < 2.0f) {
                b bVar5 = i8 < this.r.size() ? this.r.get(i8) : null;
                float paddingRight = clientWidth <= 0 ? 0.0f : (getPaddingRight() / clientWidth) + 2.0f;
                int i9 = this.c;
                while (true) {
                    i9++;
                    if (i9 >= b2) {
                        break;
                    }
                    if (f3 >= paddingRight && i9 > min) {
                        if (bVar5 == null) {
                            break;
                        }
                        if (i9 == bVar5.b && !bVar5.c) {
                            this.r.remove(i8);
                            this.b.a((ViewGroup) this, i9, bVar5.f945a);
                            if (i8 < this.r.size()) {
                                bVar5 = this.r.get(i8);
                            }
                        }
                    } else if (bVar5 != null && i9 == bVar5.b) {
                        f3 += bVar5.d;
                        i8++;
                        if (i8 < this.r.size()) {
                            bVar5 = this.r.get(i8);
                        }
                    } else {
                        b b3 = b(i9, i8);
                        i8++;
                        f3 += b3.d;
                        bVar5 = i8 < this.r.size() ? this.r.get(i8) : null;
                    }
                }
            }
            a(bVar2, i6, bVar);
            this.b.b((ViewGroup) this, this.c, bVar2.f945a);
        }
        this.b.b((ViewGroup) this);
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            c cVar = (c) childAt.getLayoutParams();
            cVar.f = i10;
            if (!cVar.f946a && cVar.c == 0.0f && (a2 = a(childAt)) != null) {
                cVar.c = a2.d;
                cVar.e = a2.b;
            }
        }
        k();
        if (hasFocus()) {
            View findFocus = findFocus();
            b b4 = findFocus != null ? b(findFocus) : null;
            if (b4 == null || b4.b != this.c) {
                for (int i11 = 0; i11 < getChildCount(); i11++) {
                    View childAt2 = getChildAt(i11);
                    b a3 = a(childAt2);
                    if (a3 != null && a3.b == this.c && childAt2.requestFocus(2)) {
                        return;
                    }
                }
            }
        }
    }

    private void k() {
        if (this.ax != 0) {
            if (this.ay == null) {
                this.ay = new ArrayList<>();
            } else {
                this.ay.clear();
            }
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                this.ay.add(getChildAt(i2));
            }
            Collections.sort(this.ay, az);
        }
    }

    private void a(b bVar, int i2, b bVar2) {
        b bVar3;
        b bVar4;
        int b2 = this.b.b();
        int clientWidth = getClientWidth();
        float f2 = clientWidth > 0 ? this.A / clientWidth : 0.0f;
        if (bVar2 != null) {
            int i3 = bVar2.b;
            if (i3 < bVar.b) {
                float f3 = bVar2.e + bVar2.d + f2;
                int i4 = i3 + 1;
                int i5 = 0;
                while (i4 <= bVar.b && i5 < this.r.size()) {
                    b bVar5 = this.r.get(i5);
                    while (true) {
                        bVar4 = bVar5;
                        if (i4 <= bVar4.b || i5 >= this.r.size() - 1) {
                            break;
                        }
                        i5++;
                        bVar5 = this.r.get(i5);
                    }
                    while (i4 < bVar4.b) {
                        f3 += this.b.d(i4) + f2;
                        i4++;
                    }
                    bVar4.e = f3;
                    f3 += bVar4.d + f2;
                    i4++;
                }
            } else if (i3 > bVar.b) {
                int size = this.r.size() - 1;
                float f4 = bVar2.e;
                while (true) {
                    i3--;
                    if (i3 < bVar.b || size < 0) {
                        break;
                    }
                    b bVar6 = this.r.get(size);
                    while (true) {
                        bVar3 = bVar6;
                        if (i3 >= bVar3.b || size <= 0) {
                            break;
                        }
                        size--;
                        bVar6 = this.r.get(size);
                    }
                    while (i3 > bVar3.b) {
                        f4 -= this.b.d(i3) + f2;
                        i3--;
                    }
                    f4 -= bVar3.d + f2;
                    bVar3.e = f4;
                }
            }
        }
        int size2 = this.r.size();
        float f5 = bVar.e;
        int i6 = bVar.b - 1;
        this.E = bVar.b == 0 ? bVar.e : -3.4028235E38f;
        int i7 = b2 - 1;
        this.F = bVar.b == i7 ? (bVar.e + bVar.d) - 1.0f : Float.MAX_VALUE;
        int i8 = i2 - 1;
        while (i8 >= 0) {
            b bVar7 = this.r.get(i8);
            while (i6 > bVar7.b) {
                f5 -= this.b.d(i6) + f2;
                i6--;
            }
            f5 -= bVar7.d + f2;
            bVar7.e = f5;
            if (bVar7.b == 0) {
                this.E = f5;
            }
            i8--;
            i6--;
        }
        float f6 = bVar.e + bVar.d + f2;
        int i9 = bVar.b + 1;
        int i10 = i2 + 1;
        while (i10 < size2) {
            b bVar8 = this.r.get(i10);
            while (i9 < bVar8.b) {
                f6 += this.b.d(i9) + f2;
                i9++;
            }
            if (bVar8.b == i7) {
                this.F = (bVar8.d + f6) - 1.0f;
            }
            bVar8.e = f6;
            f6 += bVar8.d + f2;
            i10++;
            i9++;
        }
        this.al = false;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class i extends androidx.f.a.a {
        public static final Parcelable.Creator<i> CREATOR = new Parcelable.ClassLoaderCreator<i>() { // from class: androidx.l.a.d.i.1
            @Override // android.os.Parcelable.ClassLoaderCreator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public i createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new i(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public i createFromParcel(Parcel parcel) {
                return new i(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public i[] newArray(int i) {
                return new i[i];
            }
        };

        /* renamed from: a, reason: collision with root package name */
        int f949a;
        Parcelable b;
        ClassLoader d;

        public i(@ah Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.f.a.a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f949a);
            parcel.writeParcelable(this.b, i);
        }

        public String toString() {
            return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.f949a + "}";
        }

        i(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            classLoader = classLoader == null ? getClass().getClassLoader() : classLoader;
            this.f949a = parcel.readInt();
            this.b = parcel.readParcelable(classLoader);
            this.d = classLoader;
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        i iVar = new i(super.onSaveInstanceState());
        iVar.f949a = this.c;
        if (this.b != null) {
            iVar.b = this.b.a();
        }
        return iVar;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof i)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        i iVar = (i) parcelable;
        super.onRestoreInstanceState(iVar.a());
        if (this.b != null) {
            this.b.a(iVar.b, iVar.d);
            a(iVar.f949a, false, true);
        } else {
            this.u = iVar.f949a;
            this.v = iVar.b;
            this.w = iVar.d;
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (!checkLayoutParams(layoutParams)) {
            layoutParams = generateLayoutParams(layoutParams);
        }
        c cVar = (c) layoutParams;
        cVar.f946a |= c(view);
        if (this.I) {
            if (cVar != null && cVar.f946a) {
                throw new IllegalStateException("Cannot add pager decor view during layout");
            }
            cVar.d = true;
            addViewInLayout(view, i2, layoutParams);
            return;
        }
        super.addView(view, i2, layoutParams);
    }

    private static boolean c(@ah View view) {
        return view.getClass().getAnnotation(a.class) != null;
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (this.I) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    b a(View view) {
        for (int i2 = 0; i2 < this.r.size(); i2++) {
            b bVar = this.r.get(i2);
            if (this.b.a(view, bVar.f945a)) {
                return bVar;
            }
        }
        return null;
    }

    b b(View view) {
        while (true) {
            Object parent = view.getParent();
            if (parent != this) {
                if (parent == null || !(parent instanceof View)) {
                    return null;
                }
                view = (View) parent;
            } else {
                return a(view);
            }
        }
    }

    b b(int i2) {
        for (int i3 = 0; i3 < this.r.size(); i3++) {
            b bVar = this.r.get(i3);
            if (bVar.b == i2) {
                return bVar;
            }
        }
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.ak = true;
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i3) {
        c cVar;
        c cVar2;
        int i4;
        int i5;
        int i6;
        boolean z = false;
        setMeasuredDimension(getDefaultSize(0, i2), getDefaultSize(0, i3));
        int measuredWidth = getMeasuredWidth();
        this.P = Math.min(measuredWidth / 10, this.O);
        int paddingLeft = (measuredWidth - getPaddingLeft()) - getPaddingRight();
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        int childCount = getChildCount();
        int i7 = measuredHeight;
        int i8 = paddingLeft;
        int i9 = 0;
        while (true) {
            boolean z2 = true;
            int i10 = androidx.d.c.b.a.b.b;
            if (i9 >= childCount) {
                break;
            }
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() != 8 && (cVar2 = (c) childAt.getLayoutParams()) != null && cVar2.f946a) {
                int i11 = cVar2.b & 7;
                int i12 = cVar2.b & 112;
                boolean z3 = (i12 == 48 || i12 == 80) ? true : z;
                if (i11 != 3 && i11 != 5) {
                    z2 = z;
                }
                int i13 = Integer.MIN_VALUE;
                if (z3) {
                    i4 = Integer.MIN_VALUE;
                    i13 = 1073741824;
                } else {
                    i4 = z2 ? 1073741824 : Integer.MIN_VALUE;
                }
                if (cVar2.width != -2) {
                    i5 = cVar2.width != -1 ? cVar2.width : i8;
                    i13 = 1073741824;
                } else {
                    i5 = i8;
                }
                if (cVar2.height != -2) {
                    i6 = cVar2.height != -1 ? cVar2.height : i7;
                } else {
                    i6 = i7;
                    i10 = i4;
                }
                childAt.measure(View.MeasureSpec.makeMeasureSpec(i5, i13), View.MeasureSpec.makeMeasureSpec(i6, i10));
                if (z3) {
                    i7 -= childAt.getMeasuredHeight();
                } else if (z2) {
                    i8 -= childAt.getMeasuredWidth();
                }
            }
            i9++;
            z = false;
        }
        this.G = View.MeasureSpec.makeMeasureSpec(i8, androidx.d.c.b.a.b.b);
        this.H = View.MeasureSpec.makeMeasureSpec(i7, androidx.d.c.b.a.b.b);
        this.I = true;
        d();
        this.I = false;
        int childCount2 = getChildCount();
        for (int i14 = 0; i14 < childCount2; i14++) {
            View childAt2 = getChildAt(i14);
            if (childAt2.getVisibility() != 8 && ((cVar = (c) childAt2.getLayoutParams()) == null || !cVar.f946a)) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (i8 * cVar.c), androidx.d.c.b.a.b.b), this.H);
            }
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (i2 != i4) {
            a(i2, i4, this.A, this.A);
        }
    }

    private void a(int i2, int i3, int i4, int i5) {
        if (i3 > 0 && !this.r.isEmpty()) {
            if (!this.x.isFinished()) {
                this.x.setFinalX(getCurrentItem() * getClientWidth());
                return;
            } else {
                scrollTo((int) ((getScrollX() / (((i3 - getPaddingLeft()) - getPaddingRight()) + i5)) * (((i2 - getPaddingLeft()) - getPaddingRight()) + i4)), getScrollY());
                return;
            }
        }
        b b2 = b(this.c);
        int min = (int) ((b2 != null ? Math.min(b2.e, this.F) : 0.0f) * ((i2 - getPaddingLeft()) - getPaddingRight()));
        if (min != getScrollX()) {
            a(false);
            scrollTo(min, getScrollY());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        boolean z2;
        b a2;
        int max;
        int max2;
        int childCount = getChildCount();
        int i6 = i4 - i2;
        int i7 = i5 - i3;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int scrollX = getScrollX();
        int i8 = paddingBottom;
        int i9 = 0;
        int i10 = paddingTop;
        int i11 = paddingLeft;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() != 8) {
                c cVar = (c) childAt.getLayoutParams();
                if (cVar.f946a) {
                    int i13 = cVar.b & 7;
                    int i14 = cVar.b & 112;
                    if (i13 == 1) {
                        max = Math.max((i6 - childAt.getMeasuredWidth()) / 2, i11);
                    } else if (i13 == 3) {
                        max = i11;
                        i11 = childAt.getMeasuredWidth() + i11;
                    } else if (i13 != 5) {
                        max = i11;
                    } else {
                        max = (i6 - paddingRight) - childAt.getMeasuredWidth();
                        paddingRight += childAt.getMeasuredWidth();
                    }
                    if (i14 == 16) {
                        max2 = Math.max((i7 - childAt.getMeasuredHeight()) / 2, i10);
                    } else if (i14 == 48) {
                        max2 = i10;
                        i10 = childAt.getMeasuredHeight() + i10;
                    } else if (i14 != 80) {
                        max2 = i10;
                    } else {
                        max2 = (i7 - i8) - childAt.getMeasuredHeight();
                        i8 += childAt.getMeasuredHeight();
                    }
                    int i15 = max + scrollX;
                    childAt.layout(i15, max2, childAt.getMeasuredWidth() + i15, max2 + childAt.getMeasuredHeight());
                    i9++;
                }
            }
        }
        int i16 = (i6 - i11) - paddingRight;
        for (int i17 = 0; i17 < childCount; i17++) {
            View childAt2 = getChildAt(i17);
            if (childAt2.getVisibility() != 8) {
                c cVar2 = (c) childAt2.getLayoutParams();
                if (!cVar2.f946a && (a2 = a(childAt2)) != null) {
                    float f2 = i16;
                    int i18 = ((int) (a2.e * f2)) + i11;
                    if (cVar2.d) {
                        cVar2.d = false;
                        childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (f2 * cVar2.c), androidx.d.c.b.a.b.b), View.MeasureSpec.makeMeasureSpec((i7 - i10) - i8, androidx.d.c.b.a.b.b));
                    }
                    childAt2.layout(i18, i10, childAt2.getMeasuredWidth() + i18, childAt2.getMeasuredHeight() + i10);
                }
            }
        }
        this.C = i10;
        this.D = i7 - i8;
        this.an = i9;
        if (this.ak) {
            z2 = false;
            a(this.c, false, 0, false);
        } else {
            z2 = false;
        }
        this.ak = z2;
    }

    @Override // android.view.View
    public void computeScroll() {
        this.y = true;
        if (!this.x.isFinished() && this.x.computeScrollOffset()) {
            int scrollX = getScrollX();
            int scrollY = getScrollY();
            int currX = this.x.getCurrX();
            int currY = this.x.getCurrY();
            if (scrollX != currX || scrollY != currY) {
                scrollTo(currX, currY);
                if (!d(currX)) {
                    this.x.abortAnimation();
                    scrollTo(0, currY);
                }
            }
            af.h(this);
            return;
        }
        a(true);
    }

    private boolean d(int i2) {
        if (this.r.size() == 0) {
            if (this.ak) {
                return false;
            }
            this.am = false;
            a(0, 0.0f, 0);
            if (this.am) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        b m2 = m();
        int clientWidth = getClientWidth();
        int i3 = this.A + clientWidth;
        float f2 = clientWidth;
        int i4 = m2.b;
        float f3 = ((i2 / f2) - m2.e) / (m2.d + (this.A / f2));
        this.am = false;
        a(i4, f3, (int) (i3 * f3));
        if (this.am) {
            return true;
        }
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0066  */
    @androidx.annotation.i
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void a(int i2, float f2, int i3) {
        int max;
        int i4;
        int left;
        if (this.an > 0) {
            int scrollX = getScrollX();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int width = getWidth();
            int childCount = getChildCount();
            int i5 = paddingRight;
            int i6 = paddingLeft;
            for (int i7 = 0; i7 < childCount; i7++) {
                View childAt = getChildAt(i7);
                c cVar = (c) childAt.getLayoutParams();
                if (cVar.f946a) {
                    int i8 = cVar.b & 7;
                    if (i8 == 1) {
                        max = Math.max((width - childAt.getMeasuredWidth()) / 2, i6);
                    } else {
                        if (i8 == 3) {
                            i4 = childAt.getWidth() + i6;
                        } else if (i8 != 5) {
                            i4 = i6;
                        } else {
                            max = (width - i5) - childAt.getMeasuredWidth();
                            i5 += childAt.getMeasuredWidth();
                        }
                        left = (i6 + scrollX) - childAt.getLeft();
                        if (left != 0) {
                            childAt.offsetLeftAndRight(left);
                        }
                        i6 = i4;
                    }
                    int i9 = max;
                    i4 = i6;
                    i6 = i9;
                    left = (i6 + scrollX) - childAt.getLeft();
                    if (left != 0) {
                    }
                    i6 = i4;
                }
            }
        }
        b(i2, f2, i3);
        if (this.as != null) {
            int scrollX2 = getScrollX();
            int childCount2 = getChildCount();
            for (int i10 = 0; i10 < childCount2; i10++) {
                View childAt2 = getChildAt(i10);
                if (!((c) childAt2.getLayoutParams()).f946a) {
                    this.as.a(childAt2, (childAt2.getLeft() - scrollX2) / getClientWidth());
                }
            }
        }
        this.am = true;
    }

    private void b(int i2, float f2, int i3) {
        if (this.ap != null) {
            this.ap.a(i2, f2, i3);
        }
        if (this.ao != null) {
            int size = this.ao.size();
            for (int i4 = 0; i4 < size; i4++) {
                f fVar = this.ao.get(i4);
                if (fVar != null) {
                    fVar.a(i2, f2, i3);
                }
            }
        }
        if (this.aq != null) {
            this.aq.a(i2, f2, i3);
        }
    }

    private void e(int i2) {
        if (this.ap != null) {
            this.ap.a(i2);
        }
        if (this.ao != null) {
            int size = this.ao.size();
            for (int i3 = 0; i3 < size; i3++) {
                f fVar = this.ao.get(i3);
                if (fVar != null) {
                    fVar.a(i2);
                }
            }
        }
        if (this.aq != null) {
            this.aq.a(i2);
        }
    }

    private void f(int i2) {
        if (this.ap != null) {
            this.ap.b(i2);
        }
        if (this.ao != null) {
            int size = this.ao.size();
            for (int i3 = 0; i3 < size; i3++) {
                f fVar = this.ao.get(i3);
                if (fVar != null) {
                    fVar.b(i2);
                }
            }
        }
        if (this.aq != null) {
            this.aq.b(i2);
        }
    }

    private void a(boolean z) {
        boolean z2 = this.aB == 2;
        if (z2) {
            setScrollingCacheEnabled(false);
            if (!this.x.isFinished()) {
                this.x.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = this.x.getCurrX();
                int currY = this.x.getCurrY();
                if (scrollX != currX || scrollY != currY) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        d(currX);
                    }
                }
            }
        }
        this.K = false;
        boolean z3 = z2;
        for (int i2 = 0; i2 < this.r.size(); i2++) {
            b bVar = this.r.get(i2);
            if (bVar.c) {
                bVar.c = false;
                z3 = true;
            }
        }
        if (z3) {
            if (z) {
                af.a(this, this.aA);
            } else {
                this.aA.run();
            }
        }
    }

    private boolean a(float f2, float f3) {
        return (f2 < ((float) this.P) && f3 > 0.0f) || (f2 > ((float) (getWidth() - this.P)) && f3 < 0.0f);
    }

    private void b(boolean z) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            getChildAt(i2).setLayerType(z ? this.at : 0, null);
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            l();
            return false;
        }
        if (action != 0) {
            if (this.M) {
                return true;
            }
            if (this.N) {
                return false;
            }
        }
        if (action == 0) {
            float x = motionEvent.getX();
            this.T = x;
            this.R = x;
            float y = motionEvent.getY();
            this.U = y;
            this.S = y;
            this.V = motionEvent.getPointerId(0);
            this.N = false;
            this.y = true;
            this.x.computeScrollOffset();
            if (this.aB == 2 && Math.abs(this.x.getFinalX() - this.x.getCurrX()) > this.ae) {
                this.x.abortAnimation();
                this.K = false;
                d();
                this.M = true;
                c(true);
                setScrollState(1);
            } else {
                a(false);
                this.M = false;
            }
        } else if (action == 2) {
            int i2 = this.V;
            if (i2 != -1) {
                int findPointerIndex = motionEvent.findPointerIndex(i2);
                float x2 = motionEvent.getX(findPointerIndex);
                float f2 = x2 - this.R;
                float abs = Math.abs(f2);
                float y2 = motionEvent.getY(findPointerIndex);
                float abs2 = Math.abs(y2 - this.U);
                if (f2 != 0.0f && !a(this.R, f2) && a(this, false, (int) f2, (int) x2, (int) y2)) {
                    this.R = x2;
                    this.S = y2;
                    this.N = true;
                    return false;
                }
                if (abs > this.Q && abs * 0.5f > abs2) {
                    this.M = true;
                    c(true);
                    setScrollState(1);
                    this.R = f2 > 0.0f ? this.T + this.Q : this.T - this.Q;
                    this.S = y2;
                    setScrollingCacheEnabled(true);
                } else if (abs2 > this.Q) {
                    this.N = true;
                }
                if (this.M && c(x2)) {
                    af.h(this);
                }
            }
        } else if (action == 6) {
            a(motionEvent);
        }
        if (this.aa == null) {
            this.aa = VelocityTracker.obtain();
        }
        this.aa.addMovement(motionEvent);
        return this.M;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.ag) {
            return true;
        }
        boolean z = false;
        if ((motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) || this.b == null || this.b.b() == 0) {
            return false;
        }
        if (this.aa == null) {
            this.aa = VelocityTracker.obtain();
        }
        this.aa.addMovement(motionEvent);
        switch (motionEvent.getAction() & 255) {
            case 0:
                this.x.abortAnimation();
                this.K = false;
                d();
                float x = motionEvent.getX();
                this.T = x;
                this.R = x;
                float y = motionEvent.getY();
                this.U = y;
                this.S = y;
                this.V = motionEvent.getPointerId(0);
                break;
            case 1:
                if (this.M) {
                    VelocityTracker velocityTracker = this.aa;
                    velocityTracker.computeCurrentVelocity(1000, this.ac);
                    int xVelocity = (int) velocityTracker.getXVelocity(this.V);
                    this.K = true;
                    int clientWidth = getClientWidth();
                    int scrollX = getScrollX();
                    b m2 = m();
                    float f2 = clientWidth;
                    a(a(m2.b, ((scrollX / f2) - m2.e) / (m2.d + (this.A / f2)), xVelocity, (int) (motionEvent.getX(motionEvent.findPointerIndex(this.V)) - this.T)), true, true, xVelocity);
                    z = l();
                    break;
                }
                break;
            case 2:
                if (!this.M) {
                    int findPointerIndex = motionEvent.findPointerIndex(this.V);
                    if (findPointerIndex == -1) {
                        z = l();
                        break;
                    } else {
                        float x2 = motionEvent.getX(findPointerIndex);
                        float abs = Math.abs(x2 - this.R);
                        float y2 = motionEvent.getY(findPointerIndex);
                        float abs2 = Math.abs(y2 - this.S);
                        if (abs > this.Q && abs > abs2) {
                            this.M = true;
                            c(true);
                            this.R = x2 - this.T > 0.0f ? this.T + this.Q : this.T - this.Q;
                            this.S = y2;
                            setScrollState(1);
                            setScrollingCacheEnabled(true);
                            ViewParent parent = getParent();
                            if (parent != null) {
                                parent.requestDisallowInterceptTouchEvent(true);
                            }
                        }
                    }
                }
                if (this.M) {
                    z = false | c(motionEvent.getX(motionEvent.findPointerIndex(this.V)));
                    break;
                }
                break;
            case 3:
                if (this.M) {
                    a(this.c, true, 0, false);
                    z = l();
                    break;
                }
                break;
            case 5:
                int actionIndex = motionEvent.getActionIndex();
                this.R = motionEvent.getX(actionIndex);
                this.V = motionEvent.getPointerId(actionIndex);
                break;
            case 6:
                a(motionEvent);
                this.R = motionEvent.getX(motionEvent.findPointerIndex(this.V));
                break;
        }
        if (z) {
            af.h(this);
        }
        return true;
    }

    private boolean l() {
        this.V = -1;
        n();
        this.ai.onRelease();
        this.aj.onRelease();
        return this.ai.isFinished() || this.aj.isFinished();
    }

    private void c(boolean z) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z);
        }
    }

    private boolean c(float f2) {
        boolean z;
        boolean z2;
        float f3 = this.R - f2;
        this.R = f2;
        float scrollX = getScrollX() + f3;
        float clientWidth = getClientWidth();
        float f4 = this.E * clientWidth;
        float f5 = this.F * clientWidth;
        boolean z3 = false;
        b bVar = this.r.get(0);
        b bVar2 = this.r.get(this.r.size() - 1);
        if (bVar.b != 0) {
            f4 = bVar.e * clientWidth;
            z = false;
        } else {
            z = true;
        }
        if (bVar2.b != this.b.b() - 1) {
            f5 = bVar2.e * clientWidth;
            z2 = false;
        } else {
            z2 = true;
        }
        if (scrollX < f4) {
            if (z) {
                this.ai.onPull(Math.abs(f4 - scrollX) / clientWidth);
                z3 = true;
            }
            scrollX = f4;
        } else if (scrollX > f5) {
            if (z2) {
                this.aj.onPull(Math.abs(scrollX - f5) / clientWidth);
                z3 = true;
            }
            scrollX = f5;
        }
        int i2 = (int) scrollX;
        this.R += scrollX - i2;
        scrollTo(i2, getScrollY());
        d(i2);
        return z3;
    }

    private b m() {
        int i2;
        int clientWidth = getClientWidth();
        float scrollX = clientWidth > 0 ? getScrollX() / clientWidth : 0.0f;
        float f2 = clientWidth > 0 ? this.A / clientWidth : 0.0f;
        float f3 = 0.0f;
        float f4 = 0.0f;
        int i3 = 0;
        int i4 = -1;
        b bVar = null;
        boolean z = true;
        while (i3 < this.r.size()) {
            b bVar2 = this.r.get(i3);
            if (!z && bVar2.b != (i2 = i4 + 1)) {
                bVar2 = this.s;
                bVar2.e = f3 + f4 + f2;
                bVar2.b = i2;
                bVar2.d = this.b.d(bVar2.b);
                i3--;
            }
            f3 = bVar2.e;
            float f5 = bVar2.d + f3 + f2;
            if (!z && scrollX < f3) {
                return bVar;
            }
            if (scrollX < f5 || i3 == this.r.size() - 1) {
                return bVar2;
            }
            i4 = bVar2.b;
            f4 = bVar2.d;
            i3++;
            z = false;
            bVar = bVar2;
        }
        return bVar;
    }

    private int a(int i2, float f2, int i3, int i4) {
        if (Math.abs(i4) <= this.ad || Math.abs(i3) <= this.ab) {
            i2 += (int) (f2 + (i2 >= this.c ? 0.4f : 0.6f));
        } else if (i3 <= 0) {
            i2++;
        }
        if (this.r.size() > 0) {
            return Math.max(this.r.get(0).b, Math.min(i2, this.r.get(this.r.size() - 1).b));
        }
        return i2;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        int overScrollMode = getOverScrollMode();
        boolean z = false;
        if (overScrollMode == 0 || (overScrollMode == 1 && this.b != null && this.b.b() > 1)) {
            if (!this.ai.isFinished()) {
                int save = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate((-height) + getPaddingTop(), this.E * width);
                this.ai.setSize(height, width);
                z = false | this.ai.draw(canvas);
                canvas.restoreToCount(save);
            }
            if (!this.aj.isFinished()) {
                int save2 = canvas.save();
                int width2 = getWidth();
                int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.F + 1.0f)) * width2);
                this.aj.setSize(height2, width2);
                z |= this.aj.draw(canvas);
                canvas.restoreToCount(save2);
            }
        } else {
            this.ai.finish();
            this.aj.finish();
        }
        if (z) {
            af.h(this);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f2;
        float f3;
        float f4;
        super.onDraw(canvas);
        if (this.A <= 0 || this.B == null || this.r.size() <= 0 || this.b == null) {
            return;
        }
        int scrollX = getScrollX();
        float width = getWidth();
        float f5 = this.A / width;
        int i2 = 0;
        b bVar = this.r.get(0);
        float f6 = bVar.e;
        int size = this.r.size();
        int i3 = bVar.b;
        int i4 = this.r.get(size - 1).b;
        while (i3 < i4) {
            while (i3 > bVar.b && i2 < size) {
                i2++;
                bVar = this.r.get(i2);
            }
            if (i3 == bVar.b) {
                f3 = (bVar.e + bVar.d) * width;
                f2 = bVar.e + bVar.d + f5;
            } else {
                float d2 = this.b.d(i3);
                float f7 = (f6 + d2) * width;
                f2 = f6 + d2 + f5;
                f3 = f7;
            }
            if (this.A + f3 > scrollX) {
                f4 = f5;
                this.B.setBounds(Math.round(f3), this.C, Math.round(this.A + f3), this.D);
                this.B.draw(canvas);
            } else {
                f4 = f5;
            }
            if (f3 > scrollX + r2) {
                return;
            }
            i3++;
            f6 = f2;
            f5 = f4;
        }
    }

    public boolean e() {
        if (this.M) {
            return false;
        }
        this.ag = true;
        setScrollState(1);
        this.R = 0.0f;
        this.T = 0.0f;
        if (this.aa == null) {
            this.aa = VelocityTracker.obtain();
        } else {
            this.aa.clear();
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, 0.0f, 0.0f, 0);
        this.aa.addMovement(obtain);
        obtain.recycle();
        this.ah = uptimeMillis;
        return true;
    }

    public void f() {
        if (!this.ag) {
            throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
        }
        if (this.b != null) {
            VelocityTracker velocityTracker = this.aa;
            velocityTracker.computeCurrentVelocity(1000, this.ac);
            int xVelocity = (int) velocityTracker.getXVelocity(this.V);
            this.K = true;
            int clientWidth = getClientWidth();
            int scrollX = getScrollX();
            b m2 = m();
            a(a(m2.b, ((scrollX / clientWidth) - m2.e) / m2.d, xVelocity, (int) (this.R - this.T)), true, true, xVelocity);
        }
        n();
        this.ag = false;
    }

    public void b(float f2) {
        if (!this.ag) {
            throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
        }
        if (this.b == null) {
            return;
        }
        this.R += f2;
        float scrollX = getScrollX() - f2;
        float clientWidth = getClientWidth();
        float f3 = this.E * clientWidth;
        float f4 = this.F * clientWidth;
        b bVar = this.r.get(0);
        b bVar2 = this.r.get(this.r.size() - 1);
        if (bVar.b != 0) {
            f3 = bVar.e * clientWidth;
        }
        if (bVar2.b != this.b.b() - 1) {
            f4 = bVar2.e * clientWidth;
        }
        if (scrollX < f3) {
            scrollX = f3;
        } else if (scrollX > f4) {
            scrollX = f4;
        }
        int i2 = (int) scrollX;
        this.R += scrollX - i2;
        scrollTo(i2, getScrollY());
        d(i2);
        MotionEvent obtain = MotionEvent.obtain(this.ah, SystemClock.uptimeMillis(), 2, this.R, 0.0f, 0);
        this.aa.addMovement(obtain);
        obtain.recycle();
    }

    public boolean g() {
        return this.ag;
    }

    private void a(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.V) {
            int i2 = actionIndex == 0 ? 1 : 0;
            this.R = motionEvent.getX(i2);
            this.V = motionEvent.getPointerId(i2);
            if (this.aa != null) {
                this.aa.clear();
            }
        }
    }

    private void n() {
        this.M = false;
        this.N = false;
        if (this.aa != null) {
            this.aa.recycle();
            this.aa = null;
        }
    }

    private void setScrollingCacheEnabled(boolean z) {
        if (this.J != z) {
            this.J = z;
        }
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i2) {
        if (this.b == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        return i2 < 0 ? scrollX > ((int) (((float) clientWidth) * this.E)) : i2 > 0 && scrollX < ((int) (((float) clientWidth) * this.F));
    }

    protected boolean a(View view, boolean z, int i2, int i3, int i4) {
        int i5;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i6 = i3 + scrollX;
                if (i6 >= childAt.getLeft() && i6 < childAt.getRight() && (i5 = i4 + scrollY) >= childAt.getTop() && i5 < childAt.getBottom() && a(childAt, true, i2, i6 - childAt.getLeft(), i5 - childAt.getTop())) {
                    return true;
                }
            }
        }
        return z && view.canScrollHorizontally(-i2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || a(keyEvent);
    }

    public boolean a(@ah KeyEvent keyEvent) {
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 61) {
                switch (keyCode) {
                    case 21:
                        if (keyEvent.hasModifiers(2)) {
                            return h();
                        }
                        return c(17);
                    case 22:
                        if (keyEvent.hasModifiers(2)) {
                            return i();
                        }
                        return c(66);
                }
            }
            if (keyEvent.hasNoModifiers()) {
                return c(2);
            }
            if (keyEvent.hasModifiers(1)) {
                return c(1);
            }
        }
        return false;
    }

    public boolean c(int i2) {
        boolean requestFocus;
        boolean z;
        View findFocus = findFocus();
        boolean z2 = false;
        View view = null;
        if (findFocus != this) {
            if (findFocus != null) {
                ViewParent parent = findFocus.getParent();
                while (true) {
                    if (!(parent instanceof ViewGroup)) {
                        z = false;
                        break;
                    }
                    if (parent == this) {
                        z = true;
                        break;
                    }
                    parent = parent.getParent();
                }
                if (!z) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(findFocus.getClass().getSimpleName());
                    for (ViewParent parent2 = findFocus.getParent(); parent2 instanceof ViewGroup; parent2 = parent2.getParent()) {
                        sb.append(" => ");
                        sb.append(parent2.getClass().getSimpleName());
                    }
                    Log.e(g, "arrowScroll tried to find focus based on non-child current focused view " + sb.toString());
                }
            }
            view = findFocus;
        }
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, view, i2);
        if (findNextFocus != null && findNextFocus != view) {
            if (i2 == 17) {
                int i3 = a(this.t, findNextFocus).left;
                int i4 = a(this.t, view).left;
                if (view != null && i3 >= i4) {
                    requestFocus = h();
                } else {
                    requestFocus = findNextFocus.requestFocus();
                }
            } else if (i2 == 66) {
                int i5 = a(this.t, findNextFocus).left;
                int i6 = a(this.t, view).left;
                if (view != null && i5 <= i6) {
                    requestFocus = i();
                } else {
                    requestFocus = findNextFocus.requestFocus();
                }
            }
            z2 = requestFocus;
        } else if (i2 == 17 || i2 == 1) {
            z2 = h();
        } else if (i2 == 66 || i2 == 2) {
            z2 = i();
        }
        if (z2) {
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i2));
        }
        return z2;
    }

    private Rect a(Rect rect, View view) {
        if (rect == null) {
            rect = new Rect();
        }
        if (view == null) {
            rect.set(0, 0, 0, 0);
            return rect;
        }
        rect.left = view.getLeft();
        rect.right = view.getRight();
        rect.top = view.getTop();
        rect.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect.left += viewGroup.getLeft();
            rect.right += viewGroup.getRight();
            rect.top += viewGroup.getTop();
            rect.bottom += viewGroup.getBottom();
            parent = viewGroup.getParent();
        }
        return rect;
    }

    boolean h() {
        if (this.c <= 0) {
            return false;
        }
        a(this.c - 1, true);
        return true;
    }

    boolean i() {
        if (this.b == null || this.c >= this.b.b() - 1) {
            return false;
        }
        a(this.c + 1, true);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i2, int i3) {
        b a2;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i4 = 0; i4 < getChildCount(); i4++) {
                View childAt = getChildAt(i4);
                if (childAt.getVisibility() == 0 && (a2 = a(childAt)) != null && a2.b == this.c) {
                    childAt.addFocusables(arrayList, i2, i3);
                }
            }
        }
        if ((descendantFocusability != 262144 || size == arrayList.size()) && isFocusable()) {
            if (((i3 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) || arrayList == null) {
                return;
            }
            arrayList.add(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addTouchables(ArrayList<View> arrayList) {
        b a2;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0 && (a2 = a(childAt)) != null && a2.b == this.c) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i2, Rect rect) {
        int i3;
        int i4;
        b a2;
        int childCount = getChildCount();
        int i5 = -1;
        if ((i2 & 2) != 0) {
            i5 = childCount;
            i3 = 0;
            i4 = 1;
        } else {
            i3 = childCount - 1;
            i4 = -1;
        }
        while (i3 != i5) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() == 0 && (a2 = a(childAt)) != null && a2.b == this.c && childAt.requestFocus(i2, rect)) {
                return true;
            }
            i3 += i4;
        }
        return false;
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        b a2;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0 && (a2 = a(childAt)) != null && a2.b == this.c && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new c();
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof c) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new c(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.l.a.d$d, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class C0071d extends androidx.core.n.a {
        C0071d() {
        }

        @Override // androidx.core.n.a
        public void d(View view, AccessibilityEvent accessibilityEvent) {
            super.d(view, accessibilityEvent);
            accessibilityEvent.setClassName(d.class.getName());
            accessibilityEvent.setScrollable(b());
            if (accessibilityEvent.getEventType() != 4096 || d.this.b == null) {
                return;
            }
            accessibilityEvent.setItemCount(d.this.b.b());
            accessibilityEvent.setFromIndex(d.this.c);
            accessibilityEvent.setToIndex(d.this.c);
        }

        @Override // androidx.core.n.a
        public void a(View view, androidx.core.n.a.d dVar) {
            super.a(view, dVar);
            dVar.b((CharSequence) d.class.getName());
            dVar.l(b());
            if (d.this.canScrollHorizontally(1)) {
                dVar.d(4096);
            }
            if (d.this.canScrollHorizontally(-1)) {
                dVar.d(8192);
            }
        }

        @Override // androidx.core.n.a
        public boolean a(View view, int i, Bundle bundle) {
            if (super.a(view, i, bundle)) {
                return true;
            }
            if (i == 4096) {
                if (!d.this.canScrollHorizontally(1)) {
                    return false;
                }
                d.this.setCurrentItem(d.this.c + 1);
                return true;
            }
            if (i != 8192 || !d.this.canScrollHorizontally(-1)) {
                return false;
            }
            d.this.setCurrentItem(d.this.c - 1);
            return true;
        }

        private boolean b() {
            return d.this.b != null && d.this.b.b() > 1;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private class h extends DataSetObserver {
        h() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            d.this.c();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            d.this.c();
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class c extends ViewGroup.LayoutParams {

        /* renamed from: a, reason: collision with root package name */
        public boolean f946a;
        public int b;
        float c;
        boolean d;
        int e;
        int f;

        public c() {
            super(-1, -1);
            this.c = 0.0f;
        }

        public c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.c = 0.0f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d.f942a);
            this.b = obtainStyledAttributes.getInteger(0, 48);
            obtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class k implements Comparator<View> {
        k() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(View view, View view2) {
            c cVar = (c) view.getLayoutParams();
            c cVar2 = (c) view2.getLayoutParams();
            if (cVar.f946a != cVar2.f946a) {
                return cVar.f946a ? 1 : -1;
            }
            return cVar.e - cVar2.e;
        }
    }
}
