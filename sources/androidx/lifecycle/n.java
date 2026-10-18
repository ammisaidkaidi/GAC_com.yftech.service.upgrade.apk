package androidx.lifecycle;

import androidx.annotation.ae;
import androidx.annotation.ah;
import androidx.annotation.ai;
import java.util.Iterator;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes.dex */
public class n<T> extends p<T> {

    /* renamed from: a, reason: collision with root package name */
    private androidx.a.a.b.b<LiveData<?>, a<?>> f973a = new androidx.a.a.b.b<>();

    @ae
    public <S> void a(@ah LiveData<S> liveData, @ah q<? super S> qVar) {
        a<?> aVar = new a<>(liveData, qVar);
        a<?> a2 = this.f973a.a(liveData, aVar);
        if (a2 != null && a2.b != qVar) {
            throw new IllegalArgumentException("This source was already added with the different observer");
        }
        if (a2 == null && f()) {
            aVar.a();
        }
    }

    @ae
    public <S> void a(@ah LiveData<S> liveData) {
        a<?> b = this.f973a.b(liveData);
        if (b != null) {
            b.b();
        }
    }

    @Override // androidx.lifecycle.LiveData
    @androidx.annotation.i
    protected void a() {
        Iterator<Map.Entry<LiveData<?>, a<?>>> it = this.f973a.iterator();
        while (it.hasNext()) {
            it.next().getValue().a();
        }
    }

    @Override // androidx.lifecycle.LiveData
    @androidx.annotation.i
    protected void d() {
        Iterator<Map.Entry<LiveData<?>, a<?>>> it = this.f973a.iterator();
        while (it.hasNext()) {
            it.next().getValue().b();
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class a<V> implements q<V> {

        /* renamed from: a, reason: collision with root package name */
        final LiveData<V> f974a;
        final q<? super V> b;
        int c = -1;

        a(LiveData<V> liveData, q<? super V> qVar) {
            this.f974a = liveData;
            this.b = qVar;
        }

        void a() {
            this.f974a.a(this);
        }

        void b() {
            this.f974a.b(this);
        }

        @Override // androidx.lifecycle.q
        public void a(@ai V v) {
            if (this.c != this.f974a.c()) {
                this.c = this.f974a.c();
                this.b.a(v);
            }
        }
    }
}
