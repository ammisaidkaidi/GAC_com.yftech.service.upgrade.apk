package androidx.c;

import androidx.annotation.ah;
import androidx.annotation.ai;
import java.util.ConcurrentModificationException;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes.dex */
public class i<K, V> {

    /* renamed from: a, reason: collision with root package name */
    private static final boolean f320a = false;

    @ai
    static Object[] b = null;
    static int c = 0;

    @ai
    static Object[] d = null;
    static int e = 0;
    private static final String i = "ArrayMap";
    private static final boolean j = true;
    private static final int k = 4;
    private static final int l = 10;
    int[] f;
    Object[] g;
    int h;

    private static int a(int[] iArr, int i2, int i3) {
        try {
            return e.a(iArr, i2, i3);
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    int a(Object obj, int i2) {
        int i3 = this.h;
        if (i3 == 0) {
            return -1;
        }
        int a2 = a(this.f, i3, i2);
        if (a2 < 0 || obj.equals(this.g[a2 << 1])) {
            return a2;
        }
        int i4 = a2 + 1;
        while (i4 < i3 && this.f[i4] == i2) {
            if (obj.equals(this.g[i4 << 1])) {
                return i4;
            }
            i4++;
        }
        for (int i5 = a2 - 1; i5 >= 0 && this.f[i5] == i2; i5--) {
            if (obj.equals(this.g[i5 << 1])) {
                return i5;
            }
        }
        return ~i4;
    }

    int a() {
        int i2 = this.h;
        if (i2 == 0) {
            return -1;
        }
        int a2 = a(this.f, i2, 0);
        if (a2 < 0 || this.g[a2 << 1] == null) {
            return a2;
        }
        int i3 = a2 + 1;
        while (i3 < i2 && this.f[i3] == 0) {
            if (this.g[i3 << 1] == null) {
                return i3;
            }
            i3++;
        }
        for (int i4 = a2 - 1; i4 >= 0 && this.f[i4] == 0; i4--) {
            if (this.g[i4 << 1] == null) {
                return i4;
            }
        }
        return ~i3;
    }

    private void e(int i2) {
        if (i2 == 8) {
            synchronized (i.class) {
                if (d != null) {
                    Object[] objArr = d;
                    this.g = objArr;
                    d = (Object[]) objArr[0];
                    this.f = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    e--;
                    return;
                }
            }
        } else if (i2 == 4) {
            synchronized (i.class) {
                if (b != null) {
                    Object[] objArr2 = b;
                    this.g = objArr2;
                    b = (Object[]) objArr2[0];
                    this.f = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    c--;
                    return;
                }
            }
        }
        this.f = new int[i2];
        this.g = new Object[i2 << 1];
    }

    private static void a(int[] iArr, Object[] objArr, int i2) {
        if (iArr.length == 8) {
            synchronized (i.class) {
                if (e < 10) {
                    objArr[0] = d;
                    objArr[1] = iArr;
                    for (int i3 = (i2 << 1) - 1; i3 >= 2; i3--) {
                        objArr[i3] = null;
                    }
                    d = objArr;
                    e++;
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (i.class) {
                if (c < 10) {
                    objArr[0] = b;
                    objArr[1] = iArr;
                    for (int i4 = (i2 << 1) - 1; i4 >= 2; i4--) {
                        objArr[i4] = null;
                    }
                    b = objArr;
                    c++;
                }
            }
        }
    }

    public i() {
        this.f = e.f312a;
        this.g = e.c;
        this.h = 0;
    }

    public i(int i2) {
        if (i2 == 0) {
            this.f = e.f312a;
            this.g = e.c;
        } else {
            e(i2);
        }
        this.h = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public i(i<K, V> iVar) {
        this();
        if (iVar != 0) {
            a((i) iVar);
        }
    }

    public void clear() {
        if (this.h > 0) {
            int[] iArr = this.f;
            Object[] objArr = this.g;
            int i2 = this.h;
            this.f = e.f312a;
            this.g = e.c;
            this.h = 0;
            a(iArr, objArr, i2);
        }
        if (this.h > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public void a(int i2) {
        int i3 = this.h;
        if (this.f.length < i2) {
            int[] iArr = this.f;
            Object[] objArr = this.g;
            e(i2);
            if (this.h > 0) {
                System.arraycopy(iArr, 0, this.f, 0, i3);
                System.arraycopy(objArr, 0, this.g, 0, i3 << 1);
            }
            a(iArr, objArr, i3);
        }
        if (this.h != i3) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean containsKey(@ai Object obj) {
        if (a(obj) >= 0) {
            return j;
        }
        return false;
    }

    public int a(@ai Object obj) {
        return obj == null ? a() : a(obj, obj.hashCode());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b(Object obj) {
        int i2 = this.h * 2;
        Object[] objArr = this.g;
        if (obj == null) {
            for (int i3 = 1; i3 < i2; i3 += 2) {
                if (objArr[i3] == null) {
                    return i3 >> 1;
                }
            }
            return -1;
        }
        for (int i4 = 1; i4 < i2; i4 += 2) {
            if (obj.equals(objArr[i4])) {
                return i4 >> 1;
            }
        }
        return -1;
    }

    public boolean containsValue(Object obj) {
        if (b(obj) >= 0) {
            return j;
        }
        return false;
    }

    @ai
    public V get(Object obj) {
        return getOrDefault(obj, null);
    }

    public V getOrDefault(Object obj, V v) {
        int a2 = a(obj);
        return a2 >= 0 ? (V) this.g[(a2 << 1) + 1] : v;
    }

    public K b(int i2) {
        return (K) this.g[i2 << 1];
    }

    public V c(int i2) {
        return (V) this.g[(i2 << 1) + 1];
    }

    public V a(int i2, V v) {
        int i3 = (i2 << 1) + 1;
        V v2 = (V) this.g[i3];
        this.g[i3] = v;
        return v2;
    }

    public boolean isEmpty() {
        if (this.h <= 0) {
            return j;
        }
        return false;
    }

    @ai
    public V put(K k2, V v) {
        int i2;
        int a2;
        int i3 = this.h;
        if (k2 == null) {
            a2 = a();
            i2 = 0;
        } else {
            int hashCode = k2.hashCode();
            i2 = hashCode;
            a2 = a(k2, hashCode);
        }
        if (a2 >= 0) {
            int i4 = (a2 << 1) + 1;
            V v2 = (V) this.g[i4];
            this.g[i4] = v;
            return v2;
        }
        int i5 = ~a2;
        if (i3 >= this.f.length) {
            int i6 = 4;
            if (i3 >= 8) {
                i6 = (i3 >> 1) + i3;
            } else if (i3 >= 4) {
                i6 = 8;
            }
            int[] iArr = this.f;
            Object[] objArr = this.g;
            e(i6);
            if (i3 != this.h) {
                throw new ConcurrentModificationException();
            }
            if (this.f.length > 0) {
                System.arraycopy(iArr, 0, this.f, 0, iArr.length);
                System.arraycopy(objArr, 0, this.g, 0, objArr.length);
            }
            a(iArr, objArr, i3);
        }
        if (i5 < i3) {
            int i7 = i5 + 1;
            System.arraycopy(this.f, i5, this.f, i7, i3 - i5);
            System.arraycopy(this.g, i5 << 1, this.g, i7 << 1, (this.h - i5) << 1);
        }
        if (i3 != this.h || i5 >= this.f.length) {
            throw new ConcurrentModificationException();
        }
        this.f[i5] = i2;
        int i8 = i5 << 1;
        this.g[i8] = k2;
        this.g[i8 + 1] = v;
        this.h++;
        return null;
    }

    public void a(@ah i<? extends K, ? extends V> iVar) {
        int i2 = iVar.h;
        a(this.h + i2);
        if (this.h != 0) {
            for (int i3 = 0; i3 < i2; i3++) {
                put(iVar.b(i3), iVar.c(i3));
            }
        } else if (i2 > 0) {
            System.arraycopy(iVar.f, 0, this.f, 0, i2);
            System.arraycopy(iVar.g, 0, this.g, 0, i2 << 1);
            this.h = i2;
        }
    }

    @ai
    public V putIfAbsent(K k2, V v) {
        V v2 = get(k2);
        return v2 == null ? put(k2, v) : v2;
    }

    @ai
    public V remove(Object obj) {
        int a2 = a(obj);
        if (a2 >= 0) {
            return d(a2);
        }
        return null;
    }

    public boolean remove(Object obj, Object obj2) {
        int a2 = a(obj);
        if (a2 < 0) {
            return false;
        }
        V c2 = c(a2);
        if (obj2 != c2 && (obj2 == null || !obj2.equals(c2))) {
            return false;
        }
        d(a2);
        return j;
    }

    public V d(int i2) {
        int i3 = i2 << 1;
        V v = (V) this.g[i3 + 1];
        int i4 = this.h;
        int i5 = 0;
        if (i4 <= 1) {
            a(this.f, this.g, i4);
            this.f = e.f312a;
            this.g = e.c;
        } else {
            int i6 = i4 - 1;
            if (this.f.length > 8 && this.h < this.f.length / 3) {
                int i7 = i4 > 8 ? i4 + (i4 >> 1) : 8;
                int[] iArr = this.f;
                Object[] objArr = this.g;
                e(i7);
                if (i4 != this.h) {
                    throw new ConcurrentModificationException();
                }
                if (i2 > 0) {
                    System.arraycopy(iArr, 0, this.f, 0, i2);
                    System.arraycopy(objArr, 0, this.g, 0, i3);
                }
                if (i2 < i6) {
                    int i8 = i2 + 1;
                    int i9 = i6 - i2;
                    System.arraycopy(iArr, i8, this.f, i2, i9);
                    System.arraycopy(objArr, i8 << 1, this.g, i3, i9 << 1);
                }
            } else {
                if (i2 < i6) {
                    int i10 = i2 + 1;
                    int i11 = i6 - i2;
                    System.arraycopy(this.f, i10, this.f, i2, i11);
                    System.arraycopy(this.g, i10 << 1, this.g, i3, i11 << 1);
                }
                int i12 = i6 << 1;
                this.g[i12] = null;
                this.g[i12 + 1] = null;
            }
            i5 = i6;
        }
        if (i4 != this.h) {
            throw new ConcurrentModificationException();
        }
        this.h = i5;
        return v;
    }

    @ai
    public V replace(K k2, V v) {
        int a2 = a(k2);
        if (a2 >= 0) {
            return a(a2, (int) v);
        }
        return null;
    }

    public boolean replace(K k2, V v, V v2) {
        int a2 = a(k2);
        if (a2 < 0) {
            return false;
        }
        V c2 = c(a2);
        if (c2 != v && (v == null || !v.equals(c2))) {
            return false;
        }
        a(a2, (int) v2);
        return j;
    }

    public int size() {
        return this.h;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return j;
        }
        if (obj instanceof i) {
            i iVar = (i) obj;
            if (size() != iVar.size()) {
                return false;
            }
            for (int i2 = 0; i2 < this.h; i2++) {
                try {
                    K b2 = b(i2);
                    V c2 = c(i2);
                    Object obj2 = iVar.get(b2);
                    if (c2 == null) {
                        if (obj2 != null || !iVar.containsKey(b2)) {
                            return false;
                        }
                    } else if (!c2.equals(obj2)) {
                        return false;
                    }
                } catch (ClassCastException unused) {
                    return false;
                } catch (NullPointerException unused2) {
                    return false;
                }
            }
            return j;
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        if (size() != map.size()) {
            return false;
        }
        for (int i3 = 0; i3 < this.h; i3++) {
            try {
                K b3 = b(i3);
                V c3 = c(i3);
                Object obj3 = map.get(b3);
                if (c3 == null) {
                    if (obj3 != null || !map.containsKey(b3)) {
                        return false;
                    }
                } else if (!c3.equals(obj3)) {
                    return false;
                }
            } catch (ClassCastException unused3) {
                return false;
            } catch (NullPointerException unused4) {
                return false;
            }
        }
        return j;
    }

    public int hashCode() {
        int[] iArr = this.f;
        Object[] objArr = this.g;
        int i2 = this.h;
        int i3 = 1;
        int i4 = 0;
        int i5 = 0;
        while (i4 < i2) {
            Object obj = objArr[i3];
            i5 += (obj == null ? 0 : obj.hashCode()) ^ iArr[i4];
            i4++;
            i3 += 2;
        }
        return i5;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.h * 28);
        sb.append('{');
        for (int i2 = 0; i2 < this.h; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            K b2 = b(i2);
            if (b2 != this) {
                sb.append(b2);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            V c2 = c(i2);
            if (c2 != this) {
                sb.append(c2);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
