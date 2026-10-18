package androidx.a.a.a;

import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import java.util.concurrent.Executor;

@ap(a = {ap.a.LIBRARY_GROUP})
/* loaded from: /home/user/work/dex/classes.dex */
public class a extends c {

    /* renamed from: a, reason: collision with root package name */
    private static volatile a f8a;

    @ah
    private static final Executor d = new Executor() { // from class: androidx.a.a.a.a.1
        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            a.a().b(runnable);
        }
    };

    @ah
    private static final Executor e = new Executor() { // from class: androidx.a.a.a.a.2
        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            a.a().a(runnable);
        }
    };

    @ah
    private c c = new b();

    @ah
    private c b = this.c;

    private a() {
    }

    @ah
    public static a a() {
        if (f8a != null) {
            return f8a;
        }
        synchronized (a.class) {
            if (f8a == null) {
                f8a = new a();
            }
        }
        return f8a;
    }

    public void a(@ai c cVar) {
        if (cVar == null) {
            cVar = this.c;
        }
        this.b = cVar;
    }

    @Override // androidx.a.a.a.c
    public void a(Runnable runnable) {
        this.b.a(runnable);
    }

    @Override // androidx.a.a.a.c
    public void b(Runnable runnable) {
        this.b.b(runnable);
    }

    @ah
    public static Executor b() {
        return d;
    }

    @ah
    public static Executor c() {
        return e;
    }

    @Override // androidx.a.a.a.c
    public boolean d() {
        return this.b.d();
    }
}
