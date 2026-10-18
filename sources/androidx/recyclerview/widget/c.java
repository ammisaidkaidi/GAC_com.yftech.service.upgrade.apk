package androidx.recyclerview.widget;

import androidx.annotation.ai;
import androidx.annotation.ap;
import androidx.recyclerview.widget.i;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* loaded from: /home/user/work/dex/classes.dex */
public final class c<T> {

    /* renamed from: a, reason: collision with root package name */
    @ai
    private final Executor f1040a;

    @androidx.annotation.ah
    private final Executor b;

    @androidx.annotation.ah
    private final i.c<T> c;

    c(@ai Executor executor, @androidx.annotation.ah Executor executor2, @androidx.annotation.ah i.c<T> cVar) {
        this.f1040a = executor;
        this.b = executor2;
        this.c = cVar;
    }

    @ai
    @ap(a = {ap.a.LIBRARY})
    public Executor a() {
        return this.f1040a;
    }

    @androidx.annotation.ah
    public Executor b() {
        return this.b;
    }

    @androidx.annotation.ah
    public i.c<T> c() {
        return this.c;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class a<T> {
        private static final Object d = new Object();
        private static Executor e = null;

        /* renamed from: a, reason: collision with root package name */
        @ai
        private Executor f1041a;
        private Executor b;
        private final i.c<T> c;

        public a(@androidx.annotation.ah i.c<T> cVar) {
            this.c = cVar;
        }

        @androidx.annotation.ah
        @ap(a = {ap.a.LIBRARY})
        public a<T> a(Executor executor) {
            this.f1041a = executor;
            return this;
        }

        @androidx.annotation.ah
        public a<T> b(Executor executor) {
            this.b = executor;
            return this;
        }

        @androidx.annotation.ah
        public c<T> a() {
            if (this.b == null) {
                synchronized (d) {
                    if (e == null) {
                        e = Executors.newFixedThreadPool(2);
                    }
                }
                this.b = e;
            }
            return new c<>(this.f1041a, this.b, this.c);
        }
    }
}
