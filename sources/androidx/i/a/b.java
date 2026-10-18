package androidx.i.a;

import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.ae;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.i.a.a;
import androidx.i.b.c;
import androidx.lifecycle.j;
import androidx.lifecycle.p;
import androidx.lifecycle.q;
import androidx.lifecycle.v;
import androidx.lifecycle.w;
import androidx.lifecycle.x;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public class b extends androidx.i.a.a {

    /* renamed from: a, reason: collision with root package name */
    static final String f816a = "LoaderManager";
    static boolean b = false;

    @ah
    private final j c;

    @ah
    private final c d;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a<D> extends p<D> implements c.InterfaceC0065c<D> {

        /* renamed from: a, reason: collision with root package name */
        private final int f817a;

        @ai
        private final Bundle g;

        @ah
        private final androidx.i.b.c<D> h;
        private j i;
        private C0063b<D> j;
        private androidx.i.b.c<D> k;

        a(int i, @ai Bundle bundle, @ah androidx.i.b.c<D> cVar, @ai androidx.i.b.c<D> cVar2) {
            this.f817a = i;
            this.g = bundle;
            this.h = cVar;
            this.k = cVar2;
            this.h.a(i, this);
        }

        @ah
        androidx.i.b.c<D> g() {
            return this.h;
        }

        @Override // androidx.lifecycle.LiveData
        protected void a() {
            if (b.b) {
                Log.v(b.f816a, "  Starting: " + this);
            }
            this.h.x();
        }

        @Override // androidx.lifecycle.LiveData
        protected void d() {
            if (b.b) {
                Log.v(b.f816a, "  Stopping: " + this);
            }
            this.h.A();
        }

        @ae
        @ah
        androidx.i.b.c<D> a(@ah j jVar, @ah a.InterfaceC0062a<D> interfaceC0062a) {
            C0063b<D> c0063b = new C0063b<>(this.h, interfaceC0062a);
            a(jVar, c0063b);
            if (this.j != null) {
                b((q) this.j);
            }
            this.i = jVar;
            this.j = c0063b;
            return this.h;
        }

        void h() {
            j jVar = this.i;
            C0063b<D> c0063b = this.j;
            if (jVar == null || c0063b == null) {
                return;
            }
            super.b((q) c0063b);
            a(jVar, c0063b);
        }

        boolean i() {
            return (!f() || this.j == null || this.j.a()) ? false : true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.lifecycle.LiveData
        public void b(@ah q<? super D> qVar) {
            super.b((q) qVar);
            this.i = null;
            this.j = null;
        }

        @ae
        androidx.i.b.c<D> a(boolean z) {
            if (b.b) {
                Log.v(b.f816a, "  Destroying: " + this);
            }
            this.h.y();
            this.h.B();
            C0063b<D> c0063b = this.j;
            if (c0063b != null) {
                b((q) c0063b);
                if (z) {
                    c0063b.b();
                }
            }
            this.h.a(this);
            if ((c0063b != null && !c0063b.a()) || z) {
                this.h.D();
                return this.k;
            }
            return this.h;
        }

        @Override // androidx.i.b.c.InterfaceC0065c
        public void a(@ah androidx.i.b.c<D> cVar, @ai D d) {
            if (b.b) {
                Log.v(b.f816a, "onLoadComplete: " + this);
            }
            if (Looper.myLooper() == Looper.getMainLooper()) {
                b((a<D>) d);
                return;
            }
            if (b.b) {
                Log.w(b.f816a, "onLoadComplete was incorrectly called on a background thread");
            }
            a((a<D>) d);
        }

        @Override // androidx.lifecycle.p, androidx.lifecycle.LiveData
        public void b(D d) {
            super.b((a<D>) d);
            if (this.k != null) {
                this.k.D();
                this.k = null;
            }
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(64);
            sb.append("LoaderInfo{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" #");
            sb.append(this.f817a);
            sb.append(" : ");
            androidx.core.m.c.a(this.h, sb);
            sb.append("}}");
            return sb.toString();
        }

        public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            printWriter.print(str);
            printWriter.print("mId=");
            printWriter.print(this.f817a);
            printWriter.print(" mArgs=");
            printWriter.println(this.g);
            printWriter.print(str);
            printWriter.print("mLoader=");
            printWriter.println(this.h);
            this.h.a(str + "  ", fileDescriptor, printWriter, strArr);
            if (this.j != null) {
                printWriter.print(str);
                printWriter.print("mCallbacks=");
                printWriter.println(this.j);
                this.j.a(str + "  ", printWriter);
            }
            printWriter.print(str);
            printWriter.print("mData=");
            printWriter.println(g().c(b()));
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.println(f());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.i.a.b$b, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class C0063b<D> implements q<D> {

        /* renamed from: a, reason: collision with root package name */
        @ah
        private final androidx.i.b.c<D> f818a;

        @ah
        private final a.InterfaceC0062a<D> b;
        private boolean c = false;

        C0063b(@ah androidx.i.b.c<D> cVar, @ah a.InterfaceC0062a<D> interfaceC0062a) {
            this.f818a = cVar;
            this.b = interfaceC0062a;
        }

        @Override // androidx.lifecycle.q
        public void a(@ai D d) {
            if (b.b) {
                Log.v(b.f816a, "  onLoadFinished in " + this.f818a + ": " + this.f818a.c(d));
            }
            this.b.a((androidx.i.b.c<androidx.i.b.c<D>>) this.f818a, (androidx.i.b.c<D>) d);
            this.c = true;
        }

        boolean a() {
            return this.c;
        }

        @ae
        void b() {
            if (this.c) {
                if (b.b) {
                    Log.v(b.f816a, "  Resetting: " + this.f818a);
                }
                this.b.a(this.f818a);
            }
        }

        public String toString() {
            return this.b.toString();
        }

        public void a(String str, PrintWriter printWriter) {
            printWriter.print(str);
            printWriter.print("mDeliveredData=");
            printWriter.println(this.c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class c extends v {

        /* renamed from: a, reason: collision with root package name */
        private static final w.b f819a = new w.b() { // from class: androidx.i.a.b.c.1
            @Override // androidx.lifecycle.w.b
            @ah
            public <T extends v> T a(@ah Class<T> cls) {
                return new c();
            }
        };
        private androidx.c.j<a> b = new androidx.c.j<>();
        private boolean c = false;

        c() {
        }

        @ah
        static c a(x xVar) {
            return (c) new w(xVar, f819a).a(c.class);
        }

        void b() {
            this.c = true;
        }

        boolean c() {
            return this.c;
        }

        void d() {
            this.c = false;
        }

        void a(int i, @ah a aVar) {
            this.b.d(i, aVar);
        }

        <D> a<D> a(int i) {
            return this.b.a(i);
        }

        void b(int i) {
            this.b.c(i);
        }

        boolean f() {
            int b = this.b.b();
            for (int i = 0; i < b; i++) {
                if (this.b.f(i).i()) {
                    return true;
                }
            }
            return false;
        }

        void g() {
            int b = this.b.b();
            for (int i = 0; i < b; i++) {
                this.b.f(i).h();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.lifecycle.v
        public void a() {
            super.a();
            int b = this.b.b();
            for (int i = 0; i < b; i++) {
                this.b.f(i).a(true);
            }
            this.b.d();
        }

        public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            if (this.b.b() > 0) {
                printWriter.print(str);
                printWriter.println("Loaders:");
                String str2 = str + "    ";
                for (int i = 0; i < this.b.b(); i++) {
                    a f = this.b.f(i);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(this.b.e(i));
                    printWriter.print(": ");
                    printWriter.println(f.toString());
                    f.a(str2, fileDescriptor, printWriter, strArr);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(@ah j jVar, @ah x xVar) {
        this.c = jVar;
        this.d = c.a(xVar);
    }

    @ae
    @ah
    private <D> androidx.i.b.c<D> a(int i, @ai Bundle bundle, @ah a.InterfaceC0062a<D> interfaceC0062a, @ai androidx.i.b.c<D> cVar) {
        try {
            this.d.b();
            androidx.i.b.c<D> a2 = interfaceC0062a.a(i, bundle);
            if (a2 == null) {
                throw new IllegalArgumentException("Object returned from onCreateLoader must not be null");
            }
            if (a2.getClass().isMemberClass() && !Modifier.isStatic(a2.getClass().getModifiers())) {
                throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + a2);
            }
            a aVar = new a(i, bundle, a2, cVar);
            if (b) {
                Log.v(f816a, "  Created new loader " + aVar);
            }
            this.d.a(i, aVar);
            this.d.d();
            return aVar.a(this.c, interfaceC0062a);
        } catch (Throwable th) {
            this.d.d();
            throw th;
        }
    }

    @Override // androidx.i.a.a
    @ae
    @ah
    public <D> androidx.i.b.c<D> a(int i, @ai Bundle bundle, @ah a.InterfaceC0062a<D> interfaceC0062a) {
        if (this.d.c()) {
            throw new IllegalStateException("Called while creating a loader");
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            throw new IllegalStateException("initLoader must be called on the main thread");
        }
        a<D> a2 = this.d.a(i);
        if (b) {
            Log.v(f816a, "initLoader in " + this + ": args=" + bundle);
        }
        if (a2 == null) {
            return a(i, bundle, interfaceC0062a, (androidx.i.b.c) null);
        }
        if (b) {
            Log.v(f816a, "  Re-using existing loader " + a2);
        }
        return a2.a(this.c, interfaceC0062a);
    }

    @Override // androidx.i.a.a
    @ae
    @ah
    public <D> androidx.i.b.c<D> b(int i, @ai Bundle bundle, @ah a.InterfaceC0062a<D> interfaceC0062a) {
        if (this.d.c()) {
            throw new IllegalStateException("Called while creating a loader");
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            throw new IllegalStateException("restartLoader must be called on the main thread");
        }
        if (b) {
            Log.v(f816a, "restartLoader in " + this + ": args=" + bundle);
        }
        a<D> a2 = this.d.a(i);
        return a(i, bundle, interfaceC0062a, a2 != null ? a2.a(false) : null);
    }

    @Override // androidx.i.a.a
    @ae
    public void a(int i) {
        if (this.d.c()) {
            throw new IllegalStateException("Called while creating a loader");
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            throw new IllegalStateException("destroyLoader must be called on the main thread");
        }
        if (b) {
            Log.v(f816a, "destroyLoader in " + this + " of " + i);
        }
        a a2 = this.d.a(i);
        if (a2 != null) {
            a2.a(true);
            this.d.b(i);
        }
    }

    @Override // androidx.i.a.a
    @ai
    public <D> androidx.i.b.c<D> b(int i) {
        if (this.d.c()) {
            throw new IllegalStateException("Called while creating a loader");
        }
        a<D> a2 = this.d.a(i);
        if (a2 != null) {
            return a2.g();
        }
        return null;
    }

    @Override // androidx.i.a.a
    public void a() {
        this.d.g();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        androidx.core.m.c.a(this.c, sb);
        sb.append("}}");
        return sb.toString();
    }

    @Override // androidx.i.a.a
    @Deprecated
    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        this.d.a(str, fileDescriptor, printWriter, strArr);
    }

    @Override // androidx.i.a.a
    public boolean b() {
        return this.d.f();
    }
}
