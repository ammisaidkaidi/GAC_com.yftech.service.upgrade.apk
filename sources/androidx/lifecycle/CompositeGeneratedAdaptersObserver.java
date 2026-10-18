package androidx.lifecycle;

import androidx.lifecycle.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public class CompositeGeneratedAdaptersObserver implements h {

    /* renamed from: a, reason: collision with root package name */
    private final e[] f950a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CompositeGeneratedAdaptersObserver(e[] eVarArr) {
        this.f950a = eVarArr;
    }

    @Override // androidx.lifecycle.h
    public void a(j jVar, g.a aVar) {
        o oVar = new o();
        for (e eVar : this.f950a) {
            eVar.a(jVar, aVar, false, oVar);
        }
        for (e eVar2 : this.f950a) {
            eVar2.a(jVar, aVar, true, oVar);
        }
    }
}
