package androidx.c;

import androidx.annotation.ah;
import androidx.annotation.ai;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: /home/user/work/dex/classes.dex */
public final class b<E> implements Collection<E>, Set<E> {
    private static final boolean c = false;
    private static final String d = "ArraySet";
    private static final int[] e = new int[0];
    private static final Object[] f = new Object[0];
    private static final int g = 4;
    private static final int h = 10;

    @ai
    private static Object[] i;
    private static int j;

    @ai
    private static Object[] k;
    private static int l;

    /* renamed from: a, reason: collision with root package name */
    Object[] f308a;
    int b;
    private int[] m;
    private h<E, E> n;

    private int a(Object obj, int i2) {
        int i3 = this.b;
        if (i3 == 0) {
            return -1;
        }
        int a2 = e.a(this.m, i3, i2);
        if (a2 < 0 || obj.equals(this.f308a[a2])) {
            return a2;
        }
        int i4 = a2 + 1;
        while (i4 < i3 && this.m[i4] == i2) {
            if (obj.equals(this.f308a[i4])) {
                return i4;
            }
            i4++;
        }
        for (int i5 = a2 - 1; i5 >= 0 && this.m[i5] == i2; i5--) {
            if (obj.equals(this.f308a[i5])) {
                return i5;
            }
        }
        return ~i4;
    }

    private int a() {
        int i2 = this.b;
        if (i2 == 0) {
            return -1;
        }
        int a2 = e.a(this.m, i2, 0);
        if (a2 < 0 || this.f308a[a2] == null) {
            return a2;
        }
        int i3 = a2 + 1;
        while (i3 < i2 && this.m[i3] == 0) {
            if (this.f308a[i3] == null) {
                return i3;
            }
            i3++;
        }
        for (int i4 = a2 - 1; i4 >= 0 && this.m[i4] == 0; i4--) {
            if (this.f308a[i4] == null) {
                return i4;
            }
        }
        return ~i3;
    }

    private void d(int i2) {
        if (i2 == 8) {
            synchronized (b.class) {
                if (k != null) {
                    Object[] objArr = k;
                    this.f308a = objArr;
                    k = (Object[]) objArr[0];
                    this.m = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    l--;
                    return;
                }
            }
        } else if (i2 == 4) {
            synchronized (b.class) {
                if (i != null) {
                    Object[] objArr2 = i;
                    this.f308a = objArr2;
                    i = (Object[]) objArr2[0];
                    this.m = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    j--;
                    return;
                }
            }
        }
        this.m = new int[i2];
        this.f308a = new Object[i2];
    }

