package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import androidx.appcompat.a;
import androidx.appcompat.view.menu.o;
import androidx.appcompat.widget.aj;
import androidx.appcompat.widget.bc;
import androidx.core.n.af;
import com.google.android.material.a;

@ap(a = {ap.a.LIBRARY_GROUP})
/* loaded from: /home/user/work/dex/classes.dex */
public class NavigationMenuItemView extends f implements o.a {
    private static final int[] d = {R.attr.state_checked};
    boolean c;
    private int k;
    private boolean l;
    private final CheckedTextView m;
    private FrameLayout n;
    private androidx.appcompat.view.menu.j o;
    private ColorStateList p;
    private boolean q;
    private Drawable r;
    private final androidx.core.n.a s;

    @Override // androidx.appcompat.view.menu.o.a
    public void a(boolean z, char c) {
    }

    @Override // androidx.appcompat.view.menu.o.a
    public boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.o.a
    public boolean c() {
        return true;
    }

    public NavigationMenuItemView(@ah Context context) {
        this(context, null);
    }

    public NavigationMenuItemView(@ah Context context, @ai AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NavigationMenuItemView(@ah Context context, @ai AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.s = new androidx.core.n.a() { // from class: com.google.android.material.internal.NavigationMenuItemView.1
            @Override // androidx.core.n.a
            public void a(View view, @ah androidx.core.n.a.d dVar) {
                super.a(view, dVar);
                dVar.a(NavigationMenuItemView.this.c);
            }
        };
        setOrientation(0);
        LayoutInflater.from(context).inflate(a.k.design_navigation_menu_item, (ViewGroup) this, true);
        setIconSize(context.getResources().getDimensionPixelSize(a.f.design_navigation_icon_size));
        this.m = (CheckedTextView) findViewById(a.h.design_menu_item_text);
        this.m.setDuplicateParentStateEnabled(true);
        af.a(this.m, this.s);
    }

    @Override // androidx.appcompat.view.menu.o.a
    public void a(@ah androidx.appcompat.view.menu.j jVar, int i) {
        this.o = jVar;
        if (jVar.getItemId() > 0) {
            setId(jVar.getItemId());
        }
        setVisibility(jVar.isVisible() ? 0 : 8);
        if (getBackground() == null) {
            af.a(this, f());
        }
        setCheckable(jVar.isCheckable());
        setChecked(jVar.isChecked());
        setEnabled(jVar.isEnabled());
        setTitle(jVar.getTitle());
        setIcon(jVar.getIcon());
        setActionView(jVar.getActionView());
        setContentDescription(jVar.getContentDescription());
        bc.a(this, jVar.getTooltipText());
        e();
    }

    private boolean d() {
        return this.o.getTitle() == null && this.o.getIcon() == null && this.o.getActionView() != null;
    }

    private void e() {
        if (d()) {
            this.m.setVisibility(8);
            if (this.n != null) {
                aj.b bVar = (aj.b) this.n.getLayoutParams();
                bVar.width = -1;
                this.n.setLayoutParams(bVar);
                return;
            }
            return;
        }
        this.m.setVisibility(0);
        if (this.n != null) {
            aj.b bVar2 = (aj.b) this.n.getLayoutParams();
            bVar2.width = -2;
            this.n.setLayoutParams(bVar2);
        }
    }

    public void b() {
        if (this.n != null) {
            this.n.removeAllViews();
        }
        this.m.setCompoundDrawables(null, null, null, null);
    }

    private void setActionView(@ai View view) {
        if (view != null) {
            if (this.n == null) {
                this.n = (FrameLayout) ((ViewStub) findViewById(a.h.design_menu_item_action_area_stub)).inflate();
            }
            this.n.removeAllViews();
            this.n.addView(view);
        }
    }

    @ai
    private StateListDrawable f() {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(a.b.colorControlHighlight, typedValue, true)) {
            return null;
        }
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(d, new ColorDrawable(typedValue.data));
        stateListDrawable.addState(EMPTY_STATE_SET, new ColorDrawable(0));
        return stateListDrawable;
    }

    @Override // androidx.appcompat.view.menu.o.a
    public androidx.appcompat.view.menu.j getItemData() {
        return this.o;
    }

    @Override // androidx.appcompat.view.menu.o.a
    public void setTitle(CharSequence charSequence) {
        this.m.setText(charSequence);
    }

    @Override // androidx.appcompat.view.menu.o.a
    public void setCheckable(boolean z) {
        refreshDrawableState();
        if (this.c != z) {
            this.c = z;
            this.s.a(this.m, 2048);
        }
    }

    @Override // androidx.appcompat.view.menu.o.a
    public void setChecked(boolean z) {
        refreshDrawableState();
        this.m.setChecked(z);
    }

    @Override // androidx.appcompat.view.menu.o.a
    public void setIcon(@ai Drawable drawable) {
        if (drawable != null) {
            if (this.q) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable = androidx.core.graphics.drawable.a.g(drawable).mutate();
                androidx.core.graphics.drawable.a.a(drawable, this.p);
            }
            drawable.setBounds(0, 0, this.k, this.k);
        } else if (this.l) {
            if (this.r == null) {
                this.r = androidx.core.b.b.g.a(getResources(), a.g.navigation_empty_icon, getContext().getTheme());
                if (this.r != null) {
                    this.r.setBounds(0, 0, this.k, this.k);
                }
            }
            drawable = this.r;
        }
        androidx.core.widget.m.a(this.m, drawable, (Drawable) null, (Drawable) null, (Drawable) null);
    }

    public void setIconSize(@androidx.annotation.p int i) {
        this.k = i;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (this.o != null && this.o.isCheckable() && this.o.isChecked()) {
            mergeDrawableStates(onCreateDrawableState, d);
        }
        return onCreateDrawableState;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setIconTintList(ColorStateList colorStateList) {
        this.p = colorStateList;
        this.q = this.p != null;
        if (this.o != null) {
            setIcon(this.o.getIcon());
        }
    }

    public void setTextAppearance(int i) {
        androidx.core.widget.m.a(this.m, i);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.m.setTextColor(colorStateList);
    }

    public void setNeedsEmptyIcon(boolean z) {
        this.l = z;
    }

    public void setHorizontalPadding(int i) {
        setPadding(i, 0, i, 0);
    }

    public void setIconPadding(int i) {
        this.m.setCompoundDrawablePadding(i);
    }

    public void setMaxLines(int i) {
        this.m.setMaxLines(i);
    }
}
