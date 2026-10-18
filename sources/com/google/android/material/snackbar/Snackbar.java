package com.google.android.material.snackbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.Button;
import android.widget.FrameLayout;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import androidx.annotation.as;
import androidx.annotation.k;
import androidx.annotation.p;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.a;
import com.google.android.material.snackbar.BaseTransientBottomBar;

/* loaded from: /home/user/work/dex/classes.dex */
public class Snackbar extends BaseTransientBottomBar<Snackbar> {
    private static final int[] o = {a.c.snackbarButtonStyle};
    private static final int[] p = {a.c.snackbarButtonStyle, a.c.snackbarTextViewStyle};

    @ai
    private final AccessibilityManager m;
    private boolean n;

    @ai
    private BaseTransientBottomBar.b<Snackbar> q;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a extends BaseTransientBottomBar.b<Snackbar> {
        public static final int f = 0;
        public static final int g = 1;
        public static final int h = 2;
        public static final int i = 3;
        public static final int j = 4;

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.b
        public void a(Snackbar snackbar) {
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.b
        public void a(Snackbar snackbar, int i2) {
        }
    }

    private Snackbar(@ah ViewGroup viewGroup, @ah View view, @ah com.google.android.material.snackbar.a aVar) {
        super(viewGroup, view, aVar);
        this.m = (AccessibilityManager) viewGroup.getContext().getSystemService("accessibility");
    }

    @Override // com.google.android.material.snackbar.BaseTransientBottomBar
    public void j() {
        super.j();
    }

    @Override // com.google.android.material.snackbar.BaseTransientBottomBar
    public void k() {
        super.k();
    }

    @Override // com.google.android.material.snackbar.BaseTransientBottomBar
    public boolean l() {
        return super.l();
    }

    @ah
    public static Snackbar a(@ah View view, @ah CharSequence charSequence, int i) {
        ViewGroup b = b(view);
        if (b == null) {
            throw new IllegalArgumentException("No suitable parent found from the given view. Please provide a valid view.");
        }
        SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) LayoutInflater.from(b.getContext()).inflate(b(b.getContext()) ? a.k.mtrl_layout_snackbar_include : a.k.design_layout_snackbar_include, b, false);
        Snackbar snackbar = new Snackbar(b, snackbarContentLayout, snackbarContentLayout);
        snackbar.a(charSequence);
        snackbar.a(i);
        return snackbar;
    }

    @Deprecated
    protected static boolean a(@ah Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(o);
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        obtainStyledAttributes.recycle();
        return resourceId != -1;
    }

    private static boolean b(@ah Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(p);
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        int resourceId2 = obtainStyledAttributes.getResourceId(1, -1);
        obtainStyledAttributes.recycle();
        return (resourceId == -1 || resourceId2 == -1) ? false : true;
    }

    @ah
    public static Snackbar a(@ah View view, @as int i, int i2) {
        return a(view, view.getResources().getText(i), i2);
    }

    @ai
    private static ViewGroup b(View view) {
        ViewGroup viewGroup = null;
        while (!(view instanceof CoordinatorLayout)) {
            if (view instanceof FrameLayout) {
                if (view.getId() == 16908290) {
                    return (ViewGroup) view;
                }
                viewGroup = (ViewGroup) view;
            }
            if (view != null) {
                Object parent = view.getParent();
                view = parent instanceof View ? (View) parent : null;
            }
            if (view == null) {
                return viewGroup;
            }
        }
        return (ViewGroup) view;
    }

    @ah
    public Snackbar a(@ah CharSequence charSequence) {
        ((SnackbarContentLayout) this.k.getChildAt(0)).getMessageView().setText(charSequence);
        return this;
    }

    @ah
    public Snackbar g(@as int i) {
        return a(h().getText(i));
    }

    @ah
    public Snackbar a(@as int i, View.OnClickListener onClickListener) {
        return a(h().getText(i), onClickListener);
    }

