package com.google.android.material.snackbar;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.ah;
import androidx.annotation.ai;
import java.lang.ref.WeakReference;

/* loaded from: /home/user/work/dex/classes.dex */
class b {

    /* renamed from: a, reason: collision with root package name */
    static final int f1402a = 0;
    private static final int b = 1500;
    private static final int c = 2750;
    private static b d;

    @ah
    private final Object e = new Object();

    @ah
    private final Handler f = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: com.google.android.material.snackbar.b.1
        @Override // android.os.Handler.Callback
        public boolean handleMessage(@ah Message message) {
            if (message.what != 0) {
                return false;
            }
            b.this.a((C0094b) message.obj);
            return true;
        }
    });

    @ai
    private C0094b g;

    @ai
    private C0094b h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface a {
        void a();

        void a(int i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b a() {
        if (d == null) {
            d = new b();
        }
        return d;
    }

    private b() {
    }

    public void a(int i, a aVar) {
        synchronized (this.e) {
            if (g(aVar)) {
                this.g.b = i;
                this.f.removeCallbacksAndMessages(this.g);
                b(this.g);
                return;
            }
            if (h(aVar)) {
                this.h.b = i;
            } else {
                this.h = new C0094b(i, aVar);
            }
            if (this.g == null || !a(this.g, 4)) {
                this.g = null;
                b();
            }
        }
    }

    public void a(a aVar, int i) {
        synchronized (this.e) {
            if (g(aVar)) {
                a(this.g, i);
            } else if (h(aVar)) {
                a(this.h, i);
            }
        }
    }

    public void a(a aVar) {
        synchronized (this.e) {
            if (g(aVar)) {
                this.g = null;
                if (this.h != null) {
                    b();
                }
            }
        }
    }

    public void b(a aVar) {
        synchronized (this.e) {
            if (g(aVar)) {
                b(this.g);
            }
        }
    }

    public void c(a aVar) {
        synchronized (this.e) {
            if (g(aVar) && !this.g.c) {
                this.g.c = true;
                this.f.removeCallbacksAndMessages(this.g);
            }
        }
    }

    public void d(a aVar) {
        synchronized (this.e) {
            if (g(aVar) && this.g.c) {
                this.g.c = false;
                b(this.g);
            }
        }
    }

    public boolean e(a aVar) {
        boolean g;
        synchronized (this.e) {
            g = g(aVar);
        }
        return g;
    }

    public boolean f(a aVar) {
        boolean z;
        synchronized (this.e) {
            z = g(aVar) || h(aVar);
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.material.snackbar.b$b, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class C0094b {

        /* renamed from: a, reason: collision with root package name */
        @ah
        final WeakReference<a> f1404a;
        int b;
        boolean c;

        C0094b(int i, a aVar) {
            this.f1404a = new WeakReference<>(aVar);
            this.b = i;
        }

        boolean a(@ai a aVar) {
            return aVar != null && this.f1404a.get() == aVar;
        }
    }

    private void b() {
        if (this.h != null) {
            this.g = this.h;
            this.h = null;
            a aVar = this.g.f1404a.get();
            if (aVar != null) {
                aVar.a();
            } else {
                this.g = null;
            }
        }
    }

    private boolean a(@ah C0094b c0094b, int i) {
        a aVar = c0094b.f1404a.get();
        if (aVar == null) {
            return false;
        }
        this.f.removeCallbacksAndMessages(c0094b);
        aVar.a(i);
        return true;
    }

    private boolean g(a aVar) {
        return this.g != null && this.g.a(aVar);
    }

    private boolean h(a aVar) {
        return this.h != null && this.h.a(aVar);
    }

    private void b(@ah C0094b c0094b) {
        if (c0094b.b == -2) {
            return;
        }
        int i = c;
        if (c0094b.b > 0) {
            i = c0094b.b;
        } else if (c0094b.b == -1) {
            i = b;
        }
        this.f.removeCallbacksAndMessages(c0094b);
        this.f.sendMessageDelayed(Message.obtain(this.f, 0, c0094b), i);
    }

    void a(@ah C0094b c0094b) {
        synchronized (this.e) {
            if (this.g == c0094b || this.h == c0094b) {
                a(c0094b, 2);
            }
        }
    }
}
