package androidx.savedstate;

import android.os.Bundle;
import androidx.annotation.ae;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.lifecycle.g;

/* loaded from: /home/user/work/dex/classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    private final d f1108a;
    private final b b = new b();

    private c(d dVar) {
        this.f1108a = dVar;
    }

    @ah
    public b a() {
        return this.b;
    }

    @ae
    public void a(@ai Bundle bundle) {
        g c = this.f1108a.c();
        if (c.a() != g.b.INITIALIZED) {
            throw new IllegalStateException("Restarter must be created only during owner's initialization stage");
        }
        c.a(new Recreator(this.f1108a));
        this.b.a(c, bundle);
    }

    @ae
    public void b(@ah Bundle bundle) {
        this.b.a(bundle);
    }

    @ah
    public static c a(@ah d dVar) {
        return new c(dVar);
    }
}
