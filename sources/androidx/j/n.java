package androidx.j;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.ap;
import androidx.j.ag;
import java.util.ArrayList;
import java.util.List;

@SuppressLint({"RestrictedApi"})
@androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public class n extends androidx.fragment.app.v {
    @Override // androidx.fragment.app.v
    public boolean a(Object obj) {
        return obj instanceof ag;
    }

    @Override // androidx.fragment.app.v
    public Object b(Object obj) {
        if (obj != null) {
            return ((ag) obj).clone();
        }
        return null;
    }

    @Override // androidx.fragment.app.v
    public Object c(Object obj) {
        if (obj == null) {
            return null;
        }
        al alVar = new al();
        alVar.a((ag) obj);
        return alVar;
    }

    @Override // androidx.fragment.app.v
    public void a(Object obj, View view, ArrayList<View> arrayList) {
        al alVar = (al) obj;
        List<View> i = alVar.i();
        i.clear();
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            a(i, arrayList.get(i2));
        }
        i.add(view);
        arrayList.add(view);
        a(alVar, arrayList);
    }

    @Override // androidx.fragment.app.v
    public void a(Object obj, View view) {
        if (view != null) {
            final Rect rect = new Rect();
            a(view, rect);
            ((ag) obj).a(new ag.c() { // from class: androidx.j.n.1
                @Override // androidx.j.ag.c
                public Rect a(@androidx.annotation.ah ag agVar) {
                    return rect;
                }
            });
        }
    }

    @Override // androidx.fragment.app.v
    public void a(Object obj, ArrayList<View> arrayList) {
        ag agVar = (ag) obj;
        if (agVar == null) {
            return;
        }
        int i = 0;
        if (agVar instanceof al) {
            al alVar = (al) agVar;
            int c = alVar.c();
            while (i < c) {
                a(alVar.d(i), arrayList);
                i++;
            }
            return;
        }
        if (a(agVar) || !a((List) agVar.i())) {
            return;
        }
        int size = arrayList.size();
        while (i < size) {
            agVar.c(arrayList.get(i));
            i++;
        }
    }

    private static boolean a(ag agVar) {
        return (a((List) agVar.h()) && a((List) agVar.j()) && a((List) agVar.k())) ? false : true;
    }

    @Override // androidx.fragment.app.v
    public Object a(Object obj, Object obj2, Object obj3) {
        al alVar = new al();
        if (obj != null) {
            alVar.a((ag) obj);
        }
        if (obj2 != null) {
            alVar.a((ag) obj2);
        }
        if (obj3 != null) {
            alVar.a((ag) obj3);
        }
        return alVar;
    }

    @Override // androidx.fragment.app.v
    public void b(Object obj, final View view, final ArrayList<View> arrayList) {
        ((ag) obj).a(new ag.e() { // from class: androidx.j.n.2
            @Override // androidx.j.ag.e
            public void a(@androidx.annotation.ah ag agVar) {
            }

            @Override // androidx.j.ag.e
            public void c(@androidx.annotation.ah ag agVar) {
            }

            @Override // androidx.j.ag.e
            public void d(@androidx.annotation.ah ag agVar) {
            }

            @Override // androidx.j.ag.e
            public void e(@androidx.annotation.ah ag agVar) {
            }

            @Override // androidx.j.ag.e
            public void b(@androidx.annotation.ah ag agVar) {
                agVar.b(this);
                view.setVisibility(8);
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    ((View) arrayList.get(i)).setVisibility(0);
                }
            }
        });
    }

    @Override // androidx.fragment.app.v
    public Object b(Object obj, Object obj2, Object obj3) {
        ag agVar = (ag) obj;
        ag agVar2 = (ag) obj2;
        ag agVar3 = (ag) obj3;
        if (agVar != null && agVar2 != null) {
            agVar = new al().a(agVar).a(agVar2).a(1);
        } else if (agVar == null) {
            agVar = agVar2 != null ? agVar2 : null;
        }
        if (agVar3 == null) {
            return agVar;
        }
        al alVar = new al();
        if (agVar != null) {
            alVar.a(agVar);
        }
        alVar.a(agVar3);
        return alVar;
    }

    @Override // androidx.fragment.app.v
    public void a(ViewGroup viewGroup, Object obj) {
        aj.a(viewGroup, (ag) obj);
    }

    @Override // androidx.fragment.app.v
    public void a(Object obj, final Object obj2, final ArrayList<View> arrayList, final Object obj3, final ArrayList<View> arrayList2, final Object obj4, final ArrayList<View> arrayList3) {
        ((ag) obj).a(new ai() { // from class: androidx.j.n.3
            @Override // androidx.j.ai, androidx.j.ag.e
            public void e(@androidx.annotation.ah ag agVar) {
                if (obj2 != null) {
                    n.this.b(obj2, arrayList, (ArrayList<View>) null);
                }
                if (obj3 != null) {
                    n.this.b(obj3, arrayList2, (ArrayList<View>) null);
                }
                if (obj4 != null) {
                    n.this.b(obj4, arrayList3, (ArrayList<View>) null);
                }
            }

            @Override // androidx.j.ai, androidx.j.ag.e
            public void b(@androidx.annotation.ah ag agVar) {
                agVar.b(this);
            }
        });
    }

    @Override // androidx.fragment.app.v
    public void a(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        al alVar = (al) obj;
        if (alVar != null) {
            alVar.i().clear();
            alVar.i().addAll(arrayList2);
            b((Object) alVar, arrayList, arrayList2);
        }
    }

    @Override // androidx.fragment.app.v
    public void b(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        ag agVar = (ag) obj;
        int i = 0;
        if (agVar instanceof al) {
            al alVar = (al) agVar;
            int c = alVar.c();
            while (i < c) {
                b((Object) alVar.d(i), arrayList, arrayList2);
                i++;
            }
            return;
        }
        if (a(agVar)) {
            return;
        }
        List<View> i2 = agVar.i();
        if (i2.size() == arrayList.size() && i2.containsAll(arrayList)) {
            int size = arrayList2 == null ? 0 : arrayList2.size();
            while (i < size) {
                agVar.c(arrayList2.get(i));
                i++;
            }
            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                agVar.d(arrayList.get(size2));
            }
        }
    }

    @Override // androidx.fragment.app.v
    public void b(Object obj, View view) {
        if (obj != null) {
            ((ag) obj).c(view);
        }
    }

    @Override // androidx.fragment.app.v
    public void c(Object obj, View view) {
        if (obj != null) {
            ((ag) obj).d(view);
        }
    }

    @Override // androidx.fragment.app.v
    public void a(Object obj, final Rect rect) {
        if (obj != null) {
            ((ag) obj).a(new ag.c() { // from class: androidx.j.n.4
                @Override // androidx.j.ag.c
                public Rect a(@androidx.annotation.ah ag agVar) {
                    if (rect == null || rect.isEmpty()) {
                        return null;
                    }
                    return rect;
                }
            });
        }
    }
}
