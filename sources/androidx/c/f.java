package androidx.c;

import androidx.annotation.ah;
import androidx.annotation.ai;

/* loaded from: /home/user/work/dex/classes.dex */
public class f<E> implements Cloneable {

    /* renamed from: a, reason: collision with root package name */
    private static final Object f313a = new Object();
    private boolean b;
    private long[] c;
    private Object[] d;
    private int e;

    public f() {
        this(10);
    }

    public f(int i) {
        this.b = false;
        if (i == 0) {
            this.c = e.b;
            this.d = e.c;
        } else {
            int b = e.b(i);
            this.c = new long[b];
            this.d = new Object[b];
        }
    }

    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public f<E> clone() {
        try {
            f<E> fVar = (f) super.clone();
            fVar.c = (long[]) this.c.clone();
            fVar.d = (Object[]) this.d.clone();
            return fVar;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    @ai
    public E a(long j) {
        return a(j, (long) null);
    }

    public E a(long j, E e) {
        int a2 = e.a(this.c, this.e, j);
        return (a2 < 0 || this.d[a2] == f313a) ? e : (E) this.d[a2];
    }

    @Deprecated
    public void b(long j) {
        c(j);
    }

    public void c(long j) {
        int a2 = e.a(this.c, this.e, j);
        if (a2 < 0 || this.d[a2] == f313a) {
            return;
        }
        this.d[a2] = f313a;
        this.b = true;
    }

    public boolean b(long j, Object obj) {
        int d = d(j);
        if (d < 0) {
            return false;
        }
        E c = c(d);
        if (obj != c && (obj == null || !obj.equals(c))) {
            return false;
        }
        a(d);
        return true;
    }

    public void a(int i) {
        if (this.d[i] != f313a) {
            this.d[i] = f313a;
            this.b = true;
        }
    }

    @ai
    public E c(long j, E e) {
        int d = d(j);
        if (d < 0) {
            return null;
        }
        E e2 = (E) this.d[d];
        this.d[d] = e;
        return e2;
    }

    public boolean a(long j, E e, E e2) {
        int d = d(j);
        if (d < 0) {
            return false;
        }
        Object obj = this.d[d];
        if (obj != e && (e == null || !e.equals(obj))) {
            return false;
        }
        this.d[d] = e2;
        return true;
    }

    private void e() {
        int i = this.e;
        long[] jArr = this.c;
        Object[] objArr = this.d;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != f313a) {
                if (i3 != i2) {
                    jArr[i2] = jArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.b = false;
        this.e = i2;
    }

    public void d(long j, E e) {
        int a2 = e.a(this.c, this.e, j);
        if (a2 >= 0) {
            this.d[a2] = e;
            return;
        }
        int i = ~a2;
        if (i < this.e && this.d[i] == f313a) {
            this.c[i] = j;
            this.d[i] = e;
            return;
        }
        if (this.b && this.e >= this.c.length) {
            e();
            i = ~e.a(this.c, this.e, j);
        }
        if (this.e >= this.c.length) {
            int b = e.b(this.e + 1);
            long[] jArr = new long[b];
            Object[] objArr = new Object[b];
            System.arraycopy(this.c, 0, jArr, 0, this.c.length);
            System.arraycopy(this.d, 0, objArr, 0, this.d.length);
            this.c = jArr;
            this.d = objArr;
        }
        if (this.e - i != 0) {
            int i2 = i + 1;
            System.arraycopy(this.c, i, this.c, i2, this.e - i);
            System.arraycopy(this.d, i, this.d, i2, this.e - i);
        }
        this.c[i] = j;
        this.d[i] = e;
        this.e++;
    }

    public void a(@ah f<? extends E> fVar) {
        int b = fVar.b();
        for (int i = 0; i < b; i++) {
            d(fVar.b(i), fVar.c(i));
        }
    }

    @ai
    public E e(long j, E e) {
        E a2 = a(j);
        if (a2 == null) {
            d(j, e);
        }
        return a2;
    }

    public int b() {
        if (this.b) {
            e();
        }
        return this.e;
    }

    public boolean c() {
        return b() == 0;
    }

    public long b(int i) {
        if (this.b) {
            e();
        }
        return this.c[i];
    }

    public E c(int i) {
        if (this.b) {
            e();
        }
        return (E) this.d[i];
    }

    public void a(int i, E e) {
        if (this.b) {
            e();
        }
        this.d[i] = e;
    }

    public int d(long j) {
        if (this.b) {
            e();
        }
        return e.a(this.c, this.e, j);
    }

    public int a(E e) {
        if (this.b) {
            e();
        }
        for (int i = 0; i < this.e; i++) {
            if (this.d[i] == e) {
                return i;
            }
        }
        return -1;
    }

    public boolean e(long j) {
        return d(j) >= 0;
    }

    public boolean b(E e) {
        return a((f<E>) e) >= 0;
    }

    public void d() {
        int i = this.e;
        Object[] objArr = this.d;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.e = 0;
        this.b = false;
    }

    public void f(long j, E e) {
        if (this.e != 0 && j <= this.c[this.e - 1]) {
            d(j, e);
            return;
        }
        if (this.b && this.e >= this.c.length) {
            e();
        }
        int i = this.e;
        if (i >= this.c.length) {
            int b = e.b(i + 1);
            long[] jArr = new long[b];
            Object[] objArr = new Object[b];
            System.arraycopy(this.c, 0, jArr, 0, this.c.length);
            System.arraycopy(this.d, 0, objArr, 0, this.d.length);
            this.c = jArr;
            this.d = objArr;
        }
        this.c[i] = j;
        this.d[i] = e;
        this.e = i + 1;
    }

    public String toString() {
        if (b() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.e * 28);
        sb.append('{');
        for (int i = 0; i < this.e; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(b(i));
            sb.append('=');
            E c = c(i);
            if (c != this) {
                sb.append(c);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
