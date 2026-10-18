package androidx.fragment.app;

import android.graphics.Rect;
import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.n.af;
import androidx.core.n.z;
import androidx.fragment.app.s;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public class t {

    /* renamed from: a, reason: collision with root package name */
    private static final int[] f788a = {0, 3, 0, 1, 5, 4, 7, 6, 9, 8, 10};
    private static final v b;
    private static final v c;

    static {
        b = Build.VERSION.SDK_INT >= 21 ? new u() : null;
        c = b();
    }

    private static v b() {
        try {
            return (v) Class.forName("androidx.j.n").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(k kVar, ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2, boolean z) {
        if (kVar.s < 1) {
            return;
        }
        SparseArray sparseArray = new SparseArray();
        for (int i3 = i; i3 < i2; i3++) {
            androidx.fragment.app.a aVar = arrayList.get(i3);
            if (arrayList2.get(i3).booleanValue()) {
                b(aVar, (SparseArray<a>) sparseArray, z);
            } else {
                a(aVar, (SparseArray<a>) sparseArray, z);
            }
        }
        if (sparseArray.size() != 0) {
            View view = new View(kVar.t.l());
            int size = sparseArray.size();
            for (int i4 = 0; i4 < size; i4++) {
                int keyAt = sparseArray.keyAt(i4);
                androidx.c.a<String, String> a2 = a(keyAt, arrayList, arrayList2, i, i2);
                a aVar2 = (a) sparseArray.valueAt(i4);
                if (z) {
                    a(kVar, keyAt, aVar2, view, a2);
                } else {
                    b(kVar, keyAt, aVar2, view, a2);
                }
            }
        }
    }

    private static androidx.c.a<String, String> a(int i, ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3) {
        ArrayList<String> arrayList3;
        ArrayList<String> arrayList4;
        androidx.c.a<String, String> aVar = new androidx.c.a<>();
        for (int i4 = i3 - 1; i4 >= i2; i4--) {
            androidx.fragment.app.a aVar2 = arrayList.get(i4);
            if (aVar2.b(i)) {
                boolean booleanValue = arrayList2.get(i4).booleanValue();
                if (aVar2.D != null) {
                    int size = aVar2.D.size();
                    if (booleanValue) {
                        arrayList3 = aVar2.D;
                        arrayList4 = aVar2.E;
                    } else {
                        ArrayList<String> arrayList5 = aVar2.D;
                        arrayList3 = aVar2.E;
                        arrayList4 = arrayList5;
                    }
                    for (int i5 = 0; i5 < size; i5++) {
                        String str = arrayList4.get(i5);
                        String str2 = arrayList3.get(i5);
                        String remove = aVar.remove(str2);
                        if (remove != null) {
                            aVar.put(str, remove);
                        } else {
                            aVar.put(str, str2);
                        }
                    }
                }
            }
        }
        return aVar;
    }

    private static void a(k kVar, int i, a aVar, View view, androidx.c.a<String, String> aVar2) {
        d dVar;
        d dVar2;
        v a2;
        Object obj;
        ViewGroup viewGroup = kVar.u.a() ? (ViewGroup) kVar.u.a(i) : null;
        if (viewGroup == null || (a2 = a((dVar2 = aVar.d), (dVar = aVar.f793a))) == null) {
            return;
        }
        boolean z = aVar.b;
        boolean z2 = aVar.e;
        ArrayList<View> arrayList = new ArrayList<>();
        ArrayList<View> arrayList2 = new ArrayList<>();
        Object a3 = a(a2, dVar, z);
        Object b2 = b(a2, dVar2, z2);
        Object a4 = a(a2, viewGroup, view, aVar2, aVar, arrayList2, arrayList, a3, b2);
        if (a3 == null && a4 == null) {
            obj = b2;
            if (obj == null) {
                return;
            }
        } else {
            obj = b2;
        }
        ArrayList<View> a5 = a(a2, obj, dVar2, arrayList2, view);
        ArrayList<View> a6 = a(a2, a3, dVar, arrayList, view);
        a(a6, 4);
        Object a7 = a(a2, a3, obj, a4, dVar, z);
        if (a7 != null) {
            a(a2, obj, dVar2, a5);
            ArrayList<String> a8 = a2.a(arrayList);
            a2.a(a7, a3, a6, obj, a5, a4, arrayList);
            a2.a(viewGroup, a7);
            a2.a(viewGroup, arrayList2, arrayList, a8, aVar2);
            a(a6, 0);
            a2.a(a4, arrayList2, arrayList);
        }
    }

    private static void a(v vVar, Object obj, d dVar, final ArrayList<View> arrayList) {
        if (dVar != null && obj != null && dVar.C && dVar.Q && dVar.ae) {
            dVar.o(true);
            vVar.b(obj, dVar.X(), arrayList);
            z.a(dVar.W, new Runnable() { // from class: androidx.fragment.app.t.1
                @Override // java.lang.Runnable
                public void run() {
                    t.a((ArrayList<View>) arrayList, 4);
                }
            });
        }
    }

    private static void b(k kVar, int i, a aVar, View view, androidx.c.a<String, String> aVar2) {
        d dVar;
        d dVar2;
        v a2;
        Object obj;
        ViewGroup viewGroup = kVar.u.a() ? (ViewGroup) kVar.u.a(i) : null;
        if (viewGroup == null || (a2 = a((dVar2 = aVar.d), (dVar = aVar.f793a))) == null) {
            return;
        }
        boolean z = aVar.b;
        boolean z2 = aVar.e;
        Object a3 = a(a2, dVar, z);
        Object b2 = b(a2, dVar2, z2);
        ArrayList arrayList = new ArrayList();
        ArrayList<View> arrayList2 = new ArrayList<>();
        Object b3 = b(a2, viewGroup, view, aVar2, aVar, arrayList, arrayList2, a3, b2);
        if (a3 == null && b3 == null) {
            obj = b2;
            if (obj == null) {
                return;
            }
        } else {
            obj = b2;
        }
        ArrayList<View> a4 = a(a2, obj, dVar2, (ArrayList<View>) arrayList, view);
        Object obj2 = (a4 == null || a4.isEmpty()) ? null : obj;
        a2.b(a3, view);
        Object a5 = a(a2, a3, obj2, b3, dVar, aVar.b);
        if (a5 != null) {
            ArrayList<View> arrayList3 = new ArrayList<>();
            a2.a(a5, a3, arrayList3, obj2, a4, b3, arrayList2);
            a(a2, viewGroup, dVar, view, arrayList2, a3, arrayList3, obj2, a4);
            a2.a((View) viewGroup, arrayList2, (Map<String, String>) aVar2);
            a2.a(viewGroup, a5);
            a2.a(viewGroup, arrayList2, (Map<String, String>) aVar2);
        }
    }

    private static void a(final v vVar, ViewGroup viewGroup, final d dVar, final View view, final ArrayList<View> arrayList, final Object obj, final ArrayList<View> arrayList2, final Object obj2, final ArrayList<View> arrayList3) {
        z.a(viewGroup, new Runnable() { // from class: androidx.fragment.app.t.2
            @Override // java.lang.Runnable
            public void run() {
                if (obj != null) {
                    vVar.c(obj, view);
                    arrayList2.addAll(t.a(vVar, obj, dVar, (ArrayList<View>) arrayList, view));
                }
                if (arrayList3 != null) {
                    if (obj2 != null) {
                        ArrayList<View> arrayList4 = new ArrayList<>();
                        arrayList4.add(view);
                        vVar.b(obj2, arrayList3, arrayList4);
                    }
                    arrayList3.clear();
                    arrayList3.add(view);
                }
            }
        });
    }

    private static v a(d dVar, d dVar2) {
        ArrayList arrayList = new ArrayList();
        if (dVar != null) {
            Object ag = dVar.ag();
            if (ag != null) {
                arrayList.add(ag);
            }
            Object af = dVar.af();
            if (af != null) {
                arrayList.add(af);
            }
            Object aj = dVar.aj();
            if (aj != null) {
                arrayList.add(aj);
            }
        }
        if (dVar2 != null) {
            Object ae = dVar2.ae();
            if (ae != null) {
                arrayList.add(ae);
            }
            Object ah = dVar2.ah();
            if (ah != null) {
                arrayList.add(ah);
            }
            Object ai = dVar2.ai();
            if (ai != null) {
                arrayList.add(ai);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        if (b != null && a(b, arrayList)) {
            return b;
        }
        if (c != null && a(c, arrayList)) {
            return c;
        }
        if (b == null && c == null) {
            return null;
        }
        throw new IllegalArgumentException("Invalid Transition types");
    }

    private static boolean a(v vVar, List<Object> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (!vVar.a(list.get(i))) {
                return false;
            }
        }
        return true;
    }

    private static Object a(v vVar, d dVar, d dVar2, boolean z) {
        Object ai;
        if (dVar == null || dVar2 == null) {
            return null;
        }
        if (z) {
            ai = dVar2.aj();
        } else {
            ai = dVar.ai();
        }
        return vVar.c(vVar.b(ai));
    }

    private static Object a(v vVar, d dVar, boolean z) {
        Object ae;
        if (dVar == null) {
            return null;
        }
        if (z) {
            ae = dVar.ah();
        } else {
            ae = dVar.ae();
        }
        return vVar.b(ae);
    }

    private static Object b(v vVar, d dVar, boolean z) {
        Object ag;
        if (dVar == null) {
            return null;
        }
        if (z) {
            ag = dVar.af();
        } else {
            ag = dVar.ag();
        }
        return vVar.b(ag);
    }

    private static Object a(final v vVar, ViewGroup viewGroup, View view, androidx.c.a<String, String> aVar, a aVar2, ArrayList<View> arrayList, ArrayList<View> arrayList2, Object obj, Object obj2) {
        Object obj3;
        final View view2;
        final Rect rect;
        final d dVar = aVar2.f793a;
        final d dVar2 = aVar2.d;
        if (dVar != null) {
            dVar.Y().setVisibility(0);
        }
        if (dVar == null || dVar2 == null) {
            return null;
        }
        final boolean z = aVar2.b;
        Object a2 = aVar.isEmpty() ? null : a(vVar, dVar, dVar2, z);
        androidx.c.a<String, View> b2 = b(vVar, aVar, a2, aVar2);
        final androidx.c.a<String, View> a3 = a(vVar, aVar, a2, aVar2);
        if (aVar.isEmpty()) {
            if (b2 != null) {
                b2.clear();
            }
            if (a3 != null) {
                a3.clear();
            }
            obj3 = null;
        } else {
            a(arrayList, b2, aVar.keySet());
            a(arrayList2, a3, aVar.values());
            obj3 = a2;
        }
        if (obj == null && obj2 == null && obj3 == null) {
            return null;
        }
        a(dVar, dVar2, z, b2, true);
        if (obj3 != null) {
            arrayList2.add(view);
            vVar.a(obj3, view, arrayList);
            a(vVar, obj3, obj2, b2, aVar2.e, aVar2.f);
            Rect rect2 = new Rect();
            View a4 = a(a3, aVar2, obj, z);
            if (a4 != null) {
                vVar.a(obj, rect2);
            }
            rect = rect2;
            view2 = a4;
        } else {
            view2 = null;
            rect = null;
        }
        z.a(viewGroup, new Runnable() { // from class: androidx.fragment.app.t.3
            @Override // java.lang.Runnable
            public void run() {
                t.a(d.this, dVar2, z, (androidx.c.a<String, View>) a3, false);
                if (view2 != null) {
                    vVar.a(view2, rect);
                }
            }
        });
        return obj3;
    }

    private static void a(ArrayList<View> arrayList, androidx.c.a<String, View> aVar, Collection<String> collection) {
        for (int size = aVar.size() - 1; size >= 0; size--) {
            View c2 = aVar.c(size);
            if (collection.contains(af.R(c2))) {
                arrayList.add(c2);
            }
        }
    }

    private static Object b(final v vVar, ViewGroup viewGroup, final View view, final androidx.c.a<String, String> aVar, final a aVar2, final ArrayList<View> arrayList, final ArrayList<View> arrayList2, final Object obj, Object obj2) {
        Object a2;
        androidx.c.a<String, String> aVar3;
        Object obj3;
        Rect rect;
        final d dVar = aVar2.f793a;
        final d dVar2 = aVar2.d;
        if (dVar == null || dVar2 == null) {
            return null;
        }
        final boolean z = aVar2.b;
        if (aVar.isEmpty()) {
            aVar3 = aVar;
            a2 = null;
        } else {
            a2 = a(vVar, dVar, dVar2, z);
            aVar3 = aVar;
        }
        androidx.c.a<String, View> b2 = b(vVar, aVar3, a2, aVar2);
        if (aVar.isEmpty()) {
            obj3 = null;
        } else {
            arrayList.addAll(b2.values());
            obj3 = a2;
        }
        if (obj == null && obj2 == null && obj3 == null) {
            return null;
        }
        a(dVar, dVar2, z, b2, true);
        if (obj3 != null) {
            rect = new Rect();
            vVar.a(obj3, view, arrayList);
            a(vVar, obj3, obj2, b2, aVar2.e, aVar2.f);
            if (obj != null) {
                vVar.a(obj, rect);
            }
        } else {
            rect = null;
        }
        final Object obj4 = obj3;
        final Rect rect2 = rect;
        z.a(viewGroup, new Runnable() { // from class: androidx.fragment.app.t.4
            @Override // java.lang.Runnable
            public void run() {
                androidx.c.a<String, View> a3 = t.a(v.this, (androidx.c.a<String, String>) aVar, obj4, aVar2);
                if (a3 != null) {
                    arrayList2.addAll(a3.values());
                    arrayList2.add(view);
                }
                t.a(dVar, dVar2, z, a3, false);
                if (obj4 != null) {
                    v.this.a(obj4, arrayList, arrayList2);
                    View a4 = t.a(a3, aVar2, obj, z);
                    if (a4 != null) {
                        v.this.a(a4, rect2);
                    }
                }
            }
        });
        return obj3;
    }

    private static androidx.c.a<String, View> b(v vVar, androidx.c.a<String, String> aVar, Object obj, a aVar2) {
        androidx.core.app.z aE;
        ArrayList<String> arrayList;
        if (aVar.isEmpty() || obj == null) {
            aVar.clear();
            return null;
        }
        d dVar = aVar2.d;
        androidx.c.a<String, View> aVar3 = new androidx.c.a<>();
        vVar.a((Map<String, View>) aVar3, dVar.Y());
        androidx.fragment.app.a aVar4 = aVar2.f;
        if (aVar2.e) {
            aE = dVar.aD();
            arrayList = aVar4.E;
        } else {
            aE = dVar.aE();
            arrayList = aVar4.D;
        }
        aVar3.c(arrayList);
        if (aE != null) {
            aE.a(arrayList, aVar3);
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                String str = arrayList.get(size);
                View view = aVar3.get(str);
                if (view == null) {
                    aVar.remove(str);
                } else if (!str.equals(af.R(view))) {
                    aVar.put(af.R(view), aVar.remove(str));
                }
            }
        } else {
            aVar.c(aVar3.keySet());
        }
        return aVar3;
    }

    static androidx.c.a<String, View> a(v vVar, androidx.c.a<String, String> aVar, Object obj, a aVar2) {
        androidx.core.app.z aD;
        ArrayList<String> arrayList;
        String a2;
        d dVar = aVar2.f793a;
        View X = dVar.X();
        if (aVar.isEmpty() || obj == null || X == null) {
            aVar.clear();
            return null;
        }
        androidx.c.a<String, View> aVar3 = new androidx.c.a<>();
        vVar.a((Map<String, View>) aVar3, X);
        androidx.fragment.app.a aVar4 = aVar2.c;
        if (aVar2.b) {
            aD = dVar.aE();
            arrayList = aVar4.D;
        } else {
            aD = dVar.aD();
            arrayList = aVar4.E;
        }
        if (arrayList != null) {
            aVar3.c(arrayList);
            aVar3.c(aVar.values());
        }
        if (aD != null) {
            aD.a(arrayList, aVar3);
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                String str = arrayList.get(size);
                View view = aVar3.get(str);
                if (view == null) {
                    String a3 = a(aVar, str);
                    if (a3 != null) {
                        aVar.remove(a3);
                    }
                } else if (!str.equals(af.R(view)) && (a2 = a(aVar, str)) != null) {
                    aVar.put(a2, af.R(view));
                }
            }
        } else {
            a(aVar, aVar3);
        }
        return aVar3;
    }

    private static String a(androidx.c.a<String, String> aVar, String str) {
        int size = aVar.size();
        for (int i = 0; i < size; i++) {
            if (str.equals(aVar.c(i))) {
                return aVar.b(i);
            }
        }
        return null;
    }

    static View a(androidx.c.a<String, View> aVar, a aVar2, Object obj, boolean z) {
        String str;
        androidx.fragment.app.a aVar3 = aVar2.c;
        if (obj == null || aVar == null || aVar3.D == null || aVar3.D.isEmpty()) {
            return null;
        }
        if (z) {
            str = aVar3.D.get(0);
        } else {
            str = aVar3.E.get(0);
        }
        return aVar.get(str);
    }

    private static void a(v vVar, Object obj, Object obj2, androidx.c.a<String, View> aVar, boolean z, androidx.fragment.app.a aVar2) {
        String str;
        if (aVar2.D == null || aVar2.D.isEmpty()) {
            return;
        }
        if (z) {
            str = aVar2.E.get(0);
        } else {
            str = aVar2.D.get(0);
        }
        View view = aVar.get(str);
        vVar.a(obj, view);
        if (obj2 != null) {
            vVar.a(obj2, view);
        }
    }

    private static void a(androidx.c.a<String, String> aVar, androidx.c.a<String, View> aVar2) {
        for (int size = aVar.size() - 1; size >= 0; size--) {
            if (!aVar2.containsKey(aVar.c(size))) {
                aVar.d(size);
            }
        }
    }

    static void a(d dVar, d dVar2, boolean z, androidx.c.a<String, View> aVar, boolean z2) {
        androidx.core.app.z aD;
        if (z) {
            aD = dVar2.aD();
        } else {
            aD = dVar.aD();
        }
        if (aD != null) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int size = aVar == null ? 0 : aVar.size();
            for (int i = 0; i < size; i++) {
                arrayList2.add(aVar.b(i));
                arrayList.add(aVar.c(i));
            }
            if (z2) {
                aD.a(arrayList2, arrayList, (List<View>) null);
            } else {
                aD.b(arrayList2, arrayList, null);
            }
        }
    }

    static ArrayList<View> a(v vVar, Object obj, d dVar, ArrayList<View> arrayList, View view) {
        if (obj == null) {
            return null;
        }
        ArrayList<View> arrayList2 = new ArrayList<>();
        View X = dVar.X();
        if (X != null) {
            vVar.a(arrayList2, X);
        }
        if (arrayList != null) {
            arrayList2.removeAll(arrayList);
        }
        if (arrayList2.isEmpty()) {
            return arrayList2;
        }
        arrayList2.add(view);
        vVar.a(obj, arrayList2);
        return arrayList2;
    }

    static void a(ArrayList<View> arrayList, int i) {
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            arrayList.get(size).setVisibility(i);
        }
    }

    private static Object a(v vVar, Object obj, Object obj2, Object obj3, d dVar, boolean z) {
        boolean z2;
        if (obj == null || obj2 == null || dVar == null) {
            z2 = true;
        } else if (z) {
            z2 = dVar.al();
        } else {
            z2 = dVar.ak();
        }
        if (z2) {
            return vVar.a(obj2, obj, obj3);
        }
        return vVar.b(obj2, obj, obj3);
    }

    public static void a(androidx.fragment.app.a aVar, SparseArray<a> sparseArray, boolean z) {
        int size = aVar.p.size();
        for (int i = 0; i < size; i++) {
            a(aVar, aVar.p.get(i), sparseArray, false, z);
        }
    }

    public static void b(androidx.fragment.app.a aVar, SparseArray<a> sparseArray, boolean z) {
        if (aVar.b.u.a()) {
            for (int size = aVar.p.size() - 1; size >= 0; size--) {
                a(aVar, aVar.p.get(size), sparseArray, true, z);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a() {
        return (b == null && c == null) ? false : true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x0034, code lost:
    
        if (r10.C != false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x008a, code lost:
    
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x006c, code lost:
    
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0088, code lost:
    
        if (r10.Q == false) goto L60;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00a7 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00cd A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00df A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:46:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void a(androidx.fragment.app.a aVar, s.a aVar2, SparseArray<a> sparseArray, boolean z, boolean z2) {
        int i;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        a aVar3;
        k kVar;
        boolean z7;
        d dVar = aVar2.b;
        if (dVar == null || (i = dVar.O) == 0) {
            return;
        }
        int i2 = z ? f788a[aVar2.f787a] : aVar2.f787a;
        boolean z8 = false;
        if (i2 != 1) {
            switch (i2) {
                case 3:
                case 6:
                    if (!z2) {
                        z7 = false;
                        break;
                    } else {
                        z7 = false;
                        break;
                    }
                    z5 = z7;
                    z6 = false;
                    z4 = true;
                    break;
                case 4:
                    if (!z2) {
                        z7 = false;
                        break;
                    } else {
                        z7 = false;
                        break;
                    }
                    z5 = z7;
                    z6 = false;
                    z4 = true;
                    break;
                case 5:
                    if (z2) {
                        if (dVar.ae) {
                            if (!dVar.Q) {
                                break;
                            }
                        }
                        z3 = false;
                        z4 = false;
                        z5 = false;
                        z8 = z3;
                        z6 = true;
                        break;
                    } else {
                        z3 = dVar.Q;
                        z4 = false;
                        z5 = false;
                        z8 = z3;
                        z6 = true;
                    }
                case 7:
                    break;
                default:
                    z6 = false;
                    z4 = false;
                    z5 = false;
                    break;
            }
            a aVar4 = sparseArray.get(i);
            if (z8) {
                aVar4 = a(aVar4, sparseArray, i);
                aVar4.f793a = dVar;
                aVar4.b = z;
                aVar4.c = aVar;
            }
            aVar3 = aVar4;
            if (!z2 && z6) {
                if (aVar3 != null && aVar3.d == dVar) {
                    aVar3.d = null;
                }
                kVar = aVar.b;
                if (dVar.t < 1 && kVar.s >= 1 && !aVar.F) {
                    kVar.l(dVar);
                    kVar.a(dVar, 1, 0, 0, false);
                }
            }
            if (z5 && (aVar3 == null || aVar3.d == null)) {
                aVar3 = a(aVar3, sparseArray, i);
                aVar3.d = dVar;
                aVar3.e = z;
                aVar3.f = aVar;
            }
            if (z2 || !z4 || aVar3 == null || aVar3.f793a != dVar) {
                return;
            }
            aVar3.f793a = null;
            return;
        }
        if (z2) {
            z3 = dVar.ad;
            z4 = false;
            z5 = false;
            z8 = z3;
            z6 = true;
            a aVar42 = sparseArray.get(i);
            if (z8) {
            }
            aVar3 = aVar42;
            if (!z2) {
                if (aVar3 != null) {
                    aVar3.d = null;
                }
                kVar = aVar.b;
                if (dVar.t < 1) {
                    kVar.l(dVar);
                    kVar.a(dVar, 1, 0, 0, false);
                }
            }
            if (z5) {
                aVar3 = a(aVar3, sparseArray, i);
                aVar3.d = dVar;
                aVar3.e = z;
                aVar3.f = aVar;
            }
            if (z2) {
                return;
            } else {
                return;
            }
        }
        if (!dVar.C) {
        }
        z3 = false;
        z4 = false;
        z5 = false;
        z8 = z3;
        z6 = true;
        a aVar422 = sparseArray.get(i);
        if (z8) {
        }
        aVar3 = aVar422;
        if (!z2) {
        }
        if (z5) {
        }
        if (z2) {
        }
    }

    private static a a(a aVar, SparseArray<a> sparseArray, int i) {
        if (aVar != null) {
            return aVar;
        }
        a aVar2 = new a();
        sparseArray.put(i, aVar2);
        return aVar2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public d f793a;
        public boolean b;
        public androidx.fragment.app.a c;
        public d d;
        public boolean e;
        public androidx.fragment.app.a f;

        a() {
        }
    }

    private t() {
    }
}
