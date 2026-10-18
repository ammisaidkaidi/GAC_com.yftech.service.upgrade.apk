package androidx.d.c;

/* loaded from: /home/user/work/dex/classes.dex */
final class g {

    /* renamed from: a, reason: collision with root package name */
    private static final boolean f695a = false;

    /* loaded from: /home/user/work/dex/classes.dex */
    interface a<T> {
        T a();

        void a(T[] tArr, int i);

        boolean a(T t);
    }

    private g() {
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    static class b<T> implements a<T> {

        /* renamed from: a, reason: collision with root package name */
        private final Object[] f696a;
        private int b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(int i) {
            if (i <= 0) {
                throw new IllegalArgumentException("The max pool size must be > 0");
            }
            this.f696a = new Object[i];
        }

        @Override // androidx.d.c.g.a
        public T a() {
            if (this.b <= 0) {
                return null;
            }
            int i = this.b - 1;
            T t = (T) this.f696a[i];
            this.f696a[i] = null;
            this.b--;
            return t;
        }

        @Override // androidx.d.c.g.a
        public boolean a(T t) {
            if (this.b >= this.f696a.length) {
                return false;
            }
            this.f696a[this.b] = t;
            this.b++;
            return true;
        }

        @Override // androidx.d.c.g.a
        public void a(T[] tArr, int i) {
            if (i > tArr.length) {
                i = tArr.length;
            }
            for (int i2 = 0; i2 < i; i2++) {
                T t = tArr[i2];
                if (this.b < this.f696a.length) {
                    this.f696a[this.b] = t;
                    this.b++;
                }
            }
        }

        private boolean b(T t) {
            for (int i = 0; i < this.b; i++) {
                if (this.f696a[i] == t) {
                    return true;
                }
            }
            return false;
        }
    }
}
