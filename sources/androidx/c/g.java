package androidx.c;

import androidx.annotation.ah;
import androidx.annotation.ai;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes.dex */
public class g<K, V> {

    /* renamed from: a, reason: collision with root package name */
    private final LinkedHashMap<K, V> f314a;
    private int b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;

    protected void a(boolean z, @ah K k, @ah V v, @ai V v2) {
    }

    protected int b(@ah K k, @ah V v) {
        return 1;
    }

    @ai
    protected V c(@ah K k) {
        return null;
    }

    public g(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.c = i;
        this.f314a = new LinkedHashMap<>(0, 0.75f, true);
    }

    public void a(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        synchronized (this) {
            this.c = i;
        }
        b(i);
    }

    @ai
    public final V a(@ah K k) {
        V v;
        if (k == null) {
            throw new NullPointerException("key == null");
        }
        synchronized (this) {
            V v2 = this.f314a.get(k);
            if (v2 != null) {
                this.g++;
                return v2;
            }
            this.h++;
            V c = c(k);
            if (c == null) {
                return null;
            }
            synchronized (this) {
                this.e++;
                v = (V) this.f314a.put(k, c);
                if (v != null) {
                    this.f314a.put(k, v);
                } else {
                    this.b += c(k, c);
                }
            }
            if (v != null) {
                a(false, k, c, v);
                return v;
            }
            b(this.c);
            return c;
        }
    }

    @ai
    public final V a(@ah K k, @ah V v) {
        V put;
        if (k == null || v == null) {
            throw new NullPointerException("key == null || value == null");
        }
        synchronized (this) {
            this.d++;
            this.b += c(k, v);
            put = this.f314a.put(k, v);
            if (put != null) {
                this.b -= c(k, put);
            }
        }
        if (put != null) {
            a(false, k, put, v);
        }
        b(this.c);
        return put;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0070, code lost:
    
        throw new java.lang.IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void b(int i) {
        K key;
        V value;
        while (true) {
            synchronized (this) {
                if (this.b >= 0 && (!this.f314a.isEmpty() || this.b == 0)) {
                    if (this.b <= i || this.f314a.isEmpty()) {
                        break;
                    }
                    Map.Entry<K, V> next = this.f314a.entrySet().iterator().next();
                    key = next.getKey();
                    value = next.getValue();
                    this.f314a.remove(key);
                    this.b -= c(key, value);
                    this.f++;
                } else {
                    break;
                }
            }
            a(true, key, value, null);
        }
    }

    @ai
    public final V b(@ah K k) {
        V remove;
        if (k == null) {
            throw new NullPointerException("key == null");
        }
        synchronized (this) {
            remove = this.f314a.remove(k);
            if (remove != null) {
                this.b -= c(k, remove);
            }
        }
        if (remove != null) {
            a(false, k, remove, null);
        }
        return remove;
    }

    private int c(K k, V v) {
        int b = b(k, v);
        if (b >= 0) {
            return b;
        }
        throw new IllegalStateException("Negative size: " + k + "=" + v);
    }

    public final void a() {
        b(-1);
    }

    public final synchronized int b() {
        return this.b;
    }

    public final synchronized int c() {
        return this.c;
    }

    public final synchronized int d() {
        return this.g;
    }

    public final synchronized int e() {
        return this.h;
    }

    public final synchronized int f() {
        return this.e;
    }

    public final synchronized int g() {
        return this.d;
    }

    public final synchronized int h() {
        return this.f;
    }

    public final synchronized Map<K, V> i() {
        return new LinkedHashMap(this.f314a);
    }

    public final synchronized String toString() {
        int i;
        i = this.g + this.h;
        return String.format(Locale.US, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.c), Integer.valueOf(this.g), Integer.valueOf(this.h), Integer.valueOf(i != 0 ? (this.g * 100) / i : 0));
    }
}
