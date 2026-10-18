package com.google.android.material.c;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.am;
import androidx.annotation.at;
import androidx.annotation.ax;
import androidx.annotation.o;
import androidx.annotation.p;
import androidx.annotation.q;
import androidx.annotation.w;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.widget.ba;
import androidx.core.n.af;
import androidx.core.n.ao;
import com.google.android.material.a;
import com.google.android.material.internal.s;
import com.google.android.material.internal.z;
import com.google.android.material.t.j;
import com.google.android.material.t.k;

/* loaded from: /home/user/work/dex/classes.dex */
public class e extends FrameLayout {
    private static final int b = a.n.Widget_Design_BottomNavigationView;
    private static final int c = 1;

    /* renamed from: a, reason: collision with root package name */
    @ah
    @ax
    final com.google.android.material.c.c f1224a;

    @ah
    private final g d;
    private final d e;

    @ai
    private ColorStateList f;
    private MenuInflater g;
    private b h;
    private a i;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface a {
        void a(@ah MenuItem menuItem);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface b {
        boolean a(@ah MenuItem menuItem);
    }

    public int getMaxItemCount() {
        return 5;
    }

    public e(@ah Context context) {
        this(context, null);
    }

    public e(@ah Context context, @ai AttributeSet attributeSet) {
        this(context, attributeSet, a.c.bottomNavigationStyle);
    }

    public e(@ah Context context, @ai AttributeSet attributeSet, int i) {
        super(com.google.android.material.theme.a.a.a(context, attributeSet, i, b), attributeSet, i);
        this.e = new d();
        Context context2 = getContext();
        this.d = new com.google.android.material.c.b(context2);
        this.f1224a = new com.google.android.material.c.c(context2);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        this.f1224a.setLayoutParams(layoutParams);
        this.e.a(this.f1224a);
        this.e.a(1);
        this.f1224a.setPresenter(this.e);
        this.d.a(this.e);
        this.e.a(getContext(), this.d);
        ba b2 = s.b(context2, attributeSet, a.o.BottomNavigationView, i, a.n.Widget_Design_BottomNavigationView, a.o.BottomNavigationView_itemTextAppearanceInactive, a.o.BottomNavigationView_itemTextAppearanceActive);
        if (b2.j(a.o.BottomNavigationView_itemIconTint)) {
            this.f1224a.setIconTintList(b2.g(a.o.BottomNavigationView_itemIconTint));
        } else {
            this.f1224a.setIconTintList(this.f1224a.a(R.attr.textColorSecondary));
        }
        setItemIconSize(b2.e(a.o.BottomNavigationView_itemIconSize, getResources().getDimensionPixelSize(a.f.design_bottom_navigation_icon_size)));
        if (b2.j(a.o.BottomNavigationView_itemTextAppearanceInactive)) {
            setItemTextAppearanceInactive(b2.g(a.o.BottomNavigationView_itemTextAppearanceInactive, 0));
        }
        if (b2.j(a.o.BottomNavigationView_itemTextAppearanceActive)) {
            setItemTextAppearanceActive(b2.g(a.o.BottomNavigationView_itemTextAppearanceActive, 0));
        }
        if (b2.j(a.o.BottomNavigationView_itemTextColor)) {
            setItemTextColor(b2.g(a.o.BottomNavigationView_itemTextColor));
        }
        if (getBackground() == null || (getBackground() instanceof ColorDrawable)) {
            af.a(this, a(context2));
        }
        if (b2.j(a.o.BottomNavigationView_elevation)) {
            af.m(this, b2.e(a.o.BottomNavigationView_elevation, 0));
        }
        androidx.core.graphics.drawable.a.a(getBackground().mutate(), com.google.android.material.q.c.a(context2, b2, a.o.BottomNavigationView_backgroundTint));
        setLabelVisibilityMode(b2.c(a.o.BottomNavigationView_labelVisibilityMode, -1));
        setItemHorizontalTranslationEnabled(b2.a(a.o.BottomNavigationView_itemHorizontalTranslationEnabled, true));
        int g = b2.g(a.o.BottomNavigationView_itemBackground, 0);
        if (g != 0) {
            this.f1224a.setItemBackgroundRes(g);
        } else {
            setItemRippleColor(com.google.android.material.q.c.a(context2, b2, a.o.BottomNavigationView_itemRippleColor));
        }
        if (b2.j(a.o.BottomNavigationView_menu)) {
            a(b2.g(a.o.BottomNavigationView_menu, 0));
        }
        b2.f();
        addView(this.f1224a, layoutParams);
        if (Build.VERSION.SDK_INT < 21) {
            b(context2);
        }
        this.d.a(new g.a() { // from class: com.google.android.material.c.e.1
            @Override // androidx.appcompat.view.menu.g.a
            public void a(g gVar) {
            }

            @Override // androidx.appcompat.view.menu.g.a
            public boolean a(g gVar, @ah MenuItem menuItem) {
                if (e.this.i == null || menuItem.getItemId() != e.this.getSelectedItemId()) {
                    return (e.this.h == null || e.this.h.a(menuItem)) ? false : true;
                }
                e.this.i.a(menuItem);
                return true;
            }
        });
        b();
    }

    private void b() {
        z.a(this, new z.a() { // from class: com.google.android.material.c.e.2
            @Override // com.google.android.material.internal.z.a
            @ah
            public ao a(View view, @ah ao aoVar, @ah z.b bVar) {
                bVar.d += aoVar.d();
                bVar.a(view);
                return aoVar;
            }
        });
    }

    @ah
    private j a(Context context) {
        j jVar = new j();
        Drawable background = getBackground();
        if (background instanceof ColorDrawable) {
            jVar.g(ColorStateList.valueOf(((ColorDrawable) background).getColor()));
        }
        jVar.b(context);
        return jVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        k.a(this);
    }

    @Override // android.view.View
    @am(a = 21)
    public void setElevation(float f) {
        super.setElevation(f);
        k.a(this, f);
    }

    public void setOnNavigationItemSelectedListener(@ai b bVar) {
        this.h = bVar;
    }

    public void setOnNavigationItemReselectedListener(@ai a aVar) {
        this.i = aVar;
    }

    @ah
    public Menu getMenu() {
        return this.d;
    }

    public void a(int i) {
        this.e.b(true);
        getMenuInflater().inflate(i, this.d);
        this.e.b(false);
        this.e.a(true);
    }

    @ai
    public ColorStateList getItemIconTintList() {
        return this.f1224a.getIconTintList();
    }

    public void setItemIconTintList(@ai ColorStateList colorStateList) {
        this.f1224a.setIconTintList(colorStateList);
    }

    public void setItemIconSize(@p int i) {
        this.f1224a.setItemIconSize(i);
    }

    public void setItemIconSizeRes(@o int i) {
        setItemIconSize(getResources().getDimensionPixelSize(i));
    }

    @p
    public int getItemIconSize() {
        return this.f1224a.getItemIconSize();
    }

    @ai
    public ColorStateList getItemTextColor() {
        return this.f1224a.getItemTextColor();
    }

    public void setItemTextColor(@ai ColorStateList colorStateList) {
        this.f1224a.setItemTextColor(colorStateList);
    }

    @q
    @Deprecated
    public int getItemBackgroundResource() {
        return this.f1224a.getItemBackgroundRes();
    }

    public void setItemBackgroundResource(@q int i) {
        this.f1224a.setItemBackgroundRes(i);
        this.f = null;
    }

    @ai
    public Drawable getItemBackground() {
        return this.f1224a.getItemBackground();
    }

    public void setItemBackground(@ai Drawable drawable) {
        this.f1224a.setItemBackground(drawable);
        this.f = null;
    }

    @ai
    public ColorStateList getItemRippleColor() {
        return this.f;
    }

    public void setItemRippleColor(@ai ColorStateList colorStateList) {
        if (this.f == colorStateList) {
            if (colorStateList != null || this.f1224a.getItemBackground() == null) {
                return;
            }
            this.f1224a.setItemBackground(null);
            return;
        }
        this.f = colorStateList;
        if (colorStateList == null) {
            this.f1224a.setItemBackground(null);
            return;
        }
        ColorStateList a2 = com.google.android.material.r.b.a(colorStateList);
        if (Build.VERSION.SDK_INT >= 21) {
            this.f1224a.setItemBackground(new RippleDrawable(a2, null, null));
            return;
        }
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(1.0E-5f);
        Drawable g = androidx.core.graphics.drawable.a.g(gradientDrawable);
        androidx.core.graphics.drawable.a.a(g, a2);
        this.f1224a.setItemBackground(g);
    }

    @w
    public int getSelectedItemId() {
        return this.f1224a.getSelectedItemId();
    }

    public void setSelectedItemId(@w int i) {
        MenuItem findItem = this.d.findItem(i);
        if (findItem == null || this.d.a(findItem, this.e, 0)) {
            return;
        }
        findItem.setChecked(true);
    }

    public void setLabelVisibilityMode(int i) {
        if (this.f1224a.getLabelVisibilityMode() != i) {
            this.f1224a.setLabelVisibilityMode(i);
            this.e.a(false);
        }
    }

    public int getLabelVisibilityMode() {
        return this.f1224a.getLabelVisibilityMode();
    }

    public void setItemTextAppearanceInactive(@at int i) {
        this.f1224a.setItemTextAppearanceInactive(i);
    }

    @at
    public int getItemTextAppearanceInactive() {
        return this.f1224a.getItemTextAppearanceInactive();
    }

    public void setItemTextAppearanceActive(@at int i) {
        this.f1224a.setItemTextAppearanceActive(i);
    }

    @at
    public int getItemTextAppearanceActive() {
        return this.f1224a.getItemTextAppearanceActive();
    }

    public void setItemHorizontalTranslationEnabled(boolean z) {
        if (this.f1224a.a() != z) {
            this.f1224a.setItemHorizontalTranslationEnabled(z);
            this.e.a(false);
        }
    }

    public boolean a() {
        return this.f1224a.a();
    }

    @ai
    public com.google.android.material.b.a b(int i) {
        return this.f1224a.c(i);
    }

    public com.google.android.material.b.a c(int i) {
        return this.f1224a.d(i);
    }

    public void d(int i) {
        this.f1224a.e(i);
    }

    private void b(Context context) {
        View view = new View(context);
        view.setBackgroundColor(androidx.core.b.c.c(context, a.e.design_bottom_navigation_shadow_color));
        view.setLayoutParams(new FrameLayout.LayoutParams(-1, getResources().getDimensionPixelSize(a.f.design_bottom_navigation_shadow_height)));
        addView(view);
    }

    private MenuInflater getMenuInflater() {
        if (this.g == null) {
            this.g = new androidx.appcompat.view.g(getContext());
        }
        return this.g;
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        c cVar = new c(super.onSaveInstanceState());
        cVar.f1227a = new Bundle();
        this.d.a(cVar.f1227a);
        return cVar;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof c)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        c cVar = (c) parcelable;
        super.onRestoreInstanceState(cVar.a());
        this.d.b(cVar.f1227a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class c extends androidx.f.a.a {
        public static final Parcelable.Creator<c> CREATOR = new Parcelable.ClassLoaderCreator<c>() { // from class: com.google.android.material.c.e.c.1
            @Override // android.os.Parcelable.ClassLoaderCreator
            @ah
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public c createFromParcel(@ah Parcel parcel, ClassLoader classLoader) {
                return new c(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            @ai
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public c createFromParcel(@ah Parcel parcel) {
                return new c(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            @ah
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public c[] newArray(int i) {
                return new c[i];
            }
        };

        /* renamed from: a, reason: collision with root package name */
        @ai
        Bundle f1227a;

        public c(Parcelable parcelable) {
            super(parcelable);
        }

        public c(@ah Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            a(parcel, classLoader == null ? getClass().getClassLoader() : classLoader);
        }

        @Override // androidx.f.a.a, android.os.Parcelable
        public void writeToParcel(@ah Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeBundle(this.f1227a);
        }

        private void a(@ah Parcel parcel, ClassLoader classLoader) {
            this.f1227a = parcel.readBundle(classLoader);
        }
    }
}
