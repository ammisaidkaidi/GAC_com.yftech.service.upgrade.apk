package androidx.d.e;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.d.e.d;
import androidx.d.e.g;
import androidx.d.e.m;
import java.util.Arrays;
import java.util.HashMap;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class c extends View {

    /* renamed from: a, reason: collision with root package name */
    private View[] f715a;
    private HashMap<Integer, String> b;
    protected int[] p;
    protected int q;
    protected Context r;
    protected androidx.d.c.b.i s;
    protected boolean t;
    protected String u;
    protected String v;

    public void a(androidx.d.c.b.e eVar, boolean z) {
    }

    public void a(d dVar) {
    }

    public void b(d dVar) {
    }

    public void f(d dVar) {
    }

    public void g(d dVar) {
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
    }

    public c(Context context) {
        super(context);
        this.p = new int[32];
        this.t = false;
        this.f715a = null;
        this.b = new HashMap<>();
        this.r = context;
        a((AttributeSet) null);
    }

    public c(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.p = new int[32];
        this.t = false;
        this.f715a = null;
        this.b = new HashMap<>();
        this.r = context;
        a(attributeSet);
    }

    public c(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.p = new int[32];
        this.t = false;
        this.f715a = null;
        this.b = new HashMap<>();
        this.r = context;
        a(attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, m.C0052m.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == m.C0052m.ConstraintLayout_Layout_constraint_referenced_ids) {
                    this.u = obtainStyledAttributes.getString(index);
                    setIds(this.u);
                } else if (index == m.C0052m.ConstraintLayout_Layout_constraint_referenced_tags) {
                    this.v = obtainStyledAttributes.getString(index);
                    setReferenceTags(this.v);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.u != null) {
            setIds(this.u);
        }
        if (this.v != null) {
            setReferenceTags(this.v);
        }
    }

    public void a(View view) {
        if (view == this) {
            return;
        }
        if (view.getId() == -1) {
            Log.e("ConstraintHelper", "Views added to a ConstraintHelper need to have an id");
        } else {
            if (view.getParent() == null) {
                Log.e("ConstraintHelper", "Views added to a ConstraintHelper need to have a parent");
                return;
            }
            this.u = null;
            a(view.getId());
            requestLayout();
        }
    }

    public void b(View view) {
        int id = view.getId();
        if (id == -1) {
            return;
        }
        this.u = null;
        int i = 0;
        while (true) {
            if (i >= this.q) {
                break;
            }
            if (this.p[i] == id) {
                while (i < this.q - 1) {
                    int i2 = i + 1;
                    this.p[i] = this.p[i2];
                    i = i2;
                }
                this.p[this.q - 1] = 0;
                this.q--;
            } else {
                i++;
            }
        }
        requestLayout();
    }

    public int[] getReferencedIds() {
        return Arrays.copyOf(this.p, this.q);
    }

    public void setReferencedIds(int[] iArr) {
        this.u = null;
        this.q = 0;
        for (int i : iArr) {
            a(i);
        }
    }

    private void a(int i) {
        if (i == getId()) {
            return;
        }
        if (this.q + 1 > this.p.length) {
            this.p = Arrays.copyOf(this.p, this.p.length * 2);
        }
        this.p[this.q] = i;
        this.q++;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.t) {
            super.onMeasure(i, i2);
        } else {
            setMeasuredDimension(0, 0);
        }
    }

    public void c() {
        if (this.s == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof d.a) {
            ((d.a) layoutParams).aF = (androidx.d.c.b.e) this.s;
        }
    }

    private void a(String str) {
        if (str == null || str.length() == 0 || this.r == null) {
            return;
        }
        String trim = str.trim();
        if (getParent() instanceof d) {
        }
        int c = c(trim);
        if (c != 0) {
            this.b.put(Integer.valueOf(c), trim);
            a(c);
            return;
        }
        Log.w("ConstraintHelper", "Could not find id of \"" + trim + "\"");
    }

    private void b(String str) {
        if (str == null || str.length() == 0 || this.r == null) {
            return;
        }
        String trim = str.trim();
        d dVar = getParent() instanceof d ? (d) getParent() : null;
        if (dVar == null) {
            Log.w("ConstraintHelper", "Parent not a ConstraintLayout");
            return;
        }
        int childCount = dVar.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = dVar.getChildAt(i);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            if ((layoutParams instanceof d.a) && trim.equals(((d.a) layoutParams).an)) {
                if (childAt.getId() == -1) {
                    Log.w("ConstraintHelper", "to use ConstraintTag view " + childAt.getClass().getSimpleName() + " must have an ID");
                } else {
                    a(childAt.getId());
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int c(String str) {
        int i;
        d dVar = getParent() instanceof d ? (d) getParent() : null;
        int i2 = 0;
        if (isInEditMode() && dVar != null) {
            Object a2 = dVar.a(0, str);
            if (a2 instanceof Integer) {
                i2 = ((Integer) a2).intValue();
            }
        }
        if (i2 == 0 && dVar != null) {
            i2 = a(dVar, str);
        }
        if (i2 == 0) {
            try {
                i = m.g.class.getField(str).getInt(null);
            } catch (Exception unused) {
            }
            return i != 0 ? this.r.getResources().getIdentifier(str, "id", this.r.getPackageName()) : i;
        }
        i = i2;
        if (i != 0) {
        }
    }

    private int a(d dVar, String str) {
        Resources resources;
        if (str == null || dVar == null || (resources = this.r.getResources()) == null) {
            return 0;
        }
        int childCount = dVar.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = dVar.getChildAt(i);
            if (childAt.getId() != -1) {
                String str2 = null;
                try {
                    str2 = resources.getResourceEntryName(childAt.getId());
                } catch (Resources.NotFoundException unused) {
                }
                if (str.equals(str2)) {
                    return childAt.getId();
                }
            }
        }
        return 0;
    }

    protected void setIds(String str) {
        this.u = str;
        if (str == null) {
            return;
        }
        int i = 0;
        this.q = 0;
        while (true) {
            int indexOf = str.indexOf(44, i);
            if (indexOf == -1) {
                a(str.substring(i));
                return;
            } else {
                a(str.substring(i, indexOf));
                i = indexOf + 1;
            }
        }
    }

    protected void setReferenceTags(String str) {
        this.v = str;
        if (str == null) {
            return;
        }
        int i = 0;
        this.q = 0;
        while (true) {
            int indexOf = str.indexOf(44, i);
            if (indexOf == -1) {
                b(str.substring(i));
                return;
            } else {
                b(str.substring(i, indexOf));
                i = indexOf + 1;
            }
        }
    }

    protected void c(d dVar) {
        int visibility = getVisibility();
        float elevation = Build.VERSION.SDK_INT >= 21 ? getElevation() : 0.0f;
        for (int i = 0; i < this.q; i++) {
            View g = dVar.g(this.p[i]);
            if (g != null) {
                g.setVisibility(visibility);
                if (elevation > 0.0f && Build.VERSION.SDK_INT >= 21) {
                    g.setTranslationZ(g.getTranslationZ() + elevation);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void d() {
        ViewParent parent = getParent();
        if (parent == null || !(parent instanceof d)) {
            return;
        }
        c((d) parent);
    }

    public void d(d dVar) {
        String str;
        int a2;
        if (isInEditMode()) {
            setIds(this.u);
        }
        if (this.s == null) {
            return;
        }
        this.s.j();
        for (int i = 0; i < this.q; i++) {
            int i2 = this.p[i];
            View g = dVar.g(i2);
            if (g == null && (a2 = a(dVar, (str = this.b.get(Integer.valueOf(i2))))) != 0) {
                this.p[i] = a2;
                this.b.put(Integer.valueOf(a2), str);
                g = dVar.g(a2);
            }
            if (g != null) {
                this.s.a(dVar.a(g));
            }
        }
        this.s.a(dVar.ad);
    }

    public void a(androidx.d.c.b.f fVar, androidx.d.c.b.i iVar, SparseArray<androidx.d.c.b.e> sparseArray) {
        iVar.j();
        for (int i = 0; i < this.q; i++) {
            iVar.a(sparseArray.get(this.p[i]));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public View[] e(d dVar) {
        if (this.f715a == null || this.f715a.length != this.q) {
            this.f715a = new View[this.q];
        }
        for (int i = 0; i < this.q; i++) {
            this.f715a[i] = dVar.g(this.p[i]);
        }
        return this.f715a;
    }

    public void a(g.a aVar, androidx.d.c.b.j jVar, d.a aVar2, SparseArray<androidx.d.c.b.e> sparseArray) {
        if (aVar.d.af != null) {
            setReferencedIds(aVar.d.af);
        } else if (aVar.d.ag != null && aVar.d.ag.length() > 0) {
            aVar.d.af = a(this, aVar.d.ag);
        }
        jVar.j();
        if (aVar.d.af != null) {
            for (int i = 0; i < aVar.d.af.length; i++) {
                androidx.d.c.b.e eVar = sparseArray.get(aVar.d.af[i]);
                if (eVar != null) {
                    jVar.a(eVar);
                }
            }
        }
    }

    private int[] a(View view, String str) {
        String[] split = str.split(",");
        view.getContext();
        int[] iArr = new int[split.length];
        int i = 0;
        for (String str2 : split) {
            int c = c(str2.trim());
            if (c != 0) {
                iArr[i] = c;
                i++;
            }
        }
        return i != split.length ? Arrays.copyOf(iArr, i) : iArr;
    }

    @Override // android.view.View
    public void setTag(int i, Object obj) {
        super.setTag(i, obj);
        if (obj == null && this.u == null) {
            a(i);
        }
    }
}
