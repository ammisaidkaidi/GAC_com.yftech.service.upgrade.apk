package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.ap;
import androidx.appcompat.a;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.o;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.aa;
import androidx.appcompat.widget.ai;
import androidx.appcompat.widget.bc;

@ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public class ActionMenuItemView extends aa implements View.OnClickListener, o.a, ActionMenuView.a {
    private static final String e = "ActionMenuItemView";
    private static final int m = 32;

    /* renamed from: a, reason: collision with root package name */
    j f120a;
    g.b b;
    b c;
    private CharSequence f;
    private Drawable g;
    private ai h;
    private boolean i;
    private boolean j;
    private int k;
    private int l;
    private int n;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class b {
        public abstract q a();
    }

    @Override // androidx.appcompat.view.menu.o.a
    public void a(boolean z, char c) {
    }

    @Override // androidx.appcompat.view.menu.o.a
    public boolean a() {
        return true;
    }

    @Override // androidx.appcompat.view.menu.o.a
    public boolean c() {
        return true;
    }

    @Override // androidx.appcompat.view.menu.o.a
    public void setCheckable(boolean z) {
    }

    @Override // androidx.appcompat.view.menu.o.a
    public void setChecked(boolean z) {
    }

    public ActionMenuItemView(Context context) {
        this(context, null);
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Resources resources = context.getResources();
        this.i = f();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.m.ActionMenuItemView, i, 0);
        this.k = obtainStyledAttributes.getDimensionPixelSize(a.m.ActionMenuItemView_android_minWidth, 0);
        obtainStyledAttributes.recycle();
        this.n = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        this.l = -1;
        setSaveEnabled(false);
    }

    @Override // android.widget.TextView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.i = f();
        g();
    }

    private boolean f() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i = configuration.screenWidthDp;
        return i >= 480 || (i >= 640 && configuration.screenHeightDp >= 480) || configuration.orientation == 2;
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        this.l = i;
        super.setPadding(i, i2, i3, i4);
    }

    @Override // androidx.appcompat.view.menu.o.a
    public j getItemData() {
        return this.f120a;
    }

    @Override // androidx.appcompat.view.menu.o.a
    public void a(j jVar, int i) {
        this.f120a = jVar;
        setIcon(jVar.getIcon());
        setTitle(jVar.a((o.a) this));
        setId(jVar.getItemId());
        setVisibility(jVar.isVisible() ? 0 : 8);
        setEnabled(jVar.isEnabled());
        if (jVar.hasSubMenu() && this.h == null) {
            this.h = new a();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f120a.hasSubMenu() && this.h != null && this.h.onTouch(this, motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.b != null) {
            this.b.a(this.f120a);
        }
    }

    public void setItemInvoker(g.b bVar) {
        this.b = bVar;
    }

    public void setPopupCallback(b bVar) {
        this.c = bVar;
    }

    public void setExpandedFormat(boolean z) {
        if (this.j != z) {
            this.j = z;
            if (this.f120a != null) {
                this.f120a.i();
            }
        }
    }

    private void g() {
        boolean z = true;
        boolean z2 = !TextUtils.isEmpty(this.f);
        if (this.g != null && (!this.f120a.m() || (!this.i && !this.j))) {
            z = false;
        }
        boolean z3 = z2 & z;
        setText(z3 ? this.f : null);
        CharSequence contentDescription = this.f120a.getContentDescription();
        if (TextUtils.isEmpty(contentDescription)) {
            setContentDescription(z3 ? null : this.f120a.getTitle());
        } else {
            setContentDescription(contentDescription);
        }
        CharSequence tooltipText = this.f120a.getTooltipText();
        if (TextUtils.isEmpty(tooltipText)) {
            bc.a(this, z3 ? null : this.f120a.getTitle());
        } else {
            bc.a(this, tooltipText);
        }
    }

    @Override // androidx.appcompat.view.menu.o.a
    public void setIcon(Drawable drawable) {
        this.g = drawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicWidth > this.n) {
                float f = this.n / intrinsicWidth;
                intrinsicWidth = this.n;
                intrinsicHeight = (int) (intrinsicHeight * f);
            }
            if (intrinsicHeight > this.n) {
                float f2 = this.n / intrinsicHeight;
                intrinsicHeight = this.n;
                intrinsicWidth = (int) (intrinsicWidth * f2);
            }
            drawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
        }
        setCompoundDrawables(drawable, null, null, null);
        g();
    }

    public boolean b() {
        return !TextUtils.isEmpty(getText());
    }

    @Override // androidx.appcompat.view.menu.o.a
    public void setTitle(CharSequence charSequence) {
        this.f = charSequence;
        g();
    }

    @Override // androidx.appcompat.widget.ActionMenuView.a
    public boolean d() {
        return b() && this.f120a.getIcon() == null;
    }

    @Override // androidx.appcompat.widget.ActionMenuView.a
    public boolean e() {
        return b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.aa, android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        boolean b2 = b();
        if (b2 && this.l >= 0) {
            super.setPadding(this.l, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int measuredWidth = getMeasuredWidth();
        if (mode == Integer.MIN_VALUE) {
            i3 = Math.min(size, this.k);
        } else {
            i3 = this.k;
        }
        if (mode != 1073741824 && this.k > 0 && measuredWidth < i3) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(i3, androidx.d.c.b.a.b.b), i2);
        }
        if (b2 || this.g == null) {
            return;
        }
        super.setPadding((getMeasuredWidth() - this.g.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private class a extends ai {
        public a() {
            super(ActionMenuItemView.this);
        }

        @Override // androidx.appcompat.widget.ai
        public q a() {
            if (ActionMenuItemView.this.c != null) {
                return ActionMenuItemView.this.c.a();
            }
            return null;
        }

        @Override // androidx.appcompat.widget.ai
        protected boolean b() {
            q a2;
            return ActionMenuItemView.this.b != null && ActionMenuItemView.this.b.a(ActionMenuItemView.this.f120a) && (a2 = a()) != null && a2.e();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }
}