    private static void a(int[] iArr, Object[] objArr, int i2) {
        if (iArr.length == 8) {
            synchronized (b.class) {
                if (l < 10) {
                    objArr[0] = k;
                    objArr[1] = iArr;
                    for (int i3 = i2 - 1; i3 >= 2; i3--) {
                        objArr[i3] = null;
                    }
                    k = objArr;
                    l++;
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (b.class) {
                if (j < 10) {
                    objArr[0] = i;
                    objArr[1] = iArr;
                    for (int i4 = i2 - 1; i4 >= 2; i4--) {
                        objArr[i4] = null;
                    }
                    i = objArr;
                    j++;
                }
            }
        }
    }

    public b() {
        this(0);
    }

    public b(int i2) {
        if (i2 == 0) {
            this.m = e;
            this.f308a = f;
        } else {
            d(i2);
        }
        this.b = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(@ai b<E> bVar) {
        this();
        if (bVar != 0) {
            a((b) bVar);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(@ai Collection<E> collection) {
        this();
        if (collection != 0) {
            addAll(collection);
        }
    }

    @Override // java.util.Collection, java.util.Set
    public void clear() {
        if (this.b != 0) {
            a(this.m, this.f308a, this.b);
            this.m = e;
            this.f308a = f;
            this.b = 0;
        }
    }

    public void a(int i2) {
        if (this.m.length < i2) {
            int[] iArr = this.m;
            Object[] objArr = this.f308a;
            d(i2);
            if (this.b > 0) {
                System.arraycopy(iArr, 0, this.m, 0, this.b);
                System.arraycopy(objArr, 0, this.f308a, 0, this.b);
            }
            a(iArr, objArr, this.b);
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean contains(@ai Object obj) {
        return a(obj) >= 0;
    }

    public int a(@ai Object obj) {
        return obj == null ? a() : a(obj, obj.hashCode());
    }

    @ai
    public E b(int i2) {
        return (E) this.f308a[i2];
    }

    @Override // java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.b <= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean add(@ai E e2) {
        int i2;
        int a2;
        if (e2 == null) {
            a2 = a();
            i2 = 0;
        } else {
            int hashCode = e2.hashCode();
            i2 = hashCode;
            a2 = a(e2, hashCode);
        }
        if (a2 >= 0) {
            return false;
        }
        int i3 = ~a2;
        if (this.b >= this.m.length) {
            int i4 = 4;
            if (this.b >= 8) {
                i4 = (this.b >> 1) + this.b;
            } else if (this.b >= 4) {
                i4 = 8;
            }
            int[] iArr = this.m;
            Object[] objArr = this.f308a;
            d(i4);
            if (this.m.length > 0) {
                System.arraycopy(iArr, 0, this.m, 0, iArr.length);
                System.arraycopy(objArr, 0, this.f308a, 0, objArr.length);
            }
            a(iArr, objArr, this.b);
        }
        if (i3 < this.b) {
            int i5 = i3 + 1;
            System.arraycopy(this.m, i3, this.m, i5, this.b - i3);
            System.arraycopy(this.f308a, i3, this.f308a, i5, this.b - i3);
        }
        this.m[i3] = i2;
        this.f308a[i3] = e2;
        this.b++;
        return true;
    }

    public void a(@ah b<? extends E> bVar) {
        int i2 = bVar.b;
        a(this.b + i2);
        if (this.b != 0) {
            for (int i3 = 0; i3 < i2; i3++) {
                add(bVar.b(i3));
            }
        } else if (i2 > 0) {
            System.arraycopy(bVar.m, 0, this.m, 0, i2);
            System.arraycopy(bVar.f308a, 0, this.f308a, 0, i2);
            this.b = i2;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean remove(@ai Object obj) {
        int a2 = a(obj);
        if (a2 < 0) {
            return false;
        }
        c(a2);
        return true;
    }

    public E c(int i2) {
        E e2 = (E) this.f308a[i2];
        if (this.b <= 1) {
            a(this.m, this.f308a, this.b);
            this.m = e;
            this.f308a = f;
            this.b = 0;
        } else {
            int i3 = 8;
            if (this.m.length > 8 && this.b < this.m.length / 3) {
                if (this.b > 8) {
                    i3 = (this.b >> 1) + this.b;
                }
                int[] iArr = this.m;
                Object[] objArr = this.f308a;
                d(i3);
                this.b--;
                if (i2 > 0) {
                    System.arraycopy(iArr, 0, this.m, 0, i2);
                    System.arraycopy(objArr, 0, this.f308a, 0, i2);
                }
                if (i2 < this.b) {
                    int i4 = i2 + 1;
                    System.arraycopy(iArr, i4, this.m, i2, this.b - i2);
                    System.arraycopy(objArr, i4, this.f308a, i2, this.b - i2);
                }
            } else {
                this.b--;
                if (i2 < this.b) {
                    int i5 = i2 + 1;
                    System.arraycopy(this.m, i5, this.m, i2, this.b - i2);
                    System.arraycopy(this.f308a, i5, this.f308a, i2, this.b - i2);
                }
                this.f308a[this.b] = null;
            }
        }
        return e2;
    }

    public boolean b(@ah b<? extends E> bVar) {
        int i2 = bVar.b;
        int i3 = this.b;
        for (int i4 = 0; i4 < i2; i4++) {
            remove(bVar.b(i4));
        }
        return i3 != this.b;
    }

    @Override // java.util.Collection, java.util.Set
    public int size() {
        return this.b;
    }

    @Override // java.util.Collection, java.util.Set
    @ah
    public Object[] toArray() {
        Object[] objArr = new Object[this.b];
        System.arraycopy(this.f308a, 0, objArr, 0, this.b);
        return objArr;
    }

    @Override // java.util.Collection, java.util.Set
    @ah
    public <T> T[] toArray(@ah T[] tArr) {
        if (tArr.length < this.b) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.b));
        }
        System.arraycopy(this.f308a, 0, tArr, 0, this.b);
        if (tArr.length > this.b) {
            tArr[this.b] = null;
        }
        return tArr;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        if (size() != set.size()) {
            return false;
        }
        for (int i2 = 0; i2 < this.b; i2++) {
            try {
                if (!set.contains(b(i2))) {
                    return false;
                }
            } catch (ClassCastException unused) {
                return false;
            } catch (NullPointerException unused2) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        int[] iArr = this.m;
        int i2 = this.b;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i3 += iArr[i4];
        }
        return i3;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.b * 14);
        sb.append('{');
        for (int i2 = 0; i2 < this.b; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            E b = b(i2);
            if (b != this) {
                sb.append(b);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    private h<E, E> b() {
        if (this.n == null) {
            this.n = new h<E, E>() { // from class: androidx.c.b.1
                @Override // androidx.c.h
                protected int a() {
                    return b.this.b;
                }

                @Override // androidx.c.h
                protected Object a(int i2, int i3) {
                    return b.this.f308a[i2];
                }

                @Override // androidx.c.h
                protected int a(Object obj) {
                    return b.this.a(obj);
                }

                @Override // androidx.c.h
                protected int b(Object obj) {
                    return b.this.a(obj);
                }

                @Override // androidx.c.h
                protected Map<E, E> b() {
                    throw new UnsupportedOperationException("not a map");
                }

                @Override // androidx.c.h
                protected void a(E e2, E e3) {
                    b.this.add(e2);
                }

                @Override // androidx.c.h
                protected E a(int i2, E e2) {
                    throw new UnsupportedOperationException("not a map");
                }

                @Override // androidx.c.h
                protected void a(int i2) {
                    b.this.c(i2);
                }

                @Override // androidx.c.h
                protected void c() {
                    b.this.clear();
                }
            };
        }
        return this.n;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return b().e().iterator();
    }

    @Override // java.util.Collection, java.util.Set
    public boolean containsAll(@ah Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean addAll(@ah Collection<? extends E> collection) {
        a(this.b + collection.size());
        Iterator<? extends E> it = collection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            z |= add(it.next());
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean removeAll(@ah Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            z |= remove(it.next());
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean retainAll(@ah Collection<?> collection) {
        boolean z = false;
        for (int i2 = this.b - 1; i2 >= 0; i2--) {
            if (!collection.contains(this.f308a[i2])) {
                c(i2);
                z = true;
            }
        }
        return z;
    }
}
