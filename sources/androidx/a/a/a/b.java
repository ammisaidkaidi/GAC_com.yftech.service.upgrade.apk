package androidx.a.a.a;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.ai;
import androidx.annotation.ap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

@ap(a = {ap.a.LIBRARY_GROUP})
/* loaded from: /home/user/work/dex/classes.dex */
public class b extends c {

    /* renamed from: a, reason: collision with root package name */
    private final Object f9a = new Object();
    private final ExecutorService b = Executors.newFixedThreadPool(2, new ThreadFactory() { // from class: androidx.a.a.a.b.1
        private static final String b = "arch_disk_io_%d";
        private final AtomicInteger c = new AtomicInteger(0);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName(String.format(b, Integer.valueOf(this.c.getAndIncrement())));
            return thread;
        }
    });

    @ai
    private volatile Handler c;

    @Override // androidx.a.a.a.c
    public void a(Runnable runnable) {
        this.b.execute(runnable);
    }

    @Override // androidx.a.a.a.c
    public void b(Runnable runnable) {
        if (this.c == null) {
            synchronized (this.f9a) {
                if (this.c == null) {
                    this.c = new Handler(Looper.getMainLooper());
                }
            }
        }
        this.c.post(runnable);
    }

    @Override // androidx.a.a.a.c
    public boolean d() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }
}
