package com.google.android.material.c;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import androidx.annotation.at;
import androidx.appcompat.view.menu.j;
import androidx.appcompat.view.menu.o;
import androidx.appcompat.widget.bc;
import androidx.core.n.a.d;
import androidx.core.n.aa;
import androidx.core.n.af;
import androidx.core.widget.m;
import com.google.android.material.a;

@ap(a = {ap.a.LIBRARY_GROUP})
/* loaded from: /home/user/work/dex/classes.dex */
public class a extends FrameLayout implements o.a {

    /* renamed from: a, reason: collision with root package name */
    public static final int f1218a = -1;
    private static final int[] b = {R.attr.state_checked};
    private final int c;
    private float d;
    private float e;
    private float f;
    private int g;
    private boolean h;
    private ImageView i;
    private final TextView j;
    private final TextView k;
    private int l;

    @ai
    private j m;

    @ai
    private ColorStateList n;

    @ai
    private Drawable o;

    @ai
    private Drawable p;

    @ai
    private com.google.android.material.b.a q;

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

    public a(@ah Context context) {
        this(context, null);
    }

    public a(@ah Context context, @ai AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public a(@ah Context context, @ai AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.l = -1;
        Resources resources = getResources();
        LayoutInflater.from(context).inflate(a.k.design_bottom_navigation_item, (ViewGroup) this, true);
        setBackgroundResource(a.g.design_bottom_navigation_item_background);
        this.c = resources.getDimensionPixelSize(a.f.design_bottom_navigation_margin);
        this.i = (ImageView) findViewById(a.h.icon);
        this.j = (TextView) findViewById(a.h.smallLabel);
        this.k = (TextView) findViewById(a.h.largeLabel);
        af.e((View) this.j, 2);
        af.e((View) this.k, 2);
        setFocusable(true);
        a(this.j.getTextSize(), this.k.getTextSize());
        if (this.i != null) {
            this.i.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.google.android.material.c.a.1
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                    if (a.this.i.getVisibility() == 0) {
                        a.this.a(a.this.i);
                    }
                }
            });
        }
    }

    @Override // androidx.appcompat.view.menu.o.a
    public void a(@ah j jVar, int i) {
        CharSequence title;
        this.m = jVar;
        setCheckable(jVar.isCheckable());
        setChecked(jVar.isChecked());
        setEnabled(jVar.isEnabled());
        setIcon(jVar.getIcon());
        setTitle(jVar.getTitle());
        setId(jVar.getItemId());
        if (!TextUtils.isEmpty(jVar.getContentDescription())) {
            setContentDescription(jVar.getContentDescription());
        }
        if (!TextUtils.isEmpty(jVar.getTooltipText())) {
            title = jVar.getTooltipText();
        } else {
            title = jVar.getTitle();
        }
        bc.a(this, title);
        setVisibility(jVar.isVisible() ? 0 : 8);
    }

    public void setItemPosition(int i) {
        this.l = i;
    }

    public int getItemPosition() {
        return this.l;
    }

    public void setShifting(boolean z) {
        if (this.h != z) {
            this.h = z;
            if (this.m != null) {
                setChecked(this.m.isChecked());
            }
        }
    }

    public void setLabelVisibilityMode(int i) {
        if (this.g != i) {
            this.g = i;
            if (this.m != null) {
                setChecked(this.m.isChecked());
            }
        }
    }

    @Override // androidx.appcompat.view.menu.o.a
    public j getItemData() {
        return this.m;
    }

    @Override // androidx.appcompat.view.menu.o.a
    public void setTitle(CharSequence charSequence) {
        this.j.setText(charSequence);
        this.k.setText(charSequence);
        if (this.m == null || TextUtils.isEmpty(this.m.getContentDescription())) {
            setContentDescription(charSequence);
        }
        if (this.m != null && !TextUtils.isEmpty(this.m.getTooltipText())) {
            charSequence = this.m.getTooltipText();
        }
        bc.a(this, charSequence);
    }

    @Override // androidx.appcompat.view.menu.o.a
    public void setCheckable(boolean z) {
        refreshDrawableState();
    }

    @Override // androidx.appcompat.view.menu.o.a
    public void setChecked(boolean z) {
        this.k.setPivotX(this.k.getWidth() / 2);
        this.k.setPivotY(this.k.getBaseline());
        this.j.setPivotX(this.j.getWidth() / 2);
        this.j.setPivotY(this.j.getBaseline());
        switch (this.g) {
            case -1:
                if (!this.h) {
                    if (z) {
                        a(this.i, (int) (this.c + this.d), 49);
                        a(this.k, 1.0f, 1.0f, 0);
                        a(this.j, this.e, this.e, 4);
                        break;
                    } else {
                        a(this.i, this.c, 49);
                        a(this.k, this.f, this.f, 4);
                        a(this.j, 1.0f, 1.0f, 0);
                        break;
                    }
                } else {
                    if (z) {
                        a(this.i, this.c, 49);
                        a(this.k, 1.0f, 1.0f, 0);
                    } else {
                        a(this.i, this.c, 17);
                        a(this.k, 0.5f, 0.5f, 4);
                    }
                    this.j.setVisibility(4);
                    break;
                }
            case 0:
                if (z) {
                    a(this.i, this.c, 49);
                    a(this.k, 1.0f, 1.0f, 0);
                } else {
                    a(this.i, this.c, 17);
                    a(this.k, 0.5f, 0.5f, 4);
                }
                this.j.setVisibility(4);
                break;
            case 1:
                if (z) {
                    a(this.i, (int) (this.c + this.d), 49);
                    a(this.k, 1.0f, 1.0f, 0);
                    a(this.j, this.e, this.e, 4);
                    break;
                } else {
                    a(this.i, this.c, 49);
                    a(this.k, this.f, this.f, 4);
                    a(this.j, 1.0f, 1.0f, 0);
                    break;
                }
            case 2:
                a(this.i, this.c, 17);
                this.k.setVisibility(8);
                this.j.setVisibility(8);
                break;
        }
        refreshDrawableState();
        setSelected(z);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@ah AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (this.q != null && this.q.isVisible()) {
            CharSequence title = this.m.getTitle();
            if (!TextUtils.isEmpty(this.m.getContentDescription())) {
                title = this.m.getContentDescription();
            }
            accessibilityNodeInfo.setContentDescription(((Object) title) + ", " + ((Object) this.q.j()));
        }
        androidx.core.n.a.d a2 = androidx.core.n.a.d.a(accessibilityNodeInfo);
        a2.c(d.c.a(0, 1, getItemPosition(), 1, false, isSelected()));
        if (isSelected()) {
            a2.h(false);
            a2.b(d.a.e);
        }
        a2.j(getResources().getString(a.m.item_view_role_description));
    }

    private void a(@ah View view, int i, int i2) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.topMargin = i;
        layoutParams.gravity = i2;
        view.setLayoutParams(layoutParams);
    }

    private void a(@ah View view, float f, float f2, int i) {
        view.setScaleX(f);
        view.setScaleY(f2);
        view.setVisibility(i);
    }

    @Override // android.view.View, androidx.appcompat.view.menu.o.a
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.j.setEnabled(z);
        this.k.setEnabled(z);
        this.i.setEnabled(z);
        if (z) {
            af.a(this, aa.a(getContext(), aa.d));
        } else {
            af.a(this, (aa) null);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (this.m != null && this.m.isCheckable() && this.m.isChecked()) {
            mergeDrawableStates(onCreateDrawableState, b);
        }
        return onCreateDrawableState;
    }

    @Override // androidx.appcompat.view.menu.o.a
    public void setIcon(@ai Drawable drawable) {
        if (drawable == this.o) {
            return;
        }
        this.o = drawable;
        if (drawable != null) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                drawable = constantState.newDrawable();
            }
            drawable = androidx.core.graphics.drawable.a.g(drawable).mutate();
            this.p = drawable;
            if (this.n != null) {
                androidx.core.graphics.drawable.a.a(this.p, this.n);
            }
        }
        this.i.setImageDrawable(drawable);
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.n = colorStateList;
        if (this.m == null || this.p == null) {
            return;
        }
        androidx.core.graphics.drawable.a.a(this.p, this.n);
        this.p.invalidateSelf();
    }

    public void setIconSize(int i) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.i.getLayoutParams();
        layoutParams.width = i;
        layoutParams.height = i;
        this.i.setLayoutParams(layoutParams);
    }

    public void setTextAppearanceInactive(@at int i) {
        m.a(this.j, i);
        a(this.j.getTextSize(), this.k.getTextSize());
    }

    public void setTextAppearanceActive(@at int i) {
        m.a(this.k, i);
        a(this.j.getTextSize(), this.k.getTextSize());
    }

    public void setTextColor(@ai ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.j.setTextColor(colorStateList);
            this.k.setTextColor(colorStateList);
        }
    }

    private void a(float f, float f2) {
        this.d = f - f2;
        this.e = (f2 * 1.0f) / f;
        this.f = (f * 1.0f) / f2;
    }

    public void setItemBackground(int i) {
        setItemBackground(i == 0 ? null : androidx.core.b.c.a(getContext(), i));
    }

    public void setItemBackground(@ai Drawable drawable) {
        if (drawable != null && drawable.getConstantState() != null) {
            drawable = drawable.getConstantState().newDrawable().mutate();
        }
        af.a(this, drawable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBadge(@ah com.google.android.material.b.a aVar) {
        this.q = aVar;
        if (this.i != null) {
            b(this.i);
        }
    }

    @ai
    com.google.android.material.b.a getBadge() {
        return this.q;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        c(this.i);
    }

    private boolean d() {
        return this.q != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(View view) {
        if (d()) {
            com.google.android.material.b.b.c(this.q, view, d(view));
        }
    }

    private void b(@ai View view) {
        if (d() && view != null) {
            setClipChildren(false);
            setClipToPadding(false);
            com.google.android.material.b.b.a(this.q, view, d(view));
        }
    }

    private void c(@ai View view) {
        if (d()) {
            if (view != null) {
                setClipChildren(true);
                setClipToPadding(true);
                com.google.android.material.b.b.b(this.q, view, d(view));
            }
            this.q = null;
        }
    }

    @ai
    private FrameLayout d(View view) {
        if (view == this.i && com.google.android.material.b.b.f1176a) {
            return (FrameLayout) this.i.getParent();
        }
        return null;
    }
}
