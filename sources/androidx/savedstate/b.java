package androidx.savedstate;

import android.annotation.SuppressLint;
import android.os.Bundle;
import androidx.annotation.ae;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.lifecycle.f;
import androidx.lifecycle.g;
import androidx.lifecycle.j;
import androidx.savedstate.Recreator;
import java.util.Map;

@SuppressLint({"RestrictedApi"})
/* loaded from: /home/user/work/dex/classes.dex */
public final class b {
    private static final String b = "androidx.lifecycle.BundlableSavedStateRegistry.key";

    @ai
    private Bundle d;
    private boolean e;
    private Recreator.a f;
    private androidx.a.a.b.b<String, InterfaceC0077b> c = new androidx.a.a.b.b<>();

    /* renamed from: a, reason: collision with root package name */
    boolean f1107a = true;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface a {
        void a(@ah d dVar);
    }

    /* renamed from: androidx.savedstate.b$b, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface InterfaceC0077b {
        @ah
        Bundle a();
    }

    @ae
    @ai
    public Bundle a(@ah String str) {
        if (!this.e) {
            throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component");
        }
        if (this.d == null) {
            return null;
        }
        Bundle bundle = this.d.getBundle(str);
        this.d.remove(str);
        if (this.d.isEmpty()) {
            this.d = null;
        }
        return bundle;
    }

    @ae
    public void a(@ah String str, @ah InterfaceC0077b interfaceC0077b) {
        if (this.c.a(str, interfaceC0077b) != null) {
            throw new IllegalArgumentException("SavedStateProvider with the given key is already registered");
        }
    }

    @ae
    public void b(@ah String str) {
        this.c.b(str);
    }

    @ae
    public boolean a() {
        return this.e;
    }

    @ae
    public void a(@ah Class<? extends a> cls) {
        if (!this.f1107a) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        if (this.f == null) {
            this.f = new Recreator.a(this);
        }
        try {
            cls.getDeclaredConstructor(new Class[0]);
            this.f.a(cls.getName());
        } catch (NoSuchMethodException e) {
            throw new IllegalArgumentException("Class" + cls.getSimpleName() + " must have default constructor in order to be automatically recreated", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ae
    public void a(@ah g gVar, @ai Bundle bundle) {
        if (this.e) {
            throw new IllegalStateException("SavedStateRegistry was already restored.");
        }
        if (bundle != null) {
            this.d = bundle.getBundle(b);
        }
        gVar.a(new f() { // from class: androidx.savedstate.SavedStateRegistry$1
            @Override // androidx.lifecycle.h
            public void a(j jVar, g.a aVar) {
                if (aVar == g.a.ON_START) {
                    b.this.f1107a = true;
                } else if (aVar == g.a.ON_STOP) {
                    b.this.f1107a = false;
                }
            }
        });
        this.e = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ae
    public void a(@ah Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (this.d != null) {
            bundle2.putAll(this.d);
        }
        androidx.a.a.b.b<String, InterfaceC0077b>.d c = this.c.c();
        while (c.hasNext()) {
            Map.Entry next = c.next();
            bundle2.putBundle((String) next.getKey(), ((InterfaceC0077b) next.getValue()).a());
        }
        bundle.putBundle(b, bundle2);
    }
}