    @ah
    public Snackbar a(@ai CharSequence charSequence, @ai final View.OnClickListener onClickListener) {
        Button actionView = ((SnackbarContentLayout) this.k.getChildAt(0)).getActionView();
        if (TextUtils.isEmpty(charSequence) || onClickListener == null) {
            actionView.setVisibility(8);
            actionView.setOnClickListener(null);
            this.n = false;
        } else {
            this.n = true;
            actionView.setVisibility(0);
            actionView.setText(charSequence);
            actionView.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.snackbar.Snackbar.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    onClickListener.onClick(view);
                    Snackbar.this.d(1);
                }
            });
        }
        return this;
    }

    @Override // com.google.android.material.snackbar.BaseTransientBottomBar
    public int c() {
        int c = super.c();
        if (c == -2) {
            return -2;
        }
        if (Build.VERSION.SDK_INT >= 29) {
            return this.m.getRecommendedTimeoutMillis(c, (this.n ? 4 : 0) | 1 | 2);
        }
        if (this.n && this.m.isTouchExplorationEnabled()) {
            return -2;
        }
        return c;
    }

    @ah
    public Snackbar a(ColorStateList colorStateList) {
        ((SnackbarContentLayout) this.k.getChildAt(0)).getMessageView().setTextColor(colorStateList);
        return this;
    }

    @ah
    public Snackbar h(@k int i) {
        ((SnackbarContentLayout) this.k.getChildAt(0)).getMessageView().setTextColor(i);
        return this;
    }

    @ah
    public Snackbar b(ColorStateList colorStateList) {
        ((SnackbarContentLayout) this.k.getChildAt(0)).getActionView().setTextColor(colorStateList);
        return this;
    }

    @ah
    public Snackbar i(@p int i) {
        ((SnackbarContentLayout) this.k.getChildAt(0)).setMaxInlineActionWidth(i);
        return this;
    }

    @ah
    public Snackbar j(@k int i) {
        ((SnackbarContentLayout) this.k.getChildAt(0)).getActionView().setTextColor(i);
        return this;
    }

    @ah
    public Snackbar k(@k int i) {
        return c(ColorStateList.valueOf(i));
    }

    @ah
    public Snackbar c(@ai ColorStateList colorStateList) {
        this.k.setBackgroundTintList(colorStateList);
        return this;
    }

    @ah
    public Snackbar a(@ai PorterDuff.Mode mode) {
        this.k.setBackgroundTintMode(mode);
        return this;
    }

    @ah
    @Deprecated
    public Snackbar a(@ai a aVar) {
        if (this.q != null) {
            b(this.q);
        }
        if (aVar != null) {
            a((BaseTransientBottomBar.b) aVar);
        }
        this.q = aVar;
        return this;
    }

    @ap(a = {ap.a.LIBRARY_GROUP})
    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class SnackbarLayout extends BaseTransientBottomBar.h {
        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.h, android.view.View
        public /* bridge */ /* synthetic */ void setBackground(@ai Drawable drawable) {
            super.setBackground(drawable);
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.h, android.view.View
        public /* bridge */ /* synthetic */ void setBackgroundDrawable(@ai Drawable drawable) {
            super.setBackgroundDrawable(drawable);
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.h, android.view.View
        public /* bridge */ /* synthetic */ void setBackgroundTintList(@ai ColorStateList colorStateList) {
            super.setBackgroundTintList(colorStateList);
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.h, android.view.View
        public /* bridge */ /* synthetic */ void setBackgroundTintMode(@ai PorterDuff.Mode mode) {
            super.setBackgroundTintMode(mode);
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.h, android.view.View
        public /* bridge */ /* synthetic */ void setOnClickListener(@ai View.OnClickListener onClickListener) {
            super.setOnClickListener(onClickListener);
        }

        public SnackbarLayout(Context context) {
            super(context);
        }

        public SnackbarLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            int childCount = getChildCount();
            int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getLayoutParams().width == -1) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth, androidx.d.c.b.a.b.b), View.MeasureSpec.makeMeasureSpec(childAt.getMeasuredHeight(), androidx.d.c.b.a.b.b));
                }
            }
        }
    }
}
