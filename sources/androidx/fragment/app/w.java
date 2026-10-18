package androidx.fragment.app;

import androidx.annotation.ah;
import androidx.lifecycle.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public class w implements androidx.lifecycle.j {

    /* renamed from: a, reason: collision with root package name */
    private androidx.lifecycle.k f801a = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        if (this.f801a == null) {
            this.f801a = new androidx.lifecycle.k(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b() {
        return this.f801a != null;
    }

    @Override // androidx.lifecycle.j
    @ah
    public androidx.lifecycle.g c() {
        a();
        return this.f801a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@ah g.a aVar) {
        this.f801a.a(aVar);
    }
}
