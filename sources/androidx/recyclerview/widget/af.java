package androidx.recyclerview.widget;

import android.util.SparseArray;
import java.lang.reflect.Array;

/* loaded from: /home/user/work/dex/classes.dex */
class af<T> {

    /* renamed from: a, reason: collision with root package name */
    final int f1033a;
    a<T> b;
    private final SparseArray<a<T>> c = new SparseArray<>(10);

    public af(int i) {
        this.f1033a = i;
    }

    public T a(int i) {
        if (this.b == null || !this.b.a(i)) {
            int indexOfKey = this.c.indexOfKey(i - (i % this.f1033a));
            if (indexOfKey < 0) {
                return null;
            }
            this.b = this.c.valueAt(indexOfKey);
        }
        return this.b.b(i);
    }

    public int a() {
        return this.c.size();
    }

    public void b() {
        this.c.clear();
    }

    public a<T> b(int i) {
        return this.c.valueAt(i);
    }

    public a<T> a(a<T> aVar) {
        int indexOfKey = this.c.indexOfKey(aVar.b);
        if (indexOfKey < 0) {
            this.c.put(aVar.b, aVar);
            return null;
        }
        a<T> valueAt = this.c.valueAt(indexOfKey);
        this.c.setValueAt(indexOfKey, aVar);
        if (this.b == valueAt) {
            this.b = aVar;
        }
        return valueAt;
    }

    public a<T> c(int i) {
        a<T> aVar = this.c.get(i);
        if (this.b == aVar) {
            this.b = null;
        }
        this.c.delete(i);
        return aVar;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a<T> {

        /* renamed from: a, reason: collision with root package name */
        public final T[] f1034a;
        public int b;
        public int c;
        a<T> d;

        public a(Class<T> cls, int i) {
            this.f1034a = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, i));
        }

        boolean a(int i) {
            return this.b <= i && i < this.b + this.c;
        }

        T b(int i) {
            return this.f1034a[i - this.b];
        }
    }
}
