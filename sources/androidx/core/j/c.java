package androidx.core.j;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import androidx.annotation.ap;
import androidx.annotation.ax;
import androidx.annotation.u;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

@ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public class c {
    private static final int e = 1;
    private static final int f = 0;

    @u(a = "mLock")
    private HandlerThread b;

    @u(a = "mLock")
    private Handler c;
    private final int h;
    private final int i;
    private final String j;

    /* renamed from: a, reason: collision with root package name */
    private final Object f476a = new Object();
    private Handler.Callback g = new Handler.Callback() { // from class: androidx.core.j.c.1
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    c.this.c();
                    return true;
                case 1:
                    c.this.a((Runnable) message.obj);
                    return true;
                default:
                    return true;
            }
        }
    };

    @u(a = "mLock")
    private int d = 0;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface a<T> {
        void a(T t);
    }

    public c(String str, int i, int i2) {
        this.j = str;
        this.i = i;
        this.h = i2;
    }

    @ax
    public boolean a() {
        boolean z;
        synchronized (this.f476a) {
            z = this.b != null;
        }
        return z;
    }

    @ax
    public int b() {
        int i;
        synchronized (this.f476a) {
            i = this.d;
        }
        return i;
    }

    private void b(Runnable runnable) {
        synchronized (this.f476a) {
            if (this.b == null) {
                this.b = new HandlerThread(this.j, this.i);
                this.b.start();
                this.c = new Handler(this.b.getLooper(), this.g);
                this.d++;
            }
            this.c.removeMessages(0);
            this.c.sendMessage(this.c.obtainMessage(1, runnable));
        }
    }

    public <T> void a(final Callable<T> callable, final a<T> aVar) {
        final Handler handler = new Handler();
        b(new Runnable() { // from class: androidx.core.j.c.2
            @Override // java.lang.Runnable
            public void run() {
                final Object obj;
                try {
                    obj = callable.call();
                } catch (Exception unused) {
                    obj = null;
                }
                handler.post(new Runnable() { // from class: androidx.core.j.c.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        aVar.a(obj);
                    }
                });
            }
        });
    }

    public <T> T a(final Callable<T> callable, int i) {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition newCondition = reentrantLock.newCondition();
        final AtomicReference atomicReference = new AtomicReference();
        final AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        b(new Runnable() { // from class: androidx.core.j.c.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    atomicReference.set(callable.call());
                } catch (Exception unused) {
                }
                reentrantLock.lock();
                try {
                    atomicBoolean.set(false);
                    newCondition.signal();
                } finally {
                    reentrantLock.unlock();
                }
            }
        });
        reentrantLock.lock();
        try {
            if (!atomicBoolean.get()) {
                return (T) atomicReference.get();
            }
            long nanos = TimeUnit.MILLISECONDS.toNanos(i);
            do {
                try {
                    nanos = newCondition.awaitNanos(nanos);
                } catch (InterruptedException unused) {
                }
                if (!atomicBoolean.get()) {
                    return (T) atomicReference.get();
                }
            } while (nanos > 0);
            throw new InterruptedException("timeout");
        } finally {
            reentrantLock.unlock();
        }
    }

    void a(Runnable runnable) {
        runnable.run();
        synchronized (this.f476a) {
            this.c.removeMessages(0);
            this.c.sendMessageDelayed(this.c.obtainMessage(0), this.h);
        }
    }

    void c() {
        synchronized (this.f476a) {
            if (this.c.hasMessages(1)) {
                return;
            }
            this.b.quit();
            this.b = null;
            this.c = null;
        }
    }
}
