package androidx.lifecycle;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* loaded from: /home/user/work/dex/classes.dex */
public class x {

    /* renamed from: a, reason: collision with root package name */
    private final HashMap<String, v> f983a = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str, v vVar) {
        v put = this.f983a.put(str, vVar);
        if (put != null) {
            put.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final v a(String str) {
        return this.f983a.get(str);
    }

    Set<String> a() {
        return new HashSet(this.f983a.keySet());
    }

    public final void b() {
        Iterator<v> it = this.f983a.values().iterator();
        while (it.hasNext()) {
            it.next().e();
        }
        this.f983a.clear();
    }
}
