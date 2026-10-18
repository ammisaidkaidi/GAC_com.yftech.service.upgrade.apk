package androidx.d.e;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.appcompat.widget.ActivityChooserView;
import androidx.core.n.af;
import androidx.d.c.b.a.b;
import androidx.d.c.b.d;
import androidx.d.c.b.e;
import androidx.d.e.m;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: /home/user/work/dex/classes.dex */
public class d extends ViewGroup {

    /* renamed from: a, reason: collision with root package name */
    private static final String f716a = "ConstraintLayout";
    public static final String ab = "ConstraintLayout-2.0.4";
    public static final int ak = 0;
    private static final boolean b = true;
    private static final boolean c = false;
    private static final boolean d = false;
    private static final boolean e = false;
    SparseArray<View> ac;
    protected androidx.d.c.b.f ad;
    protected boolean ae;
    protected e af;
    int ag;
    int ah;
    int ai;
    int aj;
    b al;
    private ArrayList<c> f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;
    private g l;
    private int m;
    private HashMap<String, Integer> n;
    private int o;
    private int p;
    private SparseArray<androidx.d.c.b.e> q;
    private i r;
    private androidx.d.c.f s;
    private int t;
    private int u;

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public void a(int i, Object obj, Object obj2) {
        if (i == 0 && (obj instanceof String) && (obj2 instanceof Integer)) {
            if (this.n == null) {
                this.n = new HashMap<>();
            }
            String str = (String) obj;
            int indexOf = str.indexOf("/");
            if (indexOf != -1) {
                str = str.substring(indexOf + 1);
            }
            this.n.put(str, Integer.valueOf(((Integer) obj2).intValue()));
        }
    }

    public Object a(int i, Object obj) {
        if (i != 0 || !(obj instanceof String)) {
            return null;
        }
        String str = (String) obj;
        if (this.n == null || !this.n.containsKey(str)) {
            return null;
        }
        return this.n.get(str);
    }

    public d(@ah Context context) {
        super(context);
        this.ac = new SparseArray<>();
        this.f = new ArrayList<>(4);
        this.ad = new androidx.d.c.b.f();
        this.g = 0;
        this.h = 0;
        this.i = ActivityChooserView.a.f166a;
        this.j = ActivityChooserView.a.f166a;
        this.ae = b;
        this.k = 257;
        this.l = null;
        this.af = null;
        this.m = -1;
        this.n = new HashMap<>();
        this.o = -1;
        this.p = -1;
        this.ag = -1;
        this.ah = -1;
        this.ai = 0;
        this.aj = 0;
        this.q = new SparseArray<>();
        this.al = new b(this);
        this.t = 0;
        this.u = 0;
        a((AttributeSet) null, 0, 0);
    }

    public d(@ah Context context, @ai AttributeSet attributeSet) {
        super(context, attributeSet);
        this.ac = new SparseArray<>();
        this.f = new ArrayList<>(4);
        this.ad = new androidx.d.c.b.f();
        this.g = 0;
        this.h = 0;
        this.i = ActivityChooserView.a.f166a;
        this.j = ActivityChooserView.a.f166a;
        this.ae = b;
        this.k = 257;
        this.l = null;
        this.af = null;
        this.m = -1;
        this.n = new HashMap<>();
        this.o = -1;
        this.p = -1;
        this.ag = -1;
        this.ah = -1;
        this.ai = 0;
        this.aj = 0;
        this.q = new SparseArray<>();
        this.al = new b(this);
        this.t = 0;
        this.u = 0;
        a(attributeSet, 0, 0);
    }

    public d(@ah Context context, @ai AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.ac = new SparseArray<>();
        this.f = new ArrayList<>(4);
        this.ad = new androidx.d.c.b.f();
        this.g = 0;
        this.h = 0;
        this.i = ActivityChooserView.a.f166a;
        this.j = ActivityChooserView.a.f166a;
        this.ae = b;
        this.k = 257;
        this.l = null;
        this.af = null;
        this.m = -1;
        this.n = new HashMap<>();
        this.o = -1;
        this.p = -1;
        this.ag = -1;
        this.ah = -1;
        this.ai = 0;
        this.aj = 0;
        this.q = new SparseArray<>();
        this.al = new b(this);
        this.t = 0;
        this.u = 0;
        a(attributeSet, i, 0);
    }

    @TargetApi(21)
    public d(@ah Context context, @ai AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.ac = new SparseArray<>();
        this.f = new ArrayList<>(4);
        this.ad = new androidx.d.c.b.f();
        this.g = 0;
        this.h = 0;
        this.i = ActivityChooserView.a.f166a;
        this.j = ActivityChooserView.a.f166a;
        this.ae = b;
        this.k = 257;
        this.l = null;
        this.af = null;
        this.m = -1;
        this.n = new HashMap<>();
        this.o = -1;
        this.p = -1;
        this.ag = -1;
        this.ah = -1;
        this.ai = 0;
        this.aj = 0;
        this.q = new SparseArray<>();
        this.al = new b(this);
        this.t = 0;
        this.u = 0;
        a(attributeSet, i, i2);
    }

