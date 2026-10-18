package androidx.i.b;

import android.os.Binder;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.util.Log;
import androidx.annotation.ap;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: /home/user/work/dex/classes.dex */
abstract class d<Params, Progress, Result> {

    /* renamed from: a, reason: collision with root package name */
    private static final String f823a = "AsyncTask";
    private static final int b = 5;
    private static final int f = 128;
    private static final int g = 1;
    private static final int j = 1;
    private static final int k = 2;
    private static b l;
    private static final ThreadFactory h = new ThreadFactory() { // from class: androidx.i.b.d.1

        /* renamed from: a, reason: collision with root package name */
        private final AtomicInteger f824a = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "ModernAsyncTask #" + this.f824a.getAndIncrement());
        }
    };
    private static final BlockingQueue<Runnable> i = new LinkedBlockingQueue(10);
    public static final Executor c = new ThreadPoolExecutor(5, 128, 1, TimeUnit.SECONDS, i, h);
    private static volatile Executor m = c;
    private volatile c p = c.PENDING;
    final AtomicBoolean d = new AtomicBoolean();
    final AtomicBoolean e = new AtomicBoolean();
    private final AbstractCallableC0066d<Params, Result> n = new AbstractCallableC0066d<Params, Result>() { // from class: androidx.i.b.d.2
        @Override // java.util.concurrent.Callable
        public Result call() {
            Result result;
            d.this.e.set(true);
            Result result2 = null;
            try {
                try {
                    Process.setThreadPriority(10);
                    result = (Result) d.this.a((Object[]) this.b);
                } catch (Throwable th) {
                    th = th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                Binder.flushPendingCommands();
                d.this.d((d) result);
                return result;
            } catch (Throwable th3) {
                th = th3;
                result2 = result;
                d.this.d((d) result2);
                throw th;
            }
        }
    };
    private final FutureTask<Result> o = new FutureTask<Result>(this.n) { // from class: androidx.i.b.d.3
        @Override // java.util.concurrent.FutureTask
        protected void done() {
            try {
                d.this.c((d) get());
            } catch (InterruptedException e) {
                Log.w(d.f823a, e);
            } catch (CancellationException unused) {
                d.this.c((d) null);
            } catch (ExecutionException e2) {
                throw new RuntimeException("An error occurred while executing doInBackground()", e2.getCause());
            } catch (Throwable th) {
                throw new RuntimeException("An error occurred while executing doInBackground()", th);
            }
        }
    };

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum c {
        PENDING,
        RUNNING,
        FINISHED
    }

    protected abstract Result a(Params... paramsArr);

    protected void a(Result result) {
    }

    protected void b(Progress... progressArr) {
    }

    protected void c() {
    }

    protected void d() {
    }

    private static Handler a() {
        b bVar;
        synchronized (d.class) {
            if (l == null) {
                l = new b();
            }
            bVar = l;
        }
        return bVar;
    }

    @ap(a = {ap.a.LIBRARY_GROUP})
    public static void a(Executor executor) {
        m = executor;
    }

    void c(Result result) {
        if (this.e.get()) {
            return;
        }
        d((d<Params, Progress, Result>) result);
    }

    Result d(Result result) {
        a().obtainMessage(1, new a(this, result)).sendToTarget();
        return result;
    }

    public final c b() {
        return this.p;
    }

    protected void b(Result result) {
        d();
    }

    public final boolean e() {
        return this.d.get();
    }

    public final boolean a(boolean z) {
        this.d.set(true);
        return this.o.cancel(z);
    }

    public final Result f() {
        return this.o.get();
    }

    public final Result a(long j2, TimeUnit timeUnit) {
        return this.o.get(j2, timeUnit);
    }

    public final d<Params, Progress, Result> c(Params... paramsArr) {
        return a(m, paramsArr);
    }

    public final d<Params, Progress, Result> a(Executor executor, Params... paramsArr) {
        if (this.p != c.PENDING) {
            switch (this.p) {
                case RUNNING:
                    throw new IllegalStateException("Cannot execute task: the task is already running.");
                case FINISHED:
                    throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
                default:
                    throw new IllegalStateException("We should never reach this state");
            }
        }
        this.p = c.RUNNING;
        c();
        this.n.b = paramsArr;
        executor.execute(this.o);
        return this;
    }

    public static void a(Runnable runnable) {
        m.execute(runnable);
    }

    protected final void d(Progress... progressArr) {
        if (e()) {
            return;
        }
        a().obtainMessage(2, new a(this, progressArr)).sendToTarget();
    }

    void e(Result result) {
        if (e()) {
            b((d<Params, Progress, Result>) result);
        } else {
            a((d<Params, Progress, Result>) result);
        }
        this.p = c.FINISHED;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class b extends Handler {
        b() {
            super(Looper.getMainLooper());
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            a aVar = (a) message.obj;
            switch (message.what) {
                case 1:
                    aVar.f828a.e(aVar.b[0]);
                    return;
                case 2:
                    aVar.f828a.b((Object[]) aVar.b);
                    return;
                default:
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.i.b.d$d, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class AbstractCallableC0066d<Params, Result> implements Callable<Result> {
        Params[] b;

        AbstractCallableC0066d() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a<Data> {

        /* renamed from: a, reason: collision with root package name */
        final d f828a;
        final Data[] b;

        a(d dVar, Data... dataArr) {
            this.f828a = dVar;
            this.b = dataArr;
        }
    }
}
