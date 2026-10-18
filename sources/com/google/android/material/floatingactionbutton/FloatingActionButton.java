package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ak;
import androidx.annotation.am;
import androidx.annotation.ap;
import androidx.annotation.ax;
import androidx.annotation.k;
import androidx.annotation.q;
import androidx.annotation.w;
import androidx.appcompat.widget.o;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.m.i;
import androidx.core.n.ad;
import androidx.core.n.af;
import androidx.core.widget.p;
import com.google.android.material.a;
import com.google.android.material.a.h;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.floatingactionbutton.d;
import com.google.android.material.internal.aa;
import com.google.android.material.internal.z;
import com.google.android.material.t.s;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class FloatingActionButton extends aa implements CoordinatorLayout.a, ad, p, com.google.android.material.l.a, s {

    /* renamed from: a, reason: collision with root package name */
    public static final int f1290a = 1;
    public static final int b = 0;
    public static final int c = -1;
    public static final int d = 0;
    private static final String g = "FloatingActionButton";
    private static final String h = "expandableWidgetHelper";
    private static final int i = a.n.Widget_Design_FloatingActionButton;
    private static final int j = 470;
    boolean e;
    final Rect f;

    @ai
    private ColorStateList k;

    @ai
    private PorterDuff.Mode l;

    @ai
    private ColorStateList m;

    @ai
    private PorterDuff.Mode n;

    @ai
    private ColorStateList o;
    private int p;
    private int q;
    private int r;
    private int s;
    private int t;
    private final Rect u;

    @ah
    private final o v;

    @ah
    private final com.google.android.material.l.c w;
    private com.google.android.material.floatingactionbutton.d x;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class a {
        public void a(FloatingActionButton floatingActionButton) {
        }

        public void b(FloatingActionButton floatingActionButton) {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @ap(a = {ap.a.LIBRARY_GROUP})
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface c {
    }

    public FloatingActionButton(@ah Context context) {
        this(context, null);
    }

    public FloatingActionButton(@ah Context context, @ai AttributeSet attributeSet) {
        this(context, attributeSet, a.c.floatingActionButtonStyle);
    }

    public FloatingActionButton(@ah Context context, @ai AttributeSet attributeSet, int i2) {
        super(com.google.android.material.theme.a.a.a(context, attributeSet, i2, i), attributeSet, i2);
        this.f = new Rect();
        this.u = new Rect();
        Context context2 = getContext();
        TypedArray a2 = com.google.android.material.internal.s.a(context2, attributeSet, a.o.FloatingActionButton, i2, i, new int[0]);
        this.k = com.google.android.material.q.c.a(context2, a2, a.o.FloatingActionButton_backgroundTint);
        this.l = z.a(a2.getInt(a.o.FloatingActionButton_backgroundTintMode, -1), (PorterDuff.Mode) null);
        this.o = com.google.android.material.q.c.a(context2, a2, a.o.FloatingActionButton_rippleColor);
        this.q = a2.getInt(a.o.FloatingActionButton_fabSize, -1);
        this.r = a2.getDimensionPixelSize(a.o.FloatingActionButton_fabCustomSize, 0);
        this.p = a2.getDimensionPixelSize(a.o.FloatingActionButton_borderWidth, 0);
        float dimension = a2.getDimension(a.o.FloatingActionButton_elevation, 0.0f);
        float dimension2 = a2.getDimension(a.o.FloatingActionButton_hoveredFocusedTranslationZ, 0.0f);
        float dimension3 = a2.getDimension(a.o.FloatingActionButton_pressedTranslationZ, 0.0f);
        this.e = a2.getBoolean(a.o.FloatingActionButton_useCompatPadding, false);
        int dimensionPixelSize = getResources().getDimensionPixelSize(a.f.mtrl_fab_min_touch_target);
        this.t = a2.getDimensionPixelSize(a.o.FloatingActionButton_maxImageSize, 0);
        h a3 = h.a(context2, a2, a.o.FloatingActionButton_showMotionSpec);
        h a4 = h.a(context2, a2, a.o.FloatingActionButton_hideMotionSpec);
        com.google.android.material.t.o a5 = com.google.android.material.t.o.a(context2, attributeSet, i2, i, com.google.android.material.t.o.f1419a).a();
        boolean z = a2.getBoolean(a.o.FloatingActionButton_ensureMinTouchTargetSize, false);
        setEnabled(a2.getBoolean(a.o.FloatingActionButton_android_enabled, true));
        a2.recycle();
        this.v = new o(this);
        this.v.a(attributeSet, i2);
        this.w = new com.google.android.material.l.c(this);
        getImpl().a(a5);
        getImpl().a(this.k, this.l, this.o, this.p);
        getImpl().a(dimensionPixelSize);
        getImpl().a(dimension);
        getImpl().b(dimension2);
        getImpl().c(dimension3);
        getImpl().b(this.t);
        getImpl().a(a3);
        getImpl().b(a4);
        getImpl().a(z);
        setScaleType(ImageView.ScaleType.MATRIX);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i2, int i3) {
        int sizeDimension = getSizeDimension();
        this.s = (sizeDimension - this.t) / 2;
        getImpl().o();
        int min = Math.min(a(sizeDimension, i2), a(sizeDimension, i3));
        setMeasuredDimension(this.f.left + min + this.f.right, min + this.f.top + this.f.bottom);
    }

    @k
    @Deprecated
    public int getRippleColor() {
        if (this.o != null) {
            return this.o.getDefaultColor();
        }
        return 0;
    }

    @ai
    public ColorStateList getRippleColorStateList() {
        return this.o;
    }

    public void setRippleColor(@k int i2) {
        setRippleColor(ColorStateList.valueOf(i2));
    }

    public void setRippleColor(@ai ColorStateList colorStateList) {
        if (this.o != colorStateList) {
            this.o = colorStateList;
            getImpl().b(this.o);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.a
    @ah
    public CoordinatorLayout.b<FloatingActionButton> getBehavior() {
        return new Behavior();
    }

    @Override // android.view.View
    @ai
    public ColorStateList getBackgroundTintList() {
        return this.k;
    }

    @Override // android.view.View
    public void setBackgroundTintList(@ai ColorStateList colorStateList) {
        if (this.k != colorStateList) {
            this.k = colorStateList;
            getImpl().a(colorStateList);
        }
    }

    @Override // android.view.View
    @ai
    public PorterDuff.Mode getBackgroundTintMode() {
        return this.l;
    }

    @Override // android.view.View
    public void setBackgroundTintMode(@ai PorterDuff.Mode mode) {
        if (this.l != mode) {
            this.l = mode;
            getImpl().a(mode);
        }
    }

    @Override // androidx.core.n.ad
    public void setSupportBackgroundTintList(@ai ColorStateList colorStateList) {
        setBackgroundTintList(colorStateList);
    }

    @Override // androidx.core.n.ad
    @ai
    public ColorStateList getSupportBackgroundTintList() {
        return getBackgroundTintList();
    }

    @Override // androidx.core.n.ad
    public void setSupportBackgroundTintMode(@ai PorterDuff.Mode mode) {
        setBackgroundTintMode(mode);
    }

    @Override // androidx.core.n.ad
    @ai
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return getBackgroundTintMode();
    }

    @Override // androidx.core.widget.p
    public void setSupportImageTintList(@ai ColorStateList colorStateList) {
        if (this.m != colorStateList) {
            this.m = colorStateList;
            h();
        }
    }

    @Override // androidx.core.widget.p
    @ai
    public ColorStateList getSupportImageTintList() {
        return this.m;
    }

    @Override // androidx.core.widget.p
    public void setSupportImageTintMode(@ai PorterDuff.Mode mode) {
        if (this.n != mode) {
            this.n = mode;
            h();
        }
    }

    @Override // androidx.core.widget.p
    @ai
    public PorterDuff.Mode getSupportImageTintMode() {
        return this.n;
    }

    private void h() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        if (this.m == null) {
            androidx.core.graphics.drawable.a.f(drawable);
            return;
        }
        int colorForState = this.m.getColorForState(getDrawableState(), 0);
        PorterDuff.Mode mode = this.n;
        if (mode == null) {
            mode = PorterDuff.Mode.SRC_IN;
        }
        drawable.mutate().setColorFilter(androidx.appcompat.widget.k.a(colorForState, mode));
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        Log.i(g, "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public void setBackgroundResource(int i2) {
        Log.i(g, "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public void setBackgroundColor(int i2) {
        Log.i(g, "Setting a custom background is not supported.");
    }

    @Override // android.widget.ImageView
    public void setImageResource(@q int i2) {
        this.v.a(i2);
        h();
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(@ai Drawable drawable) {
        if (getDrawable() != drawable) {
            super.setImageDrawable(drawable);
            getImpl().d();
            if (this.m != null) {
                h();
            }
        }
    }

    @Override // com.google.android.material.t.s
    public void setShapeAppearanceModel(@ah com.google.android.material.t.o oVar) {
        getImpl().a(oVar);
    }

    @Override // com.google.android.material.t.s
    @ah
    public com.google.android.material.t.o getShapeAppearanceModel() {
        return (com.google.android.material.t.o) i.a(getImpl().e());
    }

    public boolean b() {
        return getImpl().i();
    }

    public void setEnsureMinTouchTargetSize(boolean z) {
        if (z != getImpl().i()) {
            getImpl().a(z);
            requestLayout();
        }
    }

    @Override // com.google.android.material.internal.aa, android.widget.ImageView, android.view.View
    public void setVisibility(int i2) {
        super.setVisibility(i2);
    }

    public void c() {
        a((a) null);
    }

    public void a(@ai a aVar) {
        a(aVar, true);
    }

    void a(@ai a aVar, boolean z) {
        getImpl().b(c(aVar), z);
    }

    public void a(@ah Animator.AnimatorListener animatorListener) {
        getImpl().a(animatorListener);
    }

    public void b(@ah Animator.AnimatorListener animatorListener) {
        getImpl().b(animatorListener);
    }

    public void d() {
        b((a) null);
    }

    public void b(@ai a aVar) {
        b(aVar, true);
    }

    void b(@ai a aVar, boolean z) {
        getImpl().a(c(aVar), z);
    }

    public void c(@ah Animator.AnimatorListener animatorListener) {
        getImpl().c(animatorListener);
    }

    public void d(@ah Animator.AnimatorListener animatorListener) {
        getImpl().d(animatorListener);
    }

    @Override // com.google.android.material.l.b
    public boolean a(boolean z) {
        return this.w.a(z);
    }

    @Override // com.google.android.material.l.b
    public boolean a() {
        return this.w.a();
    }

    @Override // com.google.android.material.l.a
    public void setExpandedComponentIdHint(@w int i2) {
        this.w.a(i2);
    }

    @Override // com.google.android.material.l.a
    public int getExpandedComponentIdHint() {
        return this.w.c();
    }

    public void setUseCompatPadding(boolean z) {
        if (this.e != z) {
            this.e = z;
            getImpl().n();
        }
    }

    public boolean getUseCompatPadding() {
        return this.e;
    }

    public void setSize(int i2) {
        this.r = 0;
        if (i2 != this.q) {
            this.q = i2;
            requestLayout();
        }
    }

    public int getSize() {
        return this.q;
    }

    @ai
    private d.e c(@ai final a aVar) {
        if (aVar == null) {
            return null;
        }
        return new d.e() { // from class: com.google.android.material.floatingactionbutton.FloatingActionButton.1
            @Override // com.google.android.material.floatingactionbutton.d.e
            public void a() {
                aVar.b(FloatingActionButton.this);
            }

            @Override // com.google.android.material.floatingactionbutton.d.e
            public void b() {
                aVar.a(FloatingActionButton.this);
            }
        };
    }

    public boolean e() {
        return getImpl().w();
    }

    public boolean f() {
        return getImpl().v();
    }

    public void setCustomSize(@ak int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException("Custom size must be non-negative");
        }
        if (i2 != this.r) {
            this.r = i2;
            requestLayout();
        }
    }

    @ak
    public int getCustomSize() {
        return this.r;
    }

    public void g() {
        setCustomSize(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getSizeDimension() {
        return a(this.q);
    }

    private int a(int i2) {
        if (this.r != 0) {
            return this.r;
        }
        Resources resources = getResources();
        if (i2 != -1) {
            if (i2 == 1) {
                return resources.getDimensionPixelSize(a.f.design_fab_size_mini);
            }
            return resources.getDimensionPixelSize(a.f.design_fab_size_normal);
        }
        if (Math.max(resources.getConfiguration().screenWidthDp, resources.getConfiguration().screenHeightDp) < j) {
            return a(1);
        }
        return a(0);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getImpl().q();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getImpl().r();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        getImpl().a(getDrawableState());
    }

    @Override // android.widget.ImageView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        getImpl().j();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        if (onSaveInstanceState == null) {
            onSaveInstanceState = new Bundle();
        }
        com.google.android.material.v.a aVar = new com.google.android.material.v.a(onSaveInstanceState);
        aVar.f1488a.put(h, this.w.b());
        return aVar;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof com.google.android.material.v.a)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        com.google.android.material.v.a aVar = (com.google.android.material.v.a) parcelable;
        super.onRestoreInstanceState(aVar.a());
        this.w.a((Bundle) i.a(aVar.f1488a.get(h)));
    }

    @Deprecated
    public boolean a(@ah Rect rect) {
        if (!af.ag(this)) {
            return false;
        }
        rect.set(0, 0, getWidth(), getHeight());
        c(rect);
        return true;
    }

    public void b(@ah Rect rect) {
        rect.set(0, 0, getMeasuredWidth(), getMeasuredHeight());
        c(rect);
    }

    private void c(@ah Rect rect) {
        rect.left += this.f.left;
        rect.top += this.f.top;
        rect.right -= this.f.right;
        rect.bottom -= this.f.bottom;
    }

    @ai
    public Drawable getContentBackground() {
        return getImpl().m();
    }

    private static int a(int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i3);
        if (mode == Integer.MIN_VALUE) {
            return Math.min(i2, size);
        }
        if (mode == 0) {
            return i2;
        }
        if (mode == 1073741824) {
            return size;
        }
        throw new IllegalArgumentException();
    }

    @Override // android.view.View
    public boolean onTouchEvent(@ah MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0 && a(this.u) && !this.u.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class Behavior extends BaseBehavior<FloatingActionButton> {
        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public /* bridge */ /* synthetic */ void a(@ah CoordinatorLayout.f fVar) {
            super.a(fVar);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        @ax
        public /* bridge */ /* synthetic */ void a(a aVar) {
            super.a(aVar);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        public /* bridge */ /* synthetic */ void a(boolean z) {
            super.a(z);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        public /* bridge */ /* synthetic */ boolean a(@ah CoordinatorLayout coordinatorLayout, @ah FloatingActionButton floatingActionButton, int i) {
            return super.a(coordinatorLayout, floatingActionButton, i);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        public /* bridge */ /* synthetic */ boolean a(@ah CoordinatorLayout coordinatorLayout, @ah FloatingActionButton floatingActionButton, @ah Rect rect) {
            return super.a(coordinatorLayout, floatingActionButton, rect);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        /* renamed from: a */
        public /* bridge */ /* synthetic */ boolean b(CoordinatorLayout coordinatorLayout, @ah FloatingActionButton floatingActionButton, View view) {
            return super.b(coordinatorLayout, floatingActionButton, view);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        public /* bridge */ /* synthetic */ boolean b() {
            return super.b();
        }

        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    protected static class BaseBehavior<T extends FloatingActionButton> extends CoordinatorLayout.b<T> {

        /* renamed from: a, reason: collision with root package name */
        private static final boolean f1292a = true;
        private Rect b;
        private a c;
        private boolean d;

        public BaseBehavior() {
            this.d = f1292a;
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.o.FloatingActionButton_Behavior_Layout);
            this.d = obtainStyledAttributes.getBoolean(a.o.FloatingActionButton_Behavior_Layout_behavior_autoHide, f1292a);
            obtainStyledAttributes.recycle();
        }

        public void a(boolean z) {
            this.d = z;
        }

        public boolean b() {
            return this.d;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public void a(@ah CoordinatorLayout.f fVar) {
            if (fVar.h == 0) {
                fVar.h = 80;
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean b(CoordinatorLayout coordinatorLayout, @ah FloatingActionButton floatingActionButton, View view) {
            if (view instanceof AppBarLayout) {
                a(coordinatorLayout, (AppBarLayout) view, floatingActionButton);
                return false;
            }
            if (!b(view)) {
                return false;
            }
            b(view, floatingActionButton);
            return false;
        }

        private static boolean b(@ah View view) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.f) {
                return ((CoordinatorLayout.f) layoutParams).b() instanceof BottomSheetBehavior;
            }
            return false;
        }

        @ax
        public void a(a aVar) {
            this.c = aVar;
        }

        private boolean a(@ah View view, @ah FloatingActionButton floatingActionButton) {
            CoordinatorLayout.f fVar = (CoordinatorLayout.f) floatingActionButton.getLayoutParams();
            if (this.d && fVar.a() == view.getId() && floatingActionButton.getUserSetVisibility() == 0) {
                return f1292a;
            }
            return false;
        }

        private boolean a(CoordinatorLayout coordinatorLayout, @ah AppBarLayout appBarLayout, @ah FloatingActionButton floatingActionButton) {
            if (!a((View) appBarLayout, floatingActionButton)) {
                return false;
            }
            if (this.b == null) {
                this.b = new Rect();
            }
            Rect rect = this.b;
            com.google.android.material.internal.c.b(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                floatingActionButton.b(this.c, false);
                return f1292a;
            }
            floatingActionButton.a(this.c, false);
            return f1292a;
        }

        private boolean b(@ah View view, @ah FloatingActionButton floatingActionButton) {
            if (!a(view, floatingActionButton)) {
                return false;
            }
            if (view.getTop() < (floatingActionButton.getHeight() / 2) + ((CoordinatorLayout.f) floatingActionButton.getLayoutParams()).topMargin) {
                floatingActionButton.b(this.c, false);
                return f1292a;
            }
            floatingActionButton.a(this.c, false);
            return f1292a;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public boolean a(@ah CoordinatorLayout coordinatorLayout, @ah FloatingActionButton floatingActionButton, int i) {
            List<View> c = coordinatorLayout.c(floatingActionButton);
            int size = c.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view = c.get(i2);
                if (view instanceof AppBarLayout) {
                    if (a(coordinatorLayout, (AppBarLayout) view, floatingActionButton)) {
                        break;
                    }
                } else {
                    if (b(view) && b(view, floatingActionButton)) {
                        break;
                    }
                }
            }
            coordinatorLayout.b(floatingActionButton, i);
            a(coordinatorLayout, floatingActionButton);
            return f1292a;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public boolean a(@ah CoordinatorLayout coordinatorLayout, @ah FloatingActionButton floatingActionButton, @ah Rect rect) {
            Rect rect2 = floatingActionButton.f;
            rect.set(floatingActionButton.getLeft() + rect2.left, floatingActionButton.getTop() + rect2.top, floatingActionButton.getRight() - rect2.right, floatingActionButton.getBottom() - rect2.bottom);
            return f1292a;
        }

        private void a(@ah CoordinatorLayout coordinatorLayout, @ah FloatingActionButton floatingActionButton) {
            int i;
            Rect rect = floatingActionButton.f;
            if (rect == null || rect.centerX() <= 0 || rect.centerY() <= 0) {
                return;
            }
            CoordinatorLayout.f fVar = (CoordinatorLayout.f) floatingActionButton.getLayoutParams();
            int i2 = 0;
            if (floatingActionButton.getRight() >= coordinatorLayout.getWidth() - fVar.rightMargin) {
                i = rect.right;
            } else {
                i = floatingActionButton.getLeft() <= fVar.leftMargin ? -rect.left : 0;
            }
            if (floatingActionButton.getBottom() >= coordinatorLayout.getHeight() - fVar.bottomMargin) {
                i2 = rect.bottom;
            } else if (floatingActionButton.getTop() <= fVar.topMargin) {
                i2 = -rect.top;
            }
            if (i2 != 0) {
                af.n((View) floatingActionButton, i2);
            }
            if (i != 0) {
                af.o((View) floatingActionButton, i);
            }
        }
    }

    @Override // android.view.View
    @am(a = 21)
    public void setElevation(float f) {
        super.setElevation(f);
        getImpl().e(f);
    }

    public float getCompatElevation() {
        return getImpl().a();
    }

    public void setCompatElevation(float f) {
        getImpl().a(f);
    }

    public void setCompatElevationResource(@androidx.annotation.o int i2) {
        setCompatElevation(getResources().getDimension(i2));
    }

    public float getCompatHoveredFocusedTranslationZ() {
        return getImpl().b();
    }

    public void setCompatHoveredFocusedTranslationZ(float f) {
        getImpl().b(f);
    }

    public void setCompatHoveredFocusedTranslationZResource(@androidx.annotation.o int i2) {
        setCompatHoveredFocusedTranslationZ(getResources().getDimension(i2));
    }

    public float getCompatPressedTranslationZ() {
        return getImpl().c();
    }

    public void setCompatPressedTranslationZ(float f) {
        getImpl().c(f);
    }

    public void setCompatPressedTranslationZResource(@androidx.annotation.o int i2) {
        setCompatPressedTranslationZ(getResources().getDimension(i2));
    }

    @ai
    public h getShowMotionSpec() {
        return getImpl().f();
    }

    public void setShowMotionSpec(@ai h hVar) {
        getImpl().a(hVar);
    }

    public void setShowMotionSpecResource(@androidx.annotation.b int i2) {
        setShowMotionSpec(h.a(getContext(), i2));
    }

    @ai
    public h getHideMotionSpec() {
        return getImpl().g();
    }

    public void setHideMotionSpec(@ai h hVar) {
        getImpl().b(hVar);
    }

    public void setHideMotionSpecResource(@androidx.annotation.b int i2) {
        setHideMotionSpec(h.a(getContext(), i2));
    }

    public void a(@ah com.google.android.material.a.k<? extends FloatingActionButton> kVar) {
        getImpl().a(new d(kVar));
    }

    public void b(@ah com.google.android.material.a.k<? extends FloatingActionButton> kVar) {
        getImpl().b(new d(kVar));
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    class d<T extends FloatingActionButton> implements d.InterfaceC0088d {

        @ah
        private final com.google.android.material.a.k<T> b;

        d(com.google.android.material.a.k<T> kVar) {
            this.b = kVar;
        }

        @Override // com.google.android.material.floatingactionbutton.d.InterfaceC0088d
        public void a() {
            this.b.a(FloatingActionButton.this);
        }

        @Override // com.google.android.material.floatingactionbutton.d.InterfaceC0088d
        public void b() {
            this.b.b(FloatingActionButton.this);
        }

        public boolean equals(@ai Object obj) {
            return (obj instanceof d) && ((d) obj).b.equals(this.b);
        }

        public int hashCode() {
            return this.b.hashCode();
        }
    }

    @Override // android.view.View
    public void setTranslationX(float f) {
        super.setTranslationX(f);
        getImpl().k();
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        super.setTranslationY(f);
        getImpl().k();
    }

    @Override // android.view.View
    public void setTranslationZ(float f) {
        super.setTranslationZ(f);
        getImpl().k();
    }

    @Override // android.view.View
    public void setScaleX(float f) {
        super.setScaleX(f);
        getImpl().l();
    }

    @Override // android.view.View
    public void setScaleY(float f) {
        super.setScaleY(f);
        getImpl().l();
    }

    @ap(a = {ap.a.LIBRARY_GROUP})
    @ax
    public void setShadowPaddingEnabled(boolean z) {
        getImpl().b(z);
    }

    private com.google.android.material.floatingactionbutton.d getImpl() {
        if (this.x == null) {
            this.x = i();
        }
        return this.x;
    }

    @ah
    private com.google.android.material.floatingactionbutton.d i() {
        if (Build.VERSION.SDK_INT >= 21) {
            return new e(this, new b());
        }
        return new com.google.android.material.floatingactionbutton.d(this, new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class b implements com.google.android.material.s.c {
        b() {
        }

        @Override // com.google.android.material.s.c
        public float a() {
            return FloatingActionButton.this.getSizeDimension() / 2.0f;
        }

        @Override // com.google.android.material.s.c
        public void a(int i, int i2, int i3, int i4) {
            FloatingActionButton.this.f.set(i, i2, i3, i4);
            FloatingActionButton.this.setPadding(i + FloatingActionButton.this.s, i2 + FloatingActionButton.this.s, i3 + FloatingActionButton.this.s, i4 + FloatingActionButton.this.s);
        }

        @Override // com.google.android.material.s.c
        public void a(@ai Drawable drawable) {
            if (drawable != null) {
                FloatingActionButton.super.setBackgroundDrawable(drawable);
            }
        }

        @Override // com.google.android.material.s.c
        public boolean b() {
            return FloatingActionButton.this.e;
        }
    }
}
