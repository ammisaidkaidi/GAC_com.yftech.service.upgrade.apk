package androidx.core.i;

import android.os.Build;
import android.os.CancellationSignal;
import androidx.annotation.ai;

/* loaded from: /home/user/work/dex/classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    private boolean f447a;
    private a b;
    private Object c;
    private boolean d;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface a {
        void a();
    }

    public boolean a() {
        boolean z;
        synchronized (this) {
            z = this.f447a;
        }
        return z;
    }

    public void b() {
        if (a()) {
            throw new k();
        }
    }

    public void c() {
        synchronized (this) {
            if (this.f447a) {
                return;
            }
            this.f447a = true;
            this.d = true;
            a aVar = this.b;
            Object obj = this.c;
            if (aVar != null) {
                try {
                    aVar.a();
                } catch (Throwable th) {
                    synchronized (this) {
                        this.d = false;
                        notifyAll();
                        throw th;
                    }
                }
            }
            if (obj != null && Build.VERSION.SDK_INT >= 16) {
                ((CancellationSignal) obj).cancel();
            }
            synchronized (this) {
                this.d = false;
                notifyAll();
            }
        }
    }

    public void a(@ai a aVar) {
        synchronized (this) {
            e();
            if (this.b == aVar) {
                return;
            }
            this.b = aVar;
            if (this.f447a && aVar != null) {
                aVar.a();
            }
        }
    }

    @ai
    public Object d() {
        Object obj;
        if (Build.VERSION.SDK_INT < 16) {
            return null;
        }
        synchronized (this) {
            if (this.c == null) {
                this.c = new CancellationSignal();
                if (this.f447a) {
                    ((CancellationSignal) this.c).cancel();
                }
            }
            obj = this.c;
        }
        return obj;
    }

    private void e() {
        while (this.d) {
            try {
                wait();
            } catch (InterruptedException unused) {
            }
        }
    }
}
