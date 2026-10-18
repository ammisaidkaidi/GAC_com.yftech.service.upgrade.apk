package androidx.lifecycle;

import androidx.annotation.ae;
import androidx.annotation.ah;
import androidx.annotation.ai;

/* loaded from: /home/user/work/dex/classes.dex */
public class u {
    private u() {
    }

    @ae
    public static <X, Y> LiveData<Y> a(@ah LiveData<X> liveData, @ah final androidx.a.a.c.a<X, Y> aVar) {
        final n nVar = new n();
        nVar.a(liveData, new q<X>() { // from class: androidx.lifecycle.u.1
            @Override // androidx.lifecycle.q
            public void a(@ai X x) {
                n.this.b((n) aVar.a(x));
            }
        });
        return nVar;
    }

    @ae
    public static <X, Y> LiveData<Y> b(@ah LiveData<X> liveData, @ah final androidx.a.a.c.a<X, LiveData<Y>> aVar) {
        final n nVar = new n();
        nVar.a(liveData, new q<X>() { // from class: androidx.lifecycle.u.2

            /* renamed from: a, reason: collision with root package name */
            LiveData<Y> f978a;

            @Override // androidx.lifecycle.q
            public void a(@ai X x) {
                LiveData<Y> liveData2 = (LiveData) androidx.a.a.c.a.this.a(x);
                if (this.f978a == liveData2) {
                    return;
                }
                if (this.f978a != null) {
                    nVar.a((LiveData) this.f978a);
                }
                this.f978a = liveData2;
                if (this.f978a != null) {
                    nVar.a((LiveData) this.f978a, (q) new q<Y>() { // from class: androidx.lifecycle.u.2.1
                        @Override // androidx.lifecycle.q
                        public void a(@ai Y y) {
                            nVar.b((n) y);
                        }
                    });
                }
            }
        });
        return nVar;
    }
}
