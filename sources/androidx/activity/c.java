package androidx.activity;

import androidx.annotation.ae;
import androidx.annotation.ah;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class c {

    /* renamed from: a, reason: collision with root package name */
    private boolean f24a;
    private CopyOnWriteArrayList<a> b = new CopyOnWriteArrayList<>();

    @ae
    public abstract void c();

    public c(boolean z) {
        this.f24a = z;
    }

    @ae
    public final void a(boolean z) {
        this.f24a = z;
    }

    @ae
    public final boolean a() {
        return this.f24a;
    }

    @ae
    public final void b() {
        Iterator<a> it = this.b.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@ah a aVar) {
        this.b.add(aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(@ah a aVar) {
        this.b.remove(aVar);
    }
}
