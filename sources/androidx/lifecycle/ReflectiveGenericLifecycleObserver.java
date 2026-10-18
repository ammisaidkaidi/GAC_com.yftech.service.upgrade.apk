package androidx.lifecycle;

import androidx.lifecycle.b;
import androidx.lifecycle.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public class ReflectiveGenericLifecycleObserver implements h {

    /* renamed from: a, reason: collision with root package name */
    private final Object f958a;
    private final b.a b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ReflectiveGenericLifecycleObserver(Object obj) {
        this.f958a = obj;
        this.b = b.f961a.b(this.f958a.getClass());
    }

    @Override // androidx.lifecycle.h
    public void a(j jVar, g.a aVar) {
        this.b.a(jVar, aVar, this.f958a);
    }
}
