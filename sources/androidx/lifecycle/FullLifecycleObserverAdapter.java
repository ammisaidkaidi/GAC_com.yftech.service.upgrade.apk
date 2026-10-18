package androidx.lifecycle;

import androidx.lifecycle.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public class FullLifecycleObserverAdapter implements h {

    /* renamed from: a, reason: collision with root package name */
    private final d f951a;
    private final h b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FullLifecycleObserverAdapter(d dVar, h hVar) {
        this.f951a = dVar;
        this.b = hVar;
    }

    @Override // androidx.lifecycle.h
    public void a(j jVar, g.a aVar) {
        switch (aVar) {
            case ON_CREATE:
                this.f951a.a(jVar);
                break;
            case ON_START:
                this.f951a.b(jVar);
                break;
            case ON_RESUME:
                this.f951a.c(jVar);
                break;
            case ON_PAUSE:
                this.f951a.d(jVar);
                break;
            case ON_STOP:
                this.f951a.e(jVar);
                break;
            case ON_DESTROY:
                this.f951a.f(jVar);
                break;
            case ON_ANY:
                throw new IllegalArgumentException("ON_ANY must not been send by anybody");
        }
        if (this.b != null) {
            this.b.a(jVar, aVar);
        }
    }
}
