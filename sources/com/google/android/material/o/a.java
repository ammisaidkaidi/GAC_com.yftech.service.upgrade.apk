package com.google.android.material.o;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.annotation.ac;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import androidx.annotation.at;
import androidx.annotation.p;
import androidx.annotation.q;
import androidx.annotation.w;
import androidx.appcompat.a;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.widget.ba;
import androidx.core.n.af;
import androidx.core.n.ao;
import com.google.android.material.a;
import com.google.android.material.internal.h;
import com.google.android.material.internal.i;
import com.google.android.material.internal.n;
import com.google.android.material.internal.s;
import com.google.android.material.q.c;
import com.google.android.material.t.j;
import com.google.android.material.t.k;
import com.google.android.material.t.o;

/* loaded from: /home/user/work/dex/classes.dex */
public class a extends n {
    private static final int[] d = {R.attr.state_checked};
    private static final int[] e = {-16842910};
    private static final int f = a.n.Widget_Design_NavigationView;
    private static final int g = 1;
    InterfaceC0091a c;

    @ah
    private final h h;
    private final i i;
    private final int j;
    private final int[] k;
    private MenuInflater l;
    private ViewTreeObserver.OnGlobalLayoutListener m;

    /* renamed from: com.google.android.material.o.a$a, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface InterfaceC0091a {
        boolean a(@ah MenuItem menuItem);
    }

    public a(@ah Context context) {
        this(context, null);
    }

    public a(@ah Context context, @ai AttributeSet attributeSet) {
        this(context, attributeSet, a.c.navigationViewStyle);
    }

    public a(@ah Context context, @ai AttributeSet attributeSet, int i) {
        super(com.google.android.material.theme.a.a.a(context, attributeSet, i, f), attributeSet, i);
        ColorStateList d2;
        boolean z;
        int i2;
        this.i = new i();
        this.k = new int[2];
        Context context2 = getContext();
        this.h = new h(context2);
        ba b2 = s.b(context2, attributeSet, a.o.NavigationView, i, f, new int[0]);
        if (b2.j(a.o.NavigationView_android_background)) {
            af.a(this, b2.a(a.o.NavigationView_android_background));
        }
        if (getBackground() == null || (getBackground() instanceof ColorDrawable)) {
            Drawable background = getBackground();
            j jVar = new j();
            if (background instanceof ColorDrawable) {
                jVar.g(ColorStateList.valueOf(((ColorDrawable) background).getColor()));
            }
            jVar.b(context2);
            af.a(this, jVar);
        }
        if (b2.j(a.o.NavigationView_elevation)) {
            setElevation(b2.e(a.o.NavigationView_elevation, 0));
        }
        setFitsSystemWindows(b2.a(a.o.NavigationView_android_fitsSystemWindows, false));
        this.j = b2.e(a.o.NavigationView_android_maxWidth, 0);
        if (b2.j(a.o.NavigationView_itemIconTint)) {
            d2 = b2.g(a.o.NavigationView_itemIconTint);
        } else {
            d2 = d(R.attr.textColorSecondary);
        }
        if (b2.j(a.o.NavigationView_itemTextAppearance)) {
            i2 = b2.g(a.o.NavigationView_itemTextAppearance, 0);
            z = true;
        } else {
            z = false;
            i2 = 0;
        }
        if (b2.j(a.o.NavigationView_itemIconSize)) {
            setItemIconSize(b2.e(a.o.NavigationView_itemIconSize, 0));
        }
        ColorStateList g2 = b2.j(a.o.NavigationView_itemTextColor) ? b2.g(a.o.NavigationView_itemTextColor) : null;
        if (!z && g2 == null) {
            g2 = d(R.attr.textColorPrimary);
        }
        Drawable a2 = b2.a(a.o.NavigationView_itemBackground);
        if (a2 == null && a(b2)) {
            a2 = b(b2);
        }
        if (b2.j(a.o.NavigationView_itemHorizontalPadding)) {
            this.i.e(b2.e(a.o.NavigationView_itemHorizontalPadding, 0));
        }
        int e2 = b2.e(a.o.NavigationView_itemIconPadding, 0);
        setItemMaxLines(b2.a(a.o.NavigationView_itemMaxLines, 1));
        this.h.a(new g.a() { // from class: com.google.android.material.o.a.1
            @Override // androidx.appcompat.view.menu.g.a
            public void a(g gVar) {
            }

            @Override // androidx.appcompat.view.menu.g.a
            public boolean a(g gVar, MenuItem menuItem) {
                return a.this.c != null && a.this.c.a(menuItem);
            }
        });
        this.i.a(1);
        this.i.a(context2, this.h);
        this.i.a(d2);
        this.i.i(getOverScrollMode());
        if (z) {
            this.i.d(i2);
        }
        this.i.b(g2);
        this.i.a(a2);
        this.i.f(e2);
        this.h.a(this.i);
        addView((View) this.i.a((ViewGroup) this));
        if (b2.j(a.o.NavigationView_menu)) {
            a(b2.g(a.o.NavigationView_menu, 0));
        }
        if (b2.j(a.o.NavigationView_headerLayout)) {
            b(b2.g(a.o.NavigationView_headerLayout, 0));
        }
        b2.f();
        a();
    }

    @Override // android.view.View
    public void setOverScrollMode(int i) {
        super.setOverScrollMode(i);
        if (this.i != null) {
            this.i.i(i);
        }
    }

    private boolean a(@ah ba baVar) {
        return baVar.j(a.o.NavigationView_itemShapeAppearance) || baVar.j(a.o.NavigationView_itemShapeAppearanceOverlay);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.material.internal.n, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        k.a(this);
    }

    @Override // android.view.View
    public void setElevation(float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            super.setElevation(f2);
        }
        k.a(this, f2);
    }

    @ah
    private final Drawable b(@ah ba baVar) {
        j jVar = new j(o.a(getContext(), baVar.g(a.o.NavigationView_itemShapeAppearance, 0), baVar.g(a.o.NavigationView_itemShapeAppearanceOverlay, 0)).a());
        jVar.g(c.a(getContext(), baVar, a.o.NavigationView_itemShapeFillColor));
        return new InsetDrawable((Drawable) jVar, baVar.e(a.o.NavigationView_itemShapeInsetStart, 0), baVar.e(a.o.NavigationView_itemShapeInsetTop, 0), baVar.e(a.o.NavigationView_itemShapeInsetEnd, 0), baVar.e(a.o.NavigationView_itemShapeInsetBottom, 0));
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        b bVar = new b(super.onSaveInstanceState());
        bVar.f1367a = new Bundle();
        this.h.a(bVar.f1367a);
        return bVar;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof b)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        b bVar = (b) parcelable;
        super.onRestoreInstanceState(bVar.a());
        this.h.b(bVar.f1367a);
    }

    public void setNavigationItemSelectedListener(@ai InterfaceC0091a interfaceC0091a) {
        this.c = interfaceC0091a;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        if (mode == Integer.MIN_VALUE) {
            i = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i), this.j), androidx.d.c.b.a.b.b);
        } else if (mode == 0) {
            i = View.MeasureSpec.makeMeasureSpec(this.j, androidx.d.c.b.a.b.b);
        }
        super.onMeasure(i, i2);
    }

    @Override // com.google.android.material.internal.n
    @ap(a = {ap.a.LIBRARY_GROUP})
    protected void a(@ah ao aoVar) {
        this.i.a(aoVar);
    }

    public void a(int i) {
        this.i.b(true);
        getMenuInflater().inflate(i, this.h);
        this.i.b(false);
        this.i.a(false);
    }

    @ah
    public Menu getMenu() {
        return this.h;
    }

    public View b(@ac int i) {
        return this.i.b(i);
    }

    public void a(@ah View view) {
        this.i.a(view);
    }

    public void b(@ah View view) {
        this.i.b(view);
    }

    public int getHeaderCount() {
        return this.i.d();
    }

    public View c(int i) {
        return this.i.c(i);
    }

    @ai
    public ColorStateList getItemIconTintList() {
        return this.i.e();
    }

    public void setItemIconTintList(@ai ColorStateList colorStateList) {
        this.i.a(colorStateList);
    }

    @ai
    public ColorStateList getItemTextColor() {
        return this.i.g();
    }

    public void setItemTextColor(@ai ColorStateList colorStateList) {
        this.i.b(colorStateList);
    }

    @ai
    public Drawable getItemBackground() {
        return this.i.h();
    }

    public void setItemBackgroundResource(@q int i) {
        setItemBackground(androidx.core.b.c.a(getContext(), i));
    }

    public void setItemBackground(@ai Drawable drawable) {
        this.i.a(drawable);
    }

    @p
    public int getItemHorizontalPadding() {
        return this.i.i();
    }

    public void setItemHorizontalPadding(@p int i) {
        this.i.e(i);
    }

    public void setItemHorizontalPaddingResource(@androidx.annotation.o int i) {
        this.i.e(getResources().getDimensionPixelSize(i));
    }

    @p
    public int getItemIconPadding() {
        return this.i.j();
    }

    public void setItemIconPadding(@p int i) {
        this.i.f(i);
    }

    public void setItemIconPaddingResource(int i) {
        this.i.f(getResources().getDimensionPixelSize(i));
    }

    public void setCheckedItem(@w int i) {
        MenuItem findItem = this.h.findItem(i);
        if (findItem != null) {
            this.i.a((androidx.appcompat.view.menu.j) findItem);
        }
    }

    public void setCheckedItem(@ah MenuItem menuItem) {
        MenuItem findItem = this.h.findItem(menuItem.getItemId());
        if (findItem != null) {
            this.i.a((androidx.appcompat.view.menu.j) findItem);
            return;
        }
        throw new IllegalArgumentException("Called setCheckedItem(MenuItem) with an item that is not in the current menu.");
    }

    @ai
    public MenuItem getCheckedItem() {
        return this.i.a();
    }

    public void setItemTextAppearance(@at int i) {
        this.i.d(i);
    }

    public void setItemIconSize(@p int i) {
        this.i.h(i);
    }

    public void setItemMaxLines(int i) {
        this.i.g(i);
    }

    public int getItemMaxLines() {
        return this.i.k();
    }

    private MenuInflater getMenuInflater() {
        if (this.l == null) {
            this.l = new androidx.appcompat.view.g(getContext());
        }
        return this.l;
    }

    @ai
    private ColorStateList d(int i) {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(i, typedValue, true)) {
            return null;
        }
        ColorStateList a2 = androidx.appcompat.a.a.a.a(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(a.b.colorPrimary, typedValue, true)) {
            return null;
        }
        int i2 = typedValue.data;
        int defaultColor = a2.getDefaultColor();
        return new ColorStateList(new int[][]{e, d, EMPTY_STATE_SET}, new int[]{a2.getColorForState(e, defaultColor), i2, defaultColor});
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.material.internal.n, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (Build.VERSION.SDK_INT < 16) {
            getViewTreeObserver().removeGlobalOnLayoutListener(this.m);
        } else {
            getViewTreeObserver().removeOnGlobalLayoutListener(this.m);
        }
    }

    private void a() {
        this.m = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.google.android.material.o.a.2
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                a.this.getLocationOnScreen(a.this.k);
                boolean z = a.this.k[1] == 0;
                a.this.i.c(z);
                a.this.setDrawTopInsetForeground(z);
                Activity a2 = com.google.android.material.internal.b.a(a.this.getContext());
                if (a2 == null || Build.VERSION.SDK_INT < 21) {
                    return;
                }
                a.this.setDrawBottomInsetForeground((a2.findViewById(R.id.content).getHeight() == a.this.getHeight()) && (Color.alpha(a2.getWindow().getNavigationBarColor()) != 0));
            }
        };
        getViewTreeObserver().addOnGlobalLayoutListener(this.m);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class b extends androidx.f.a.a {
        public static final Parcelable.Creator<b> CREATOR = new Parcelable.ClassLoaderCreator<b>() { // from class: com.google.android.material.o.a.b.1
            @Override // android.os.Parcelable.ClassLoaderCreator
            @ah
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public b createFromParcel(@ah Parcel parcel, ClassLoader classLoader) {
                return new b(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            @ai
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public b createFromParcel(@ah Parcel parcel) {
                return new b(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            @ah
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public b[] newArray(int i) {
                return new b[i];
            }
        };

        /* renamed from: a, reason: collision with root package name */
        @ai
        public Bundle f1367a;

        public b(@ah Parcel parcel, @ai ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f1367a = parcel.readBundle(classLoader);
        }

        public b(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.f.a.a, android.os.Parcelable
        public void writeToParcel(@ah Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeBundle(this.f1367a);
        }
    }
}
