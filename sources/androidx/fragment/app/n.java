package androidx.fragment.app;

import android.util.Log;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.lifecycle.w;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public class n extends androidx.lifecycle.v {

    /* renamed from: a, reason: collision with root package name */
    private static final w.b f779a = new w.b() { // from class: androidx.fragment.app.n.1
        @Override // androidx.lifecycle.w.b
        @ah
        public <T extends androidx.lifecycle.v> T a(@ah Class<T> cls) {
            return new n(true);
        }
    };
    private final boolean e;
    private final HashSet<d> b = new HashSet<>();
    private final HashMap<String, n> c = new HashMap<>();
    private final HashMap<String, androidx.lifecycle.x> d = new HashMap<>();
    private boolean f = false;
    private boolean g = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    @ah
    public static n a(androidx.lifecycle.x xVar) {
        return (n) new androidx.lifecycle.w(xVar, f779a).a(n.class);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(boolean z) {
        this.e = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.lifecycle.v
    public void a() {
        if (k.c) {
            Log.d("FragmentManager", "onCleared called for " + this);
        }
        this.f = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b() {
        return this.f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(@ah d dVar) {
        return this.b.add(dVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ah
    public Collection<d> c() {
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(@ah d dVar) {
        if (!this.b.contains(dVar)) {
            return true;
        }
        if (this.e) {
            return this.f;
        }
        return !this.g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c(@ah d dVar) {
        return this.b.remove(dVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ah
    public n d(@ah d dVar) {
        n nVar = this.c.get(dVar.x);
        if (nVar != null) {
            return nVar;
        }
        n nVar2 = new n(this.e);
        this.c.put(dVar.x, nVar2);
        return nVar2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ah
    public androidx.lifecycle.x e(@ah d dVar) {
        androidx.lifecycle.x xVar = this.d.get(dVar.x);
        if (xVar != null) {
            return xVar;
        }
        androidx.lifecycle.x xVar2 = new androidx.lifecycle.x();
        this.d.put(dVar.x, xVar2);
        return xVar2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(@ah d dVar) {
        if (k.c) {
            Log.d("FragmentManager", "Clearing non-config state for " + dVar);
        }
        n nVar = this.c.get(dVar.x);
        if (nVar != null) {
            nVar.a();
            this.c.remove(dVar.x);
        }
        androidx.lifecycle.x xVar = this.d.get(dVar.x);
        if (xVar != null) {
            xVar.b();
            this.d.remove(dVar.x);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    public void a(@ai l lVar) {
        this.b.clear();
        this.c.clear();
        this.d.clear();
        if (lVar != null) {
            Collection<d> a2 = lVar.a();
            if (a2 != null) {
                this.b.addAll(a2);
            }
            Map<String, l> b = lVar.b();
            if (b != null) {
                for (Map.Entry<String, l> entry : b.entrySet()) {
                    n nVar = new n(this.e);
                    nVar.a(entry.getValue());
                    this.c.put(entry.getKey(), nVar);
                }
            }
            Map<String, androidx.lifecycle.x> c = lVar.c();
            if (c != null) {
                this.d.putAll(c);
            }
        }
        this.g = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ai
    @Deprecated
    public l d() {
        if (this.b.isEmpty() && this.c.isEmpty() && this.d.isEmpty()) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, n> entry : this.c.entrySet()) {
            l d = entry.getValue().d();
            if (d != null) {
                hashMap.put(entry.getKey(), d);
            }
        }
        this.g = true;
        if (this.b.isEmpty() && hashMap.isEmpty() && this.d.isEmpty()) {
            return null;
        }
        return new l(new ArrayList(this.b), hashMap, new HashMap(this.d));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        n nVar = (n) obj;
        return this.b.equals(nVar.b) && this.c.equals(nVar.c) && this.d.equals(nVar.d);
    }

    public int hashCode() {
        return (((this.b.hashCode() * 31) + this.c.hashCode()) * 31) + this.d.hashCode();
    }

    @ah
    public String toString() {
        StringBuilder sb = new StringBuilder("FragmentManagerViewModel{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} Fragments (");
        Iterator<d> it = this.b.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") Child Non Config (");
        Iterator<String> it2 = this.c.keySet().iterator();
        while (it2.hasNext()) {
            sb.append(it2.next());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") ViewModelStores (");
        Iterator<String> it3 = this.d.keySet().iterator();
        while (it3.hasNext()) {
            sb.append(it3.next());
            if (it3.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(')');
        return sb.toString();
    }
}
