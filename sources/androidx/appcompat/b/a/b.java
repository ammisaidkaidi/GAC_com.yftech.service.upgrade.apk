package androidx.appcompat.b.a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.SystemClock;
import android.util.SparseArray;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.am;
import androidx.annotation.ap;

/* JADX INFO: Access modifiers changed from: package-private */
@ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public class b extends Drawable implements Drawable.Callback {

    /* renamed from: a, reason: collision with root package name */
    private static final boolean f102a = false;
    private static final String b = "DrawableContainer";
    private static final boolean c = true;
    private AbstractC0015b d;
    private Rect e;
    private Drawable f;
    private Drawable g;
    private boolean i;
    private boolean k;
    private Runnable l;
    private long m;
    private long n;
    private a o;
    private int h = 255;
    private int j = -1;

    @Override // android.graphics.drawable.Drawable
    public void draw(@ah Canvas canvas) {
        if (this.f != null) {
            this.f.draw(canvas);
        }
        if (this.g != null) {
            this.g.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return this.d.getChangingConfigurations() | super.getChangingConfigurations();
    }

    private boolean a() {
        if (isAutoMirrored() && androidx.core.graphics.drawable.a.i(this) == 1) {
            return c;
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(@ah Rect rect) {
        boolean padding;
        Rect f = this.d.f();
        if (f != null) {
            rect.set(f);
            padding = (f.right | ((f.left | f.top) | f.bottom)) != 0 ? c : false;
        } else if (this.f != null) {
            padding = this.f.getPadding(rect);
        } else {
            padding = super.getPadding(rect);
        }
        if (a()) {
            int i = rect.left;
            rect.left = rect.right;
            rect.right = i;
        }
        return padding;
    }

    @Override // android.graphics.drawable.Drawable
    @am(a = 21)
    public void getOutline(@ah Outline outline) {
        if (this.f != null) {
            this.f.getOutline(outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.i && this.h == i) {
            return;
        }
        this.i = c;
        this.h = i;
        if (this.f != null) {
            if (this.m == 0) {
                this.f.setAlpha(i);
            } else {
                a(false);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.h;
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        if (this.d.z != z) {
            this.d.z = z;
            if (this.f != null) {
                this.f.setDither(this.d.z);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.d.G = c;
        if (this.d.F != colorFilter) {
            this.d.F = colorFilter;
            if (this.f != null) {
                this.f.setColorFilter(colorFilter);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.e
    public void setTintList(ColorStateList colorStateList) {
        this.d.J = c;
        if (this.d.H != colorStateList) {
            this.d.H = colorStateList;
            androidx.core.graphics.drawable.a.a(this.f, colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.e
    public void setTintMode(@ah PorterDuff.Mode mode) {
        this.d.K = c;
        if (this.d.I != mode) {
            this.d.I = mode;
            androidx.core.graphics.drawable.a.a(this.f, mode);
        }
    }

    public void b(int i) {
        this.d.C = i;
    }

    public void a(int i) {
        this.d.D = i;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        if (this.g != null) {
            this.g.setBounds(rect);
        }
        if (this.f != null) {
            this.f.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.d.p();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        if (this.d.E != z) {
            this.d.E = z;
            if (this.f != null) {
                androidx.core.graphics.drawable.a.a(this.f, this.d.E);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.d.E;
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        boolean z;
        if (this.g != null) {
            this.g.jumpToCurrentState();
            this.g = null;
            z = true;
        } else {
            z = false;
        }
        if (this.f != null) {
            this.f.jumpToCurrentState();
            if (this.i) {
                this.f.setAlpha(this.h);
            }
        }
        if (this.n != 0) {
            this.n = 0L;
            z = true;
        }
        if (this.m != 0) {
            this.m = 0L;
            z = true;
        }
        if (z) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f, float f2) {
        if (this.f != null) {
            androidx.core.graphics.drawable.a.a(this.f, f, f2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        if (this.e == null) {
            this.e = new Rect(i, i2, i3, i4);
        } else {
            this.e.set(i, i2, i3, i4);
        }
        if (this.f != null) {
            androidx.core.graphics.drawable.a.a(this.f, i, i2, i3, i4);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void getHotspotBounds(@ah Rect rect) {
        if (this.e != null) {
            rect.set(this.e);
        } else {
            super.getHotspotBounds(rect);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        if (this.g != null) {
            return this.g.setState(iArr);
        }
        if (this.f != null) {
            return this.f.setState(iArr);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        if (this.g != null) {
            return this.g.setLevel(i);
        }
        if (this.f != null) {
            return this.f.setLevel(i);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i) {
        return this.d.d(i, d());
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        if (this.d.g()) {
            return this.d.h();
        }
        if (this.f != null) {
            return this.f.getIntrinsicWidth();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        if (this.d.g()) {
            return this.d.i();
        }
        if (this.f != null) {
            return this.f.getIntrinsicHeight();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        if (this.d.g()) {
            return this.d.j();
        }
        if (this.f != null) {
            return this.f.getMinimumWidth();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        if (this.d.g()) {
            return this.d.k();
        }
        if (this.f != null) {
            return this.f.getMinimumHeight();
        }
        return 0;
    }

    public void invalidateDrawable(@ah Drawable drawable) {
        if (this.d != null) {
            this.d.b();
        }
        if (drawable != this.f || getCallback() == null) {
            return;
        }
        getCallback().invalidateDrawable(this);
    }

    public void scheduleDrawable(@ah Drawable drawable, @ah Runnable runnable, long j) {
        if (drawable != this.f || getCallback() == null) {
            return;
        }
        getCallback().scheduleDrawable(this, runnable, j);
    }

    public void unscheduleDrawable(@ah Drawable drawable, @ah Runnable runnable) {
        if (drawable != this.f || getCallback() == null) {
            return;
        }
        getCallback().unscheduleDrawable(this, runnable);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        if (this.g != null) {
            this.g.setVisible(z, z2);
        }
        if (this.f != null) {
            this.f.setVisible(z, z2);
        }
        return visible;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        if (this.f == null || !this.f.isVisible()) {
            return -2;
        }
        return this.d.o();
    }

    void c(int i) {
        d(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int d() {
        return this.j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d(int i) {
        if (i == this.j) {
            return false;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        if (this.d.D > 0) {
            if (this.g != null) {
                this.g.setVisible(false, false);
            }
            if (this.f != null) {
                this.g = this.f;
                this.n = this.d.D + uptimeMillis;
            } else {
                this.g = null;
                this.n = 0L;
            }
        } else if (this.f != null) {
            this.f.setVisible(false, false);
        }
        if (i >= 0 && i < this.d.j) {
            Drawable b2 = this.d.b(i);
            this.f = b2;
            this.j = i;
            if (b2 != null) {
                if (this.d.C > 0) {
                    this.m = uptimeMillis + this.d.C;
                }
                a(b2);
            }
        } else {
            this.f = null;
            this.j = -1;
        }
        if (this.m != 0 || this.n != 0) {
            if (this.l == null) {
                this.l = new Runnable() { // from class: androidx.appcompat.b.a.b.1
                    @Override // java.lang.Runnable
                    public void run() {
                        b.this.a(b.c);
                        b.this.invalidateSelf();
                    }
                };
            } else {
                unscheduleSelf(this.l);
            }
            a(c);
        }
        invalidateSelf();
        return c;
    }

    private void a(Drawable drawable) {
        if (this.o == null) {
            this.o = new a();
        }
        drawable.setCallback(this.o.a(drawable.getCallback()));
        try {
            if (this.d.C <= 0 && this.i) {
                drawable.setAlpha(this.h);
            }
            if (this.d.G) {
                drawable.setColorFilter(this.d.F);
            } else {
                if (this.d.J) {
                    androidx.core.graphics.drawable.a.a(drawable, this.d.H);
                }
                if (this.d.K) {
                    androidx.core.graphics.drawable.a.a(drawable, this.d.I);
                }
            }
            drawable.setVisible(isVisible(), c);
            drawable.setDither(this.d.z);
            drawable.setState(getState());
            drawable.setLevel(getLevel());
            drawable.setBounds(getBounds());
            if (Build.VERSION.SDK_INT >= 23) {
                drawable.setLayoutDirection(getLayoutDirection());
            }
            if (Build.VERSION.SDK_INT >= 19) {
                drawable.setAutoMirrored(this.d.E);
            }
            Rect rect = this.e;
            if (Build.VERSION.SDK_INT >= 21 && rect != null) {
                drawable.setHotspotBounds(rect.left, rect.top, rect.right, rect.bottom);
            }
        } finally {
            drawable.setCallback(this.o.a());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0076 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:23:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0071  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void a(boolean z) {
        boolean z2;
        boolean z3 = c;
        this.i = c;
        long uptimeMillis = SystemClock.uptimeMillis();
        if (this.f == null) {
            this.m = 0L;
        } else if (this.m != 0) {
            if (this.m <= uptimeMillis) {
                this.f.setAlpha(this.h);
                this.m = 0L;
            } else {
                this.f.setAlpha(((255 - (((int) ((this.m - uptimeMillis) * 255)) / this.d.C)) * this.h) / 255);
                z2 = true;
                if (this.g != null) {
                    this.n = 0L;
                } else if (this.n != 0) {
                    if (this.n <= uptimeMillis) {
                        this.g.setVisible(false, false);
                        this.g = null;
                        this.n = 0L;
                    } else {
                        this.g.setAlpha(((((int) ((this.n - uptimeMillis) * 255)) / this.d.D) * this.h) / 255);
                        if (z && z3) {
                            scheduleSelf(this.l, uptimeMillis + 16);
                            return;
                        }
                        return;
                    }
                }
                z3 = z2;
                if (z) {
                    return;
                } else {
                    return;
                }
            }
        }
        z2 = false;
        if (this.g != null) {
        }
        z3 = z2;
        if (z) {
        }
    }

    @Override // android.graphics.drawable.Drawable
    @ah
    public Drawable getCurrent() {
        return this.f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Resources resources) {
        this.d.a(resources);
    }

    @Override // android.graphics.drawable.Drawable
    @am(a = 21)
    public void applyTheme(@ah Resources.Theme theme) {
        this.d.a(theme);
    }

    @Override // android.graphics.drawable.Drawable
    @am(a = 21)
    public boolean canApplyTheme() {
        return this.d.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (!this.d.q()) {
            return null;
        }
        this.d.f = getChangingConfigurations();
        return this.d;
    }

    @Override // android.graphics.drawable.Drawable
    @ah
    public Drawable mutate() {
        if (!this.k && super.mutate() == this) {
            AbstractC0015b c2 = c();
            c2.a();
            a(c2);
            this.k = c;
        }
        return this;
    }

    AbstractC0015b c() {
        return this.d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clearMutated() {
        this.d.e();
        this.k = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.b.a.b$b, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class AbstractC0015b extends Drawable.ConstantState {
        boolean A;
        int B;
        int C;
        int D;
        boolean E;
        ColorFilter F;
        boolean G;
        ColorStateList H;
        PorterDuff.Mode I;
        boolean J;
        boolean K;
        final b c;
        Resources d;
        int e;
        int f;
        int g;
        SparseArray<Drawable.ConstantState> h;
        Drawable[] i;
        int j;
        boolean k;
        boolean l;
        Rect m;
        boolean n;
        boolean o;
        int p;
        int q;
        int r;
        int s;
        boolean t;
        int u;
        boolean v;
        boolean w;
        boolean x;
        boolean y;
        boolean z;

        /* JADX INFO: Access modifiers changed from: package-private */
        public AbstractC0015b(AbstractC0015b abstractC0015b, b bVar, Resources resources) {
            Resources resources2;
            this.e = 160;
            this.k = false;
            this.n = false;
            this.z = b.c;
            this.C = 0;
            this.D = 0;
            this.c = bVar;
            if (resources != null) {
                resources2 = resources;
            } else {
                resources2 = abstractC0015b != null ? abstractC0015b.d : null;
            }
            this.d = resources2;
            this.e = b.a(resources, abstractC0015b != null ? abstractC0015b.e : 0);
            if (abstractC0015b != null) {
                this.f = abstractC0015b.f;
                this.g = abstractC0015b.g;
                this.x = b.c;
                this.y = b.c;
                this.k = abstractC0015b.k;
                this.n = abstractC0015b.n;
                this.z = abstractC0015b.z;
                this.A = abstractC0015b.A;
                this.B = abstractC0015b.B;
                this.C = abstractC0015b.C;
                this.D = abstractC0015b.D;
                this.E = abstractC0015b.E;
                this.F = abstractC0015b.F;
                this.G = abstractC0015b.G;
                this.H = abstractC0015b.H;
                this.I = abstractC0015b.I;
                this.J = abstractC0015b.J;
                this.K = abstractC0015b.K;
                if (abstractC0015b.e == this.e) {
                    if (abstractC0015b.l) {
                        this.m = new Rect(abstractC0015b.m);
                        this.l = b.c;
                    }
                    if (abstractC0015b.o) {
                        this.p = abstractC0015b.p;
                        this.q = abstractC0015b.q;
                        this.r = abstractC0015b.r;
                        this.s = abstractC0015b.s;
                        this.o = b.c;
                    }
                }
                if (abstractC0015b.t) {
                    this.u = abstractC0015b.u;
                    this.t = b.c;
                }
                if (abstractC0015b.v) {
                    this.w = abstractC0015b.w;
                    this.v = b.c;
                }
                Drawable[] drawableArr = abstractC0015b.i;
                this.i = new Drawable[drawableArr.length];
                this.j = abstractC0015b.j;
                SparseArray<Drawable.ConstantState> sparseArray = abstractC0015b.h;
                if (sparseArray != null) {
                    this.h = sparseArray.clone();
                } else {
                    this.h = new SparseArray<>(this.j);
                }
                int i = this.j;
                for (int i2 = 0; i2 < i; i2++) {
                    if (drawableArr[i2] != null) {
                        Drawable.ConstantState constantState = drawableArr[i2].getConstantState();
                        if (constantState != null) {
                            this.h.put(i2, constantState);
                        } else {
                            this.i[i2] = drawableArr[i2];
                        }
                    }
                }
                return;
            }
            this.i = new Drawable[10];
            this.j = 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.g | this.f;
        }

        public final int a(Drawable drawable) {
            int i = this.j;
            if (i >= this.i.length) {
                e(i, i + 10);
            }
            drawable.mutate();
            drawable.setVisible(false, b.c);
            drawable.setCallback(this.c);
            this.i[i] = drawable;
            this.j++;
            this.g = drawable.getChangingConfigurations() | this.g;
            b();
            this.m = null;
            this.l = false;
            this.o = false;
            this.x = false;
            return i;
        }

        void b() {
            this.t = false;
            this.v = false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final int c() {
            return this.i.length;
        }

        private void r() {
            if (this.h != null) {
                int size = this.h.size();
                for (int i = 0; i < size; i++) {
                    this.i[this.h.keyAt(i)] = b(this.h.valueAt(i).newDrawable(this.d));
                }
                this.h = null;
            }
        }

        private Drawable b(Drawable drawable) {
            if (Build.VERSION.SDK_INT >= 23) {
                drawable.setLayoutDirection(this.B);
            }
            Drawable mutate = drawable.mutate();
            mutate.setCallback(this.c);
            return mutate;
        }

        public final int d() {
            return this.j;
        }

        public final Drawable b(int i) {
            int indexOfKey;
            Drawable drawable = this.i[i];
            if (drawable != null) {
                return drawable;
            }
            if (this.h == null || (indexOfKey = this.h.indexOfKey(i)) < 0) {
                return null;
            }
            Drawable b = b(this.h.valueAt(indexOfKey).newDrawable(this.d));
            this.i[i] = b;
            this.h.removeAt(indexOfKey);
            if (this.h.size() == 0) {
                this.h = null;
            }
            return b;
        }

        final boolean d(int i, int i2) {
            int i3 = this.j;
            Drawable[] drawableArr = this.i;
            boolean z = false;
            for (int i4 = 0; i4 < i3; i4++) {
                if (drawableArr[i4] != null) {
                    boolean layoutDirection = Build.VERSION.SDK_INT >= 23 ? drawableArr[i4].setLayoutDirection(i) : false;
                    if (i4 == i2) {
                        z = layoutDirection;
                    }
                }
            }
            this.B = i;
            return z;
        }

        final void a(Resources resources) {
            if (resources != null) {
                this.d = resources;
                int a2 = b.a(resources, this.e);
                int i = this.e;
                this.e = a2;
                if (i != a2) {
                    this.o = false;
                    this.l = false;
                }
            }
        }

        @am(a = 21)
        final void a(Resources.Theme theme) {
            if (theme != null) {
                r();
                int i = this.j;
                Drawable[] drawableArr = this.i;
                for (int i2 = 0; i2 < i; i2++) {
                    if (drawableArr[i2] != null && drawableArr[i2].canApplyTheme()) {
                        drawableArr[i2].applyTheme(theme);
                        this.g |= drawableArr[i2].getChangingConfigurations();
                    }
                }
                a(theme.getResources());
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @am(a = 21)
        public boolean canApplyTheme() {
            int i = this.j;
            Drawable[] drawableArr = this.i;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                if (drawable != null) {
                    if (drawable.canApplyTheme()) {
                        return b.c;
                    }
                } else {
                    Drawable.ConstantState constantState = this.h.get(i2);
                    if (constantState != null && constantState.canApplyTheme()) {
                        return b.c;
                    }
                }
            }
            return false;
        }

        void a() {
            int i = this.j;
            Drawable[] drawableArr = this.i;
            for (int i2 = 0; i2 < i; i2++) {
                if (drawableArr[i2] != null) {
                    drawableArr[i2].mutate();
                }
            }
            this.A = b.c;
        }

        final void e() {
            this.A = false;
        }

        public final void a(boolean z) {
            this.k = z;
        }

        public final Rect f() {
            if (this.k) {
                return null;
            }
            if (this.m != null || this.l) {
                return this.m;
            }
            r();
            Rect rect = new Rect();
            int i = this.j;
            Drawable[] drawableArr = this.i;
            Rect rect2 = null;
            for (int i2 = 0; i2 < i; i2++) {
                if (drawableArr[i2].getPadding(rect)) {
                    if (rect2 == null) {
                        rect2 = new Rect(0, 0, 0, 0);
                    }
                    if (rect.left > rect2.left) {
                        rect2.left = rect.left;
                    }
                    if (rect.top > rect2.top) {
                        rect2.top = rect.top;
                    }
                    if (rect.right > rect2.right) {
                        rect2.right = rect.right;
                    }
                    if (rect.bottom > rect2.bottom) {
                        rect2.bottom = rect.bottom;
                    }
                }
            }
            this.l = b.c;
            this.m = rect2;
            return rect2;
        }

        public final void b(boolean z) {
            this.n = z;
        }

        public final boolean g() {
            return this.n;
        }

        public final int h() {
            if (!this.o) {
                l();
            }
            return this.p;
        }

        public final int i() {
            if (!this.o) {
                l();
            }
            return this.q;
        }

        public final int j() {
            if (!this.o) {
                l();
            }
            return this.r;
        }

        public final int k() {
            if (!this.o) {
                l();
            }
            return this.s;
        }

        protected void l() {
            this.o = b.c;
            r();
            int i = this.j;
            Drawable[] drawableArr = this.i;
            this.q = -1;
            this.p = -1;
            this.s = 0;
            this.r = 0;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                int intrinsicWidth = drawable.getIntrinsicWidth();
                if (intrinsicWidth > this.p) {
                    this.p = intrinsicWidth;
                }
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicHeight > this.q) {
                    this.q = intrinsicHeight;
                }
                int minimumWidth = drawable.getMinimumWidth();
                if (minimumWidth > this.r) {
                    this.r = minimumWidth;
                }
                int minimumHeight = drawable.getMinimumHeight();
                if (minimumHeight > this.s) {
                    this.s = minimumHeight;
                }
            }
        }

        public final void c(int i) {
            this.C = i;
        }

        public final int m() {
            return this.C;
        }

        public final void d(int i) {
            this.D = i;
        }

        public final int n() {
            return this.D;
        }

        public final int o() {
            if (this.t) {
                return this.u;
            }
            r();
            int i = this.j;
            Drawable[] drawableArr = this.i;
            int opacity = i > 0 ? drawableArr[0].getOpacity() : -2;
            for (int i2 = 1; i2 < i; i2++) {
                opacity = Drawable.resolveOpacity(opacity, drawableArr[i2].getOpacity());
            }
            this.u = opacity;
            this.t = b.c;
            return opacity;
        }

        public final boolean p() {
            if (this.v) {
                return this.w;
            }
            r();
            int i = this.j;
            Drawable[] drawableArr = this.i;
            boolean z = false;
            int i2 = 0;
            while (true) {
                if (i2 >= i) {
                    break;
                }
                if (drawableArr[i2].isStateful()) {
                    z = true;
                    break;
                }
                i2++;
            }
            this.w = z;
            this.v = b.c;
            return z;
        }

        public void e(int i, int i2) {
            Drawable[] drawableArr = new Drawable[i2];
            System.arraycopy(this.i, 0, drawableArr, 0, i);
            this.i = drawableArr;
        }

        public synchronized boolean q() {
            if (this.x) {
                return this.y;
            }
            r();
            this.x = b.c;
            int i = this.j;
            Drawable[] drawableArr = this.i;
            for (int i2 = 0; i2 < i; i2++) {
                if (drawableArr[i2].getConstantState() == null) {
                    this.y = false;
                    return false;
                }
            }
            this.y = b.c;
            return b.c;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(AbstractC0015b abstractC0015b) {
        this.d = abstractC0015b;
        if (this.j >= 0) {
            this.f = abstractC0015b.b(this.j);
            if (this.f != null) {
                a(this.f);
            }
        }
        this.g = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a implements Drawable.Callback {

        /* renamed from: a, reason: collision with root package name */
        private Drawable.Callback f104a;

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(@ah Drawable drawable) {
        }

        a() {
        }

        public a a(Drawable.Callback callback) {
            this.f104a = callback;
            return this;
        }

        public Drawable.Callback a() {
            Drawable.Callback callback = this.f104a;
            this.f104a = null;
            return callback;
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(@ah Drawable drawable, @ah Runnable runnable, long j) {
            if (this.f104a != null) {
                this.f104a.scheduleDrawable(drawable, runnable, j);
            }
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(@ah Drawable drawable, @ah Runnable runnable) {
            if (this.f104a != null) {
                this.f104a.unscheduleDrawable(drawable, runnable);
            }
        }
    }

    static int a(@ai Resources resources, int i) {
        if (resources != null) {
            i = resources.getDisplayMetrics().densityDpi;
        }
        if (i == 0) {
            return 160;
        }
        return i;
    }
}