    @Override // android.view.View
    public void setId(int i) {
        this.ac.remove(getId());
        super.setId(i);
        this.ac.put(getId(), this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class b implements b.InterfaceC0050b {

        /* renamed from: a, reason: collision with root package name */
        d f720a;
        int b;
        int c;
        int d;
        int e;
        int f;
        int g;

        public void a(int i, int i2, int i3, int i4, int i5, int i6) {
            this.b = i3;
            this.c = i4;
            this.d = i5;
            this.e = i6;
            this.f = i;
            this.g = i2;
        }

        public b(d dVar) {
            this.f720a = dVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:131:0x028e  */
        /* JADX WARN: Removed duplicated region for block: B:133:0x029b  */
        /* JADX WARN: Removed duplicated region for block: B:135:0x0295  */
        @Override // androidx.d.c.b.a.b.InterfaceC0050b
        @SuppressLint({"WrongCall"})
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final void a(androidx.d.c.b.e eVar, b.a aVar) {
            int makeMeasureSpec;
            int makeMeasureSpec2;
            int i;
            int i2;
            int i3;
            int i4;
            int i5;
            int baseline;
            int i6;
            if (eVar == null) {
                return;
            }
            if (eVar.E() == 8 && !eVar.s()) {
                aVar.h = 0;
                aVar.i = 0;
                aVar.j = 0;
                return;
            }
            if (eVar.A() == null) {
                return;
            }
            e.a aVar2 = aVar.d;
            e.a aVar3 = aVar.e;
            int i7 = aVar.f;
            int i8 = aVar.g;
            int i9 = this.b + this.c;
            int i10 = this.d;
            View view = (View) eVar.aa();
            switch (aVar2) {
                case FIXED:
                    makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i7, androidx.d.c.b.a.b.b);
                    break;
                case WRAP_CONTENT:
                    makeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f, i10, -2);
                    break;
                case MATCH_PARENT:
                    makeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f, i10 + eVar.U(), -1);
                    break;
                case MATCH_CONSTRAINT:
                    int childMeasureSpec = ViewGroup.getChildMeasureSpec(this.f, i10, -2);
                    boolean z = eVar.G == 1;
                    if (aVar.m == b.a.b || aVar.m == b.a.c) {
                        if ((aVar.m == b.a.c || !z || (z && (view.getMeasuredHeight() == eVar.L())) || (view instanceof l) || eVar.d()) ? d.b : false) {
                            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(eVar.I(), androidx.d.c.b.a.b.b);
                            break;
                        }
                    }
                    makeMeasureSpec = childMeasureSpec;
                    break;
                default:
                    makeMeasureSpec = 0;
                    break;
            }
            switch (aVar3) {
                case FIXED:
                    makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i8, androidx.d.c.b.a.b.b);
                    break;
                case WRAP_CONTENT:
                    makeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.g, i9, -2);
                    break;
                case MATCH_PARENT:
                    makeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.g, i9 + eVar.V(), -1);
                    break;
                case MATCH_CONSTRAINT:
                    makeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.g, i9, -2);
                    boolean z2 = eVar.H == 1 ? d.b : false;
                    if (aVar.m == b.a.b || aVar.m == b.a.c) {
                        if ((aVar.m == b.a.c || !z2 || (z2 && (view.getMeasuredWidth() == eVar.I() ? d.b : false)) || (view instanceof l) || eVar.e()) ? d.b : false) {
                            makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(eVar.L(), androidx.d.c.b.a.b.b);
                            break;
                        }
                    }
                    break;
                default:
                    makeMeasureSpec2 = 0;
                    break;
            }
            androidx.d.c.b.f fVar = (androidx.d.c.b.f) eVar.A();
            if (fVar != null && androidx.d.c.b.k.a(d.this.k, 256) && view.getMeasuredWidth() == eVar.I() && view.getMeasuredWidth() < fVar.I() && view.getMeasuredHeight() == eVar.L() && view.getMeasuredHeight() < fVar.L() && view.getBaseline() == eVar.Z() && !eVar.t()) {
                if ((a(eVar.u(), makeMeasureSpec, eVar.I()) && a(eVar.v(), makeMeasureSpec2, eVar.L())) ? d.b : false) {
                    aVar.h = eVar.I();
                    aVar.i = eVar.L();
                    aVar.j = eVar.Z();
                    return;
                }
            }
            boolean z3 = aVar2 == e.a.MATCH_CONSTRAINT ? d.b : false;
            boolean z4 = aVar3 == e.a.MATCH_CONSTRAINT ? d.b : false;
            boolean z5 = (aVar3 == e.a.MATCH_PARENT || aVar3 == e.a.FIXED) ? d.b : false;
            boolean z6 = (aVar2 == e.a.MATCH_PARENT || aVar2 == e.a.FIXED) ? d.b : false;
            boolean z7 = (!z3 || eVar.ao <= 0.0f) ? false : d.b;
            boolean z8 = (!z4 || eVar.ao <= 0.0f) ? false : d.b;
            if (view == null) {
                return;
            }
            a aVar4 = (a) view.getLayoutParams();
            if (aVar.m != b.a.b && aVar.m != b.a.c && z3 && eVar.G == 0 && z4 && eVar.H == 0) {
                i6 = -1;
                baseline = 0;
                i3 = 0;
                i2 = 0;
            } else {
                if ((view instanceof o) && (eVar instanceof androidx.d.c.b.m)) {
                    ((o) view).a((androidx.d.c.b.m) eVar, makeMeasureSpec, makeMeasureSpec2);
                } else {
                    view.measure(makeMeasureSpec, makeMeasureSpec2);
                }
                eVar.c(makeMeasureSpec, makeMeasureSpec2);
                int measuredWidth = view.getMeasuredWidth();
                int measuredHeight = view.getMeasuredHeight();
                int baseline2 = view.getBaseline();
                int max = eVar.J > 0 ? Math.max(eVar.J, measuredWidth) : measuredWidth;
                if (eVar.K > 0) {
                    max = Math.min(eVar.K, max);
                }
                if (eVar.M > 0) {
                    i2 = Math.max(eVar.M, measuredHeight);
                    i = makeMeasureSpec;
                } else {
                    i = makeMeasureSpec;
                    i2 = measuredHeight;
                }
                if (eVar.N > 0) {
                    i2 = Math.min(eVar.N, i2);
                }
                if (!androidx.d.c.b.k.a(d.this.k, 1)) {
                    if (z7 && z5) {
                        i3 = (int) ((i2 * eVar.ao) + 0.5f);
                        if (measuredWidth == i3 || measuredHeight != i2) {
                            if (measuredWidth == i3) {
                                i4 = androidx.d.c.b.a.b.b;
                                i5 = View.MeasureSpec.makeMeasureSpec(i3, androidx.d.c.b.a.b.b);
                            } else {
                                i4 = androidx.d.c.b.a.b.b;
                                i5 = i;
                            }
                            if (measuredHeight != i2) {
                                makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i2, i4);
                            }
                            view.measure(i5, makeMeasureSpec2);
                            eVar.c(i5, makeMeasureSpec2);
                            i3 = view.getMeasuredWidth();
                            int measuredHeight2 = view.getMeasuredHeight();
                            baseline = view.getBaseline();
                            i2 = measuredHeight2;
                        } else {
                            baseline = baseline2;
                        }
                        i6 = -1;
                    } else if (z8 && z6) {
                        i2 = (int) ((max / eVar.ao) + 0.5f);
                    }
                }
                i3 = max;
                if (measuredWidth == i3) {
                }
                if (measuredWidth == i3) {
                }
                if (measuredHeight != i2) {
                }
                view.measure(i5, makeMeasureSpec2);
                eVar.c(i5, makeMeasureSpec2);
                i3 = view.getMeasuredWidth();
                int measuredHeight22 = view.getMeasuredHeight();
                baseline = view.getBaseline();
                i2 = measuredHeight22;
                i6 = -1;
            }
            boolean z9 = baseline != i6 ? d.b : false;
            aVar.l = (i3 == aVar.f && i2 == aVar.g) ? false : d.b;
            if (aVar4.aq) {
                z9 = d.b;
            }
            if (z9 && baseline != -1 && eVar.Z() != baseline) {
                aVar.l = d.b;
            }
            aVar.h = i3;
            aVar.i = i2;
            aVar.k = z9;
            aVar.j = baseline;
        }

        private boolean a(int i, int i2, int i3) {
            if (i == i2) {
                return d.b;
            }
            int mode = View.MeasureSpec.getMode(i);
            View.MeasureSpec.getSize(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i2);
            if (mode2 != 1073741824) {
                return false;
            }
            if ((mode == Integer.MIN_VALUE || mode == 0) && i3 == size) {
                return d.b;
            }
            return false;
        }

        @Override // androidx.d.c.b.a.b.InterfaceC0050b
        public final void a() {
            int childCount = this.f720a.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.f720a.getChildAt(i);
                if (childAt instanceof l) {
                    ((l) childAt).b(this.f720a);
                }
            }
            int size = this.f720a.f.size();
            if (size > 0) {
                for (int i2 = 0; i2 < size; i2++) {
                    ((c) this.f720a.f.get(i2)).f(this.f720a);
                }
            }
        }
    }

    private void a(AttributeSet attributeSet, int i, int i2) {
        this.ad.a(this);
        this.ad.a((b.InterfaceC0050b) this.al);
        this.ac.put(getId(), this);
        this.l = null;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, m.C0052m.ConstraintLayout_Layout, i, i2);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i3 = 0; i3 < indexCount; i3++) {
                int index = obtainStyledAttributes.getIndex(i3);
                if (index == m.C0052m.ConstraintLayout_Layout_android_minWidth) {
                    this.g = obtainStyledAttributes.getDimensionPixelOffset(index, this.g);
                } else if (index == m.C0052m.ConstraintLayout_Layout_android_minHeight) {
                    this.h = obtainStyledAttributes.getDimensionPixelOffset(index, this.h);
                } else if (index == m.C0052m.ConstraintLayout_Layout_android_maxWidth) {
                    this.i = obtainStyledAttributes.getDimensionPixelOffset(index, this.i);
                } else if (index == m.C0052m.ConstraintLayout_Layout_android_maxHeight) {
                    this.j = obtainStyledAttributes.getDimensionPixelOffset(index, this.j);
                } else if (index == m.C0052m.ConstraintLayout_Layout_layout_optimizationLevel) {
                    this.k = obtainStyledAttributes.getInt(index, this.k);
                } else if (index == m.C0052m.ConstraintLayout_Layout_layoutDescription) {
                    int resourceId = obtainStyledAttributes.getResourceId(index, 0);
                    if (resourceId != 0) {
                        try {
                            c(resourceId);
                        } catch (Resources.NotFoundException unused) {
                            this.af = null;
                        }
                    }
                } else if (index == m.C0052m.ConstraintLayout_Layout_constraintSet) {
                    int resourceId2 = obtainStyledAttributes.getResourceId(index, 0);
                    try {
                        this.l = new g();
                        this.l.b(getContext(), resourceId2);
                    } catch (Resources.NotFoundException unused2) {
                        this.l = null;
                    }
                    this.m = resourceId2;
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.ad.a(this.k);
    }

    protected void c(int i) {
        this.af = new e(getContext(), this, i);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        if (Build.VERSION.SDK_INT < 14) {
            onViewAdded(view);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        super.removeView(view);
        if (Build.VERSION.SDK_INT < 14) {
            onViewRemoved(view);
        }
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        if (Build.VERSION.SDK_INT >= 14) {
            super.onViewAdded(view);
        }
        androidx.d.c.b.e a2 = a(view);
        if ((view instanceof k) && !(a2 instanceof androidx.d.c.b.h)) {
            a aVar = (a) view.getLayoutParams();
            aVar.aF = new androidx.d.c.b.h();
            aVar.ar = b;
            ((androidx.d.c.b.h) aVar.aF).a(aVar.ak);
        }
        if (view instanceof c) {
            c cVar = (c) view;
            cVar.c();
            ((a) view.getLayoutParams()).as = b;
            if (!this.f.contains(cVar)) {
                this.f.add(cVar);
            }
        }
        this.ac.put(view.getId(), view);
        this.ae = b;
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        if (Build.VERSION.SDK_INT >= 14) {
            super.onViewRemoved(view);
        }
        this.ac.remove(view.getId());
        this.ad.c(a(view));
        this.f.remove(view);
        this.ae = b;
    }

    public void setMinWidth(int i) {
        if (i == this.g) {
            return;
        }
        this.g = i;
        requestLayout();
    }

    public void setMinHeight(int i) {
        if (i == this.h) {
            return;
        }
        this.h = i;
        requestLayout();
    }

    public int getMinWidth() {
        return this.g;
    }

    public int getMinHeight() {
        return this.h;
    }

    public void setMaxWidth(int i) {
        if (i == this.i) {
            return;
        }
        this.i = i;
        requestLayout();
    }

    public void setMaxHeight(int i) {
        if (i == this.j) {
            return;
        }
        this.j = i;
        requestLayout();
    }

    public int getMaxWidth() {
        return this.i;
    }

    public int getMaxHeight() {
        return this.j;
    }

    private boolean a() {
        int childCount = getChildCount();
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= childCount) {
                break;
            }
            if (getChildAt(i).isLayoutRequested()) {
                z = b;
                break;
            }
            i++;
        }
        if (z) {
            b();
        }
        return z;
    }

    private void b() {
        boolean isInEditMode = isInEditMode();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            androidx.d.c.b.e a2 = a(getChildAt(i));
            if (a2 != null) {
                a2.w();
            }
        }
        if (isInEditMode) {
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                try {
                    String resourceName = getResources().getResourceName(childAt.getId());
                    a(0, resourceName, Integer.valueOf(childAt.getId()));
                    int indexOf = resourceName.indexOf(47);
                    if (indexOf != -1) {
                        resourceName = resourceName.substring(indexOf + 1);
                    }
                    b(childAt.getId()).b(resourceName);
                } catch (Resources.NotFoundException unused) {
                }
            }
        }
        if (this.m != -1) {
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt2 = getChildAt(i3);
                if (childAt2.getId() == this.m && (childAt2 instanceof h)) {
                    this.l = ((h) childAt2).getConstraintSet();
                }
            }
        }
        if (this.l != null) {
            this.l.a(this, b);
        }
        this.ad.aA();
        int size = this.f.size();
        if (size > 0) {
            for (int i4 = 0; i4 < size; i4++) {
                this.f.get(i4).d(this);
            }
        }
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt3 = getChildAt(i5);
            if (childAt3 instanceof l) {
                ((l) childAt3).a(this);
            }
        }
        this.q.clear();
        this.q.put(0, this.ad);
        this.q.put(getId(), this.ad);
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt4 = getChildAt(i6);
            this.q.put(childAt4.getId(), a(childAt4));
        }
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt5 = getChildAt(i7);
            androidx.d.c.b.e a3 = a(childAt5);
            if (a3 != null) {
                a aVar = (a) childAt5.getLayoutParams();
                this.ad.b(a3);
                a(isInEditMode, childAt5, a3, aVar, this.q);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(boolean z, View view, androidx.d.c.b.e eVar, a aVar, SparseArray<androidx.d.c.b.e> sparseArray) {
        int i;
        int i2;
        int i3;
        float f;
        androidx.d.c.b.e eVar2;
        androidx.d.c.b.e eVar3;
        androidx.d.c.b.e eVar4;
        androidx.d.c.b.e eVar5;
        aVar.c();
        aVar.aG = false;
        eVar.k(view.getVisibility());
        if (aVar.at) {
            eVar.d(b);
            eVar.k(8);
        }
        eVar.a(view);
        if (view instanceof c) {
            ((c) view).a(eVar, this.ad.as());
        }
        if (aVar.ar) {
            androidx.d.c.b.h hVar = (androidx.d.c.b.h) eVar;
            int i4 = aVar.aC;
            int i5 = aVar.aD;
            float f2 = aVar.aE;
            if (Build.VERSION.SDK_INT < 17) {
                i4 = aVar.s;
                i5 = aVar.t;
                f2 = aVar.u;
            }
            if (f2 != -1.0f) {
                hVar.e(f2);
                return;
            } else if (i4 != -1) {
                hVar.C(i4);
                return;
            } else {
                if (i5 != -1) {
                    hVar.D(i5);
                    return;
                }
                return;
            }
        }
        int i6 = aVar.av;
        int i7 = aVar.aw;
        int i8 = aVar.ax;
        int i9 = aVar.ay;
        int i10 = aVar.az;
        int i11 = aVar.aA;
        float f3 = aVar.aB;
        if (Build.VERSION.SDK_INT < 17) {
            i6 = aVar.v;
            i = aVar.w;
            int i12 = aVar.x;
            i9 = aVar.y;
            int i13 = aVar.L;
            int i14 = aVar.N;
            f3 = aVar.R;
            if (i6 == -1 && i == -1) {
                if (aVar.I != -1) {
                    i6 = aVar.I;
                } else if (aVar.H != -1) {
                    i = aVar.H;
                }
            }
            if (i12 == -1 && i9 == -1) {
                if (aVar.J != -1) {
                    i12 = aVar.J;
                } else if (aVar.K != -1) {
                    i9 = aVar.K;
                }
            }
            i3 = i12;
            i2 = i14;
            i10 = i13;
        } else {
            i = i7;
            i2 = i11;
            i3 = i8;
        }
        float f4 = f3;
        int i15 = i9;
        if (aVar.E != -1) {
            androidx.d.c.b.e eVar6 = sparseArray.get(aVar.E);
            if (eVar6 != null) {
                eVar.a(eVar6, aVar.G, aVar.F);
            }
        } else {
            if (i6 != -1) {
                androidx.d.c.b.e eVar7 = sparseArray.get(i6);
                if (eVar7 != null) {
                    f = f4;
                    eVar.a(d.a.LEFT, eVar7, d.a.LEFT, aVar.leftMargin, i10);
                } else {
                    f = f4;
                }
            } else {
                f = f4;
                if (i != -1 && (eVar2 = sparseArray.get(i)) != null) {
                    eVar.a(d.a.LEFT, eVar2, d.a.RIGHT, aVar.leftMargin, i10);
                }
            }
            if (i3 != -1) {
                androidx.d.c.b.e eVar8 = sparseArray.get(i3);
                if (eVar8 != null) {
                    eVar.a(d.a.RIGHT, eVar8, d.a.LEFT, aVar.rightMargin, i2);
                }
            } else if (i15 != -1 && (eVar3 = sparseArray.get(i15)) != null) {
                eVar.a(d.a.RIGHT, eVar3, d.a.RIGHT, aVar.rightMargin, i2);
            }
            if (aVar.z != -1) {
                androidx.d.c.b.e eVar9 = sparseArray.get(aVar.z);
                if (eVar9 != null) {
                    eVar.a(d.a.TOP, eVar9, d.a.TOP, aVar.topMargin, aVar.M);
                }
            } else if (aVar.A != -1 && (eVar4 = sparseArray.get(aVar.A)) != null) {
                eVar.a(d.a.TOP, eVar4, d.a.BOTTOM, aVar.topMargin, aVar.M);
            }
            if (aVar.B != -1) {
                androidx.d.c.b.e eVar10 = sparseArray.get(aVar.B);
                if (eVar10 != null) {
                    eVar.a(d.a.BOTTOM, eVar10, d.a.TOP, aVar.bottomMargin, aVar.O);
                }
            } else if (aVar.C != -1 && (eVar5 = sparseArray.get(aVar.C)) != null) {
                eVar.a(d.a.BOTTOM, eVar5, d.a.BOTTOM, aVar.bottomMargin, aVar.O);
            }
            if (aVar.D != -1) {
                View view2 = this.ac.get(aVar.D);
                androidx.d.c.b.e eVar11 = sparseArray.get(aVar.D);
                if (eVar11 != null && view2 != null && (view2.getLayoutParams() instanceof a)) {
                    a aVar2 = (a) view2.getLayoutParams();
                    aVar.aq = b;
                    aVar2.aq = b;
                    eVar.a(d.a.BASELINE).a(eVar11.a(d.a.BASELINE), 0, -1, b);
                    eVar.c(b);
                    aVar2.aF.c(b);
                    eVar.a(d.a.TOP).l();
                    eVar.a(d.a.BOTTOM).l();
                }
            }
            float f5 = f;
            if (f5 >= 0.0f) {
                eVar.a(f5);
            }
            if (aVar.S >= 0.0f) {
                eVar.b(aVar.S);
            }
        }
        if (z && (aVar.ai != -1 || aVar.aj != -1)) {
            eVar.d(aVar.ai, aVar.aj);
        }
        if (!aVar.ao) {
            if (aVar.width == -1) {
                if (aVar.al) {
                    eVar.a(e.a.MATCH_CONSTRAINT);
                } else {
                    eVar.a(e.a.MATCH_PARENT);
                }
                eVar.a(d.a.LEFT).d = aVar.leftMargin;
                eVar.a(d.a.RIGHT).d = aVar.rightMargin;
            } else {
                eVar.a(e.a.MATCH_CONSTRAINT);
                eVar.p(0);
            }
        } else {
            eVar.a(e.a.FIXED);
            eVar.p(aVar.width);
            if (aVar.width == -2) {
                eVar.a(e.a.WRAP_CONTENT);
            }
        }
        if (!aVar.ap) {
            if (aVar.height == -1) {
                if (aVar.am) {
                    eVar.b(e.a.MATCH_CONSTRAINT);
                } else {
                    eVar.b(e.a.MATCH_PARENT);
                }
                eVar.a(d.a.TOP).d = aVar.topMargin;
                eVar.a(d.a.BOTTOM).d = aVar.bottomMargin;
            } else {
                eVar.b(e.a.MATCH_CONSTRAINT);
                eVar.q(0);
            }
        } else {
            eVar.b(e.a.FIXED);
            eVar.q(aVar.height);
            if (aVar.height == -2) {
                eVar.b(e.a.WRAP_CONTENT);
            }
        }
        eVar.c(aVar.T);
        eVar.c(aVar.W);
        eVar.d(aVar.X);
        eVar.w(aVar.Y);
        eVar.x(aVar.Z);
        eVar.a(aVar.aa, aVar.ac, aVar.ae, aVar.ag);
        eVar.b(aVar.ab, aVar.ad, aVar.af, aVar.ah);
    }

    private final androidx.d.c.b.e b(int i) {
        if (i == 0) {
            return this.ad;
        }
        View view = this.ac.get(i);
        if (view == null && (view = findViewById(i)) != null && view != this && view.getParent() == this) {
            onViewAdded(view);
        }
        if (view == this) {
            return this.ad;
        }
        if (view == null) {
            return null;
        }
        return ((a) view.getLayoutParams()).aF;
    }

    public final androidx.d.c.b.e a(View view) {
        if (view == this) {
            return this.ad;
        }
        if (view == null) {
            return null;
        }
        return ((a) view.getLayoutParams()).aF;
    }

    public void a(androidx.d.c.f fVar) {
        this.s = fVar;
        this.ad.a(fVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(androidx.d.c.b.f fVar, int i, int i2, int i3) {
        int max;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        int max2 = Math.max(0, getPaddingTop());
        int max3 = Math.max(0, getPaddingBottom());
        int i4 = max2 + max3;
        int paddingWidth = getPaddingWidth();
        this.al.a(i2, i3, max2, max3, paddingWidth, i4);
        if (Build.VERSION.SDK_INT >= 17) {
            int max4 = Math.max(0, getPaddingStart());
            int max5 = Math.max(0, getPaddingEnd());
            if (max4 > 0 || max5 > 0) {
                if (j()) {
                    max4 = max5;
                }
            } else {
                max4 = Math.max(0, getPaddingLeft());
            }
            max = max4;
        } else {
            max = Math.max(0, getPaddingLeft());
        }
        int i5 = size - paddingWidth;
        int i6 = size2 - i4;
        a(fVar, mode, i5, mode2, i6);
        fVar.a(i, mode, i5, mode2, i6, this.o, this.p, max, max2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(int i, int i2, int i3, int i4, boolean z, boolean z2) {
        int i5 = this.al.e;
        int i6 = i3 + this.al.d;
        int i7 = i4 + i5;
        if (Build.VERSION.SDK_INT >= 11) {
            int resolveSizeAndState = resolveSizeAndState(i6, i, 0);
            int resolveSizeAndState2 = resolveSizeAndState(i7, i2, 0);
            int i8 = resolveSizeAndState & af.r;
            int i9 = resolveSizeAndState2 & af.r;
            int min = Math.min(this.i, i8);
            int min2 = Math.min(this.j, i9);
            if (z) {
                min |= 16777216;
            }
            if (z2) {
                min2 |= 16777216;
            }
            setMeasuredDimension(min, min2);
            this.o = min;
            this.p = min2;
            return;
        }
        setMeasuredDimension(i6, i7);
        this.o = i6;
        this.p = i7;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        if (!this.ae) {
            int childCount = getChildCount();
            int i3 = 0;
            while (true) {
                if (i3 >= childCount) {
                    break;
                }
                if (getChildAt(i3).isLayoutRequested()) {
                    this.ae = b;
                    break;
                }
                i3++;
            }
        }
        if (!this.ae) {
            if (this.t == i && this.u == i2) {
                a(i, i2, this.ad.I(), this.ad.L(), this.ad.aq(), this.ad.ar());
                return;
            }
            if (this.t == i && View.MeasureSpec.getMode(i) == 1073741824 && View.MeasureSpec.getMode(i2) == Integer.MIN_VALUE && View.MeasureSpec.getMode(this.u) == Integer.MIN_VALUE && View.MeasureSpec.getSize(i2) >= this.ad.L()) {
                this.t = i;
                this.u = i2;
                a(i, i2, this.ad.I(), this.ad.L(), this.ad.aq(), this.ad.ar());
                return;
            }
        }
        this.t = i;
        this.u = i2;
        this.ad.i(j());
        if (this.ae) {
            this.ae = false;
            if (a()) {
                this.ad.g();
            }
        }
        a(this.ad, this.k, i, i2);
        a(i, i2, this.ad.I(), this.ad.L(), this.ad.aq(), this.ad.ar());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean j() {
        if (Build.VERSION.SDK_INT < 17) {
            return false;
        }
        if (((getContext().getApplicationInfo().flags & 4194304) != 0) && 1 == getLayoutDirection()) {
            return b;
        }
        return false;
    }

    private int getPaddingWidth() {
        int max = Math.max(0, getPaddingLeft()) + Math.max(0, getPaddingRight());
        int max2 = Build.VERSION.SDK_INT >= 17 ? Math.max(0, getPaddingStart()) + Math.max(0, getPaddingEnd()) : 0;
        return max2 > 0 ? max2 : max;
    }

    protected void a(androidx.d.c.b.f fVar, int i, int i2, int i3, int i4) {
        int i5 = this.al.e;
        int i6 = this.al.d;
        e.a aVar = e.a.FIXED;
        e.a aVar2 = e.a.FIXED;
        int childCount = getChildCount();
        if (i == Integer.MIN_VALUE) {
            aVar = e.a.WRAP_CONTENT;
            if (childCount == 0) {
                i2 = Math.max(0, this.g);
            }
        } else if (i != 0) {
            if (i == 1073741824) {
                i2 = Math.min(this.i - i6, i2);
            }
            i2 = 0;
        } else {
            aVar = e.a.WRAP_CONTENT;
            if (childCount == 0) {
                i2 = Math.max(0, this.g);
            }
            i2 = 0;
        }
        if (i3 == Integer.MIN_VALUE) {
            aVar2 = e.a.WRAP_CONTENT;
            if (childCount == 0) {
                i4 = Math.max(0, this.h);
            }
        } else if (i3 != 0) {
            if (i3 == 1073741824) {
                i4 = Math.min(this.j - i5, i4);
            }
            i4 = 0;
        } else {
            aVar2 = e.a.WRAP_CONTENT;
            if (childCount == 0) {
                i4 = Math.max(0, this.h);
            }
            i4 = 0;
        }
        if (i2 != fVar.I() || i4 != fVar.L()) {
            fVar.c();
        }
        fVar.n(0);
        fVar.o(0);
        fVar.h(this.i - i6);
        fVar.i(this.j - i5);
        fVar.r(0);
        fVar.s(0);
        fVar.a(aVar);
        fVar.p(i2);
        fVar.b(aVar2);
        fVar.q(i4);
        fVar.r(this.g - i6);
        fVar.s(this.h - i5);
    }

    public void a(int i, int i2, int i3) {
        if (this.af != null) {
            this.af.b(i, i2, i3);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View content;
        int childCount = getChildCount();
        boolean isInEditMode = isInEditMode();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            a aVar = (a) childAt.getLayoutParams();
            androidx.d.c.b.e eVar = aVar.aF;
            if ((childAt.getVisibility() != 8 || aVar.ar || aVar.as || aVar.au || isInEditMode) && !aVar.at) {
                int G = eVar.G();
                int H = eVar.H();
                int I = eVar.I() + G;
                int L = eVar.L() + H;
                childAt.layout(G, H, I, L);
                if ((childAt instanceof l) && (content = ((l) childAt).getContent()) != null) {
                    content.setVisibility(0);
                    content.layout(G, H, I, L);
                }
            }
        }
        int size = this.f.size();
        if (size > 0) {
            for (int i6 = 0; i6 < size; i6++) {
                this.f.get(i6).b(this);
            }
        }
    }

    public void setOptimizationLevel(int i) {
        this.k = i;
        this.ad.a(i);
    }

    public int getOptimizationLevel() {
        return this.ad.i();
    }

    @Override // android.view.ViewGroup
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public a generateLayoutParams(AttributeSet attributeSet) {
        return new a(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* renamed from: k, reason: merged with bridge method [inline-methods] */
    public a generateDefaultLayoutParams() {
        return new a(-2, -2);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new a(layoutParams);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof a;
    }

    public void setConstraintSet(g gVar) {
        this.l = gVar;
    }

    public View g(int i) {
        return this.ac.get(i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        Object tag;
        int size;
        if (this.f != null && (size = this.f.size()) > 0) {
            for (int i = 0; i < size; i++) {
                this.f.get(i).a(this);
            }
        }
        super.dispatchDraw(canvas);
        if (isInEditMode()) {
            int childCount = getChildCount();
            float width = getWidth();
            float height = getHeight();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                if (childAt.getVisibility() != 8 && (tag = childAt.getTag()) != null && (tag instanceof String)) {
                    String[] split = ((String) tag).split(",");
                    if (split.length == 4) {
                        int parseInt = Integer.parseInt(split[0]);
                        int parseInt2 = Integer.parseInt(split[1]);
                        int parseInt3 = Integer.parseInt(split[2]);
                        int i3 = (int) ((parseInt / 1080.0f) * width);
                        int i4 = (int) ((parseInt2 / 1920.0f) * height);
                        Paint paint = new Paint();
                        paint.setColor(androidx.core.e.a.a.f);
                        float f = i3;
                        float f2 = i4;
                        float f3 = i3 + ((int) ((parseInt3 / 1080.0f) * width));
                        canvas.drawLine(f, f2, f3, f2, paint);
                        float parseInt4 = i4 + ((int) ((Integer.parseInt(split[3]) / 1920.0f) * height));
                        canvas.drawLine(f3, f2, f3, parseInt4, paint);
                        canvas.drawLine(f3, parseInt4, f, parseInt4, paint);
                        canvas.drawLine(f, parseInt4, f, f2, paint);
                        paint.setColor(-16711936);
                        canvas.drawLine(f, f2, f3, parseInt4, paint);
                        canvas.drawLine(f, parseInt4, f3, f2, paint);
                    }
                }
            }
        }
    }

    public void setOnConstraintsChanged(i iVar) {
        this.r = iVar;
        if (this.af != null) {
            this.af.a(iVar);
        }
    }

    public void a(int i) {
        if (i != 0) {
            try {
                this.af = new e(getContext(), this, i);
                return;
            } catch (Resources.NotFoundException unused) {
                this.af = null;
                return;
            }
        }
        this.af = null;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a extends ViewGroup.MarginLayoutParams {

        /* renamed from: a, reason: collision with root package name */
        public static final int f718a = 0;
        public static final int b = 0;
        public static final int c = -1;
        public static final int d = 0;
        public static final int e = 1;
        public static final int f = 1;
        public static final int g = 2;
        public static final int h = 3;
        public static final int i = 4;
        public static final int j = 5;
        public static final int k = 6;
        public static final int l = 7;
        public static final int m = 1;
        public static final int n = 0;
        public static final int o = 2;
        public static final int p = 0;
        public static final int q = 1;
        public static final int r = 2;
        public int A;
        public int B;
        public int C;
        public int D;
        public int E;
        public int F;
        public float G;
        public int H;
        public int I;
        public int J;
        public int K;
        public int L;
        public int M;
        public int N;
        public int O;
        public int P;
        public int Q;
        public float R;
        public float S;
        public String T;
        float U;
        int V;
        public float W;
        public float X;
        public int Y;
        public int Z;
        int aA;
        float aB;
        int aC;
        int aD;
        float aE;
        androidx.d.c.b.e aF;
        public boolean aG;
        public int aa;
        public int ab;
        public int ac;
        public int ad;
        public int ae;
        public int af;
        public float ag;
        public float ah;
        public int ai;
        public int aj;
        public int ak;
        public boolean al;
        public boolean am;
        public String an;
        boolean ao;
        boolean ap;
        boolean aq;
        boolean ar;
        boolean as;
        boolean at;
        boolean au;
        int av;
        int aw;
        int ax;
        int ay;
        int az;
        public int s;
        public int t;
        public float u;
        public int v;
        public int w;
        public int x;
        public int y;
        public int z;

        public androidx.d.c.b.e a() {
            return this.aF;
        }

        public void a(String str) {
            this.aF.b(str);
        }

        public void b() {
            if (this.aF != null) {
                this.aF.w();
            }
        }

        public a(a aVar) {
            super((ViewGroup.MarginLayoutParams) aVar);
            this.s = -1;
            this.t = -1;
            this.u = -1.0f;
            this.v = -1;
            this.w = -1;
            this.x = -1;
            this.y = -1;
            this.z = -1;
            this.A = -1;
            this.B = -1;
            this.C = -1;
            this.D = -1;
            this.E = -1;
            this.F = 0;
            this.G = 0.0f;
            this.H = -1;
            this.I = -1;
            this.J = -1;
            this.K = -1;
            this.L = -1;
            this.M = -1;
            this.N = -1;
            this.O = -1;
            this.P = -1;
            this.Q = -1;
            this.R = 0.5f;
            this.S = 0.5f;
            this.T = null;
            this.U = 0.0f;
            this.V = 1;
            this.W = -1.0f;
            this.X = -1.0f;
            this.Y = 0;
            this.Z = 0;
            this.aa = 0;
            this.ab = 0;
            this.ac = 0;
            this.ad = 0;
            this.ae = 0;
            this.af = 0;
            this.ag = 1.0f;
            this.ah = 1.0f;
            this.ai = -1;
            this.aj = -1;
            this.ak = -1;
            this.al = false;
            this.am = false;
            this.an = null;
            this.ao = d.b;
            this.ap = d.b;
            this.aq = false;
            this.ar = false;
            this.as = false;
            this.at = false;
            this.au = false;
            this.av = -1;
            this.aw = -1;
            this.ax = -1;
            this.ay = -1;
            this.az = -1;
            this.aA = -1;
            this.aB = 0.5f;
            this.aF = new androidx.d.c.b.e();
            this.aG = false;
            this.s = aVar.s;
            this.t = aVar.t;
            this.u = aVar.u;
            this.v = aVar.v;
            this.w = aVar.w;
            this.x = aVar.x;
            this.y = aVar.y;
            this.z = aVar.z;
            this.A = aVar.A;
            this.B = aVar.B;
            this.C = aVar.C;
            this.D = aVar.D;
            this.E = aVar.E;
            this.F = aVar.F;
            this.G = aVar.G;
            this.H = aVar.H;
            this.I = aVar.I;
            this.J = aVar.J;
            this.K = aVar.K;
            this.L = aVar.L;
            this.M = aVar.M;
            this.N = aVar.N;
            this.O = aVar.O;
            this.P = aVar.P;
            this.Q = aVar.Q;
            this.R = aVar.R;
            this.S = aVar.S;
            this.T = aVar.T;
            this.U = aVar.U;
            this.V = aVar.V;
            this.W = aVar.W;
            this.X = aVar.X;
            this.Y = aVar.Y;
            this.Z = aVar.Z;
            this.al = aVar.al;
            this.am = aVar.am;
            this.aa = aVar.aa;
            this.ab = aVar.ab;
            this.ac = aVar.ac;
            this.ae = aVar.ae;
            this.ad = aVar.ad;
            this.af = aVar.af;
            this.ag = aVar.ag;
            this.ah = aVar.ah;
            this.ai = aVar.ai;
            this.aj = aVar.aj;
            this.ak = aVar.ak;
            this.ao = aVar.ao;
            this.ap = aVar.ap;
            this.aq = aVar.aq;
            this.ar = aVar.ar;
            this.av = aVar.av;
            this.aw = aVar.aw;
            this.ax = aVar.ax;
            this.ay = aVar.ay;
            this.az = aVar.az;
            this.aA = aVar.aA;
            this.aB = aVar.aB;
            this.an = aVar.an;
            this.aF = aVar.aF;
        }

        /* renamed from: androidx.d.e.d$a$a, reason: collision with other inner class name */
        /* loaded from: /home/user/work/dex/classes.dex */
        private static class C0051a {
            public static final int A = 26;
            public static final int B = 27;
            public static final int C = 28;
            public static final int D = 29;
            public static final int E = 30;
            public static final int F = 31;
            public static final int G = 32;
            public static final int H = 33;
            public static final int I = 34;
            public static final int J = 35;
            public static final int K = 36;
            public static final int L = 37;
            public static final int M = 38;
            public static final int N = 39;
            public static final int O = 40;
            public static final int P = 41;
            public static final int Q = 42;
            public static final int R = 43;
            public static final int S = 44;
            public static final int T = 45;
            public static final int U = 46;
            public static final int V = 47;
            public static final int W = 48;
            public static final int X = 49;
            public static final int Y = 50;
            public static final int Z = 51;

            /* renamed from: a, reason: collision with root package name */
            public static final int f719a = 0;
            public static final SparseIntArray aa = new SparseIntArray();
            public static final int b = 1;
            public static final int c = 2;
            public static final int d = 3;
            public static final int e = 4;
            public static final int f = 5;
            public static final int g = 6;
            public static final int h = 7;
            public static final int i = 8;
            public static final int j = 9;
            public static final int k = 10;
            public static final int l = 11;
            public static final int m = 12;
            public static final int n = 13;
            public static final int o = 14;
            public static final int p = 15;
            public static final int q = 16;
            public static final int r = 17;
            public static final int s = 18;
            public static final int t = 19;
            public static final int u = 20;
            public static final int v = 21;
            public static final int w = 22;
            public static final int x = 23;
            public static final int y = 24;
            public static final int z = 25;

            private C0051a() {
            }

            static {
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_constraintLeft_toLeftOf, 8);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_constraintLeft_toRightOf, 9);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_constraintRight_toLeftOf, 10);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_constraintRight_toRightOf, 11);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_constraintTop_toTopOf, 12);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_constraintTop_toBottomOf, 13);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_constraintBottom_toTopOf, 14);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_constraintBottom_toBottomOf, 15);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_constraintBaseline_toBaselineOf, 16);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_constraintCircle, 2);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_constraintCircleRadius, 3);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_constraintCircleAngle, 4);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_editor_absoluteX, 49);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_editor_absoluteY, 50);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_constraintGuide_begin, 5);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_constraintGuide_end, 6);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_constraintGuide_percent, 7);
                aa.append(m.C0052m.ConstraintLayout_Layout_android_orientation, 1);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_constraintStart_toEndOf, 17);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_constraintStart_toStartOf, 18);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_constraintEnd_toStartOf, 19);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_constraintEnd_toEndOf, 20);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_goneMarginLeft, 21);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_goneMarginTop, 22);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_goneMarginRight, 23);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_goneMarginBottom, 24);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_goneMarginStart, 25);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_goneMarginEnd, 26);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_constraintHorizontal_bias, 29);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_constraintVertical_bias, 30);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_constraintDimensionRatio, 44);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_constraintHorizontal_weight, 45);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_constraintVertical_weight, 46);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_constraintHorizontal_chainStyle, 47);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_constraintVertical_chainStyle, 48);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_constrainedWidth, 27);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_constrainedHeight, 28);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_constraintWidth_default, 31);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_constraintHeight_default, 32);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_constraintWidth_min, 33);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_constraintWidth_max, 34);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_constraintWidth_percent, 35);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_constraintHeight_min, 36);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_constraintHeight_max, 37);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_constraintHeight_percent, 38);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_constraintLeft_creator, 39);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_constraintTop_creator, 40);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_constraintRight_creator, 41);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_constraintBottom_creator, 42);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_constraintBaseline_creator, 43);
                aa.append(m.C0052m.ConstraintLayout_Layout_layout_constraintTag, 51);
            }
        }

        public a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            int i2;
            this.s = -1;
            this.t = -1;
            this.u = -1.0f;
            this.v = -1;
            this.w = -1;
            this.x = -1;
            this.y = -1;
            this.z = -1;
            this.A = -1;
            this.B = -1;
            this.C = -1;
            this.D = -1;
            this.E = -1;
            this.F = 0;
            this.G = 0.0f;
            this.H = -1;
            this.I = -1;
            this.J = -1;
            this.K = -1;
            this.L = -1;
            this.M = -1;
            this.N = -1;
            this.O = -1;
            this.P = -1;
            this.Q = -1;
            this.R = 0.5f;
            this.S = 0.5f;
            this.T = null;
            this.U = 0.0f;
            this.V = 1;
            this.W = -1.0f;
            this.X = -1.0f;
            this.Y = 0;
            this.Z = 0;
            this.aa = 0;
            this.ab = 0;
            this.ac = 0;
            this.ad = 0;
            this.ae = 0;
            this.af = 0;
            this.ag = 1.0f;
            this.ah = 1.0f;
            this.ai = -1;
            this.aj = -1;
            this.ak = -1;
            this.al = false;
            this.am = false;
            this.an = null;
            this.ao = d.b;
            this.ap = d.b;
            this.aq = false;
            this.ar = false;
            this.as = false;
            this.at = false;
            this.au = false;
            this.av = -1;
            this.aw = -1;
            this.ax = -1;
            this.ay = -1;
            this.az = -1;
            this.aA = -1;
            this.aB = 0.5f;
            this.aF = new androidx.d.c.b.e();
            this.aG = false;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, m.C0052m.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i3 = 0; i3 < indexCount; i3++) {
                int index = obtainStyledAttributes.getIndex(i3);
                switch (C0051a.aa.get(index)) {
                    case 1:
                        this.ak = obtainStyledAttributes.getInt(index, this.ak);
                        break;
                    case 2:
                        this.E = obtainStyledAttributes.getResourceId(index, this.E);
                        if (this.E == -1) {
                            this.E = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        this.F = obtainStyledAttributes.getDimensionPixelSize(index, this.F);
                        break;
                    case 4:
                        this.G = obtainStyledAttributes.getFloat(index, this.G) % 360.0f;
                        if (this.G < 0.0f) {
                            this.G = (360.0f - this.G) % 360.0f;
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        this.s = obtainStyledAttributes.getDimensionPixelOffset(index, this.s);
                        break;
                    case 6:
                        this.t = obtainStyledAttributes.getDimensionPixelOffset(index, this.t);
                        break;
                    case 7:
                        this.u = obtainStyledAttributes.getFloat(index, this.u);
                        break;
                    case 8:
                        this.v = obtainStyledAttributes.getResourceId(index, this.v);
                        if (this.v == -1) {
                            this.v = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        this.w = obtainStyledAttributes.getResourceId(index, this.w);
                        if (this.w == -1) {
                            this.w = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        this.x = obtainStyledAttributes.getResourceId(index, this.x);
                        if (this.x == -1) {
                            this.x = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        this.y = obtainStyledAttributes.getResourceId(index, this.y);
                        if (this.y == -1) {
                            this.y = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        this.z = obtainStyledAttributes.getResourceId(index, this.z);
                        if (this.z == -1) {
                            this.z = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        this.A = obtainStyledAttributes.getResourceId(index, this.A);
                        if (this.A == -1) {
                            this.A = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        this.B = obtainStyledAttributes.getResourceId(index, this.B);
                        if (this.B == -1) {
                            this.B = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        this.C = obtainStyledAttributes.getResourceId(index, this.C);
                        if (this.C == -1) {
                            this.C = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        this.D = obtainStyledAttributes.getResourceId(index, this.D);
                        if (this.D == -1) {
                            this.D = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        this.H = obtainStyledAttributes.getResourceId(index, this.H);
                        if (this.H == -1) {
                            this.H = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        this.I = obtainStyledAttributes.getResourceId(index, this.I);
                        if (this.I == -1) {
                            this.I = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 19:
                        this.J = obtainStyledAttributes.getResourceId(index, this.J);
                        if (this.J == -1) {
                            this.J = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 20:
                        this.K = obtainStyledAttributes.getResourceId(index, this.K);
                        if (this.K == -1) {
                            this.K = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 21:
                        this.L = obtainStyledAttributes.getDimensionPixelSize(index, this.L);
                        break;
                    case 22:
                        this.M = obtainStyledAttributes.getDimensionPixelSize(index, this.M);
                        break;
                    case 23:
                        this.N = obtainStyledAttributes.getDimensionPixelSize(index, this.N);
                        break;
                    case 24:
                        this.O = obtainStyledAttributes.getDimensionPixelSize(index, this.O);
                        break;
                    case 25:
                        this.P = obtainStyledAttributes.getDimensionPixelSize(index, this.P);
                        break;
                    case 26:
                        this.Q = obtainStyledAttributes.getDimensionPixelSize(index, this.Q);
                        break;
                    case 27:
                        this.al = obtainStyledAttributes.getBoolean(index, this.al);
                        break;
                    case 28:
                        this.am = obtainStyledAttributes.getBoolean(index, this.am);
                        break;
                    case 29:
                        this.R = obtainStyledAttributes.getFloat(index, this.R);
                        break;
                    case 30:
                        this.S = obtainStyledAttributes.getFloat(index, this.S);
                        break;
                    case 31:
                        this.aa = obtainStyledAttributes.getInt(index, 0);
                        if (this.aa == 1) {
                            Log.e(d.f716a, "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead.");
                            break;
                        } else {
                            break;
                        }
                    case 32:
                        this.ab = obtainStyledAttributes.getInt(index, 0);
                        if (this.ab == 1) {
                            Log.e(d.f716a, "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead.");
                            break;
                        } else {
                            break;
                        }
                    case 33:
                        try {
                            this.ac = obtainStyledAttributes.getDimensionPixelSize(index, this.ac);
                            break;
                        } catch (Exception unused) {
                            if (obtainStyledAttributes.getInt(index, this.ac) == -2) {
                                this.ac = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 34:
                        try {
                            this.ae = obtainStyledAttributes.getDimensionPixelSize(index, this.ae);
                            break;
                        } catch (Exception unused2) {
                            if (obtainStyledAttributes.getInt(index, this.ae) == -2) {
                                this.ae = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 35:
                        this.ag = Math.max(0.0f, obtainStyledAttributes.getFloat(index, this.ag));
                        this.aa = 2;
                        break;
                    case 36:
                        try {
                            this.ad = obtainStyledAttributes.getDimensionPixelSize(index, this.ad);
                            break;
                        } catch (Exception unused3) {
                            if (obtainStyledAttributes.getInt(index, this.ad) == -2) {
                                this.ad = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 37:
                        try {
                            this.af = obtainStyledAttributes.getDimensionPixelSize(index, this.af);
                            break;
                        } catch (Exception unused4) {
                            if (obtainStyledAttributes.getInt(index, this.af) == -2) {
                                this.af = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 38:
                        this.ah = Math.max(0.0f, obtainStyledAttributes.getFloat(index, this.ah));
                        this.ab = 2;
                        break;
                    case 44:
                        this.T = obtainStyledAttributes.getString(index);
                        this.U = Float.NaN;
                        this.V = -1;
                        if (this.T != null) {
                            int length = this.T.length();
                            int indexOf = this.T.indexOf(44);
                            if (indexOf <= 0 || indexOf >= length - 1) {
                                i2 = 0;
                            } else {
                                String substring = this.T.substring(0, indexOf);
                                if (substring.equalsIgnoreCase("W")) {
                                    this.V = 0;
                                } else if (substring.equalsIgnoreCase("H")) {
                                    this.V = 1;
                                }
                                i2 = indexOf + 1;
                            }
                            int indexOf2 = this.T.indexOf(58);
                            if (indexOf2 >= 0 && indexOf2 < length - 1) {
                                String substring2 = this.T.substring(i2, indexOf2);
                                String substring3 = this.T.substring(indexOf2 + 1);
                                if (substring2.length() > 0 && substring3.length() > 0) {
                                    try {
                                        float parseFloat = Float.parseFloat(substring2);
                                        float parseFloat2 = Float.parseFloat(substring3);
                                        if (parseFloat > 0.0f && parseFloat2 > 0.0f) {
                                            if (this.V == 1) {
                                                this.U = Math.abs(parseFloat2 / parseFloat);
                                                break;
                                            } else {
                                                this.U = Math.abs(parseFloat / parseFloat2);
                                                break;
                                            }
                                        }
                                    } catch (NumberFormatException unused5) {
                                        break;
                                    }
                                }
                            } else {
                                String substring4 = this.T.substring(i2);
                                if (substring4.length() > 0) {
                                    this.U = Float.parseFloat(substring4);
                                    break;
                                } else {
                                    break;
                                }
                            }
                        } else {
                            break;
                        }
                        break;
                    case 45:
                        this.W = obtainStyledAttributes.getFloat(index, this.W);
                        break;
                    case 46:
                        this.X = obtainStyledAttributes.getFloat(index, this.X);
                        break;
                    case 47:
                        this.Y = obtainStyledAttributes.getInt(index, 0);
                        break;
                    case 48:
                        this.Z = obtainStyledAttributes.getInt(index, 0);
                        break;
                    case 49:
                        this.ai = obtainStyledAttributes.getDimensionPixelOffset(index, this.ai);
                        break;
                    case 50:
                        this.aj = obtainStyledAttributes.getDimensionPixelOffset(index, this.aj);
                        break;
                    case 51:
                        this.an = obtainStyledAttributes.getString(index);
                        break;
                }
            }
            obtainStyledAttributes.recycle();
            c();
        }

        public void c() {
            this.ar = false;
            this.ao = d.b;
            this.ap = d.b;
            if (this.width == -2 && this.al) {
                this.ao = false;
                if (this.aa == 0) {
                    this.aa = 1;
                }
            }
            if (this.height == -2 && this.am) {
                this.ap = false;
                if (this.ab == 0) {
                    this.ab = 1;
                }
            }
            if (this.width == 0 || this.width == -1) {
                this.ao = false;
                if (this.width == 0 && this.aa == 1) {
                    this.width = -2;
                    this.al = d.b;
                }
            }
            if (this.height == 0 || this.height == -1) {
                this.ap = false;
                if (this.height == 0 && this.ab == 1) {
                    this.height = -2;
                    this.am = d.b;
                }
            }
            if (this.u == -1.0f && this.s == -1 && this.t == -1) {
                return;
            }
            this.ar = d.b;
            this.ao = d.b;
            this.ap = d.b;
            if (!(this.aF instanceof androidx.d.c.b.h)) {
                this.aF = new androidx.d.c.b.h();
            }
            ((androidx.d.c.b.h) this.aF).a(this.ak);
        }

        public a(int i2, int i3) {
            super(i2, i3);
            this.s = -1;
            this.t = -1;
            this.u = -1.0f;
            this.v = -1;
            this.w = -1;
            this.x = -1;
            this.y = -1;
            this.z = -1;
            this.A = -1;
            this.B = -1;
            this.C = -1;
            this.D = -1;
            this.E = -1;
            this.F = 0;
            this.G = 0.0f;
            this.H = -1;
            this.I = -1;
            this.J = -1;
            this.K = -1;
            this.L = -1;
            this.M = -1;
            this.N = -1;
            this.O = -1;
            this.P = -1;
            this.Q = -1;
            this.R = 0.5f;
            this.S = 0.5f;
            this.T = null;
            this.U = 0.0f;
            this.V = 1;
            this.W = -1.0f;
            this.X = -1.0f;
            this.Y = 0;
            this.Z = 0;
            this.aa = 0;
            this.ab = 0;
            this.ac = 0;
            this.ad = 0;
            this.ae = 0;
            this.af = 0;
            this.ag = 1.0f;
            this.ah = 1.0f;
            this.ai = -1;
            this.aj = -1;
            this.ak = -1;
            this.al = false;
            this.am = false;
            this.an = null;
            this.ao = d.b;
            this.ap = d.b;
            this.aq = false;
            this.ar = false;
            this.as = false;
            this.at = false;
            this.au = false;
            this.av = -1;
            this.aw = -1;
            this.ax = -1;
            this.ay = -1;
            this.az = -1;
            this.aA = -1;
            this.aB = 0.5f;
            this.aF = new androidx.d.c.b.e();
            this.aG = false;
        }

        public a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.s = -1;
            this.t = -1;
            this.u = -1.0f;
            this.v = -1;
            this.w = -1;
            this.x = -1;
            this.y = -1;
            this.z = -1;
            this.A = -1;
            this.B = -1;
            this.C = -1;
            this.D = -1;
            this.E = -1;
            this.F = 0;
            this.G = 0.0f;
            this.H = -1;
            this.I = -1;
            this.J = -1;
            this.K = -1;
            this.L = -1;
            this.M = -1;
            this.N = -1;
            this.O = -1;
            this.P = -1;
            this.Q = -1;
            this.R = 0.5f;
            this.S = 0.5f;
            this.T = null;
            this.U = 0.0f;
            this.V = 1;
            this.W = -1.0f;
            this.X = -1.0f;
            this.Y = 0;
            this.Z = 0;
            this.aa = 0;
            this.ab = 0;
            this.ac = 0;
            this.ad = 0;
            this.ae = 0;
            this.af = 0;
            this.ag = 1.0f;
            this.ah = 1.0f;
            this.ai = -1;
            this.aj = -1;
            this.ak = -1;
            this.al = false;
            this.am = false;
            this.an = null;
            this.ao = d.b;
            this.ap = d.b;
            this.aq = false;
            this.ar = false;
            this.as = false;
            this.at = false;
            this.au = false;
            this.av = -1;
            this.aw = -1;
            this.ax = -1;
            this.ay = -1;
            this.az = -1;
            this.aA = -1;
            this.aB = 0.5f;
            this.aF = new androidx.d.c.b.e();
            this.aG = false;
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0056  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x005f  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0068  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0070  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0078  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x008e  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x0098  */
        /* JADX WARN: Removed duplicated region for block: B:87:0x00b2  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x003f  */
        @Override // android.view.ViewGroup.MarginLayoutParams, android.view.ViewGroup.LayoutParams
        @TargetApi(17)
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void resolveLayoutDirection(int i2) {
            boolean z;
            int i3 = this.leftMargin;
            int i4 = this.rightMargin;
            boolean z2 = false;
            if (Build.VERSION.SDK_INT >= 17) {
                super.resolveLayoutDirection(i2);
                if (1 == getLayoutDirection()) {
                    z = true;
                    this.ax = -1;
                    this.ay = -1;
                    this.av = -1;
                    this.aw = -1;
                    this.az = -1;
                    this.aA = -1;
                    this.az = this.L;
                    this.aA = this.N;
                    this.aB = this.R;
                    this.aC = this.s;
                    this.aD = this.t;
                    this.aE = this.u;
                    if (!z) {
                        if (this.H != -1) {
                            this.ax = this.H;
                        } else {
                            if (this.I != -1) {
                                this.ay = this.I;
                            }
                            if (this.J != -1) {
                                this.aw = this.J;
                                z2 = true;
                            }
                            if (this.K != -1) {
                                this.av = this.K;
                                z2 = true;
                            }
                            if (this.P != -1) {
                                this.aA = this.P;
                            }
                            if (this.Q != -1) {
                                this.az = this.Q;
                            }
                            if (z2) {
                                this.aB = 1.0f - this.R;
                            }
                            if (this.ar && this.ak == 1) {
                                if (this.u == -1.0f) {
                                    this.aE = 1.0f - this.u;
                                    this.aC = -1;
                                    this.aD = -1;
                                } else if (this.s != -1) {
                                    this.aD = this.s;
                                    this.aC = -1;
                                    this.aE = -1.0f;
                                } else if (this.t != -1) {
                                    this.aC = this.t;
                                    this.aD = -1;
                                    this.aE = -1.0f;
                                }
                            }
                        }
                        z2 = true;
                        if (this.J != -1) {
                        }
                        if (this.K != -1) {
                        }
                        if (this.P != -1) {
                        }
                        if (this.Q != -1) {
                        }
                        if (z2) {
                        }
                        if (this.ar) {
                            if (this.u == -1.0f) {
                            }
                        }
                    } else {
                        if (this.H != -1) {
                            this.aw = this.H;
                        }
                        if (this.I != -1) {
                            this.av = this.I;
                        }
                        if (this.J != -1) {
                            this.ax = this.J;
                        }
                        if (this.K != -1) {
                            this.ay = this.K;
                        }
                        if (this.P != -1) {
                            this.az = this.P;
                        }
                        if (this.Q != -1) {
                            this.aA = this.Q;
                        }
                    }
                    if (this.J != -1 && this.K == -1 && this.I == -1 && this.H == -1) {
                        if (this.x != -1) {
                            this.ax = this.x;
                            if (this.rightMargin <= 0 && i4 > 0) {
                                this.rightMargin = i4;
                            }
                        } else if (this.y != -1) {
                            this.ay = this.y;
                            if (this.rightMargin <= 0 && i4 > 0) {
                                this.rightMargin = i4;
                            }
                        }
                        if (this.v != -1) {
                            this.av = this.v;
                            if (this.leftMargin > 0 || i3 <= 0) {
                                return;
                            }
                            this.leftMargin = i3;
                            return;
                        }
                        if (this.w != -1) {
                            this.aw = this.w;
                            if (this.leftMargin > 0 || i3 <= 0) {
                                return;
                            }
                            this.leftMargin = i3;
                            return;
                        }
                        return;
                    }
                    return;
                }
            }
            z = false;
            this.ax = -1;
            this.ay = -1;
            this.av = -1;
            this.aw = -1;
            this.az = -1;
            this.aA = -1;
            this.az = this.L;
            this.aA = this.N;
            this.aB = this.R;
            this.aC = this.s;
            this.aD = this.t;
            this.aE = this.u;
            if (!z) {
            }
            if (this.J != -1) {
            }
        }

        public String d() {
            return this.an;
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        c();
        super.requestLayout();
    }

    @Override // android.view.View
    public void forceLayout() {
        c();
        super.forceLayout();
    }

    private void c() {
        this.ae = b;
        this.o = -1;
        this.p = -1;
        this.ag = -1;
        this.ah = -1;
        this.ai = 0;
        this.aj = 0;
    }
}
