package androidx.savedstate;

import android.annotation.SuppressLint;
import android.os.Bundle;
import androidx.annotation.ah;
import androidx.lifecycle.f;
import androidx.lifecycle.g;
import androidx.lifecycle.j;
import androidx.savedstate.b;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

@SuppressLint({"RestrictedApi"})
/* loaded from: /home/user/work/dex/classes.dex */
final class Recreator implements f {

    /* renamed from: a, reason: collision with root package name */
    static final String f1104a = "classes_to_restore";
    static final String b = "androidx.savedstate.Restarter";
    private final d c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Recreator(d dVar) {
        this.c = dVar;
    }

    @Override // androidx.lifecycle.h
    public void a(j jVar, g.a aVar) {
        if (aVar != g.a.ON_CREATE) {
            throw new AssertionError("Next event must be ON_CREATE");
        }
        jVar.c().b(this);
        Bundle a2 = this.c.f().a(b);
        if (a2 == null) {
            return;
        }
        ArrayList<String> stringArrayList = a2.getStringArrayList(f1104a);
        if (stringArrayList == null) {
            throw new IllegalStateException("Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
        }
        Iterator<String> it = stringArrayList.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
    }

    private void a(String str) {
        try {
            Class<? extends U> asSubclass = Class.forName(str, false, Recreator.class.getClassLoader()).asSubclass(b.a.class);
            try {
                Constructor declaredConstructor = asSubclass.getDeclaredConstructor(new Class[0]);
                declaredConstructor.setAccessible(true);
                try {
                    ((b.a) declaredConstructor.newInstance(new Object[0])).a(this.c);
                } catch (Exception e) {
                    throw new RuntimeException("Failed to instantiate " + str, e);
                }
            } catch (NoSuchMethodException e2) {
                throw new IllegalStateException("Class" + asSubclass.getSimpleName() + " must have default constructor in order to be automatically recreated", e2);
            }
        } catch (ClassNotFoundException e3) {
            throw new RuntimeException("Class " + str + " wasn't found", e3);
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    static final class a implements b.InterfaceC0077b {

        /* renamed from: a, reason: collision with root package name */
        final Set<String> f1105a = new HashSet();

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(b bVar) {
            bVar.a(Recreator.b, this);
        }

        @Override // androidx.savedstate.b.InterfaceC0077b
        @ah
        public Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putStringArrayList(Recreator.f1104a, new ArrayList<>(this.f1105a));
            return bundle;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a(String str) {
            this.f1105a.add(str);
        }
    }
}
