package androidx.c;

import androidx.annotation.ah;
import androidx.annotation.ai;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* loaded from: /home/user/work/dex/classes.dex */
public class a<K, V> extends i<K, V> implements Map<K, V> {

    /* renamed from: a, reason: collision with root package name */
    @ai
    h<K, V> f306a;

    public a() {
    }

    public a(int i) {
        super(i);
    }

    public a(i iVar) {
        super(iVar);
    }

    private h<K, V> b() {
        if (this.f306a == null) {
            this.f306a = new h<K, V>() { // from class: androidx.c.a.1
                @Override // androidx.c.h
                protected int a() {
                    return a.this.h;
                }

                @Override // androidx.c.h
                protected Object a(int i, int i2) {
                    return a.this.g[(i << 1) + i2];
                }

                @Override // androidx.c.h
                protected int a(Object obj) {
                    return a.this.a(obj);
                }

                @Override // androidx.c.h
                protected int b(Object obj) {
                    return a.this.b(obj);
                }

                @Override // androidx.c.h
                protected Map<K, V> b() {
                    return a.this;
                }

                @Override // androidx.c.h
                protected void a(K k, V v) {
                    a.this.put(k, v);
                }

                @Override // androidx.c.h
                protected V a(int i, V v) {
                    return a.this.a(i, (int) v);
                }

                @Override // androidx.c.h
                protected void a(int i) {
                    a.this.d(i);
                }

                @Override // androidx.c.h
                protected void c() {
                    a.this.clear();
                }
            };
        }
        return this.f306a;
    }

    public boolean a(@ah Collection<?> collection) {
        return h.a((Map) this, collection);
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        a(this.h + map.size());
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    public boolean b(@ah Collection<?> collection) {
        return h.b(this, collection);
    }

    public boolean c(@ah Collection<?> collection) {
        return h.c(this, collection);
    }

    @Override // java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        return b().d();
    }

    @Override // java.util.Map
    public Set<K> keySet() {
        return b().e();
    }

    @Override // java.util.Map
    public Collection<V> values() {
        return b().f();
    }
}
