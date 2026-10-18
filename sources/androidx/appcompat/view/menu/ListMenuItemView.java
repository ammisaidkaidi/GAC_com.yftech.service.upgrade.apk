package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.annotation.ap;
import androidx.appcompat.a;
import androidx.appcompat.view.menu.o;
import androidx.appcompat.widget.ba;
import androidx.core.n.af;

@ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public class ListMenuItemView extends LinearLayout implements AbsListView.SelectionBoundsAdjuster, o.a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f123a = "ListMenuItemView";
    private j b;
    private ImageView c;
    private RadioButton d;
    private TextView e;
    private CheckBox f;
    private TextView g;
    private ImageView h;
    private ImageView i;
    private LinearLayout j;
    private Drawable k;
    private int l;
    private Context m;
    private boolean n;
    private Drawable o;
    private boolean p;
    private LayoutInflater q;
    private boolean r;

    @Override // androidx.appcompat.view.menu.o.a
    public boolean a() {
        return false;
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.b.listMenuViewStyle);
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        ba a2 = ba.a(getContext(), attributeSet, a.m.MenuView, i, 0);
        this.k = a2.a(a.m.MenuView_android_itemBackground);
        this.l = a2.g(a.m.MenuView_android_itemTextAppearance, -1);
        this.n = a2.a(a.m.MenuView_preserveIconSpacing, false);
        this.m = context;
        this.o = a2.a(a.m.MenuView_subMenuArrow);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, new int[]{R.attr.divider}, a.b.dropDownListViewStyle, 0);
        this.p = obtainStyledAttributes.hasValue(0);
        a2.f();
        obtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        af.a(this, this.k);
        this.e = (TextView) findViewById(a.g.title);
        if (this.l != -1) {
            this.e.setTextAppearance(this.m, this.l);
        }
        this.g = (TextView) findViewById(a.g.shortcut);
        this.h = (ImageView) findViewById(a.g.submenuarrow);
        if (this.h != null) {
            this.h.setImageDrawable(this.o);
        }
        this.i = (ImageView) findViewById(a.g.group_divider);
        this.j = (LinearLayout) findViewById(a.g.content);
    }

    @Override // androidx.appcompat.view.menu.o.a
    public void a(j jVar, int i) {
        this.b = jVar;
        setVisibility(jVar.isVisible() ? 0 : 8);
        setTitle(jVar.a((o.a) this));
        setCheckable(jVar.isCheckable());
        a(jVar.g(), jVar.e());
        setIcon(jVar.getIcon());
        setEnabled(jVar.isEnabled());
        setSubMenuArrowVisible(jVar.hasSubMenu());
        setContentDescription(jVar.getContentDescription());
    }

    private void a(View view) {
        a(view, -1);
    }

    private void a(View view, int i) {
        if (this.j != null) {
            this.j.addView(view, i);
        } else {
            addView(view, i);
        }
    }

    public void setForceShowIcon(boolean z) {
        this.r = z;
        this.n = z;
    }

    @Override // androidx.appcompat.view.menu.o.a
    public void setTitle(CharSequence charSequence) {
        if (charSequence != null) {
            this.e.setText(charSequence);
            if (this.e.getVisibility() != 0) {
                this.e.setVisibility(0);
                return;
            }
            return;
        }
        if (this.e.getVisibility() != 8) {
            this.e.setVisibility(8);
        }
    }

    @Override // androidx.appcompat.view.menu.o.a
    public j getItemData() {
        return this.b;
    }

    @Override // androidx.appcompat.view.menu.o.a
    public void setCheckable(boolean z) {
        CompoundButton compoundButton;
        CompoundButton compoundButton2;
        if (!z && this.d == null && this.f == null) {
            return;
        }
        if (this.b.h()) {
            if (this.d == null) {
                d();
            }
            compoundButton = this.d;
            compoundButton2 = this.f;
        } else {
            if (this.f == null) {
                e();
            }
            compoundButton = this.f;
            compoundButton2 = this.d;
        }
        if (z) {
            compoundButton.setChecked(this.b.isChecked());
            if (compoundButton.getVisibility() != 0) {
                compoundButton.setVisibility(0);
            }
            if (compoundButton2 == null || compoundButton2.getVisibility() == 8) {
                return;
            }
            compoundButton2.setVisibility(8);
            return;
        }
        if (this.f != null) {
            this.f.setVisibility(8);
        }
        if (this.d != null) {
            this.d.setVisibility(8);
        }
    }

    @Override // androidx.appcompat.view.menu.o.a
    public void setChecked(boolean z) {
        CompoundButton compoundButton;
        if (this.b.h()) {
            if (this.d == null) {
                d();
            }
            compoundButton = this.d;
        } else {
            if (this.f == null) {
                e();
            }
            compoundButton = this.f;
        }
        compoundButton.setChecked(z);
    }

    private void setSubMenuArrowVisible(boolean z) {
        if (this.h != null) {
            this.h.setVisibility(z ? 0 : 8);
        }
    }

    @Override // androidx.appcompat.view.menu.o.a
    public void a(boolean z, char c) {
        int i = (z && this.b.g()) ? 0 : 8;
        if (i == 0) {
            this.g.setText(this.b.f());
        }
        if (this.g.getVisibility() != i) {
            this.g.setVisibility(i);
        }
    }

    @Override // androidx.appcompat.view.menu.o.a
    public void setIcon(Drawable drawable) {
        boolean z = this.b.j() || this.r;
        if (z || this.n) {
            if (this.c == null && drawable == null && !this.n) {
                return;
            }
            if (this.c == null) {
                b();
            }
            if (drawable != null || this.n) {
                ImageView imageView = this.c;
                if (!z) {
                    drawable = null;
                }
                imageView.setImageDrawable(drawable);
                if (this.c.getVisibility() != 0) {
                    this.c.setVisibility(0);
                    return;
                }
                return;
            }
            this.c.setVisibility(8);
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.c != null && this.n) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.c.getLayoutParams();
            if (layoutParams.height > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = layoutParams.height;
            }
        }
        super.onMeasure(i, i2);
    }

    private void b() {
        this.c = (ImageView) getInflater().inflate(a.j.abc_list_menu_item_icon, (ViewGroup) this, false);
        a(this.c, 0);
    }

    private void d() {
        this.d = (RadioButton) getInflater().inflate(a.j.abc_list_menu_item_radio, (ViewGroup) this, false);
        a(this.d);
    }

    private void e() {
        this.f = (CheckBox) getInflater().inflate(a.j.abc_list_menu_item_checkbox, (ViewGroup) this, false);
        a(this.f);
    }

    @Override // androidx.appcompat.view.menu.o.a
    public boolean c() {
        return this.r;
    }

    private LayoutInflater getInflater() {
        if (this.q == null) {
            this.q = LayoutInflater.from(getContext());
        }
        return this.q;
    }

    public void setGroupDividerEnabled(boolean z) {
        if (this.i != null) {
            this.i.setVisibility((this.p || !z) ? 8 : 0);
        }
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public void adjustListItemSelectionBounds(Rect rect) {
        if (this.i == null || this.i.getVisibility() != 0) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.i.getLayoutParams();
        rect.top += this.i.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }
}
