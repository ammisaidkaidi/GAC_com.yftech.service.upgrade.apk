package androidx.j;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Path;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.InflateException;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.ListView;
import androidx.annotation.ap;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.StringTokenizer;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class ag implements Cloneable {

    /* renamed from: a, reason: collision with root package name */
    private static final String f846a = "Transition";
    private static final int b = 1;
    static final boolean c = false;
    public static final int d = 1;
    public static final int e = 2;
    public static final int f = 3;
    public static final int g = 4;
    private static final int o = 4;
    private static final String p = "instance";
    private static final String q = "name";
    private static final String r = "id";
    private static final String s = "itemId";
    private ArrayList<an> K;
    private ArrayList<an> L;
    private c T;
    private androidx.c.a<String, String> U;
    ak n;
    private static final int[] t = {2, 1, 3, 4};
    private static final w u = new w() { // from class: androidx.j.ag.1
        @Override // androidx.j.w
        public Path a(float f2, float f3, float f4, float f5) {
            Path path = new Path();
            path.moveTo(f2, f3);
            path.lineTo(f4, f5);
            return path;
        }
    };
    private static ThreadLocal<androidx.c.a<Animator, a>> M = new ThreadLocal<>();
    private String v = getClass().getName();
    private long w = -1;
    long h = -1;
    private TimeInterpolator x = null;
    ArrayList<Integer> i = new ArrayList<>();
    ArrayList<View> j = new ArrayList<>();
    private ArrayList<String> y = null;
    private ArrayList<Class<?>> z = null;
    private ArrayList<Integer> A = null;
    private ArrayList<View> B = null;
    private ArrayList<Class<?>> C = null;
    private ArrayList<String> D = null;
    private ArrayList<Integer> E = null;
    private ArrayList<View> F = null;
    private ArrayList<Class<?>> G = null;
    private ao H = new ao();
    private ao I = new ao();
    al k = null;
    private int[] J = t;
    private ViewGroup N = null;
    boolean l = false;
    ArrayList<Animator> m = new ArrayList<>();
    private int O = 0;
    private boolean P = false;
    private boolean Q = false;
    private ArrayList<e> R = null;
    private ArrayList<Animator> S = new ArrayList<>();
    private w V = u;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class c {
        public abstract Rect a(@androidx.annotation.ah ag agVar);
    }

    @Retention(RetentionPolicy.SOURCE)
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface d {
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface e {
        void a(@androidx.annotation.ah ag agVar);

        void b(@androidx.annotation.ah ag agVar);

        void c(@androidx.annotation.ah ag agVar);

        void d(@androidx.annotation.ah ag agVar);

        void e(@androidx.annotation.ah ag agVar);
    }

    private static boolean a(int i) {
        return i >= 1 && i <= 4;
    }

    @androidx.annotation.ai
    public Animator a(@androidx.annotation.ah ViewGroup viewGroup, @androidx.annotation.ai an anVar, @androidx.annotation.ai an anVar2) {
        return null;
    }

    public abstract void a(@androidx.annotation.ah an anVar);

    @androidx.annotation.ai
    public String[] a() {
        return null;
    }

    public abstract void b(@androidx.annotation.ah an anVar);

    public ag() {
    }

    @SuppressLint({"RestrictedApi"})
    public ag(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, af.c);
        XmlResourceParser xmlResourceParser = (XmlResourceParser) attributeSet;
        long a2 = androidx.core.b.b.h.a(obtainStyledAttributes, (XmlPullParser) xmlResourceParser, "duration", 1, -1);
        if (a2 >= 0) {
            a(a2);
        }
        long a3 = androidx.core.b.b.h.a(obtainStyledAttributes, (XmlPullParser) xmlResourceParser, "startDelay", 2, -1);
        if (a3 > 0) {
            b(a3);
        }
        int c2 = androidx.core.b.b.h.c(obtainStyledAttributes, xmlResourceParser, "interpolator", 0, 0);
        if (c2 > 0) {
            a(AnimationUtils.loadInterpolator(context, c2));
        }
        String a4 = androidx.core.b.b.h.a(obtainStyledAttributes, xmlResourceParser, "matchOrder", 3);
        if (a4 != null) {
            a(d(a4));
        }
        obtainStyledAttributes.recycle();
    }

    private static int[] d(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, ",");
        int[] iArr = new int[stringTokenizer.countTokens()];
        int i = 0;
        while (stringTokenizer.hasMoreTokens()) {
            String trim = stringTokenizer.nextToken().trim();
            if (r.equalsIgnoreCase(trim)) {
                iArr[i] = 3;
            } else if (p.equalsIgnoreCase(trim)) {
                iArr[i] = 1;
            } else if (q.equalsIgnoreCase(trim)) {
                iArr[i] = 2;
            } else if (s.equalsIgnoreCase(trim)) {
                iArr[i] = 4;
            } else if (trim.isEmpty()) {
                int[] iArr2 = new int[iArr.length - 1];
                System.arraycopy(iArr, 0, iArr2, 0, i);
                i--;
                iArr = iArr2;
            } else {
                throw new InflateException("Unknown match type in matchOrder: '" + trim + "'");
            }
            i++;
        }
        return iArr;
    }

    @androidx.annotation.ah
    public ag a(long j) {
        this.h = j;
        return this;
    }

    public long d() {
        return this.h;
    }

    @androidx.annotation.ah
    public ag b(long j) {
        this.w = j;
        return this;
    }

    public long e() {
        return this.w;
    }

    @androidx.annotation.ah
    public ag a(@androidx.annotation.ai TimeInterpolator timeInterpolator) {
        this.x = timeInterpolator;
        return this;
    }

    @androidx.annotation.ai
    public TimeInterpolator f() {
        return this.x;
    }

    public void a(int... iArr) {
        if (iArr == null || iArr.length == 0) {
            this.J = t;
            return;
        }
        for (int i = 0; i < iArr.length; i++) {
            if (!a(iArr[i])) {
                throw new IllegalArgumentException("matches contains invalid value");
            }
            if (a(iArr, i)) {
                throw new IllegalArgumentException("matches contains a duplicate value");
            }
        }
        this.J = (int[]) iArr.clone();
    }

    private static boolean a(int[] iArr, int i) {
        int i2 = iArr[i];
        for (int i3 = 0; i3 < i; i3++) {
            if (iArr[i3] == i2) {
                return true;
            }
        }
        return false;
    }

    private void a(androidx.c.a<View, an> aVar, androidx.c.a<View, an> aVar2) {
        an remove;
        for (int size = aVar.size() - 1; size >= 0; size--) {
            View b2 = aVar.b(size);
            if (b2 != null && b(b2) && (remove = aVar2.remove(b2)) != null && b(remove.b)) {
                this.K.add(aVar.d(size));
                this.L.add(remove);
            }
        }
    }

    private void a(androidx.c.a<View, an> aVar, androidx.c.a<View, an> aVar2, androidx.c.f<View> fVar, androidx.c.f<View> fVar2) {
        View a2;
        int b2 = fVar.b();
        for (int i = 0; i < b2; i++) {
            View c2 = fVar.c(i);
            if (c2 != null && b(c2) && (a2 = fVar2.a(fVar.b(i))) != null && b(a2)) {
                an anVar = aVar.get(c2);
                an anVar2 = aVar2.get(a2);
                if (anVar != null && anVar2 != null) {
                    this.K.add(anVar);
                    this.L.add(anVar2);
                    aVar.remove(c2);
                    aVar2.remove(a2);
                }
            }
        }
    }

    private void a(androidx.c.a<View, an> aVar, androidx.c.a<View, an> aVar2, SparseArray<View> sparseArray, SparseArray<View> sparseArray2) {
        View view;
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            View valueAt = sparseArray.valueAt(i);
            if (valueAt != null && b(valueAt) && (view = sparseArray2.get(sparseArray.keyAt(i))) != null && b(view)) {
                an anVar = aVar.get(valueAt);
                an anVar2 = aVar2.get(view);
                if (anVar != null && anVar2 != null) {
                    this.K.add(anVar);
                    this.L.add(anVar2);
                    aVar.remove(valueAt);
                    aVar2.remove(view);
                }
            }
        }
    }

    private void a(androidx.c.a<View, an> aVar, androidx.c.a<View, an> aVar2, androidx.c.a<String, View> aVar3, androidx.c.a<String, View> aVar4) {
        View view;
        int size = aVar3.size();
        for (int i = 0; i < size; i++) {
            View c2 = aVar3.c(i);
            if (c2 != null && b(c2) && (view = aVar4.get(aVar3.b(i))) != null && b(view)) {
                an anVar = aVar.get(c2);
                an anVar2 = aVar2.get(view);
                if (anVar != null && anVar2 != null) {
                    this.K.add(anVar);
                    this.L.add(anVar2);
                    aVar.remove(c2);
                    aVar2.remove(view);
                }
            }
        }
    }

    private void b(androidx.c.a<View, an> aVar, androidx.c.a<View, an> aVar2) {
        for (int i = 0; i < aVar.size(); i++) {
            an c2 = aVar.c(i);
            if (b(c2.b)) {
                this.K.add(c2);
                this.L.add(null);
            }
        }
        for (int i2 = 0; i2 < aVar2.size(); i2++) {
            an c3 = aVar2.c(i2);
            if (b(c3.b)) {
                this.L.add(c3);
                this.K.add(null);
            }
        }
    }

    private void a(ao aoVar, ao aoVar2) {
        androidx.c.a<View, an> aVar = new androidx.c.a<>(aoVar.f860a);
        androidx.c.a<View, an> aVar2 = new androidx.c.a<>(aoVar2.f860a);
        for (int i = 0; i < this.J.length; i++) {
            switch (this.J[i]) {
                case 1:
                    a(aVar, aVar2);
                    break;
                case 2:
                    a(aVar, aVar2, aoVar.d, aoVar2.d);
                    break;
                case 3:
                    a(aVar, aVar2, aoVar.b, aoVar2.b);
                    break;
                case 4:
                    a(aVar, aVar2, aoVar.c, aoVar2.c);
                    break;
            }
        }
        b(aVar, aVar2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void a(ViewGroup viewGroup, ao aoVar, ao aoVar2, ArrayList<an> arrayList, ArrayList<an> arrayList2) {
        Animator a2;
        int i;
        int i2;
        View view;
        Animator animator;
        an anVar;
        Animator animator2;
        an anVar2;
        androidx.c.a<Animator, a> b2 = b();
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = arrayList.size();
        long j = Long.MAX_VALUE;
        int i3 = 0;
        while (i3 < size) {
            an anVar3 = arrayList.get(i3);
            an anVar4 = arrayList2.get(i3);
            if (anVar3 != null && !anVar3.c.contains(this)) {
                anVar3 = null;
            }
            if (anVar4 != null && !anVar4.c.contains(this)) {
                anVar4 = null;
            }
            if (anVar3 != null || anVar4 != null) {
                if ((anVar3 == null || anVar4 == null || a(anVar3, anVar4)) && (a2 = a(viewGroup, anVar3, anVar4)) != null) {
                    if (anVar4 != null) {
                        view = anVar4.b;
                        String[] a3 = a();
                        if (a3 != null && a3.length > 0) {
                            anVar2 = new an(view);
                            i = size;
                            an anVar5 = aoVar2.f860a.get(view);
                            if (anVar5 != null) {
                                int i4 = 0;
                                while (i4 < a3.length) {
                                    anVar2.f859a.put(a3[i4], anVar5.f859a.get(a3[i4]));
                                    i4++;
                                    i3 = i3;
                                    anVar5 = anVar5;
                                }
                            }
                            i2 = i3;
                            int size2 = b2.size();
                            int i5 = 0;
                            while (true) {
                                if (i5 >= size2) {
                                    animator2 = a2;
                                    break;
                                }
                                a aVar = b2.get(b2.b(i5));
                                if (aVar.c != null && aVar.f849a == view && aVar.b.equals(t()) && aVar.c.equals(anVar2)) {
                                    animator2 = null;
                                    break;
                                }
                                i5++;
                            }
                        } else {
                            i = size;
                            i2 = i3;
                            animator2 = a2;
                            anVar2 = null;
                        }
                        animator = animator2;
                        anVar = anVar2;
                    } else {
                        i = size;
                        i2 = i3;
                        view = anVar3.b;
                        animator = a2;
                        anVar = null;
                    }
                    if (animator != null) {
                        if (this.n != null) {
                            long a4 = this.n.a(viewGroup, this, anVar3, anVar4);
                            sparseIntArray.put(this.S.size(), (int) a4);
                            j = Math.min(a4, j);
                        }
                        b2.put(animator, new a(view, t(), this, ay.b(viewGroup), anVar));
                        this.S.add(animator);
                        j = j;
                    }
                    i3 = i2 + 1;
                    size = i;
                }
            }
            i = size;
            i2 = i3;
            i3 = i2 + 1;
            size = i;
        }
        if (sparseIntArray.size() != 0) {
            for (int i6 = 0; i6 < sparseIntArray.size(); i6++) {
                Animator animator3 = this.S.get(sparseIntArray.keyAt(i6));
                animator3.setStartDelay((sparseIntArray.valueAt(i6) - j) + animator3.getStartDelay());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(View view) {
        int id = view.getId();
        if (this.A != null && this.A.contains(Integer.valueOf(id))) {
            return false;
        }
        if (this.B != null && this.B.contains(view)) {
            return false;
        }
        if (this.C != null) {
            int size = this.C.size();
            for (int i = 0; i < size; i++) {
                if (this.C.get(i).isInstance(view)) {
                    return false;
                }
            }
        }
        if (this.D != null && androidx.core.n.af.R(view) != null && this.D.contains(androidx.core.n.af.R(view))) {
            return false;
        }
        if ((this.i.size() == 0 && this.j.size() == 0 && ((this.z == null || this.z.isEmpty()) && (this.y == null || this.y.isEmpty()))) || this.i.contains(Integer.valueOf(id)) || this.j.contains(view)) {
            return true;
        }
        if (this.y != null && this.y.contains(androidx.core.n.af.R(view))) {
            return true;
        }
        if (this.z != null) {
            for (int i2 = 0; i2 < this.z.size(); i2++) {
                if (this.z.get(i2).isInstance(view)) {
                    return true;
                }
            }
        }
        return false;
    }

    private static androidx.c.a<Animator, a> b() {
        androidx.c.a<Animator, a> aVar = M.get();
        if (aVar != null) {
            return aVar;
        }
        androidx.c.a<Animator, a> aVar2 = new androidx.c.a<>();
        M.set(aVar2);
        return aVar2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void g() {
        l();
        androidx.c.a<Animator, a> b2 = b();
        Iterator<Animator> it = this.S.iterator();
        while (it.hasNext()) {
            Animator next = it.next();
            if (b2.containsKey(next)) {
                l();
                a(next, b2);
            }
        }
        this.S.clear();
        m();
    }

    private void a(Animator animator, final androidx.c.a<Animator, a> aVar) {
        if (animator != null) {
            animator.addListener(new AnimatorListenerAdapter() { // from class: androidx.j.ag.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator2) {
                    ag.this.m.add(animator2);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator2) {
                    aVar.remove(animator2);
                    ag.this.m.remove(animator2);
                }
            });
            a(animator);
        }
    }

    @androidx.annotation.ah
    public ag c(@androidx.annotation.ah View view) {
        this.j.add(view);
        return this;
    }

    @androidx.annotation.ah
    public ag b(@androidx.annotation.w int i) {
        if (i != 0) {
            this.i.add(Integer.valueOf(i));
        }
        return this;
    }

    @androidx.annotation.ah
    public ag a(@androidx.annotation.ah String str) {
        if (this.y == null) {
            this.y = new ArrayList<>();
        }
        this.y.add(str);
        return this;
    }

    @androidx.annotation.ah
    public ag a(@androidx.annotation.ah Class<?> cls) {
        if (this.z == null) {
            this.z = new ArrayList<>();
        }
        this.z.add(cls);
        return this;
    }

    @androidx.annotation.ah
    public ag d(@androidx.annotation.ah View view) {
        this.j.remove(view);
        return this;
    }

    @androidx.annotation.ah
    public ag c(@androidx.annotation.w int i) {
        if (i != 0) {
            this.i.remove(Integer.valueOf(i));
        }
        return this;
    }

    @androidx.annotation.ah
    public ag b(@androidx.annotation.ah String str) {
        if (this.y != null) {
            this.y.remove(str);
        }
        return this;
    }

    @androidx.annotation.ah
    public ag b(@androidx.annotation.ah Class<?> cls) {
        if (this.z != null) {
            this.z.remove(cls);
        }
        return this;
    }

    private static <T> ArrayList<T> a(ArrayList<T> arrayList, T t2, boolean z) {
        if (t2 == null) {
            return arrayList;
        }
        if (z) {
            return b.a(arrayList, t2);
        }
        return b.b(arrayList, t2);
    }

    @androidx.annotation.ah
    public ag a(@androidx.annotation.ah View view, boolean z) {
        this.B = a(this.B, view, z);
        return this;
    }

    @androidx.annotation.ah
    public ag a(@androidx.annotation.w int i, boolean z) {
        this.A = a(this.A, i, z);
        return this;
    }

    @androidx.annotation.ah
    public ag a(@androidx.annotation.ah String str, boolean z) {
        this.D = a(this.D, str, z);
        return this;
    }

    @androidx.annotation.ah
    public ag b(@androidx.annotation.ah View view, boolean z) {
        this.F = a(this.F, view, z);
        return this;
    }

    @androidx.annotation.ah
    public ag b(@androidx.annotation.w int i, boolean z) {
        this.E = a(this.E, i, z);
        return this;
    }

    private ArrayList<Integer> a(ArrayList<Integer> arrayList, int i, boolean z) {
        if (i <= 0) {
            return arrayList;
        }
        if (z) {
            return b.a(arrayList, Integer.valueOf(i));
        }
        return b.b(arrayList, Integer.valueOf(i));
    }

    private ArrayList<View> a(ArrayList<View> arrayList, View view, boolean z) {
        if (view == null) {
            return arrayList;
        }
        if (z) {
            return b.a(arrayList, view);
        }
        return b.b(arrayList, view);
    }

    @androidx.annotation.ah
    public ag a(@androidx.annotation.ah Class<?> cls, boolean z) {
        this.C = a(this.C, cls, z);
        return this;
    }

    @androidx.annotation.ah
    public ag b(@androidx.annotation.ah Class<?> cls, boolean z) {
        this.G = a(this.G, cls, z);
        return this;
    }

    private ArrayList<Class<?>> a(ArrayList<Class<?>> arrayList, Class<?> cls, boolean z) {
        if (cls == null) {
            return arrayList;
        }
        if (z) {
            return b.a(arrayList, cls);
        }
        return b.b(arrayList, cls);
    }

    @androidx.annotation.ah
    public List<Integer> h() {
        return this.i;
    }

    @androidx.annotation.ah
    public List<View> i() {
        return this.j;
    }

    @androidx.annotation.ai
    public List<String> j() {
        return this.y;
    }

    @androidx.annotation.ai
    public List<Class<?>> k() {
        return this.z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(ViewGroup viewGroup, boolean z) {
        c(z);
        if ((this.i.size() > 0 || this.j.size() > 0) && ((this.y == null || this.y.isEmpty()) && (this.z == null || this.z.isEmpty()))) {
            for (int i = 0; i < this.i.size(); i++) {
                View findViewById = viewGroup.findViewById(this.i.get(i).intValue());
                if (findViewById != null) {
                    an anVar = new an(findViewById);
                    if (z) {
                        a(anVar);
                    } else {
                        b(anVar);
                    }
                    anVar.c.add(this);
                    c(anVar);
                    if (z) {
                        a(this.H, findViewById, anVar);
                    } else {
                        a(this.I, findViewById, anVar);
                    }
                }
            }
            for (int i2 = 0; i2 < this.j.size(); i2++) {
                View view = this.j.get(i2);
                an anVar2 = new an(view);
                if (z) {
                    a(anVar2);
                } else {
                    b(anVar2);
                }
                anVar2.c.add(this);
                c(anVar2);
                if (z) {
                    a(this.H, view, anVar2);
                } else {
                    a(this.I, view, anVar2);
                }
            }
        } else {
            e(viewGroup, z);
        }
        if (z || this.U == null) {
            return;
        }
        int size = this.U.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i3 = 0; i3 < size; i3++) {
            arrayList.add(this.H.d.remove(this.U.b(i3)));
        }
        for (int i4 = 0; i4 < size; i4++) {
            View view2 = (View) arrayList.get(i4);
            if (view2 != null) {
                this.H.d.put(this.U.c(i4), view2);
            }
        }
    }

    private static void a(ao aoVar, View view, an anVar) {
        aoVar.f860a.put(view, anVar);
        int id = view.getId();
        if (id >= 0) {
            if (aoVar.b.indexOfKey(id) >= 0) {
                aoVar.b.put(id, null);
            } else {
                aoVar.b.put(id, view);
            }
        }
        String R = androidx.core.n.af.R(view);
        if (R != null) {
            if (aoVar.d.containsKey(R)) {
                aoVar.d.put(R, null);
            } else {
                aoVar.d.put(R, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                if (aoVar.c.d(itemIdAtPosition) >= 0) {
                    View a2 = aoVar.c.a(itemIdAtPosition);
                    if (a2 != null) {
                        androidx.core.n.af.a(a2, false);
                        aoVar.c.d(itemIdAtPosition, null);
                        return;
                    }
                    return;
                }
                androidx.core.n.af.a(view, true);
                aoVar.c.d(itemIdAtPosition, view);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(boolean z) {
        if (z) {
            this.H.f860a.clear();
            this.H.b.clear();
            this.H.c.d();
        } else {
            this.I.f860a.clear();
            this.I.b.clear();
            this.I.c.d();
        }
    }

    private void e(View view, boolean z) {
        if (view == null) {
            return;
        }
        int id = view.getId();
        if (this.A == null || !this.A.contains(Integer.valueOf(id))) {
            if (this.B == null || !this.B.contains(view)) {
                if (this.C != null) {
                    int size = this.C.size();
                    for (int i = 0; i < size; i++) {
                        if (this.C.get(i).isInstance(view)) {
                            return;
                        }
                    }
                }
                if (view.getParent() instanceof ViewGroup) {
                    an anVar = new an(view);
                    if (z) {
                        a(anVar);
                    } else {
                        b(anVar);
                    }
                    anVar.c.add(this);
                    c(anVar);
                    if (z) {
                        a(this.H, view, anVar);
                    } else {
                        a(this.I, view, anVar);
                    }
                }
                if (view instanceof ViewGroup) {
                    if (this.E == null || !this.E.contains(Integer.valueOf(id))) {
                        if (this.F == null || !this.F.contains(view)) {
                            if (this.G != null) {
                                int size2 = this.G.size();
                                for (int i2 = 0; i2 < size2; i2++) {
                                    if (this.G.get(i2).isInstance(view)) {
                                        return;
                                    }
                                }
                            }
                            ViewGroup viewGroup = (ViewGroup) view;
                            for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
                                e(viewGroup.getChildAt(i3), z);
                            }
                        }
                    }
                }
            }
        }
    }

    @androidx.annotation.ai
    public an c(@androidx.annotation.ah View view, boolean z) {
        if (this.k != null) {
            return this.k.c(view, z);
        }
        return (z ? this.H : this.I).f860a.get(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public an d(View view, boolean z) {
        if (this.k != null) {
            return this.k.d(view, z);
        }
        ArrayList<an> arrayList = z ? this.K : this.L;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        int i = -1;
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                break;
            }
            an anVar = arrayList.get(i2);
            if (anVar == null) {
                return null;
            }
            if (anVar.b == view) {
                i = i2;
                break;
            }
            i2++;
        }
        if (i >= 0) {
            return (z ? this.L : this.K).get(i);
        }
        return null;
    }

    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void e(View view) {
        if (this.Q) {
            return;
        }
        androidx.c.a<Animator, a> b2 = b();
        int size = b2.size();
        bj b3 = ay.b(view);
        for (int i = size - 1; i >= 0; i--) {
            a c2 = b2.c(i);
            if (c2.f849a != null && b3.equals(c2.d)) {
                androidx.j.a.a(b2.b(i));
            }
        }
        if (this.R != null && this.R.size() > 0) {
            ArrayList arrayList = (ArrayList) this.R.clone();
            int size2 = arrayList.size();
            for (int i2 = 0; i2 < size2; i2++) {
                ((e) arrayList.get(i2)).c(this);
            }
        }
        this.P = true;
    }

    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void f(View view) {
        if (this.P) {
            if (!this.Q) {
                androidx.c.a<Animator, a> b2 = b();
                int size = b2.size();
                bj b3 = ay.b(view);
                for (int i = size - 1; i >= 0; i--) {
                    a c2 = b2.c(i);
                    if (c2.f849a != null && b3.equals(c2.d)) {
                        androidx.j.a.b(b2.b(i));
                    }
                }
                if (this.R != null && this.R.size() > 0) {
                    ArrayList arrayList = (ArrayList) this.R.clone();
                    int size2 = arrayList.size();
                    for (int i2 = 0; i2 < size2; i2++) {
                        ((e) arrayList.get(i2)).d(this);
                    }
                }
            }
            this.P = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(ViewGroup viewGroup) {
        a aVar;
        this.K = new ArrayList<>();
        this.L = new ArrayList<>();
        a(this.H, this.I);
        androidx.c.a<Animator, a> b2 = b();
        int size = b2.size();
        bj b3 = ay.b(viewGroup);
        for (int i = size - 1; i >= 0; i--) {
            Animator b4 = b2.b(i);
            if (b4 != null && (aVar = b2.get(b4)) != null && aVar.f849a != null && b3.equals(aVar.d)) {
                an anVar = aVar.c;
                View view = aVar.f849a;
                an c2 = c(view, true);
                an d2 = d(view, true);
                if (c2 == null && d2 == null) {
                    d2 = this.I.f860a.get(view);
                }
                if (!(c2 == null && d2 == null) && aVar.e.a(anVar, d2)) {
                    if (b4.isRunning() || b4.isStarted()) {
                        b4.cancel();
                    } else {
                        b2.remove(b4);
                    }
                }
            }
        }
        a(viewGroup, this.H, this.I, this.K, this.L);
        g();
    }

    public boolean a(@androidx.annotation.ai an anVar, @androidx.annotation.ai an anVar2) {
        if (anVar == null || anVar2 == null) {
            return false;
        }
        String[] a2 = a();
        if (a2 != null) {
            for (String str : a2) {
                if (!a(anVar, anVar2, str)) {
                }
            }
            return false;
        }
        Iterator<String> it = anVar.f859a.keySet().iterator();
        while (it.hasNext()) {
            if (a(anVar, anVar2, it.next())) {
            }
        }
        return false;
        return true;
    }

    private static boolean a(an anVar, an anVar2, String str) {
        Object obj = anVar.f859a.get(str);
        Object obj2 = anVar2.f859a.get(str);
        if (obj == null && obj2 == null) {
            return false;
        }
        if (obj == null || obj2 == null) {
            return true;
        }
        return true ^ obj.equals(obj2);
    }

    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    protected void a(Animator animator) {
        if (animator == null) {
            m();
            return;
        }
        if (d() >= 0) {
            animator.setDuration(d());
        }
        if (e() >= 0) {
            animator.setStartDelay(e() + animator.getStartDelay());
        }
        if (f() != null) {
            animator.setInterpolator(f());
        }
        animator.addListener(new AnimatorListenerAdapter() { // from class: androidx.j.ag.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
                ag.this.m();
                animator2.removeListener(this);
            }
        });
        animator.start();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void l() {
        if (this.O == 0) {
            if (this.R != null && this.R.size() > 0) {
                ArrayList arrayList = (ArrayList) this.R.clone();
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    ((e) arrayList.get(i)).e(this);
                }
            }
            this.Q = false;
        }
        this.O++;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void m() {
        this.O--;
        if (this.O == 0) {
            if (this.R != null && this.R.size() > 0) {
                ArrayList arrayList = (ArrayList) this.R.clone();
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    ((e) arrayList.get(i)).b(this);
                }
            }
            for (int i2 = 0; i2 < this.H.c.b(); i2++) {
                View c2 = this.H.c.c(i2);
                if (c2 != null) {
                    androidx.core.n.af.a(c2, false);
                }
            }
            for (int i3 = 0; i3 < this.I.c.b(); i3++) {
                View c3 = this.I.c.c(i3);
                if (c3 != null) {
                    androidx.core.n.af.a(c3, false);
                }
            }
            this.Q = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void b(ViewGroup viewGroup) {
        androidx.c.a<Animator, a> b2 = b();
        int size = b2.size();
        if (viewGroup == null || size == 0) {
            return;
        }
        bj b3 = ay.b(viewGroup);
        androidx.c.a aVar = new androidx.c.a(b2);
        b2.clear();
        for (int i = size - 1; i >= 0; i--) {
            a aVar2 = (a) aVar.c(i);
            if (aVar2.f849a != null && b3 != null && b3.equals(aVar2.d)) {
                ((Animator) aVar.b(i)).end();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void n() {
        for (int size = this.m.size() - 1; size >= 0; size--) {
            this.m.get(size).cancel();
        }
        if (this.R == null || this.R.size() <= 0) {
            return;
        }
        ArrayList arrayList = (ArrayList) this.R.clone();
        int size2 = arrayList.size();
        for (int i = 0; i < size2; i++) {
            ((e) arrayList.get(i)).a(this);
        }
    }

    @androidx.annotation.ah
    public ag a(@androidx.annotation.ah e eVar) {
        if (this.R == null) {
            this.R = new ArrayList<>();
        }
        this.R.add(eVar);
        return this;
    }

    @androidx.annotation.ah
    public ag b(@androidx.annotation.ah e eVar) {
        if (this.R == null) {
            return this;
        }
        this.R.remove(eVar);
        if (this.R.size() == 0) {
            this.R = null;
        }
        return this;
    }

    public void a(@androidx.annotation.ai w wVar) {
        if (wVar == null) {
            this.V = u;
        } else {
            this.V = wVar;
        }
    }

    @androidx.annotation.ah
    public w o() {
        return this.V;
    }

    public void a(@androidx.annotation.ai c cVar) {
        this.T = cVar;
    }

    @androidx.annotation.ai
    public c p() {
        return this.T;
    }

    @androidx.annotation.ai
    public Rect q() {
        if (this.T == null) {
            return null;
        }
        return this.T.a(this);
    }

    public void a(@androidx.annotation.ai ak akVar) {
        this.n = akVar;
    }

    @androidx.annotation.ai
    public ak r() {
        return this.n;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(an anVar) {
        String[] a2;
        if (this.n == null || anVar.f859a.isEmpty() || (a2 = this.n.a()) == null) {
            return;
        }
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= a2.length) {
                z = true;
                break;
            } else if (!anVar.f859a.containsKey(a2[i])) {
                break;
            } else {
                i++;
            }
        }
        if (z) {
            return;
        }
        this.n.a(anVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ag c(ViewGroup viewGroup) {
        this.N = viewGroup;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(boolean z) {
        this.l = z;
    }

    public String toString() {
        return c(com.yftech.service.upgrade.a.d);
    }

    @Override // 
    /* renamed from: s, reason: merged with bridge method [inline-methods] */
    public ag clone() {
        try {
            ag agVar = (ag) super.clone();
            agVar.S = new ArrayList<>();
            agVar.H = new ao();
            agVar.I = new ao();
            agVar.K = null;
            agVar.L = null;
            return agVar;
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    @androidx.annotation.ah
    public String t() {
        return this.v;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String c(String str) {
        String str2 = str + getClass().getSimpleName() + "@" + Integer.toHexString(hashCode()) + ": ";
        if (this.h != -1) {
            str2 = str2 + "dur(" + this.h + ") ";
        }
        if (this.w != -1) {
            str2 = str2 + "dly(" + this.w + ") ";
        }
        if (this.x != null) {
            str2 = str2 + "interp(" + this.x + ") ";
        }
        if (this.i.size() <= 0 && this.j.size() <= 0) {
            return str2;
        }
        String str3 = str2 + "tgts(";
        if (this.i.size() > 0) {
            String str4 = str3;
            for (int i = 0; i < this.i.size(); i++) {
                if (i > 0) {
                    str4 = str4 + ", ";
                }
                str4 = str4 + this.i.get(i);
            }
            str3 = str4;
        }
        if (this.j.size() > 0) {
            for (int i2 = 0; i2 < this.j.size(); i2++) {
                if (i2 > 0) {
                    str3 = str3 + ", ";
                }
                str3 = str3 + this.j.get(i2);
            }
        }
        return str3 + ")";
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        View f849a;
        String b;
        an c;
        bj d;
        ag e;

        a(View view, String str, ag agVar, bj bjVar, an anVar) {
            this.f849a = view;
            this.b = str;
            this.c = anVar;
            this.d = bjVar;
            this.e = agVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class b {
        private b() {
        }

        static <T> ArrayList<T> a(ArrayList<T> arrayList, T t) {
            if (arrayList == null) {
                arrayList = new ArrayList<>();
            }
            if (!arrayList.contains(t)) {
                arrayList.add(t);
            }
            return arrayList;
        }

        static <T> ArrayList<T> b(ArrayList<T> arrayList, T t) {
            if (arrayList == null) {
                return arrayList;
            }
            arrayList.remove(t);
            if (arrayList.isEmpty()) {
                return null;
            }
            return arrayList;
        }
    }
}
