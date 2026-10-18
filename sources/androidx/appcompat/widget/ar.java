package androidx.appcompat.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.annotation.ap;
import androidx.appcompat.a;
import androidx.appcompat.app.a;
import androidx.appcompat.widget.aj;

@androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public class ar extends HorizontalScrollView implements AdapterView.OnItemSelectedListener {
    private static final String g = "ScrollingTabContainerView";
    private static final Interpolator m = new DecelerateInterpolator();
    private static final int n = 200;

    /* renamed from: a, reason: collision with root package name */
    Runnable f226a;
    aj b;
    int c;
    int d;
    protected ViewPropertyAnimator e;
    protected final d f;
    private b h;
    private Spinner i;
    private boolean j;
    private int k;
    private int l;

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    public ar(@androidx.annotation.ah Context context) {
        super(context);
        this.f = new d();
        setHorizontalScrollBarEnabled(false);
        androidx.appcompat.view.a a2 = androidx.appcompat.view.a.a(context);
        setContentHeight(a2.e());
        this.d = a2.g();
        this.b = e();
        addView(this.b, new ViewGroup.LayoutParams(-2, -1));
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        boolean z = mode == 1073741824;
        setFillViewport(z);
        int childCount = this.b.getChildCount();
        if (childCount > 1 && (mode == 1073741824 || mode == Integer.MIN_VALUE)) {
            if (childCount > 2) {
                this.c = (int) (View.MeasureSpec.getSize(i) * 0.4f);
            } else {
                this.c = View.MeasureSpec.getSize(i) / 2;
            }
            this.c = Math.min(this.c, this.d);
        } else {
            this.c = -1;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.k, androidx.d.c.b.a.b.b);
        if (!z && this.j) {
            this.b.measure(0, makeMeasureSpec);
            if (this.b.getMeasuredWidth() > View.MeasureSpec.getSize(i)) {
                c();
            } else {
                d();
            }
        } else {
            d();
        }
        int measuredWidth = getMeasuredWidth();
        super.onMeasure(i, makeMeasureSpec);
        int measuredWidth2 = getMeasuredWidth();
        if (!z || measuredWidth == measuredWidth2) {
            return;
        }
        setTabSelected(this.l);
    }

    private boolean b() {
        return this.i != null && this.i.getParent() == this;
    }

    public void setAllowCollapse(boolean z) {
        this.j = z;
    }

    private void c() {
        if (b()) {
            return;
        }
        if (this.i == null) {
            this.i = f();
        }
        removeView(this.b);
        addView(this.i, new ViewGroup.LayoutParams(-2, -1));
        if (this.i.getAdapter() == null) {
            this.i.setAdapter((SpinnerAdapter) new a());
        }
        if (this.f226a != null) {
            removeCallbacks(this.f226a);
            this.f226a = null;
        }
        this.i.setSelection(this.l);
    }

    private boolean d() {
        if (!b()) {
            return false;
        }
        removeView(this.i);
        addView(this.b, new ViewGroup.LayoutParams(-2, -1));
        setTabSelected(this.i.getSelectedItemPosition());
        return false;
    }

    public void setTabSelected(int i) {
        this.l = i;
        int childCount = this.b.getChildCount();
        int i2 = 0;
        while (i2 < childCount) {
            View childAt = this.b.getChildAt(i2);
            boolean z = i2 == i;
            childAt.setSelected(z);
            if (z) {
                b(i);
            }
            i2++;
        }
        if (this.i == null || i < 0) {
            return;
        }
        this.i.setSelection(i);
    }

    public void setContentHeight(int i) {
        this.k = i;
        requestLayout();
    }

    private aj e() {
        aj ajVar = new aj(getContext(), null, a.b.actionBarTabBarStyle);
        ajVar.setMeasureWithLargestChildEnabled(true);
        ajVar.setGravity(17);
        ajVar.setLayoutParams(new aj.b(-2, -1));
        return ajVar;
    }

    private Spinner f() {
        x xVar = new x(getContext(), null, a.b.actionDropDownStyle);
        xVar.setLayoutParams(new aj.b(-2, -1));
        xVar.setOnItemSelectedListener(this);
        return xVar;
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        androidx.appcompat.view.a a2 = androidx.appcompat.view.a.a(getContext());
        setContentHeight(a2.e());
        this.d = a2.g();
    }

    public void a(int i) {
        if (this.e != null) {
            this.e.cancel();
        }
        if (i == 0) {
            if (getVisibility() != 0) {
                setAlpha(0.0f);
            }
            ViewPropertyAnimator alpha = animate().alpha(1.0f);
            alpha.setDuration(200L);
            alpha.setInterpolator(m);
            alpha.setListener(this.f.a(alpha, i));
            alpha.start();
            return;
        }
        ViewPropertyAnimator alpha2 = animate().alpha(0.0f);
        alpha2.setDuration(200L);
        alpha2.setInterpolator(m);
        alpha2.setListener(this.f.a(alpha2, i));
        alpha2.start();
    }

    public void b(int i) {
        final View childAt = this.b.getChildAt(i);
        if (this.f226a != null) {
            removeCallbacks(this.f226a);
        }
        this.f226a = new Runnable() { // from class: androidx.appcompat.widget.ar.1
            @Override // java.lang.Runnable
            public void run() {
                ar.this.smoothScrollTo(childAt.getLeft() - ((ar.this.getWidth() - childAt.getWidth()) / 2), 0);
                ar.this.f226a = null;
            }
        };
        post(this.f226a);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f226a != null) {
            post(this.f226a);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f226a != null) {
            removeCallbacks(this.f226a);
        }
    }

    c a(a.f fVar, boolean z) {
        c cVar = new c(getContext(), fVar, z);
        if (z) {
            cVar.setBackgroundDrawable(null);
            cVar.setLayoutParams(new AbsListView.LayoutParams(-1, this.k));
        } else {
            cVar.setFocusable(true);
            if (this.h == null) {
                this.h = new b();
            }
            cVar.setOnClickListener(this.h);
        }
        return cVar;
    }

    public void b(a.f fVar, boolean z) {
        c a2 = a(fVar, false);
        this.b.addView(a2, new aj.b(0, -1, 1.0f));
        if (this.i != null) {
            ((a) this.i.getAdapter()).notifyDataSetChanged();
        }
        if (z) {
            a2.setSelected(true);
        }
        if (this.j) {
            requestLayout();
        }
    }

    public void a(a.f fVar, int i, boolean z) {
        c a2 = a(fVar, false);
        this.b.addView(a2, i, new aj.b(0, -1, 1.0f));
        if (this.i != null) {
            ((a) this.i.getAdapter()).notifyDataSetChanged();
        }
        if (z) {
            a2.setSelected(true);
        }
        if (this.j) {
            requestLayout();
        }
    }

    public void c(int i) {
        ((c) this.b.getChildAt(i)).a();
        if (this.i != null) {
            ((a) this.i.getAdapter()).notifyDataSetChanged();
        }
        if (this.j) {
            requestLayout();
        }
    }

    public void d(int i) {
        this.b.removeViewAt(i);
        if (this.i != null) {
            ((a) this.i.getAdapter()).notifyDataSetChanged();
        }
        if (this.j) {
            requestLayout();
        }
    }

    public void a() {
        this.b.removeAllViews();
        if (this.i != null) {
            ((a) this.i.getAdapter()).notifyDataSetChanged();
        }
        if (this.j) {
            requestLayout();
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        ((c) view).b().f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class c extends LinearLayout {
        private static final String g = "androidx.appcompat.app.ActionBar$Tab";
        private final int[] b;
        private a.f c;
        private TextView d;
        private ImageView e;
        private View f;

        public c(Context context, a.f fVar, boolean z) {
            super(context, null, a.b.actionBarTabStyle);
            this.b = new int[]{R.attr.background};
            this.c = fVar;
            ba a2 = ba.a(context, null, this.b, a.b.actionBarTabStyle, 0);
            if (a2.j(0)) {
                setBackgroundDrawable(a2.a(0));
            }
            a2.f();
            if (z) {
                setGravity(8388627);
            }
            a();
        }

        public void a(a.f fVar) {
            this.c = fVar;
            a();
        }

        @Override // android.view.View
        public void setSelected(boolean z) {
            boolean z2 = isSelected() != z;
            super.setSelected(z);
            if (z2 && z) {
                sendAccessibilityEvent(4);
            }
        }

        @Override // android.view.View
        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName(g);
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName(g);
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            if (ar.this.c <= 0 || getMeasuredWidth() <= ar.this.c) {
                return;
            }
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(ar.this.c, androidx.d.c.b.a.b.b), i2);
        }

        public void a() {
            a.f fVar = this.c;
            View d = fVar.d();
            if (d != null) {
                ViewParent parent = d.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(d);
                    }
                    addView(d);
                }
                this.f = d;
                if (this.d != null) {
                    this.d.setVisibility(8);
                }
                if (this.e != null) {
                    this.e.setVisibility(8);
                    this.e.setImageDrawable(null);
                    return;
                }
                return;
            }
            if (this.f != null) {
                removeView(this.f);
                this.f = null;
            }
            Drawable b = fVar.b();
            CharSequence c = fVar.c();
            if (b != null) {
                if (this.e == null) {
                    p pVar = new p(getContext());
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams.gravity = 16;
                    pVar.setLayoutParams(layoutParams);
                    addView(pVar, 0);
                    this.e = pVar;
                }
                this.e.setImageDrawable(b);
                this.e.setVisibility(0);
            } else if (this.e != null) {
                this.e.setVisibility(8);
                this.e.setImageDrawable(null);
            }
            boolean z = !TextUtils.isEmpty(c);
            if (z) {
                if (this.d == null) {
                    aa aaVar = new aa(getContext(), null, a.b.actionBarTabTextStyle);
                    aaVar.setEllipsize(TextUtils.TruncateAt.END);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams2.gravity = 16;
                    aaVar.setLayoutParams(layoutParams2);
                    addView(aaVar);
                    this.d = aaVar;
                }
                this.d.setText(c);
                this.d.setVisibility(0);
            } else if (this.d != null) {
                this.d.setVisibility(8);
                this.d.setText((CharSequence) null);
            }
            if (this.e != null) {
                this.e.setContentDescription(fVar.g());
            }
            bc.a(this, z ? null : fVar.g());
        }

        public a.f b() {
            return this.c;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class a extends BaseAdapter {
        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        a() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return ar.this.b.getChildCount();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return ((c) ar.this.b.getChildAt(i)).b();
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                return ar.this.a((a.f) getItem(i), true);
            }
            ((c) view).a((a.f) getItem(i));
            return view;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((c) view).b().f();
            int childCount = ar.this.b.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = ar.this.b.getChildAt(i);
                childAt.setSelected(childAt == view);
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    protected class d extends AnimatorListenerAdapter {
        private boolean b = false;
        private int c;

        protected d() {
        }

        public d a(ViewPropertyAnimator viewPropertyAnimator, int i) {
            this.c = i;
            ar.this.e = viewPropertyAnimator;
            return this;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            ar.this.setVisibility(0);
            this.b = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.b) {
                return;
            }
            ar.this.e = null;
            ar.this.setVisibility(this.c);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.b = true;
        }
    }
}
