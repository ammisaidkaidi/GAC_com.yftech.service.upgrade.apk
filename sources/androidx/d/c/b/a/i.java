package androidx.d.c.b.a;

import androidx.d.c.b.a.b;
import androidx.d.c.b.d;
import androidx.d.c.b.e;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes.dex */
public class i {

    /* renamed from: a, reason: collision with root package name */
    private static final boolean f666a = false;
    private static final boolean b = false;

    public static boolean a(e.a aVar, e.a aVar2, e.a aVar3, e.a aVar4) {
        return (aVar3 == e.a.FIXED || aVar3 == e.a.WRAP_CONTENT || (aVar3 == e.a.MATCH_PARENT && aVar != e.a.WRAP_CONTENT)) || (aVar4 == e.a.FIXED || aVar4 == e.a.WRAP_CONTENT || (aVar4 == e.a.MATCH_PARENT && aVar2 != e.a.WRAP_CONTENT));
    }

    /* JADX WARN: Removed duplicated region for block: B:214:0x0352  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x038f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:237:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:239:0x038b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean a(androidx.d.c.b.f fVar, b.InterfaceC0050b interfaceC0050b) {
        o oVar;
        boolean z;
        o oVar2;
        ArrayList<androidx.d.c.b.e> ay = fVar.ay();
        int size = ay.size();
        for (int i = 0; i < size; i++) {
            androidx.d.c.b.e eVar = ay.get(i);
            if (!a(fVar.aj(), fVar.ak(), eVar.aj(), eVar.ak()) || (eVar instanceof androidx.d.c.b.g)) {
                return false;
            }
        }
        if (fVar.e != null) {
            fVar.e.Q++;
        }
        ArrayList arrayList = null;
        ArrayList arrayList2 = null;
        ArrayList arrayList3 = null;
        ArrayList arrayList4 = null;
        ArrayList arrayList5 = null;
        ArrayList arrayList6 = null;
        for (int i2 = 0; i2 < size; i2++) {
            androidx.d.c.b.e eVar2 = ay.get(i2);
            if (!a(fVar.aj(), fVar.ak(), eVar2.aj(), eVar2.ak())) {
                androidx.d.c.b.f.a(eVar2, interfaceC0050b, fVar.bo, b.a.f660a);
            }
            boolean z2 = eVar2 instanceof androidx.d.c.b.h;
            if (z2) {
                androidx.d.c.b.h hVar = (androidx.d.c.b.h) eVar2;
                if (hVar.f() == 0) {
                    if (arrayList3 == null) {
                        arrayList3 = new ArrayList();
                    }
                    arrayList3.add(hVar);
                }
                if (hVar.f() == 1) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(hVar);
                }
            }
            if (eVar2 instanceof androidx.d.c.b.j) {
                if (eVar2 instanceof androidx.d.c.b.a) {
                    androidx.d.c.b.a aVar = (androidx.d.c.b.a) eVar2;
                    if (aVar.h() == 0) {
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                        }
                        arrayList2.add(aVar);
                    }
                    if (aVar.h() == 1) {
                        if (arrayList4 == null) {
                            arrayList4 = new ArrayList();
                        }
                        arrayList4.add(aVar);
                    }
                } else {
                    androidx.d.c.b.j jVar = (androidx.d.c.b.j) eVar2;
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList();
                    }
                    arrayList2.add(jVar);
                    if (arrayList4 == null) {
                        arrayList4 = new ArrayList();
                    }
                    arrayList4.add(jVar);
                }
            }
            if (eVar2.T.c == null && eVar2.V.c == null && !z2 && !(eVar2 instanceof androidx.d.c.b.a)) {
                if (arrayList5 == null) {
                    arrayList5 = new ArrayList();
                }
                arrayList5.add(eVar2);
            }
            if (eVar2.U.c == null && eVar2.W.c == null && eVar2.X.c == null && !z2 && !(eVar2 instanceof androidx.d.c.b.a)) {
                if (arrayList6 == null) {
                    arrayList6 = new ArrayList();
                }
                arrayList6.add(eVar2);
            }
        }
        ArrayList<o> arrayList7 = new ArrayList<>();
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                a((androidx.d.c.b.h) it.next(), 0, arrayList7, (o) null);
            }
        }
        o oVar3 = null;
        int i3 = 0;
        if (arrayList2 != null) {
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                androidx.d.c.b.j jVar2 = (androidx.d.c.b.j) it2.next();
                o a2 = a(jVar2, i3, arrayList7, oVar3);
                jVar2.a(arrayList7, i3, a2);
                a2.a(arrayList7);
                oVar3 = null;
                i3 = 0;
            }
        }
        androidx.d.c.b.d a3 = fVar.a(d.a.LEFT);
        if (a3.a() != null) {
            Iterator<androidx.d.c.b.d> it3 = a3.a().iterator();
            while (it3.hasNext()) {
                a(it3.next().f678a, 0, arrayList7, (o) null);
            }
        }
        androidx.d.c.b.d a4 = fVar.a(d.a.RIGHT);
        if (a4.a() != null) {
            Iterator<androidx.d.c.b.d> it4 = a4.a().iterator();
            while (it4.hasNext()) {
                a(it4.next().f678a, 0, arrayList7, (o) null);
            }
        }
        androidx.d.c.b.d a5 = fVar.a(d.a.CENTER);
        if (a5.a() != null) {
            Iterator<androidx.d.c.b.d> it5 = a5.a().iterator();
            while (it5.hasNext()) {
                a(it5.next().f678a, 0, arrayList7, (o) null);
            }
        }
        o oVar4 = null;
        if (arrayList5 != null) {
            Iterator it6 = arrayList5.iterator();
            while (it6.hasNext()) {
                a((androidx.d.c.b.e) it6.next(), 0, arrayList7, (o) null);
            }
        }
        if (arrayList3 != null) {
            Iterator it7 = arrayList3.iterator();
            while (it7.hasNext()) {
                a((androidx.d.c.b.h) it7.next(), 1, arrayList7, (o) null);
            }
        }
        if (arrayList4 != null) {
            Iterator it8 = arrayList4.iterator();
            while (it8.hasNext()) {
                androidx.d.c.b.j jVar3 = (androidx.d.c.b.j) it8.next();
                o a6 = a(jVar3, 1, arrayList7, oVar4);
                jVar3.a(arrayList7, 1, a6);
                a6.a(arrayList7);
                oVar4 = null;
            }
        }
        androidx.d.c.b.d a7 = fVar.a(d.a.TOP);
        if (a7.a() != null) {
            Iterator<androidx.d.c.b.d> it9 = a7.a().iterator();
            while (it9.hasNext()) {
                a(it9.next().f678a, 1, arrayList7, (o) null);
            }
        }
        androidx.d.c.b.d a8 = fVar.a(d.a.BASELINE);
        if (a8.a() != null) {
            Iterator<androidx.d.c.b.d> it10 = a8.a().iterator();
            while (it10.hasNext()) {
                a(it10.next().f678a, 1, arrayList7, (o) null);
            }
        }
        androidx.d.c.b.d a9 = fVar.a(d.a.BOTTOM);
        if (a9.a() != null) {
            Iterator<androidx.d.c.b.d> it11 = a9.a().iterator();
            while (it11.hasNext()) {
                a(it11.next().f678a, 1, arrayList7, (o) null);
            }
        }
        androidx.d.c.b.d a10 = fVar.a(d.a.CENTER);
        if (a10.a() != null) {
            Iterator<androidx.d.c.b.d> it12 = a10.a().iterator();
            while (it12.hasNext()) {
                a(it12.next().f678a, 1, arrayList7, (o) null);
            }
        }
        if (arrayList6 != null) {
            Iterator it13 = arrayList6.iterator();
            while (it13.hasNext()) {
                a((androidx.d.c.b.e) it13.next(), 1, arrayList7, (o) null);
            }
        }
        for (int i4 = 0; i4 < size; i4++) {
            androidx.d.c.b.e eVar3 = ay.get(i4);
            if (eVar3.x()) {
                o a11 = a(arrayList7, eVar3.aW);
                o a12 = a(arrayList7, eVar3.aX);
                if (a11 != null && a12 != null) {
                    a11.a(0, a12);
                    a12.a(2);
                    arrayList7.remove(a11);
                }
            }
        }
        if (arrayList7.size() <= 1) {
            return false;
        }
        if (fVar.aj() == e.a.WRAP_CONTENT) {
            Iterator<o> it14 = arrayList7.iterator();
            oVar = null;
            int i5 = 0;
            while (it14.hasNext()) {
                o next = it14.next();
                if (next.a() != 1) {
                    next.a(false);
                    int a13 = next.a(fVar.ax(), 0);
                    if (a13 > i5) {
                        oVar = next;
                        i5 = a13;
                    }
                }
            }
            if (oVar != null) {
                fVar.a(e.a.FIXED);
                fVar.p(i5);
                oVar.a(true);
                if (fVar.ak() != e.a.WRAP_CONTENT) {
                    Iterator<o> it15 = arrayList7.iterator();
                    oVar2 = null;
                    int i6 = 0;
                    while (it15.hasNext()) {
                        o next2 = it15.next();
                        if (next2.a() != 0) {
                            next2.a(false);
                            int a14 = next2.a(fVar.ax(), 1);
                            if (a14 > i6) {
                                oVar2 = next2;
                                i6 = a14;
                            }
                        }
                    }
                    z = false;
                    if (oVar2 != null) {
                        fVar.b(e.a.FIXED);
                        fVar.q(i6);
                        oVar2.a(true);
                        if (oVar == null && oVar2 == null) {
                            return z;
                        }
                    }
                } else {
                    z = false;
                }
                oVar2 = null;
                return oVar == null ? true : true;
            }
        }
        oVar = null;
        if (fVar.ak() != e.a.WRAP_CONTENT) {
        }
        oVar2 = null;
        if (oVar == null) {
        }
    }

    private static o a(ArrayList<o> arrayList, int i) {
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            o oVar = arrayList.get(i2);
            if (i == oVar.c) {
                return oVar;
            }
        }
        return null;
    }

    public static o a(androidx.d.c.b.e eVar, int i, ArrayList<o> arrayList, o oVar) {
        int i2;
        int M;
        if (i == 0) {
            i2 = eVar.aW;
        } else {
            i2 = eVar.aX;
        }
        if (i2 != -1 && (oVar == null || i2 != oVar.c)) {
            int i3 = 0;
            while (true) {
                if (i3 >= arrayList.size()) {
                    break;
                }
                o oVar2 = arrayList.get(i3);
                if (oVar2.b() == i2) {
                    if (oVar != null) {
                        oVar.a(i, oVar2);
                        arrayList.remove(oVar);
                    }
                    oVar = oVar2;
                } else {
                    i3++;
                }
            }
        } else if (i2 != -1) {
            return oVar;
        }
        if (oVar == null) {
            if ((eVar instanceof androidx.d.c.b.j) && (M = ((androidx.d.c.b.j) eVar).M(i)) != -1) {
                int i4 = 0;
                while (true) {
                    if (i4 >= arrayList.size()) {
                        break;
                    }
                    o oVar3 = arrayList.get(i4);
                    if (oVar3.b() == M) {
                        oVar = oVar3;
                        break;
                    }
                    i4++;
                }
            }
            if (oVar == null) {
                oVar = new o(i);
            }
            arrayList.add(oVar);
        }
        if (oVar.a(eVar)) {
            if (eVar instanceof androidx.d.c.b.h) {
                androidx.d.c.b.h hVar = (androidx.d.c.b.h) eVar;
                hVar.c().a(hVar.f() == 0 ? 1 : 0, arrayList, oVar);
            }
            if (i == 0) {
                eVar.aW = oVar.b();
                eVar.T.a(i, arrayList, oVar);
                eVar.V.a(i, arrayList, oVar);
            } else {
                eVar.aX = oVar.b();
                eVar.U.a(i, arrayList, oVar);
                eVar.X.a(i, arrayList, oVar);
                eVar.W.a(i, arrayList, oVar);
            }
            eVar.aa.a(i, arrayList, oVar);
        }
        return oVar;
    }
}
