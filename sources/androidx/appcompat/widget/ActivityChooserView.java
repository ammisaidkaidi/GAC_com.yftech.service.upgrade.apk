package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.ap;
import androidx.appcompat.a;
import androidx.appcompat.widget.d;

@androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public class ActivityChooserView extends ViewGroup implements d.a {

    /* renamed from: a, reason: collision with root package name */
    final a f159a;
    final FrameLayout b;
    final FrameLayout c;
    androidx.core.n.b d;
    final DataSetObserver e;
    PopupWindow.OnDismissListener f;
    boolean g;
    int h;
    private final b i;
    private final View j;
    private final Drawable k;
    private final ImageView l;
    private final ImageView m;
    private final int n;
    private final ViewTreeObserver.OnGlobalLayoutListener o;
    private ak p;
    private boolean q;
    private int r;

    public ActivityChooserView(@androidx.annotation.ah Context context) {
        this(context, null);
    }

    public ActivityChooserView(@androidx.annotation.ah Context context, @androidx.annotation.ai AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ActivityChooserView(@androidx.annotation.ah Context context, @androidx.annotation.ai AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = new DataSetObserver() { // from class: androidx.appcompat.widget.ActivityChooserView.1
            @Override // android.database.DataSetObserver
            public void onChanged() {
                super.onChanged();
                ActivityChooserView.this.f159a.notifyDataSetChanged();
            }

            @Override // android.database.DataSetObserver
            public void onInvalidated() {
                super.onInvalidated();
                ActivityChooserView.this.f159a.notifyDataSetInvalidated();
            }
        };
        this.o = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.widget.ActivityChooserView.2
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                if (ActivityChooserView.this.c()) {
                    if (!ActivityChooserView.this.isShown()) {
                        ActivityChooserView.this.getListPopupWindow().d();
                        return;
                    }
                    ActivityChooserView.this.getListPopupWindow().b_();
                    if (ActivityChooserView.this.d != null) {
                        ActivityChooserView.this.d.a(true);
                    }
                }
            }
        };
        this.h = 4;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.m.ActivityChooserView, i, 0);
        androidx.core.n.af.a(this, context, a.m.ActivityChooserView, attributeSet, obtainStyledAttributes, i, 0);
        this.h = obtainStyledAttributes.getInt(a.m.ActivityChooserView_initialActivityCount, 4);
        Drawable drawable = obtainStyledAttributes.getDrawable(a.m.ActivityChooserView_expandActivityOverflowButtonDrawable);
        obtainStyledAttributes.recycle();
        LayoutInflater.from(getContext()).inflate(a.j.abc_activity_chooser_view, (ViewGroup) this, true);
        this.i = new b();
        this.j = findViewById(a.g.activity_chooser_view_content);
        this.k = this.j.getBackground();
        this.c = (FrameLayout) findViewById(a.g.default_activity_button);
        this.c.setOnClickListener(this.i);
        this.c.setOnLongClickListener(this.i);
        this.m = (ImageView) this.c.findViewById(a.g.image);
        FrameLayout frameLayout = (FrameLayout) findViewById(a.g.expand_activities_button);
        frameLayout.setOnClickListener(this.i);
        frameLayout.setAccessibilityDelegate(new View.AccessibilityDelegate() { // from class: androidx.appcompat.widget.ActivityChooserView.3
            @Override // android.view.View.AccessibilityDelegate
            public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                androidx.core.n.a.d.a(accessibilityNodeInfo).p(true);
            }
        });
        frameLayout.setOnTouchListener(new ai(frameLayout) { // from class: androidx.appcompat.widget.ActivityChooserView.4
            @Override // androidx.appcompat.widget.ai
            public androidx.appcompat.view.menu.q a() {
                return ActivityChooserView.this.getListPopupWindow();
            }

            @Override // androidx.appcompat.widget.ai
            protected boolean b() {
                ActivityChooserView.this.a();
                return true;
            }

            @Override // androidx.appcompat.widget.ai
            protected boolean c() {
                ActivityChooserView.this.b();
                return true;
            }
        });
        this.b = frameLayout;
        this.l = (ImageView) frameLayout.findViewById(a.g.image);
        this.l.setImageDrawable(drawable);
        this.f159a = new a();
        this.f159a.registerDataSetObserver(new DataSetObserver() { // from class: androidx.appcompat.widget.ActivityChooserView.5
            @Override // android.database.DataSetObserver
            public void onChanged() {
                super.onChanged();
                ActivityChooserView.this.d();
            }
        });
        Resources resources = context.getResources();
        this.n = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(a.e.abc_config_prefDialogWidth));
    }

    @Override // androidx.appcompat.widget.d.a
    public void setActivityChooserModel(d dVar) {
        this.f159a.a(dVar);
        if (c()) {
            b();
            a();
        }
    }

    public void setExpandActivityOverflowButtonDrawable(Drawable drawable) {
        this.l.setImageDrawable(drawable);
    }

    public void setExpandActivityOverflowButtonContentDescription(int i) {
        this.l.setContentDescription(getContext().getString(i));
    }

    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void setProvider(androidx.core.n.b bVar) {
        this.d = bVar;
    }

    public boolean a() {
        if (c() || !this.q) {
            return false;
        }
        this.g = false;
        a(this.h);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6, types: [boolean, int] */
    void a(int i) {
        if (this.f159a.e() == null) {
            throw new IllegalStateException("No data model. Did you call #setDataModel?");
        }
        getViewTreeObserver().addOnGlobalLayoutListener(this.o);
        ?? r0 = this.c.getVisibility() == 0 ? 1 : 0;
        int c = this.f159a.c();
        if (i != Integer.MAX_VALUE && c > i + r0) {
            this.f159a.a(true);
            this.f159a.a(i - 1);
        } else {
            this.f159a.a(false);
            this.f159a.a(i);
        }
        ak listPopupWindow = getListPopupWindow();
        if (listPopupWindow.e()) {
            return;
        }
        if (this.g || r0 == 0) {
            this.f159a.a(true, r0);
        } else {
            this.f159a.a(false, false);
        }
        listPopupWindow.i(Math.min(this.f159a.a(), this.n));
        listPopupWindow.b_();
        if (this.d != null) {
            this.d.a(true);
        }
        listPopupWindow.c_().setContentDescription(getContext().getString(a.k.abc_activitychooserview_choose_application));
        listPopupWindow.c_().setSelector(new ColorDrawable(0));
    }

    public boolean b() {
        if (!c()) {
            return true;
        }
        getListPopupWindow().d();
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (!viewTreeObserver.isAlive()) {
            return true;
        }
        viewTreeObserver.removeGlobalOnLayoutListener(this.o);
        return true;
    }

    public boolean c() {
        return getListPopupWindow().e();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        d e = this.f159a.e();
        if (e != null) {
            e.registerObserver(this.e);
        }
        this.q = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        d e = this.f159a.e();
        if (e != null) {
            e.unregisterObserver(this.e);
        }
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.o);
        }
        if (c()) {
            b();
        }
        this.q = false;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        View view = this.j;
        if (this.c.getVisibility() != 0) {
            i2 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), androidx.d.c.b.a.b.b);
        }
        measureChild(view, i, i2);
        setMeasuredDimension(view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.j.layout(0, 0, i3 - i, i4 - i2);
        if (c()) {
            return;
        }
        b();
    }

    public d getDataModel() {
        return this.f159a.e();
    }

    public void setOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
        this.f = onDismissListener;
    }

    public void setInitialActivityCount(int i) {
        this.h = i;
    }

    public void setDefaultActionButtonContentDescription(int i) {
        this.r = i;
    }

    ak getListPopupWindow() {
        if (this.p == null) {
            this.p = new ak(getContext());
            this.p.a(this.f159a);
            this.p.b(this);
            this.p.a(true);
            this.p.a((AdapterView.OnItemClickListener) this.i);
            this.p.a((PopupWindow.OnDismissListener) this.i);
        }
        return this.p;
    }

    void d() {
        if (this.f159a.getCount() > 0) {
            this.b.setEnabled(true);
        } else {
            this.b.setEnabled(false);
        }
        int c = this.f159a.c();
        int d = this.f159a.d();
        if (c == 1 || (c > 1 && d > 0)) {
            this.c.setVisibility(0);
            ResolveInfo b2 = this.f159a.b();
            PackageManager packageManager = getContext().getPackageManager();
            this.m.setImageDrawable(b2.loadIcon(packageManager));
            if (this.r != 0) {
                this.c.setContentDescription(getContext().getString(this.r, b2.loadLabel(packageManager)));
            }
        } else {
            this.c.setVisibility(8);
        }
        if (this.c.getVisibility() == 0) {
            this.j.setBackgroundDrawable(this.k);
        } else {
            this.j.setBackgroundDrawable(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class b implements View.OnClickListener, View.OnLongClickListener, AdapterView.OnItemClickListener, PopupWindow.OnDismissListener {
        b() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            switch (((a) adapterView.getAdapter()).getItemViewType(i)) {
                case 0:
                    ActivityChooserView.this.b();
                    if (ActivityChooserView.this.g) {
                        if (i > 0) {
                            ActivityChooserView.this.f159a.e().c(i);
                            return;
                        }
                        return;
                    }
                    if (!ActivityChooserView.this.f159a.f()) {
                        i++;
                    }
                    Intent b = ActivityChooserView.this.f159a.e().b(i);
                    if (b != null) {
                        b.addFlags(524288);
                        ActivityChooserView.this.getContext().startActivity(b);
                        return;
                    }
                    return;
                case 1:
                    ActivityChooserView.this.a(a.f166a);
                    return;
                default:
                    throw new IllegalArgumentException();
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view == ActivityChooserView.this.c) {
                ActivityChooserView.this.b();
                Intent b = ActivityChooserView.this.f159a.e().b(ActivityChooserView.this.f159a.e().a(ActivityChooserView.this.f159a.b()));
                if (b != null) {
                    b.addFlags(524288);
                    ActivityChooserView.this.getContext().startActivity(b);
                    return;
                }
                return;
            }
            if (view == ActivityChooserView.this.b) {
                ActivityChooserView.this.g = false;
                ActivityChooserView.this.a(ActivityChooserView.this.h);
                return;
            }
            throw new IllegalArgumentException();
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            if (view == ActivityChooserView.this.c) {
                if (ActivityChooserView.this.f159a.getCount() > 0) {
                    ActivityChooserView.this.g = true;
                    ActivityChooserView.this.a(ActivityChooserView.this.h);
                }
                return true;
            }
            throw new IllegalArgumentException();
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            a();
            if (ActivityChooserView.this.d != null) {
                ActivityChooserView.this.d.a(false);
            }
        }

        private void a() {
            if (ActivityChooserView.this.f != null) {
                ActivityChooserView.this.f.onDismiss();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class a extends BaseAdapter {

        /* renamed from: a, reason: collision with root package name */
        public static final int f166a = Integer.MAX_VALUE;
        public static final int b = 4;
        private static final int d = 0;
        private static final int e = 1;
        private static final int f = 3;
        private d g;
        private int h = 4;
        private boolean i;
        private boolean j;
        private boolean k;

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 3;
        }

        a() {
        }

        public void a(d dVar) {
            d e2 = ActivityChooserView.this.f159a.e();
            if (e2 != null && ActivityChooserView.this.isShown()) {
                e2.unregisterObserver(ActivityChooserView.this.e);
            }
            this.g = dVar;
            if (dVar != null && ActivityChooserView.this.isShown()) {
                dVar.registerObserver(ActivityChooserView.this.e);
            }
            notifyDataSetChanged();
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i) {
            return (this.k && i == getCount() - 1) ? 1 : 0;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            int b2 = this.g.b();
            if (!this.i && this.g.c() != null) {
                b2--;
            }
            int min = Math.min(b2, this.h);
            return this.k ? min + 1 : min;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            switch (getItemViewType(i)) {
                case 0:
                    if (!this.i && this.g.c() != null) {
                        i++;
                    }
                    return this.g.a(i);
                case 1:
                    return null;
                default:
                    throw new IllegalArgumentException();
            }
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            switch (getItemViewType(i)) {
                case 0:
                    if (view == null || view.getId() != a.g.list_item) {
                        view = LayoutInflater.from(ActivityChooserView.this.getContext()).inflate(a.j.abc_activity_chooser_view_list_item, viewGroup, false);
                    }
                    PackageManager packageManager = ActivityChooserView.this.getContext().getPackageManager();
                    ImageView imageView = (ImageView) view.findViewById(a.g.icon);
                    ResolveInfo resolveInfo = (ResolveInfo) getItem(i);
                    imageView.setImageDrawable(resolveInfo.loadIcon(packageManager));
                    ((TextView) view.findViewById(a.g.title)).setText(resolveInfo.loadLabel(packageManager));
                    if (this.i && i == 0 && this.j) {
                        view.setActivated(true);
                    } else {
                        view.setActivated(false);
                    }
                    return view;
                case 1:
                    if (view != null && view.getId() == 1) {
                        return view;
                    }
                    View inflate = LayoutInflater.from(ActivityChooserView.this.getContext()).inflate(a.j.abc_activity_chooser_view_list_item, viewGroup, false);
                    inflate.setId(1);
                    ((TextView) inflate.findViewById(a.g.title)).setText(ActivityChooserView.this.getContext().getString(a.k.abc_activity_chooser_view_see_all));
                    return inflate;
                default:
                    throw new IllegalArgumentException();
            }
        }

        public int a() {
            int i = this.h;
            this.h = f166a;
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
            int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
            int count = getCount();
            int i2 = 0;
            View view = null;
            for (int i3 = 0; i3 < count; i3++) {
                view = getView(i3, view, null);
                view.measure(makeMeasureSpec, makeMeasureSpec2);
                i2 = Math.max(i2, view.getMeasuredWidth());
            }
            this.h = i;
            return i2;
        }

        public void a(int i) {
            if (this.h != i) {
                this.h = i;
                notifyDataSetChanged();
            }
        }

        public ResolveInfo b() {
            return this.g.c();
        }

        public void a(boolean z) {
            if (this.k != z) {
                this.k = z;
                notifyDataSetChanged();
            }
        }

        public int c() {
            return this.g.b();
        }

        public int d() {
            return this.g.e();
        }

        public d e() {
            return this.g;
        }

        public void a(boolean z, boolean z2) {
            if (this.i == z && this.j == z2) {
                return;
            }
            this.i = z;
            this.j = z2;
            notifyDataSetChanged();
        }

        public boolean f() {
            return this.i;
        }
    }

    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class InnerLayout extends LinearLayout {

        /* renamed from: a, reason: collision with root package name */
        private static final int[] f165a = {R.attr.background};

        public InnerLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            ba a2 = ba.a(context, attributeSet, f165a);
            setBackgroundDrawable(a2.a(0));
            a2.f();
        }
    }
}
