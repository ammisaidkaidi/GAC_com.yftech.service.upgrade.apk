package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class h extends aa {
    private static final boolean n = false;
    private static TimeInterpolator o;
    private ArrayList<RecyclerView.z> p = new ArrayList<>();
    private ArrayList<RecyclerView.z> q = new ArrayList<>();
    private ArrayList<b> r = new ArrayList<>();
    private ArrayList<a> s = new ArrayList<>();

    /* renamed from: a, reason: collision with root package name */
    ArrayList<ArrayList<RecyclerView.z>> f1054a = new ArrayList<>();
    ArrayList<ArrayList<b>> b = new ArrayList<>();
    ArrayList<ArrayList<a>> c = new ArrayList<>();
    ArrayList<RecyclerView.z> d = new ArrayList<>();
    ArrayList<RecyclerView.z> e = new ArrayList<>();
    ArrayList<RecyclerView.z> f = new ArrayList<>();
    ArrayList<RecyclerView.z> g = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public RecyclerView.z f1064a;
        public int b;
        public int c;
        public int d;
        public int e;

        b(RecyclerView.z zVar, int i, int i2, int i3, int i4) {
            this.f1064a = zVar;
            this.b = i;
            this.c = i2;
            this.d = i3;
            this.e = i4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public RecyclerView.z f1063a;
        public RecyclerView.z b;
        public int c;
        public int d;
        public int e;
        public int f;

        private a(RecyclerView.z zVar, RecyclerView.z zVar2) {
            this.f1063a = zVar;
            this.b = zVar2;
        }

        a(RecyclerView.z zVar, RecyclerView.z zVar2, int i, int i2, int i3, int i4) {
            this(zVar, zVar2);
            this.c = i;
            this.d = i2;
            this.e = i3;
            this.f = i4;
        }

        public String toString() {
            return "ChangeInfo{oldHolder=" + this.f1063a + ", newHolder=" + this.b + ", fromX=" + this.c + ", fromY=" + this.d + ", toX=" + this.e + ", toY=" + this.f + '}';
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.f
    public void a() {
        boolean z = !this.p.isEmpty();
        boolean z2 = !this.r.isEmpty();
        boolean z3 = !this.s.isEmpty();
        boolean z4 = !this.q.isEmpty();
        if (z || z2 || z4 || z3) {
            Iterator<RecyclerView.z> it = this.p.iterator();
            while (it.hasNext()) {
                w(it.next());
            }
            this.p.clear();
            if (z2) {
                final ArrayList<b> arrayList = new ArrayList<>();
                arrayList.addAll(this.r);
                this.b.add(arrayList);
                this.r.clear();
                Runnable runnable = new Runnable() { // from class: androidx.recyclerview.widget.h.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Iterator it2 = arrayList.iterator();
                        while (it2.hasNext()) {
                            b bVar = (b) it2.next();
                            h.this.b(bVar.f1064a, bVar.b, bVar.c, bVar.d, bVar.e);
                        }
                        arrayList.clear();
                        h.this.b.remove(arrayList);
                    }
                };
                if (z) {
                    androidx.core.n.af.a(arrayList.get(0).f1064a.f1016a, runnable, g());
                } else {
                    runnable.run();
                }
            }
            if (z3) {
                final ArrayList<a> arrayList2 = new ArrayList<>();
                arrayList2.addAll(this.s);
                this.c.add(arrayList2);
                this.s.clear();
                Runnable runnable2 = new Runnable() { // from class: androidx.recyclerview.widget.h.2
                    @Override // java.lang.Runnable
                    public void run() {
                        Iterator it2 = arrayList2.iterator();
                        while (it2.hasNext()) {
                            h.this.a((a) it2.next());
                        }
                        arrayList2.clear();
                        h.this.c.remove(arrayList2);
                    }
                };
                if (z) {
                    androidx.core.n.af.a(arrayList2.get(0).f1063a.f1016a, runnable2, g());
                } else {
                    runnable2.run();
                }
            }
            if (z4) {
                final ArrayList<RecyclerView.z> arrayList3 = new ArrayList<>();
                arrayList3.addAll(this.q);
                this.f1054a.add(arrayList3);
                this.q.clear();
                Runnable runnable3 = new Runnable() { // from class: androidx.recyclerview.widget.h.3
                    @Override // java.lang.Runnable
                    public void run() {
                        Iterator it2 = arrayList3.iterator();
                        while (it2.hasNext()) {
                            h.this.c((RecyclerView.z) it2.next());
                        }
                        arrayList3.clear();
                        h.this.f1054a.remove(arrayList3);
                    }
                };
                if (z || z2 || z3) {
                    androidx.core.n.af.a(arrayList3.get(0).f1016a, runnable3, (z ? g() : 0L) + Math.max(z2 ? e() : 0L, z3 ? h() : 0L));
                } else {
                    runnable3.run();
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.aa
    public boolean a(RecyclerView.z zVar) {
        x(zVar);
        this.p.add(zVar);
        return true;
    }

    private void w(final RecyclerView.z zVar) {
        final View view = zVar.f1016a;
        final ViewPropertyAnimator animate = view.animate();
        this.f.add(zVar);
        animate.setDuration(g()).alpha(0.0f).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.h.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                h.this.n(zVar);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                animate.setListener(null);
                view.setAlpha(1.0f);
                h.this.k(zVar);
                h.this.f.remove(zVar);
                h.this.c();
            }
        }).start();
    }

    @Override // androidx.recyclerview.widget.aa
    public boolean b(RecyclerView.z zVar) {
        x(zVar);
        zVar.f1016a.setAlpha(0.0f);
        this.q.add(zVar);
        return true;
    }

    void c(final RecyclerView.z zVar) {
        final View view = zVar.f1016a;
        final ViewPropertyAnimator animate = view.animate();
        this.d.add(zVar);
        animate.alpha(1.0f).setDuration(f()).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.h.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                h.this.p(zVar);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                view.setAlpha(1.0f);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                animate.setListener(null);
                h.this.m(zVar);
                h.this.d.remove(zVar);
                h.this.c();
            }
        }).start();
    }

    @Override // androidx.recyclerview.widget.aa
    public boolean a(RecyclerView.z zVar, int i, int i2, int i3, int i4) {
        View view = zVar.f1016a;
        int translationX = i + ((int) zVar.f1016a.getTranslationX());
        int translationY = i2 + ((int) zVar.f1016a.getTranslationY());
        x(zVar);
        int i5 = i3 - translationX;
        int i6 = i4 - translationY;
        if (i5 == 0 && i6 == 0) {
            l(zVar);
            return false;
        }
        if (i5 != 0) {
            view.setTranslationX(-i5);
        }
        if (i6 != 0) {
            view.setTranslationY(-i6);
        }
        this.r.add(new b(zVar, translationX, translationY, i3, i4));
        return true;
    }

    void b(final RecyclerView.z zVar, int i, int i2, int i3, int i4) {
        final View view = zVar.f1016a;
        final int i5 = i3 - i;
        final int i6 = i4 - i2;
        if (i5 != 0) {
            view.animate().translationX(0.0f);
        }
        if (i6 != 0) {
            view.animate().translationY(0.0f);
        }
        final ViewPropertyAnimator animate = view.animate();
        this.e.add(zVar);
        animate.setDuration(e()).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.h.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                h.this.o(zVar);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                if (i5 != 0) {
                    view.setTranslationX(0.0f);
                }
                if (i6 != 0) {
                    view.setTranslationY(0.0f);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                animate.setListener(null);
                h.this.l(zVar);
                h.this.e.remove(zVar);
                h.this.c();
            }
        }).start();
    }

    @Override // androidx.recyclerview.widget.aa
    public boolean a(RecyclerView.z zVar, RecyclerView.z zVar2, int i, int i2, int i3, int i4) {
        if (zVar == zVar2) {
            return a(zVar, i, i2, i3, i4);
        }
        float translationX = zVar.f1016a.getTranslationX();
        float translationY = zVar.f1016a.getTranslationY();
        float alpha = zVar.f1016a.getAlpha();
        x(zVar);
        int i5 = (int) ((i3 - i) - translationX);
        int i6 = (int) ((i4 - i2) - translationY);
        zVar.f1016a.setTranslationX(translationX);
        zVar.f1016a.setTranslationY(translationY);
        zVar.f1016a.setAlpha(alpha);
        if (zVar2 != null) {
            x(zVar2);
            zVar2.f1016a.setTranslationX(-i5);
            zVar2.f1016a.setTranslationY(-i6);
            zVar2.f1016a.setAlpha(0.0f);
        }
        this.s.add(new a(zVar, zVar2, i, i2, i3, i4));
        return true;
    }

    void a(final a aVar) {
        RecyclerView.z zVar = aVar.f1063a;
        final View view = zVar == null ? null : zVar.f1016a;
        RecyclerView.z zVar2 = aVar.b;
        final View view2 = zVar2 != null ? zVar2.f1016a : null;
        if (view != null) {
            final ViewPropertyAnimator duration = view.animate().setDuration(h());
            this.g.add(aVar.f1063a);
            duration.translationX(aVar.e - aVar.c);
            duration.translationY(aVar.f - aVar.d);
            duration.alpha(0.0f).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.h.7
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    h.this.b(aVar.f1063a, true);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    duration.setListener(null);
                    view.setAlpha(1.0f);
                    view.setTranslationX(0.0f);
                    view.setTranslationY(0.0f);
                    h.this.a(aVar.f1063a, true);
                    h.this.g.remove(aVar.f1063a);
                    h.this.c();
                }
            }).start();
        }
        if (view2 != null) {
            final ViewPropertyAnimator animate = view2.animate();
            this.g.add(aVar.b);
            animate.translationX(0.0f).translationY(0.0f).setDuration(h()).alpha(1.0f).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.h.8
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    h.this.b(aVar.b, false);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    animate.setListener(null);
                    view2.setAlpha(1.0f);
                    view2.setTranslationX(0.0f);
                    view2.setTranslationY(0.0f);
                    h.this.a(aVar.b, false);
                    h.this.g.remove(aVar.b);
                    h.this.c();
                }
            }).start();
        }
    }

    private void a(List<a> list, RecyclerView.z zVar) {
        for (int size = list.size() - 1; size >= 0; size--) {
            a aVar = list.get(size);
            if (a(aVar, zVar) && aVar.f1063a == null && aVar.b == null) {
                list.remove(aVar);
            }
        }
    }

    private void b(a aVar) {
        if (aVar.f1063a != null) {
            a(aVar, aVar.f1063a);
        }
        if (aVar.b != null) {
            a(aVar, aVar.b);
        }
    }

    private boolean a(a aVar, RecyclerView.z zVar) {
        boolean z = false;
        if (aVar.b == zVar) {
            aVar.b = null;
        } else {
            if (aVar.f1063a != zVar) {
                return false;
            }
            aVar.f1063a = null;
            z = true;
        }
        zVar.f1016a.setAlpha(1.0f);
        zVar.f1016a.setTranslationX(0.0f);
        zVar.f1016a.setTranslationY(0.0f);
        a(zVar, z);
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.f
    public void d(RecyclerView.z zVar) {
        View view = zVar.f1016a;
        view.animate().cancel();
        int size = this.r.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            if (this.r.get(size).f1064a == zVar) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                l(zVar);
                this.r.remove(size);
            }
        }
        a(this.s, zVar);
        if (this.p.remove(zVar)) {
            view.setAlpha(1.0f);
            k(zVar);
        }
        if (this.q.remove(zVar)) {
            view.setAlpha(1.0f);
            m(zVar);
        }
        for (int size2 = this.c.size() - 1; size2 >= 0; size2--) {
            ArrayList<a> arrayList = this.c.get(size2);
            a(arrayList, zVar);
            if (arrayList.isEmpty()) {
                this.c.remove(size2);
            }
        }
        for (int size3 = this.b.size() - 1; size3 >= 0; size3--) {
            ArrayList<b> arrayList2 = this.b.get(size3);
            int size4 = arrayList2.size() - 1;
            while (true) {
                if (size4 < 0) {
                    break;
                }
                if (arrayList2.get(size4).f1064a == zVar) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    l(zVar);
                    arrayList2.remove(size4);
                    if (arrayList2.isEmpty()) {
                        this.b.remove(size3);
                    }
                } else {
                    size4--;
                }
            }
        }
        for (int size5 = this.f1054a.size() - 1; size5 >= 0; size5--) {
            ArrayList<RecyclerView.z> arrayList3 = this.f1054a.get(size5);
            if (arrayList3.remove(zVar)) {
                view.setAlpha(1.0f);
                m(zVar);
                if (arrayList3.isEmpty()) {
                    this.f1054a.remove(size5);
                }
            }
        }
        this.f.remove(zVar);
        this.d.remove(zVar);
        this.g.remove(zVar);
        this.e.remove(zVar);
        c();
    }

    private void x(RecyclerView.z zVar) {
        if (o == null) {
            o = new ValueAnimator().getInterpolator();
        }
        zVar.f1016a.animate().setInterpolator(o);
        d(zVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.f
    public boolean b() {
        return (this.q.isEmpty() && this.s.isEmpty() && this.r.isEmpty() && this.p.isEmpty() && this.e.isEmpty() && this.f.isEmpty() && this.d.isEmpty() && this.g.isEmpty() && this.b.isEmpty() && this.f1054a.isEmpty() && this.c.isEmpty()) ? false : true;
    }

    void c() {
        if (b()) {
            return;
        }
        i();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.f
    public void d() {
        int size = this.r.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            b bVar = this.r.get(size);
            View view = bVar.f1064a.f1016a;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            l(bVar.f1064a);
            this.r.remove(size);
        }
        for (int size2 = this.p.size() - 1; size2 >= 0; size2--) {
            k(this.p.get(size2));
            this.p.remove(size2);
        }
        int size3 = this.q.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            RecyclerView.z zVar = this.q.get(size3);
            zVar.f1016a.setAlpha(1.0f);
            m(zVar);
            this.q.remove(size3);
        }
        for (int size4 = this.s.size() - 1; size4 >= 0; size4--) {
            b(this.s.get(size4));
        }
        this.s.clear();
        if (b()) {
            for (int size5 = this.b.size() - 1; size5 >= 0; size5--) {
                ArrayList<b> arrayList = this.b.get(size5);
                for (int size6 = arrayList.size() - 1; size6 >= 0; size6--) {
                    b bVar2 = arrayList.get(size6);
                    View view2 = bVar2.f1064a.f1016a;
                    view2.setTranslationY(0.0f);
                    view2.setTranslationX(0.0f);
                    l(bVar2.f1064a);
                    arrayList.remove(size6);
                    if (arrayList.isEmpty()) {
                        this.b.remove(arrayList);
                    }
                }
            }
            for (int size7 = this.f1054a.size() - 1; size7 >= 0; size7--) {
                ArrayList<RecyclerView.z> arrayList2 = this.f1054a.get(size7);
                for (int size8 = arrayList2.size() - 1; size8 >= 0; size8--) {
                    RecyclerView.z zVar2 = arrayList2.get(size8);
                    zVar2.f1016a.setAlpha(1.0f);
                    m(zVar2);
                    arrayList2.remove(size8);
                    if (arrayList2.isEmpty()) {
                        this.f1054a.remove(arrayList2);
                    }
                }
            }
            for (int size9 = this.c.size() - 1; size9 >= 0; size9--) {
                ArrayList<a> arrayList3 = this.c.get(size9);
                for (int size10 = arrayList3.size() - 1; size10 >= 0; size10--) {
                    b(arrayList3.get(size10));
                    if (arrayList3.isEmpty()) {
                        this.c.remove(arrayList3);
                    }
                }
            }
            a(this.f);
            a(this.e);
            a(this.d);
            a(this.g);
            i();
        }
    }

    void a(List<RecyclerView.z> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            list.get(size).f1016a.animate().cancel();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.f
    public boolean a(@androidx.annotation.ah RecyclerView.z zVar, @androidx.annotation.ah List<Object> list) {
        return !list.isEmpty() || super.a(zVar, list);
    }
}
