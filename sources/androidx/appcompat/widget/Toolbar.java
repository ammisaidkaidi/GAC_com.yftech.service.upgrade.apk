package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Layout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.ap;
import androidx.appcompat.a;
import androidx.appcompat.app.a;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.n;
import androidx.appcompat.widget.ActionMenuView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class Toolbar extends ViewGroup {
    private static final String e = "Toolbar";
    private CharSequence A;
    private ColorStateList B;
    private ColorStateList C;
    private boolean D;
    private boolean E;
    private final ArrayList<View> F;
    private final ArrayList<View> G;
    private final int[] H;
    private final ActionMenuView.e I;
    private bb J;
    private androidx.appcompat.widget.c K;
    private a L;
    private n.a M;
    private g.a N;
    private boolean O;
    private final Runnable P;

    /* renamed from: a, reason: collision with root package name */
    ImageButton f188a;
    View b;
    int c;
    c d;
    private ActionMenuView f;
    private TextView g;
    private TextView h;
    private ImageButton i;
    private ImageView j;
    private Drawable k;
    private CharSequence l;
    private Context m;
    private int n;
    private int o;
    private int p;
    private int q;
    private int r;
    private int s;
    private int t;
    private int u;
    private aq v;
    private int w;
    private int x;
    private int y;
    private CharSequence z;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface c {
        boolean a(MenuItem menuItem);
    }

    public Toolbar(@androidx.annotation.ah Context context) {
        this(context, null);
    }

    public Toolbar(@androidx.annotation.ah Context context, @androidx.annotation.ai AttributeSet attributeSet) {
        this(context, attributeSet, a.b.toolbarStyle);
    }

    public Toolbar(@androidx.annotation.ah Context context, @androidx.annotation.ai AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.y = 8388627;
        this.F = new ArrayList<>();
        this.G = new ArrayList<>();
        this.H = new int[2];
        this.I = new ActionMenuView.e() { // from class: androidx.appcompat.widget.Toolbar.1
            @Override // androidx.appcompat.widget.ActionMenuView.e
            public boolean a(MenuItem menuItem) {
                if (Toolbar.this.d != null) {
                    return Toolbar.this.d.a(menuItem);
                }
                return false;
            }
        };
        this.P = new Runnable() { // from class: androidx.appcompat.widget.Toolbar.2
            @Override // java.lang.Runnable
            public void run() {
                Toolbar.this.d();
            }
        };
        ba a2 = ba.a(getContext(), attributeSet, a.m.Toolbar, i, 0);
        androidx.core.n.af.a(this, context, a.m.Toolbar, attributeSet, a2.a(), i, 0);
        this.o = a2.g(a.m.Toolbar_titleTextAppearance, 0);
        this.p = a2.g(a.m.Toolbar_subtitleTextAppearance, 0);
        this.y = a2.c(a.m.Toolbar_android_gravity, this.y);
        this.c = a2.c(a.m.Toolbar_buttonGravity, 48);
        int d2 = a2.d(a.m.Toolbar_titleMargin, 0);
        d2 = a2.j(a.m.Toolbar_titleMargins) ? a2.d(a.m.Toolbar_titleMargins, d2) : d2;
        this.u = d2;
        this.t = d2;
        this.s = d2;
        this.r = d2;
        int d3 = a2.d(a.m.Toolbar_titleMarginStart, -1);
        if (d3 >= 0) {
            this.r = d3;
        }
        int d4 = a2.d(a.m.Toolbar_titleMarginEnd, -1);
        if (d4 >= 0) {
            this.s = d4;
        }
        int d5 = a2.d(a.m.Toolbar_titleMarginTop, -1);
        if (d5 >= 0) {
            this.t = d5;
        }
        int d6 = a2.d(a.m.Toolbar_titleMarginBottom, -1);
        if (d6 >= 0) {
            this.u = d6;
        }
        this.q = a2.e(a.m.Toolbar_maxButtonHeight, -1);
        int d7 = a2.d(a.m.Toolbar_contentInsetStart, Integer.MIN_VALUE);
        int d8 = a2.d(a.m.Toolbar_contentInsetEnd, Integer.MIN_VALUE);
        int e2 = a2.e(a.m.Toolbar_contentInsetLeft, 0);
        int e3 = a2.e(a.m.Toolbar_contentInsetRight, 0);
        t();
        this.v.b(e2, e3);
        if (d7 != Integer.MIN_VALUE || d8 != Integer.MIN_VALUE) {
            this.v.a(d7, d8);
        }
        this.w = a2.d(a.m.Toolbar_contentInsetStartWithNavigation, Integer.MIN_VALUE);
        this.x = a2.d(a.m.Toolbar_contentInsetEndWithActions, Integer.MIN_VALUE);
        this.k = a2.a(a.m.Toolbar_collapseIcon);
        this.l = a2.d(a.m.Toolbar_collapseContentDescription);
        CharSequence d9 = a2.d(a.m.Toolbar_title);
        if (!TextUtils.isEmpty(d9)) {
            setTitle(d9);
        }
        CharSequence d10 = a2.d(a.m.Toolbar_subtitle);
        if (!TextUtils.isEmpty(d10)) {
            setSubtitle(d10);
        }
        this.m = getContext();
        setPopupTheme(a2.g(a.m.Toolbar_popupTheme, 0));
        Drawable a3 = a2.a(a.m.Toolbar_navigationIcon);
        if (a3 != null) {
            setNavigationIcon(a3);
        }
        CharSequence d11 = a2.d(a.m.Toolbar_navigationContentDescription);
        if (!TextUtils.isEmpty(d11)) {
            setNavigationContentDescription(d11);
        }
        Drawable a4 = a2.a(a.m.Toolbar_logo);
        if (a4 != null) {
            setLogo(a4);
        }
        CharSequence d12 = a2.d(a.m.Toolbar_logoDescription);
        if (!TextUtils.isEmpty(d12)) {
            setLogoDescription(d12);
        }
        if (a2.j(a.m.Toolbar_titleTextColor)) {
            setTitleTextColor(a2.g(a.m.Toolbar_titleTextColor));
        }
        if (a2.j(a.m.Toolbar_subtitleTextColor)) {
            setSubtitleTextColor(a2.g(a.m.Toolbar_subtitleTextColor));
        }
        if (a2.j(a.m.Toolbar_menu)) {
            a(a2.g(a.m.Toolbar_menu, 0));
        }
        a2.f();
    }

    public void setPopupTheme(@androidx.annotation.at int i) {
        if (this.n != i) {
            this.n = i;
            if (i == 0) {
                this.m = getContext();
            } else {
                this.m = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public int getPopupTheme() {
        return this.n;
    }

    public void a(int i, int i2, int i3, int i4) {
        this.r = i;
        this.t = i2;
        this.s = i3;
        this.u = i4;
        requestLayout();
    }

    public int getTitleMarginStart() {
        return this.r;
    }

    public void setTitleMarginStart(int i) {
        this.r = i;
        requestLayout();
    }

    public int getTitleMarginTop() {
        return this.t;
    }

    public void setTitleMarginTop(int i) {
        this.t = i;
        requestLayout();
    }

    public int getTitleMarginEnd() {
        return this.s;
    }

    public void setTitleMarginEnd(int i) {
        this.s = i;
        requestLayout();
    }

    public int getTitleMarginBottom() {
        return this.u;
    }

    public void setTitleMarginBottom(int i) {
        this.u = i;
        requestLayout();
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        if (Build.VERSION.SDK_INT >= 17) {
            super.onRtlPropertiesChanged(i);
        }
        t();
        this.v.a(i == 1);
    }

    public void setLogo(@androidx.annotation.q int i) {
        setLogo(androidx.appcompat.a.a.a.b(getContext(), i));
    }

    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public boolean a() {
        return getVisibility() == 0 && this.f != null && this.f.a();
    }

    public boolean b() {
        return this.f != null && this.f.g();
    }

    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public boolean c() {
        return this.f != null && this.f.h();
    }

    public boolean d() {
        return this.f != null && this.f.e();
    }

    public boolean e() {
        return this.f != null && this.f.f();
    }

    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void a(androidx.appcompat.view.menu.g gVar, androidx.appcompat.widget.c cVar) {
        if (gVar == null && this.f == null) {
            return;
        }
        p();
        androidx.appcompat.view.menu.g d2 = this.f.d();
        if (d2 == gVar) {
            return;
        }
        if (d2 != null) {
            d2.b(this.K);
            d2.b(this.L);
        }
        if (this.L == null) {
            this.L = new a();
        }
        cVar.c(true);
        if (gVar != null) {
            gVar.a(cVar, this.m);
            gVar.a(this.L, this.m);
        } else {
            cVar.a(this.m, (androidx.appcompat.view.menu.g) null);
            this.L.a(this.m, (androidx.appcompat.view.menu.g) null);
            cVar.a(true);
            this.L.a(true);
        }
        this.f.setPopupTheme(this.n);
        this.f.setPresenter(cVar);
        this.K = cVar;
    }

    public void f() {
        if (this.f != null) {
            this.f.i();
        }
    }

    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public boolean g() {
        Layout layout;
        if (this.g == null || (layout = this.g.getLayout()) == null) {
            return false;
        }
        int lineCount = layout.getLineCount();
        for (int i = 0; i < lineCount; i++) {
            if (layout.getEllipsisCount(i) > 0) {
                return true;
            }
        }
        return false;
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            n();
            if (!d(this.j)) {
                a((View) this.j, true);
            }
        } else if (this.j != null && d(this.j)) {
            removeView(this.j);
            this.G.remove(this.j);
        }
        if (this.j != null) {
            this.j.setImageDrawable(drawable);
        }
    }

    public Drawable getLogo() {
        if (this.j != null) {
            return this.j.getDrawable();
        }
        return null;
    }

    public void setLogoDescription(@androidx.annotation.as int i) {
        setLogoDescription(getContext().getText(i));
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            n();
        }
        if (this.j != null) {
            this.j.setContentDescription(charSequence);
        }
    }

    public CharSequence getLogoDescription() {
        if (this.j != null) {
            return this.j.getContentDescription();
        }
        return null;
    }

    private void n() {
        if (this.j == null) {
            this.j = new p(getContext());
        }
    }

    public boolean h() {
        return (this.L == null || this.L.b == null) ? false : true;
    }

    public void i() {
        androidx.appcompat.view.menu.j jVar = this.L == null ? null : this.L.b;
        if (jVar != null) {
            jVar.collapseActionView();
        }
    }

    public CharSequence getTitle() {
        return this.z;
    }

    public void setTitle(@androidx.annotation.as int i) {
        setTitle(getContext().getText(i));
    }

    public void setTitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.g == null) {
                Context context = getContext();
                this.g = new aa(context);
                this.g.setSingleLine();
                this.g.setEllipsize(TextUtils.TruncateAt.END);
                if (this.o != 0) {
                    this.g.setTextAppearance(context, this.o);
                }
                if (this.B != null) {
                    this.g.setTextColor(this.B);
                }
            }
            if (!d(this.g)) {
                a((View) this.g, true);
            }
        } else if (this.g != null && d(this.g)) {
            removeView(this.g);
            this.G.remove(this.g);
        }
        if (this.g != null) {
            this.g.setText(charSequence);
        }
        this.z = charSequence;
    }

    public CharSequence getSubtitle() {
        return this.A;
    }

    public void setSubtitle(@androidx.annotation.as int i) {
        setSubtitle(getContext().getText(i));
    }

    public void setSubtitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.h == null) {
                Context context = getContext();
                this.h = new aa(context);
                this.h.setSingleLine();
                this.h.setEllipsize(TextUtils.TruncateAt.END);
                if (this.p != 0) {
                    this.h.setTextAppearance(context, this.p);
                }
                if (this.C != null) {
                    this.h.setTextColor(this.C);
                }
            }
            if (!d(this.h)) {
                a((View) this.h, true);
            }
        } else if (this.h != null && d(this.h)) {
            removeView(this.h);
            this.G.remove(this.h);
        }
        if (this.h != null) {
            this.h.setText(charSequence);
        }
        this.A = charSequence;
    }

    public void a(Context context, @androidx.annotation.at int i) {
        this.o = i;
        if (this.g != null) {
            this.g.setTextAppearance(context, i);
        }
    }

    public void b(Context context, @androidx.annotation.at int i) {
        this.p = i;
        if (this.h != null) {
            this.h.setTextAppearance(context, i);
        }
    }

    public void setTitleTextColor(@androidx.annotation.k int i) {
        setTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setTitleTextColor(@androidx.annotation.ah ColorStateList colorStateList) {
        this.B = colorStateList;
        if (this.g != null) {
            this.g.setTextColor(colorStateList);
        }
    }

    public void setSubtitleTextColor(@androidx.annotation.k int i) {
        setSubtitleTextColor(ColorStateList.valueOf(i));
    }

    public void setSubtitleTextColor(@androidx.annotation.ah ColorStateList colorStateList) {
        this.C = colorStateList;
        if (this.h != null) {
            this.h.setTextColor(colorStateList);
        }
    }

    @androidx.annotation.ai
    public CharSequence getNavigationContentDescription() {
        if (this.i != null) {
            return this.i.getContentDescription();
        }
        return null;
    }

    public void setNavigationContentDescription(@androidx.annotation.as int i) {
        setNavigationContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setNavigationContentDescription(@androidx.annotation.ai CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            q();
        }
        if (this.i != null) {
            this.i.setContentDescription(charSequence);
        }
    }

    public void setNavigationIcon(@androidx.annotation.q int i) {
        setNavigationIcon(androidx.appcompat.a.a.a.b(getContext(), i));
    }

    public void setNavigationIcon(@androidx.annotation.ai Drawable drawable) {
        if (drawable != null) {
            q();
            if (!d(this.i)) {
                a((View) this.i, true);
            }
        } else if (this.i != null && d(this.i)) {
            removeView(this.i);
            this.G.remove(this.i);
        }
        if (this.i != null) {
            this.i.setImageDrawable(drawable);
        }
    }

    @androidx.annotation.ai
    public Drawable getNavigationIcon() {
        if (this.i != null) {
            return this.i.getDrawable();
        }
        return null;
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        q();
        this.i.setOnClickListener(onClickListener);
    }

    @androidx.annotation.ai
    public CharSequence getCollapseContentDescription() {
        if (this.f188a != null) {
            return this.f188a.getContentDescription();
        }
        return null;
    }

    public void setCollapseContentDescription(@androidx.annotation.as int i) {
        setCollapseContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setCollapseContentDescription(@androidx.annotation.ai CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            j();
        }
        if (this.f188a != null) {
            this.f188a.setContentDescription(charSequence);
        }
    }

    @androidx.annotation.ai
    public Drawable getCollapseIcon() {
        if (this.f188a != null) {
            return this.f188a.getDrawable();
        }
        return null;
    }

    public void setCollapseIcon(@androidx.annotation.q int i) {
        setCollapseIcon(androidx.appcompat.a.a.a.b(getContext(), i));
    }

    public void setCollapseIcon(@androidx.annotation.ai Drawable drawable) {
        if (drawable != null) {
            j();
            this.f188a.setImageDrawable(drawable);
        } else if (this.f188a != null) {
            this.f188a.setImageDrawable(this.k);
        }
    }

    public Menu getMenu() {
        o();
        return this.f.getMenu();
    }

    public void setOverflowIcon(@androidx.annotation.ai Drawable drawable) {
        o();
        this.f.setOverflowIcon(drawable);
    }

    @androidx.annotation.ai
    public Drawable getOverflowIcon() {
        o();
        return this.f.getOverflowIcon();
    }

    private void o() {
        p();
        if (this.f.d() == null) {
            androidx.appcompat.view.menu.g gVar = (androidx.appcompat.view.menu.g) this.f.getMenu();
            if (this.L == null) {
                this.L = new a();
            }
            this.f.setExpandedActionViewsExclusive(true);
            gVar.a(this.L, this.m);
        }
    }

    private void p() {
        if (this.f == null) {
            this.f = new ActionMenuView(getContext());
            this.f.setPopupTheme(this.n);
            this.f.setOnMenuItemClickListener(this.I);
            this.f.a(this.M, this.N);
            b generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.f46a = 8388613 | (this.c & 112);
            this.f.setLayoutParams(generateDefaultLayoutParams);
            a((View) this.f, false);
        }
    }

    private MenuInflater getMenuInflater() {
        return new androidx.appcompat.view.g(getContext());
    }

    public void a(@androidx.annotation.af int i) {
        getMenuInflater().inflate(i, getMenu());
    }

    public void setOnMenuItemClickListener(c cVar) {
        this.d = cVar;
    }

    public void a(int i, int i2) {
        t();
        this.v.a(i, i2);
    }

    public int getContentInsetStart() {
        if (this.v != null) {
            return this.v.c();
        }
        return 0;
    }

    public int getContentInsetEnd() {
        if (this.v != null) {
            return this.v.d();
        }
        return 0;
    }

    public void b(int i, int i2) {
        t();
        this.v.b(i, i2);
    }

    public int getContentInsetLeft() {
        if (this.v != null) {
            return this.v.a();
        }
        return 0;
    }

    public int getContentInsetRight() {
        if (this.v != null) {
            return this.v.b();
        }
        return 0;
    }

    public int getContentInsetStartWithNavigation() {
        if (this.w != Integer.MIN_VALUE) {
            return this.w;
        }
        return getContentInsetStart();
    }

    public void setContentInsetStartWithNavigation(int i) {
        if (i < 0) {
            i = Integer.MIN_VALUE;
        }
        if (i != this.w) {
            this.w = i;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public int getContentInsetEndWithActions() {
        if (this.x != Integer.MIN_VALUE) {
            return this.x;
        }
        return getContentInsetEnd();
    }

    public void setContentInsetEndWithActions(int i) {
        if (i < 0) {
            i = Integer.MIN_VALUE;
        }
        if (i != this.x) {
            this.x = i;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public int getCurrentContentInsetStart() {
        if (getNavigationIcon() != null) {
            return Math.max(getContentInsetStart(), Math.max(this.w, 0));
        }
        return getContentInsetStart();
    }

    public int getCurrentContentInsetEnd() {
        androidx.appcompat.view.menu.g d2;
        if ((this.f == null || (d2 = this.f.d()) == null || !d2.hasVisibleItems()) ? false : true) {
            return Math.max(getContentInsetEnd(), Math.max(this.x, 0));
        }
        return getContentInsetEnd();
    }

    public int getCurrentContentInsetLeft() {
        if (androidx.core.n.af.p(this) == 1) {
            return getCurrentContentInsetEnd();
        }
        return getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        if (androidx.core.n.af.p(this) == 1) {
            return getCurrentContentInsetStart();
        }
        return getCurrentContentInsetEnd();
    }

    private void q() {
        if (this.i == null) {
            this.i = new n(getContext(), null, a.b.toolbarNavigationButtonStyle);
            b generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.f46a = 8388611 | (this.c & 112);
            this.i.setLayoutParams(generateDefaultLayoutParams);
        }
    }

    void j() {
        if (this.f188a == null) {
            this.f188a = new n(getContext(), null, a.b.toolbarNavigationButtonStyle);
            this.f188a.setImageDrawable(this.k);
            this.f188a.setContentDescription(this.l);
            b generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.f46a = 8388611 | (this.c & 112);
            generateDefaultLayoutParams.e = 2;
            this.f188a.setLayoutParams(generateDefaultLayoutParams);
            this.f188a.setOnClickListener(new View.OnClickListener() { // from class: androidx.appcompat.widget.Toolbar.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Toolbar.this.i();
                }
            });
        }
    }

    private void a(View view, boolean z) {
        b bVar;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            bVar = generateDefaultLayoutParams();
        } else if (!checkLayoutParams(layoutParams)) {
            bVar = generateLayoutParams(layoutParams);
        } else {
            bVar = (b) layoutParams;
        }
        bVar.e = 1;
        if (z && this.b != null) {
            view.setLayoutParams(bVar);
            this.G.add(view);
        } else {
            addView(view, bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        d dVar = new d(super.onSaveInstanceState());
        if (this.L != null && this.L.b != null) {
            dVar.f193a = this.L.b.getItemId();
        }
        dVar.b = b();
        return dVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem findItem;
        if (!(parcelable instanceof d)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        d dVar = (d) parcelable;
        super.onRestoreInstanceState(dVar.a());
        androidx.appcompat.view.menu.g d2 = this.f != null ? this.f.d() : null;
        if (dVar.f193a != 0 && this.L != null && d2 != null && (findItem = d2.findItem(dVar.f193a)) != null) {
            findItem.expandActionView();
        }
        if (dVar.b) {
            r();
        }
    }

    private void r() {
        removeCallbacks(this.P);
        post(this.P);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.P);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.D = false;
        }
        if (!this.D) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.D = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.D = false;
        }
        return true;
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.E = false;
        }
        if (!this.E) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.E = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.E = false;
        }
        return true;
    }

    private void a(View view, int i, int i2, int i3, int i4, int i5) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width);
        int childMeasureSpec2 = getChildMeasureSpec(i3, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i5 >= 0) {
            if (mode != 0) {
                i5 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i5);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i5, androidx.d.c.b.a.b.b);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    private int a(View view, int i, int i2, int i3, int i4, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i5 = marginLayoutParams.leftMargin - iArr[0];
        int i6 = marginLayoutParams.rightMargin - iArr[1];
        int max = Math.max(0, i5) + Math.max(0, i6);
        iArr[0] = Math.max(0, -i5);
        iArr[1] = Math.max(0, -i6);
        view.measure(getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + max + i2, marginLayoutParams.width), getChildMeasureSpec(i3, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height));
        return view.getMeasuredWidth() + max;
    }

    private boolean s() {
        if (!this.O) {
            return false;
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (a(childAt) && childAt.getMeasuredWidth() > 0 && childAt.getMeasuredHeight() > 0) {
                return false;
            }
        }
        return true;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        char c2;
        char c3;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int[] iArr = this.H;
        if (bg.a(this)) {
            c3 = 1;
            c2 = 0;
        } else {
            c2 = 1;
            c3 = 0;
        }
        if (a(this.i)) {
            a(this.i, i, 0, i2, 0, this.q);
            i3 = this.i.getMeasuredWidth() + b(this.i);
            i4 = Math.max(0, this.i.getMeasuredHeight() + c(this.i));
            i5 = View.combineMeasuredStates(0, this.i.getMeasuredState());
        } else {
            i3 = 0;
            i4 = 0;
            i5 = 0;
        }
        if (a(this.f188a)) {
            a(this.f188a, i, 0, i2, 0, this.q);
            i3 = this.f188a.getMeasuredWidth() + b(this.f188a);
            i4 = Math.max(i4, this.f188a.getMeasuredHeight() + c(this.f188a));
            i5 = View.combineMeasuredStates(i5, this.f188a.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int max = Math.max(currentContentInsetStart, i3) + 0;
        iArr[c3] = Math.max(0, currentContentInsetStart - i3);
        if (a(this.f)) {
            a(this.f, i, max, i2, 0, this.q);
            i6 = this.f.getMeasuredWidth() + b(this.f);
            i4 = Math.max(i4, this.f.getMeasuredHeight() + c(this.f));
            i5 = View.combineMeasuredStates(i5, this.f.getMeasuredState());
        } else {
            i6 = 0;
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int max2 = max + Math.max(currentContentInsetEnd, i6);
        iArr[c2] = Math.max(0, currentContentInsetEnd - i6);
        if (a(this.b)) {
            max2 += a(this.b, i, max2, i2, 0, iArr);
            i4 = Math.max(i4, this.b.getMeasuredHeight() + c(this.b));
            i5 = View.combineMeasuredStates(i5, this.b.getMeasuredState());
        }
        if (a(this.j)) {
            max2 += a(this.j, i, max2, i2, 0, iArr);
            i4 = Math.max(i4, this.j.getMeasuredHeight() + c(this.j));
            i5 = View.combineMeasuredStates(i5, this.j.getMeasuredState());
        }
        int childCount = getChildCount();
        int i10 = i4;
        int i11 = max2;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            if (((b) childAt.getLayoutParams()).e == 0 && a(childAt)) {
                i11 += a(childAt, i, i11, i2, 0, iArr);
                i10 = Math.max(i10, childAt.getMeasuredHeight() + c(childAt));
                i5 = View.combineMeasuredStates(i5, childAt.getMeasuredState());
            }
        }
        int i13 = this.t + this.u;
        int i14 = this.r + this.s;
        if (a(this.g)) {
            a(this.g, i, i11 + i14, i2, i13, iArr);
            int measuredWidth = this.g.getMeasuredWidth() + b(this.g);
            i7 = this.g.getMeasuredHeight() + c(this.g);
            i8 = View.combineMeasuredStates(i5, this.g.getMeasuredState());
            i9 = measuredWidth;
        } else {
            i7 = 0;
            i8 = i5;
            i9 = 0;
        }
        if (a(this.h)) {
            i9 = Math.max(i9, a(this.h, i, i11 + i14, i2, i7 + i13, iArr));
            i7 += this.h.getMeasuredHeight() + c(this.h);
            i8 = View.combineMeasuredStates(i8, this.h.getMeasuredState());
        }
        int max3 = Math.max(i10, i7);
        int paddingLeft = i11 + i9 + getPaddingLeft() + getPaddingRight();
        int paddingTop = max3 + getPaddingTop() + getPaddingBottom();
        int resolveSizeAndState = View.resolveSizeAndState(Math.max(paddingLeft, getSuggestedMinimumWidth()), i, (-16777216) & i8);
        int resolveSizeAndState2 = View.resolveSizeAndState(Math.max(paddingTop, getSuggestedMinimumHeight()), i2, i8 << 16);
        if (s()) {
            resolveSizeAndState2 = 0;
        }
        setMeasuredDimension(resolveSizeAndState, resolveSizeAndState2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:107:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x02aa A[LOOP:0: B:41:0x02a8->B:42:0x02aa, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x02cc A[LOOP:1: B:45:0x02ca->B:46:0x02cc, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x02f7  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0306 A[LOOP:2: B:54:0x0304->B:55:0x0306, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01b8  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x022b  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        boolean a2;
        boolean a3;
        int i7;
        int i8;
        int i9;
        int i10;
        boolean z2;
        int i11;
        int i12;
        int i13;
        int paddingTop;
        int i14;
        int i15;
        int i16;
        int i17;
        char c2;
        int i18;
        int i19;
        int i20;
        int size;
        int i21;
        int i22;
        int size2;
        int i23;
        int i24;
        int size3;
        boolean z3 = androidx.core.n.af.p(this) == 1;
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop2 = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i25 = width - paddingRight;
        int[] iArr = this.H;
        iArr[1] = 0;
        iArr[0] = 0;
        int E = androidx.core.n.af.E(this);
        int min = E >= 0 ? Math.min(E, i4 - i2) : 0;
        if (!a(this.i)) {
            i5 = paddingLeft;
        } else {
            if (z3) {
                i6 = b(this.i, i25, iArr, min);
                i5 = paddingLeft;
                if (a(this.f188a)) {
                    if (z3) {
                        i6 = b(this.f188a, i6, iArr, min);
                    } else {
                        i5 = a(this.f188a, i5, iArr, min);
                    }
                }
                if (a(this.f)) {
                    if (z3) {
                        i5 = a(this.f, i5, iArr, min);
                    } else {
                        i6 = b(this.f, i6, iArr, min);
                    }
                }
                int currentContentInsetLeft = getCurrentContentInsetLeft();
                int currentContentInsetRight = getCurrentContentInsetRight();
                iArr[0] = Math.max(0, currentContentInsetLeft - i5);
                iArr[1] = Math.max(0, currentContentInsetRight - (i25 - i6));
                int max = Math.max(i5, currentContentInsetLeft);
                int min2 = Math.min(i6, i25 - currentContentInsetRight);
                if (a(this.b)) {
                    if (z3) {
                        min2 = b(this.b, min2, iArr, min);
                    } else {
                        max = a(this.b, max, iArr, min);
                    }
                }
                if (a(this.j)) {
                    if (z3) {
                        min2 = b(this.j, min2, iArr, min);
                    } else {
                        max = a(this.j, max, iArr, min);
                    }
                }
                a2 = a(this.g);
                a3 = a(this.h);
                if (a2) {
                    i7 = paddingRight;
                    i8 = 0;
                } else {
                    b bVar = (b) this.g.getLayoutParams();
                    i7 = paddingRight;
                    i8 = bVar.topMargin + this.g.getMeasuredHeight() + bVar.bottomMargin + 0;
                }
                if (a3) {
                    i9 = width;
                } else {
                    b bVar2 = (b) this.h.getLayoutParams();
                    i9 = width;
                    i8 += bVar2.topMargin + this.h.getMeasuredHeight() + bVar2.bottomMargin;
                }
                if (!a2 || a3) {
                    TextView textView = !a2 ? this.g : this.h;
                    TextView textView2 = !a3 ? this.h : this.g;
                    b bVar3 = (b) textView.getLayoutParams();
                    b bVar4 = (b) textView2.getLayoutParams();
                    if ((a2 || this.g.getMeasuredWidth() <= 0) && (!a3 || this.h.getMeasuredWidth() <= 0)) {
                        i10 = paddingLeft;
                        z2 = false;
                    } else {
                        i10 = paddingLeft;
                        z2 = true;
                    }
                    i11 = this.y & 112;
                    i12 = min;
                    if (i11 != 48) {
                        i13 = max;
                        paddingTop = getPaddingTop() + bVar3.topMargin + this.t;
                    } else if (i11 != 80) {
                        int i26 = (((height - paddingTop2) - paddingBottom) - i8) / 2;
                        i13 = max;
                        if (i26 < bVar3.topMargin + this.t) {
                            i26 = bVar3.topMargin + this.t;
                        } else {
                            int i27 = (((height - paddingBottom) - i8) - i26) - paddingTop2;
                            if (i27 < bVar3.bottomMargin + this.u) {
                                i26 = Math.max(0, i26 - ((bVar4.bottomMargin + this.u) - i27));
                            }
                        }
                        paddingTop = paddingTop2 + i26;
                    } else {
                        i13 = max;
                        paddingTop = (((height - paddingBottom) - bVar4.bottomMargin) - this.u) - i8;
                    }
                    if (!z3) {
                        if (z2) {
                            i18 = this.r;
                            c2 = 1;
                        } else {
                            c2 = 1;
                            i18 = 0;
                        }
                        int i28 = i18 - iArr[c2];
                        min2 -= Math.max(0, i28);
                        iArr[c2] = Math.max(0, -i28);
                        if (a2) {
                            b bVar5 = (b) this.g.getLayoutParams();
                            int measuredWidth = min2 - this.g.getMeasuredWidth();
                            int measuredHeight = this.g.getMeasuredHeight() + paddingTop;
                            this.g.layout(measuredWidth, paddingTop, min2, measuredHeight);
                            i19 = measuredWidth - this.s;
                            paddingTop = measuredHeight + bVar5.bottomMargin;
                        } else {
                            i19 = min2;
                        }
                        if (a3) {
                            b bVar6 = (b) this.h.getLayoutParams();
                            int i29 = paddingTop + bVar6.topMargin;
                            this.h.layout(min2 - this.h.getMeasuredWidth(), i29, min2, this.h.getMeasuredHeight() + i29);
                            i20 = min2 - this.s;
                            int i30 = bVar6.bottomMargin;
                        } else {
                            i20 = min2;
                        }
                        if (z2) {
                            min2 = Math.min(i19, i20);
                        }
                        max = i13;
                    } else {
                        if (z2) {
                            i15 = this.r;
                            i14 = 0;
                        } else {
                            i14 = 0;
                            i15 = 0;
                        }
                        int i31 = i15 - iArr[i14];
                        max = i13 + Math.max(i14, i31);
                        iArr[i14] = Math.max(i14, -i31);
                        if (a2) {
                            b bVar7 = (b) this.g.getLayoutParams();
                            int measuredWidth2 = this.g.getMeasuredWidth() + max;
                            int measuredHeight2 = this.g.getMeasuredHeight() + paddingTop;
                            this.g.layout(max, paddingTop, measuredWidth2, measuredHeight2);
                            i16 = measuredWidth2 + this.s;
                            paddingTop = measuredHeight2 + bVar7.bottomMargin;
                        } else {
                            i16 = max;
                        }
                        if (a3) {
                            b bVar8 = (b) this.h.getLayoutParams();
                            int i32 = paddingTop + bVar8.topMargin;
                            int measuredWidth3 = this.h.getMeasuredWidth() + max;
                            this.h.layout(max, i32, measuredWidth3, this.h.getMeasuredHeight() + i32);
                            i17 = measuredWidth3 + this.s;
                            int i33 = bVar8.bottomMargin;
                        } else {
                            i17 = max;
                        }
                        if (z2) {
                            max = Math.max(i16, i17);
                        }
                        a(this.F, 3);
                        size = this.F.size();
                        i21 = max;
                        for (i22 = i14; i22 < size; i22++) {
                            i21 = a(this.F.get(i22), i21, iArr, i12);
                        }
                        int i34 = i12;
                        a(this.F, 5);
                        size2 = this.F.size();
                        for (i23 = i14; i23 < size2; i23++) {
                            min2 = b(this.F.get(i23), min2, iArr, i34);
                        }
                        a(this.F, 1);
                        int a4 = a(this.F, iArr);
                        i24 = (i10 + (((i9 - i10) - i7) / 2)) - (a4 / 2);
                        int i35 = a4 + i24;
                        if (i24 >= i21) {
                            i21 = i35 > min2 ? i24 - (i35 - min2) : i24;
                        }
                        size3 = this.F.size();
                        while (i14 < size3) {
                            i21 = a(this.F.get(i14), i21, iArr, i34);
                            i14++;
                        }
                        this.F.clear();
                        return;
                    }
                } else {
                    i10 = paddingLeft;
                    i12 = min;
                }
                i14 = 0;
                a(this.F, 3);
                size = this.F.size();
                i21 = max;
                while (i22 < size) {
                }
                int i342 = i12;
                a(this.F, 5);
                size2 = this.F.size();
                while (i23 < size2) {
                }
                a(this.F, 1);
                int a42 = a(this.F, iArr);
                i24 = (i10 + (((i9 - i10) - i7) / 2)) - (a42 / 2);
                int i352 = a42 + i24;
                if (i24 >= i21) {
                }
                size3 = this.F.size();
                while (i14 < size3) {
                }
                this.F.clear();
                return;
            }
            i5 = a(this.i, paddingLeft, iArr, min);
        }
        i6 = i25;
        if (a(this.f188a)) {
        }
        if (a(this.f)) {
        }
        int currentContentInsetLeft2 = getCurrentContentInsetLeft();
        int currentContentInsetRight2 = getCurrentContentInsetRight();
        iArr[0] = Math.max(0, currentContentInsetLeft2 - i5);
        iArr[1] = Math.max(0, currentContentInsetRight2 - (i25 - i6));
        int max2 = Math.max(i5, currentContentInsetLeft2);
        int min22 = Math.min(i6, i25 - currentContentInsetRight2);
        if (a(this.b)) {
        }
        if (a(this.j)) {
        }
        a2 = a(this.g);
        a3 = a(this.h);
        if (a2) {
        }
        if (a3) {
        }
        if (a2) {
        }
        if (!a2) {
        }
        if (!a3) {
        }
        b bVar32 = (b) textView.getLayoutParams();
        b bVar42 = (b) textView2.getLayoutParams();
        if (a2) {
        }
        i10 = paddingLeft;
        z2 = false;
        i11 = this.y & 112;
        i12 = min;
        if (i11 != 48) {
        }
        if (!z3) {
        }
    }

    private int a(List<View> list, int[] iArr) {
        int i = iArr[0];
        int i2 = iArr[1];
        int size = list.size();
        int i3 = 0;
        int i4 = i2;
        int i5 = 0;
        while (i5 < size) {
            View view = list.get(i5);
            b bVar = (b) view.getLayoutParams();
            int i6 = bVar.leftMargin - i;
            int i7 = bVar.rightMargin - i4;
            int max = Math.max(0, i6);
            int max2 = Math.max(0, i7);
            int max3 = Math.max(0, -i6);
            int max4 = Math.max(0, -i7);
            i3 += max + view.getMeasuredWidth() + max2;
            i5++;
            i4 = max4;
            i = max3;
        }
        return i3;
    }

    private int a(View view, int i, int[] iArr, int i2) {
        b bVar = (b) view.getLayoutParams();
        int i3 = bVar.leftMargin - iArr[0];
        int max = i + Math.max(0, i3);
        iArr[0] = Math.max(0, -i3);
        int a2 = a(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max, a2, max + measuredWidth, view.getMeasuredHeight() + a2);
        return max + measuredWidth + bVar.rightMargin;
    }

    private int b(View view, int i, int[] iArr, int i2) {
        b bVar = (b) view.getLayoutParams();
        int i3 = bVar.rightMargin - iArr[1];
        int max = i - Math.max(0, i3);
        iArr[1] = Math.max(0, -i3);
        int a2 = a(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max - measuredWidth, a2, max, view.getMeasuredHeight() + a2);
        return max - (measuredWidth + bVar.leftMargin);
    }

    private int a(View view, int i) {
        b bVar = (b) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i2 = i > 0 ? (measuredHeight - i) / 2 : 0;
        int b2 = b(bVar.f46a);
        if (b2 == 48) {
            return getPaddingTop() - i2;
        }
        if (b2 == 80) {
            return (((getHeight() - getPaddingBottom()) - measuredHeight) - bVar.bottomMargin) - i2;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        int i3 = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
        if (i3 < bVar.topMargin) {
            i3 = bVar.topMargin;
        } else {
            int i4 = (((height - paddingBottom) - measuredHeight) - i3) - paddingTop;
            if (i4 < bVar.bottomMargin) {
                i3 = Math.max(0, i3 - (bVar.bottomMargin - i4));
            }
        }
        return paddingTop + i3;
    }

    private int b(int i) {
        int i2 = i & 112;
        return (i2 == 16 || i2 == 48 || i2 == 80) ? i2 : this.y & 112;
    }

    private void a(List<View> list, int i) {
        boolean z = androidx.core.n.af.p(this) == 1;
        int childCount = getChildCount();
        int a2 = androidx.core.n.h.a(i, androidx.core.n.af.p(this));
        list.clear();
        if (!z) {
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                b bVar = (b) childAt.getLayoutParams();
                if (bVar.e == 0 && a(childAt) && c(bVar.f46a) == a2) {
                    list.add(childAt);
                }
            }
            return;
        }
        for (int i3 = childCount - 1; i3 >= 0; i3--) {
            View childAt2 = getChildAt(i3);
            b bVar2 = (b) childAt2.getLayoutParams();
            if (bVar2.e == 0 && a(childAt2) && c(bVar2.f46a) == a2) {
                list.add(childAt2);
            }
        }
    }

    private int c(int i) {
        int p = androidx.core.n.af.p(this);
        int a2 = androidx.core.n.h.a(i, p) & 7;
        return (a2 == 1 || a2 == 3 || a2 == 5) ? a2 : p == 1 ? 5 : 3;
    }

    private boolean a(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    private int b(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return androidx.core.n.m.a(marginLayoutParams) + androidx.core.n.m.b(marginLayoutParams);
    }

    private int c(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    @Override // android.view.ViewGroup
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public b generateLayoutParams(AttributeSet attributeSet) {
        return new b(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public b generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof b) {
            return new b((b) layoutParams);
        }
        if (layoutParams instanceof a.b) {
            return new b((a.b) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new b((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new b(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* renamed from: k, reason: merged with bridge method [inline-methods] */
    public b generateDefaultLayoutParams() {
        return new b(-2, -2);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof b);
    }

    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public ae getWrapper() {
        if (this.J == null) {
            this.J = new bb(this, true);
        }
        return this.J;
    }

    void l() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (((b) childAt.getLayoutParams()).e != 2 && childAt != this.f) {
                removeViewAt(childCount);
                this.G.add(childAt);
            }
        }
    }

    void m() {
        for (int size = this.G.size() - 1; size >= 0; size--) {
            addView(this.G.get(size));
        }
        this.G.clear();
    }

    private boolean d(View view) {
        return view.getParent() == this || this.G.contains(view);
    }

    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void setCollapsible(boolean z) {
        this.O = z;
        requestLayout();
    }

    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void a(n.a aVar, g.a aVar2) {
        this.M = aVar;
        this.N = aVar2;
        if (this.f != null) {
            this.f.a(aVar, aVar2);
        }
    }

    private void t() {
        if (this.v == null) {
            this.v = new aq();
        }
    }

    @androidx.annotation.ai
    @androidx.annotation.ap(a = {ap.a.TESTS})
    final TextView getTitleTextView() {
        return this.g;
    }

    @androidx.annotation.ai
    @androidx.annotation.ap(a = {ap.a.TESTS})
    final TextView getSubtitleTextView() {
        return this.h;
    }

    androidx.appcompat.widget.c getOuterActionMenuPresenter() {
        return this.K;
    }

    Context getPopupContext() {
        return this.m;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class b extends a.b {
        static final int b = 0;
        static final int c = 1;
        static final int d = 2;
        int e;

        public b(@androidx.annotation.ah Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.e = 0;
        }

        public b(int i, int i2) {
            super(i, i2);
            this.e = 0;
            this.f46a = 8388627;
        }

        public b(int i, int i2, int i3) {
            super(i, i2);
            this.e = 0;
            this.f46a = i3;
        }

        public b(int i) {
            this(-2, -1, i);
        }

        public b(b bVar) {
            super((a.b) bVar);
            this.e = 0;
            this.e = bVar.e;
        }

        public b(a.b bVar) {
            super(bVar);
            this.e = 0;
        }

        public b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.e = 0;
            a(marginLayoutParams);
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.e = 0;
        }

        void a(ViewGroup.MarginLayoutParams marginLayoutParams) {
            this.leftMargin = marginLayoutParams.leftMargin;
            this.topMargin = marginLayoutParams.topMargin;
            this.rightMargin = marginLayoutParams.rightMargin;
            this.bottomMargin = marginLayoutParams.bottomMargin;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class d extends androidx.f.a.a {
        public static final Parcelable.Creator<d> CREATOR = new Parcelable.ClassLoaderCreator<d>() { // from class: androidx.appcompat.widget.Toolbar.d.1
            @Override // android.os.Parcelable.ClassLoaderCreator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public d createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new d(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public d createFromParcel(Parcel parcel) {
                return new d(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public d[] newArray(int i) {
                return new d[i];
            }
        };

        /* renamed from: a, reason: collision with root package name */
        int f193a;
        boolean b;

        public d(Parcel parcel) {
            this(parcel, null);
        }

        public d(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f193a = parcel.readInt();
            this.b = parcel.readInt() != 0;
        }

        public d(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.f.a.a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f193a);
            parcel.writeInt(this.b ? 1 : 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class a implements androidx.appcompat.view.menu.n {

        /* renamed from: a, reason: collision with root package name */
        androidx.appcompat.view.menu.g f192a;
        androidx.appcompat.view.menu.j b;

        @Override // androidx.appcompat.view.menu.n
        public androidx.appcompat.view.menu.o a(ViewGroup viewGroup) {
            return null;
        }

        @Override // androidx.appcompat.view.menu.n
        public void a(Parcelable parcelable) {
        }

        @Override // androidx.appcompat.view.menu.n
        public void a(androidx.appcompat.view.menu.g gVar, boolean z) {
        }

        @Override // androidx.appcompat.view.menu.n
        public void a(n.a aVar) {
        }

        @Override // androidx.appcompat.view.menu.n
        public boolean a(androidx.appcompat.view.menu.s sVar) {
            return false;
        }

        @Override // androidx.appcompat.view.menu.n
        public boolean b() {
            return false;
        }

        @Override // androidx.appcompat.view.menu.n
        public int c() {
            return 0;
        }

        @Override // androidx.appcompat.view.menu.n
        public Parcelable f() {
            return null;
        }

        a() {
        }

        @Override // androidx.appcompat.view.menu.n
        public void a(Context context, androidx.appcompat.view.menu.g gVar) {
            if (this.f192a != null && this.b != null) {
                this.f192a.d(this.b);
            }
            this.f192a = gVar;
        }

        @Override // androidx.appcompat.view.menu.n
        public void a(boolean z) {
            if (this.b != null) {
                boolean z2 = false;
                if (this.f192a != null) {
                    int size = this.f192a.size();
                    int i = 0;
                    while (true) {
                        if (i >= size) {
                            break;
                        }
                        if (this.f192a.getItem(i) == this.b) {
                            z2 = true;
                            break;
                        }
                        i++;
                    }
                }
                if (z2) {
                    return;
                }
                b(this.f192a, this.b);
            }
        }

        @Override // androidx.appcompat.view.menu.n
        public boolean a(androidx.appcompat.view.menu.g gVar, androidx.appcompat.view.menu.j jVar) {
            Toolbar.this.j();
            ViewParent parent = Toolbar.this.f188a.getParent();
            if (parent != Toolbar.this) {
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(Toolbar.this.f188a);
                }
                Toolbar.this.addView(Toolbar.this.f188a);
            }
            Toolbar.this.b = jVar.getActionView();
            this.b = jVar;
            ViewParent parent2 = Toolbar.this.b.getParent();
            if (parent2 != Toolbar.this) {
                if (parent2 instanceof ViewGroup) {
                    ((ViewGroup) parent2).removeView(Toolbar.this.b);
                }
                b generateDefaultLayoutParams = Toolbar.this.generateDefaultLayoutParams();
                generateDefaultLayoutParams.f46a = 8388611 | (Toolbar.this.c & 112);
                generateDefaultLayoutParams.e = 2;
                Toolbar.this.b.setLayoutParams(generateDefaultLayoutParams);
                Toolbar.this.addView(Toolbar.this.b);
            }
            Toolbar.this.l();
            Toolbar.this.requestLayout();
            jVar.e(true);
            if (Toolbar.this.b instanceof androidx.appcompat.view.c) {
                ((androidx.appcompat.view.c) Toolbar.this.b).a();
            }
            return true;
        }

        @Override // androidx.appcompat.view.menu.n
        public boolean b(androidx.appcompat.view.menu.g gVar, androidx.appcompat.view.menu.j jVar) {
            if (Toolbar.this.b instanceof androidx.appcompat.view.c) {
                ((androidx.appcompat.view.c) Toolbar.this.b).b();
            }
            Toolbar.this.removeView(Toolbar.this.b);
            Toolbar.this.removeView(Toolbar.this.f188a);
            Toolbar.this.b = null;
            Toolbar.this.m();
            this.b = null;
            Toolbar.this.requestLayout();
            jVar.e(false);
            return true;
        }
    }
}
