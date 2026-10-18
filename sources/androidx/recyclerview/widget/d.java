package androidx.recyclerview.widget;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.ai;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.c;
import androidx.recyclerview.widget.i;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;

/* loaded from: /home/user/work/dex/classes.dex */
public class d<T> {
    private static final Executor e = new b();

    /* renamed from: a, reason: collision with root package name */
    final c<T> f1042a;
    Executor b;
    int c;
    private final t d;
    private final List<a<T>> f;

    @ai
    private List<T> g;

    @androidx.annotation.ah
    private List<T> h;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface a<T> {
        void a(@androidx.annotation.ah List<T> list, @androidx.annotation.ah List<T> list2);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class b implements Executor {

        /* renamed from: a, reason: collision with root package name */
        final Handler f1046a = new Handler(Looper.getMainLooper());

        b() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(@androidx.annotation.ah Runnable runnable) {
            this.f1046a.post(runnable);
        }
    }

    public d(@androidx.annotation.ah RecyclerView.a aVar, @androidx.annotation.ah i.c<T> cVar) {
        this(new androidx.recyclerview.widget.b(aVar), new c.a(cVar).a());
    }

    public d(@androidx.annotation.ah t tVar, @androidx.annotation.ah c<T> cVar) {
        this.f = new CopyOnWriteArrayList();
        this.h = Collections.emptyList();
        this.d = tVar;
        this.f1042a = cVar;
        if (cVar.a() != null) {
            this.b = cVar.a();
        } else {
            this.b = e;
        }
    }

    @androidx.annotation.ah
    public List<T> a() {
        return this.h;
    }

    public void a(@ai List<T> list) {
        a(list, null);
    }

    public void a(@ai final List<T> list, @ai final Runnable runnable) {
        final int i = this.c + 1;
        this.c = i;
        if (list == this.g) {
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        List<T> list2 = this.h;
        if (list == null) {
            int size = this.g.size();
            this.g = null;
            this.h = Collections.emptyList();
            this.d.b(0, size);
            b(list2, runnable);
            return;
        }
        if (this.g == null) {
            this.g = list;
            this.h = Collections.unmodifiableList(list);
            this.d.a(0, list.size());
            b(list2, runnable);
            return;
        }
        final List<T> list3 = this.g;
        this.f1042a.b().execute(new Runnable() { // from class: androidx.recyclerview.widget.d.1
            @Override // java.lang.Runnable
            public void run() {
                final i.b a2 = i.a(new i.a() { // from class: androidx.recyclerview.widget.d.1.1
                    @Override // androidx.recyclerview.widget.i.a
                    public int a() {
                        return list3.size();
                    }

                    @Override // androidx.recyclerview.widget.i.a
                    public int b() {
                        return list.size();
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // androidx.recyclerview.widget.i.a
                    public boolean a(int i2, int i3) {
                        Object obj = list3.get(i2);
                        Object obj2 = list.get(i3);
                        if (obj == null || obj2 == null) {
                            return obj == null && obj2 == null;
                        }
                        return d.this.f1042a.c().a(obj, obj2);
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // androidx.recyclerview.widget.i.a
                    public boolean b(int i2, int i3) {
                        Object obj = list3.get(i2);
                        Object obj2 = list.get(i3);
                        if (obj != null && obj2 != null) {
                            return d.this.f1042a.c().b(obj, obj2);
                        }
                        if (obj == null && obj2 == null) {
                            return true;
                        }
                        throw new AssertionError();
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // androidx.recyclerview.widget.i.a
                    @ai
                    public Object c(int i2, int i3) {
                        Object obj = list3.get(i2);
                        Object obj2 = list.get(i3);
                        if (obj != null && obj2 != null) {
                            return d.this.f1042a.c().c(obj, obj2);
                        }
                        throw new AssertionError();
                    }
                });
                d.this.b.execute(new Runnable() { // from class: androidx.recyclerview.widget.d.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (d.this.c == i) {
                            d.this.a(list, a2, runnable);
                        }
                    }
                });
            }
        });
    }

    void a(@androidx.annotation.ah List<T> list, @androidx.annotation.ah i.b bVar, @ai Runnable runnable) {
        List<T> list2 = this.h;
        this.g = list;
        this.h = Collections.unmodifiableList(list);
        bVar.a(this.d);
        b(list2, runnable);
    }

    private void b(@androidx.annotation.ah List<T> list, @ai Runnable runnable) {
        Iterator<a<T>> it = this.f.iterator();
        while (it.hasNext()) {
            it.next().a(list, this.h);
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    public void a(@androidx.annotation.ah a<T> aVar) {
        this.f.add(aVar);
    }

    public void b(@androidx.annotation.ah a<T> aVar) {
        this.f.remove(aVar);
    }
}
