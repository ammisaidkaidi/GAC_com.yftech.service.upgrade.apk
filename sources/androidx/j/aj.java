package androidx.j;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes.dex */
public class aj {
    private static final String b = "TransitionManager";
    private androidx.c.a<ac, ag> d = new androidx.c.a<>();
    private androidx.c.a<ac, androidx.c.a<ac, ag>> e = new androidx.c.a<>();
    private static ag c = new c();
    private static ThreadLocal<WeakReference<androidx.c.a<ViewGroup, ArrayList<ag>>>> f = new ThreadLocal<>();

    /* renamed from: a, reason: collision with root package name */
    static ArrayList<ViewGroup> f851a = new ArrayList<>();

    public void a(@androidx.annotation.ah ac acVar, @androidx.annotation.ai ag agVar) {
        this.d.put(acVar, agVar);
    }

    public void a(@androidx.annotation.ah ac acVar, @androidx.annotation.ah ac acVar2, @androidx.annotation.ai ag agVar) {
        androidx.c.a<ac, ag> aVar = this.e.get(acVar2);
        if (aVar == null) {
            aVar = new androidx.c.a<>();
            this.e.put(acVar2, aVar);
        }
        aVar.put(acVar, agVar);
    }

    private ag c(ac acVar) {
        ac a2;
        androidx.c.a<ac, ag> aVar;
        ag agVar;
        ViewGroup a3 = acVar.a();
        if (a3 != null && (a2 = ac.a(a3)) != null && (aVar = this.e.get(acVar)) != null && (agVar = aVar.get(a2)) != null) {
            return agVar;
        }
        ag agVar2 = this.d.get(acVar);
        return agVar2 != null ? agVar2 : c;
    }

    private static void c(ac acVar, ag agVar) {
        ViewGroup a2 = acVar.a();
        if (f851a.contains(a2)) {
            return;
        }
        ac a3 = ac.a(a2);
        if (agVar == null) {
            if (a3 != null) {
                a3.b();
            }
            acVar.c();
            return;
        }
        f851a.add(a2);
        ag clone = agVar.clone();
        clone.c(a2);
        if (a3 != null && a3.d()) {
            clone.d(true);
        }
        c(a2, clone);
        acVar.c();
        b(a2, clone);
    }

    static androidx.c.a<ViewGroup, ArrayList<ag>> a() {
        androidx.c.a<ViewGroup, ArrayList<ag>> aVar;
        WeakReference<androidx.c.a<ViewGroup, ArrayList<ag>>> weakReference = f.get();
        if (weakReference != null && (aVar = weakReference.get()) != null) {
            return aVar;
        }
        androidx.c.a<ViewGroup, ArrayList<ag>> aVar2 = new androidx.c.a<>();
        f.set(new WeakReference<>(aVar2));
        return aVar2;
    }

    private static void b(ViewGroup viewGroup, ag agVar) {
        if (agVar == null || viewGroup == null) {
            return;
        }
        a aVar = new a(agVar, viewGroup);
        viewGroup.addOnAttachStateChangeListener(aVar);
        viewGroup.getViewTreeObserver().addOnPreDrawListener(aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a implements View.OnAttachStateChangeListener, ViewTreeObserver.OnPreDrawListener {

        /* renamed from: a, reason: collision with root package name */
        ag f852a;
        ViewGroup b;

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        a(ag agVar, ViewGroup viewGroup) {
            this.f852a = agVar;
            this.b = viewGroup;
        }

        private void a() {
            this.b.getViewTreeObserver().removeOnPreDrawListener(this);
            this.b.removeOnAttachStateChangeListener(this);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            a();
            aj.f851a.remove(this.b);
            ArrayList<ag> arrayList = aj.a().get(this.b);
            if (arrayList != null && arrayList.size() > 0) {
                Iterator<ag> it = arrayList.iterator();
                while (it.hasNext()) {
                    it.next().f(this.b);
                }
            }
            this.f852a.c(true);
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            a();
            if (!aj.f851a.remove(this.b)) {
                return true;
            }
            final androidx.c.a<ViewGroup, ArrayList<ag>> a2 = aj.a();
            ArrayList<ag> arrayList = a2.get(this.b);
            ArrayList arrayList2 = null;
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                a2.put(this.b, arrayList);
            } else if (arrayList.size() > 0) {
                arrayList2 = new ArrayList(arrayList);
            }
            arrayList.add(this.f852a);
            this.f852a.a(new ai() { // from class: androidx.j.aj.a.1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // androidx.j.ai, androidx.j.ag.e
                public void b(@androidx.annotation.ah ag agVar) {
                    ((ArrayList) a2.get(a.this.b)).remove(agVar);
                    agVar.b(this);
                }
            });
            this.f852a.a(this.b, false);
            if (arrayList2 != null) {
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    ((ag) it.next()).f(this.b);
                }
            }
            this.f852a.a(this.b);
            return true;
        }
    }

    private static void c(ViewGroup viewGroup, ag agVar) {
        ArrayList<ag> arrayList = a().get(viewGroup);
        if (arrayList != null && arrayList.size() > 0) {
            Iterator<ag> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().e(viewGroup);
            }
        }
        if (agVar != null) {
            agVar.a(viewGroup, true);
        }
        ac a2 = ac.a(viewGroup);
        if (a2 != null) {
            a2.b();
        }
    }

    public void a(@androidx.annotation.ah ac acVar) {
        c(acVar, c(acVar));
    }

    public static void b(@androidx.annotation.ah ac acVar) {
        c(acVar, c);
    }

    public static void b(@androidx.annotation.ah ac acVar, @androidx.annotation.ai ag agVar) {
        c(acVar, agVar);
    }

    public static void a(@androidx.annotation.ah ViewGroup viewGroup) {
        a(viewGroup, (ag) null);
    }

    public static void a(@androidx.annotation.ah ViewGroup viewGroup, @androidx.annotation.ai ag agVar) {
        if (f851a.contains(viewGroup) || !androidx.core.n.af.ag(viewGroup)) {
            return;
        }
        f851a.add(viewGroup);
        if (agVar == null) {
            agVar = c;
        }
        ag clone = agVar.clone();
        c(viewGroup, clone);
        ac.a(viewGroup, null);
        b(viewGroup, clone);
    }

    public static void b(ViewGroup viewGroup) {
        f851a.remove(viewGroup);
        ArrayList<ag> arrayList = a().get(viewGroup);
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        ArrayList arrayList2 = new ArrayList(arrayList);
        for (int size = arrayList2.size() - 1; size >= 0; size--) {
            ((ag) arrayList2.get(size)).b(viewGroup);
        }
    }
}
