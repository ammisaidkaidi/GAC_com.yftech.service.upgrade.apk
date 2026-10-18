package androidx.fragment.app;

import androidx.annotation.ai;
import java.util.Collection;
import java.util.Map;

@Deprecated
/* loaded from: /home/user/work/dex/classes.dex */
public class l {

    /* renamed from: a, reason: collision with root package name */
    @ai
    private final Collection<d> f777a;

    @ai
    private final Map<String, l> b;

    @ai
    private final Map<String, androidx.lifecycle.x> c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(@ai Collection<d> collection, @ai Map<String, l> map, @ai Map<String, androidx.lifecycle.x> map2) {
        this.f777a = collection;
        this.b = map;
        this.c = map2;
    }

    boolean a(d dVar) {
        if (this.f777a == null) {
            return false;
        }
        return this.f777a.contains(dVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ai
    public Collection<d> a() {
        return this.f777a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ai
    public Map<String, l> b() {
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ai
    public Map<String, androidx.lifecycle.x> c() {
        return this.c;
    }
}
