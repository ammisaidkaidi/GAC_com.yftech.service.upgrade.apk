package androidx.recyclerview.widget;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.recyclerview.widget.ae;
import androidx.recyclerview.widget.af;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: /home/user/work/dex/classes.dex */
class u<T> implements ae<T> {

    /* renamed from: androidx.recyclerview.widget.u$1, reason: invalid class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    class AnonymousClass1 implements ae.b<T> {
        static final int b = 1;
        static final int c = 2;
        static final int d = 3;
        final /* synthetic */ ae.b e;

        /* renamed from: a, reason: collision with root package name */
        final a f1094a = new a();
        private final Handler g = new Handler(Looper.getMainLooper());
        private Runnable h = new Runnable() { // from class: androidx.recyclerview.widget.u.1.1
            @Override // java.lang.Runnable
            public void run() {
                b a2 = AnonymousClass1.this.f1094a.a();
                while (a2 != null) {
                    switch (a2.b) {
                        case 1:
                            AnonymousClass1.this.e.a(a2.c, a2.d);
                            break;
                        case 2:
                            AnonymousClass1.this.e.a(a2.c, (af.a) a2.h);
                            break;
                        case 3:
                            AnonymousClass1.this.e.b(a2.c, a2.d);
                            break;
                        default:
                            Log.e("ThreadUtil", "Unsupported message, what=" + a2.b);
                            break;
                    }
                    a2 = AnonymousClass1.this.f1094a.a();
                }
            }
        };

        AnonymousClass1(ae.b bVar) {
            this.e = bVar;
        }

        @Override // androidx.recyclerview.widget.ae.b
        public void a(int i, int i2) {
            a(b.a(1, i, i2));
        }

        @Override // androidx.recyclerview.widget.ae.b
        public void a(int i, af.a<T> aVar) {
            a(b.a(2, i, aVar));
        }

        @Override // androidx.recyclerview.widget.ae.b
        public void b(int i, int i2) {
            a(b.a(3, i, i2));
        }

        private void a(b bVar) {
            this.f1094a.b(bVar);
            this.g.post(this.h);
        }
    }

    @Override // androidx.recyclerview.widget.ae
    public ae.b<T> a(ae.b<T> bVar) {
        return new AnonymousClass1(bVar);
    }

    /* renamed from: androidx.recyclerview.widget.u$2, reason: invalid class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    class AnonymousClass2 implements ae.a<T> {
        static final int c = 1;
        static final int d = 2;
        static final int e = 3;
        static final int f = 4;
        final /* synthetic */ ae.a g;

        /* renamed from: a, reason: collision with root package name */
        final a f1096a = new a();
        private final Executor i = AsyncTask.THREAD_POOL_EXECUTOR;
        AtomicBoolean b = new AtomicBoolean(false);
        private Runnable j = new Runnable() { // from class: androidx.recyclerview.widget.u.2.1
            @Override // java.lang.Runnable
            public void run() {
                while (true) {
                    b a2 = AnonymousClass2.this.f1096a.a();
                    if (a2 != null) {
                        switch (a2.b) {
                            case 1:
                                AnonymousClass2.this.f1096a.a(1);
                                AnonymousClass2.this.g.a(a2.c);
                                break;
                            case 2:
                                AnonymousClass2.this.f1096a.a(2);
                                AnonymousClass2.this.f1096a.a(3);
                                AnonymousClass2.this.g.a(a2.c, a2.d, a2.e, a2.f, a2.g);
                                break;
                            case 3:
                                AnonymousClass2.this.g.a(a2.c, a2.d);
                                break;
                            case 4:
                                AnonymousClass2.this.g.a((af.a) a2.h);
                                break;
                            default:
                                Log.e("ThreadUtil", "Unsupported message, what=" + a2.b);
                                break;
                        }
                    } else {
                        AnonymousClass2.this.b.set(false);
                        return;
                    }
                }
            }
        };

        AnonymousClass2(ae.a aVar) {
            this.g = aVar;
        }

        @Override // androidx.recyclerview.widget.ae.a
        public void a(int i) {
            b(b.a(1, i, (Object) null));
        }

        @Override // androidx.recyclerview.widget.ae.a
        public void a(int i, int i2, int i3, int i4, int i5) {
            b(b.a(2, i, i2, i3, i4, i5, null));
        }

        @Override // androidx.recyclerview.widget.ae.a
        public void a(int i, int i2) {
            a(b.a(3, i, i2));
        }

        @Override // androidx.recyclerview.widget.ae.a
        public void a(af.a<T> aVar) {
            a(b.a(4, 0, aVar));
        }

        private void a(b bVar) {
            this.f1096a.b(bVar);
            a();
        }

        private void b(b bVar) {
            this.f1096a.a(bVar);
            a();
        }

        private void a() {
            if (this.b.compareAndSet(false, true)) {
                this.i.execute(this.j);
            }
        }
    }

    @Override // androidx.recyclerview.widget.ae
    public ae.a<T> a(ae.a<T> aVar) {
        return new AnonymousClass2(aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class b {
        private static b i;
        private static final Object j = new Object();

        /* renamed from: a, reason: collision with root package name */
        b f1099a;
        public int b;
        public int c;
        public int d;
        public int e;
        public int f;
        public int g;
        public Object h;

        b() {
        }

        void a() {
            this.f1099a = null;
            this.g = 0;
            this.f = 0;
            this.e = 0;
            this.d = 0;
            this.c = 0;
            this.b = 0;
            this.h = null;
            synchronized (j) {
                if (i != null) {
                    this.f1099a = i;
                }
                i = this;
            }
        }

        static b a(int i2, int i3, int i4, int i5, int i6, int i7, Object obj) {
            b bVar;
            synchronized (j) {
                if (i == null) {
                    bVar = new b();
                } else {
                    bVar = i;
                    i = i.f1099a;
                    bVar.f1099a = null;
                }
                bVar.b = i2;
                bVar.c = i3;
                bVar.d = i4;
                bVar.e = i5;
                bVar.f = i6;
                bVar.g = i7;
                bVar.h = obj;
            }
            return bVar;
        }

        static b a(int i2, int i3, int i4) {
            return a(i2, i3, i4, 0, 0, 0, null);
        }

        static b a(int i2, int i3, Object obj) {
            return a(i2, i3, 0, 0, 0, 0, obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private b f1098a;

        a() {
        }

        synchronized b a() {
            if (this.f1098a == null) {
                return null;
            }
            b bVar = this.f1098a;
            this.f1098a = this.f1098a.f1099a;
            return bVar;
        }

        synchronized void a(b bVar) {
            bVar.f1099a = this.f1098a;
            this.f1098a = bVar;
        }

        synchronized void b(b bVar) {
            if (this.f1098a == null) {
                this.f1098a = bVar;
                return;
            }
            b bVar2 = this.f1098a;
            while (bVar2.f1099a != null) {
                bVar2 = bVar2.f1099a;
            }
            bVar2.f1099a = bVar;
        }

        synchronized void a(int i) {
            while (this.f1098a != null && this.f1098a.b == i) {
                b bVar = this.f1098a;
                this.f1098a = this.f1098a.f1099a;
                bVar.a();
            }
            if (this.f1098a != null) {
                b bVar2 = this.f1098a;
                b bVar3 = bVar2.f1099a;
                while (bVar3 != null) {
                    b bVar4 = bVar3.f1099a;
                    if (bVar3.b == i) {
                        bVar2.f1099a = bVar4;
                        bVar3.a();
                    } else {
                        bVar2 = bVar3;
                    }
                    bVar3 = bVar4;
                }
            }
        }
    }
}
