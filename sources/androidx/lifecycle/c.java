package androidx.lifecycle;

import androidx.annotation.ae;
import androidx.annotation.ah;
import androidx.annotation.ap;
import androidx.annotation.ax;
import androidx.annotation.ay;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

@ap(a = {ap.a.LIBRARY_GROUP})
/* loaded from: /home/user/work/dex/classes.dex */
public abstract class c<T> {

    /* renamed from: a, reason: collision with root package name */
    final Executor f964a;
    final LiveData<T> b;
    final AtomicBoolean c;
    final AtomicBoolean d;

    @ax
    final Runnable e;

    @ax
    final Runnable f;

    @ay
    protected abstract T c();

    public c() {
        this(androidx.a.a.a.a.c());
    }

    public c(@ah Executor executor) {
        this.c = new AtomicBoolean(true);
        this.d = new AtomicBoolean(false);
        this.e = new Runnable() { // from class: androidx.lifecycle.c.2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            @ay
            public void run() {
                boolean z;
                do {
                    if (c.this.d.compareAndSet(false, true)) {
                        Object obj = null;
                        z = false;
                        while (c.this.c.compareAndSet(true, false)) {
                            try {
                                obj = c.this.c();
                                z = true;
                            } finally {
                                c.this.d.set(false);
                            }
                        }
                        if (z) {
                            c.this.b.a((LiveData<T>) obj);
                        }
                    } else {
                        z = false;
                    }
                    if (!z) {
                        return;
                    }
                } while (c.this.c.get());
            }
        };
        this.f = new Runnable() { // from class: androidx.lifecycle.c.3
            @Override // java.lang.Runnable
            @ae
            public void run() {
                boolean f = c.this.b.f();
                if (c.this.c.compareAndSet(false, true) && f) {
                    c.this.f964a.execute(c.this.e);
                }
            }
        };
        this.f964a = executor;
        this.b = new LiveData<T>() { // from class: androidx.lifecycle.c.1
            @Override // androidx.lifecycle.LiveData
            protected void a() {
                c.this.f964a.execute(c.this.e);
            }
        };
    }

    @ah
    public LiveData<T> a() {
        return this.b;
    }

    public void b() {
        androidx.a.a.a.a.a().c(this.f);
    }
}
