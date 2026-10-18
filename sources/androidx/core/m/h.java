package androidx.core.m;

import androidx.annotation.ah;
import androidx.annotation.ai;

/* loaded from: /home/user/work/dex/classes.dex */
public final class h {

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface a<T> {
        @ai
        T a();

        boolean a(@ah T t);
    }

    private h() {
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class b<T> implements a<T> {

        /* renamed from: a, reason: collision with root package name */
        private final Object[] f505a;
        private int b;

        public b(int i) {
            if (i <= 0) {
                throw new IllegalArgumentException("The max pool size must be > 0");
            }
            this.f505a = new Object[i];
        }

        @Override // androidx.core.m.h.a
        public T a() {
            if (this.b <= 0) {
                return null;
            }
            int i = this.b - 1;
            T t = (T) this.f505a[i];
            this.f505a[i] = null;
            this.b--;
            return t;
        }

        @Override // androidx.core.m.h.a
        public boolean a(@ah T t) {
            if (b(t)) {
                throw new IllegalStateException("Already in the pool!");
            }
            if (this.b >= this.f505a.length) {
                return false;
            }
            this.f505a[this.b] = t;
            this.b++;
            return true;
        }

        private boolean b(@ah T t) {
            for (int i = 0; i < this.b; i++) {
                if (this.f505a[i] == t) {
                    return true;
                }
            }
            return false;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class c<T> extends b<T> {

        /* renamed from: a, reason: collision with root package name */
        private final Object f506a;

        public c(int i) {
            super(i);
            this.f506a = new Object();
        }

        @Override // androidx.core.m.h.b, androidx.core.m.h.a
        public T a() {
            T t;
            synchronized (this.f506a) {
                t = (T) super.a();
            }
            return t;
        }

        @Override // androidx.core.m.h.b, androidx.core.m.h.a
        public boolean a(@ah T t) {
            boolean a2;
            synchronized (this.f506a) {
                a2 = super.a(t);
            }
            return a2;
        }
    }
}
