package androidx.c;

/* loaded from: /home/user/work/dex/classes.dex */
public final class c<E> {

    /* renamed from: a, reason: collision with root package name */
    private E[] f310a;
    private int b;
    private int c;
    private int d;

    private void h() {
        int length = this.f310a.length;
        int i = length - this.b;
        int i2 = length << 1;
        if (i2 < 0) {
            throw new RuntimeException("Max array capacity exceeded");
        }
        Object[] objArr = new Object[i2];
        System.arraycopy(this.f310a, this.b, objArr, 0, i);
        System.arraycopy(this.f310a, 0, objArr, i, this.b);
        this.f310a = (E[]) objArr;
        this.b = 0;
        this.c = length;
        this.d = i2 - 1;
    }

    public c() {
        this(8);
    }

    public c(int i) {
        if (i < 1) {
            throw new IllegalArgumentException("capacity must be >= 1");
        }
        if (i > 1073741824) {
            throw new IllegalArgumentException("capacity must be <= 2^30");
        }
        i = Integer.bitCount(i) != 1 ? Integer.highestOneBit(i - 1) << 1 : i;
        this.d = i - 1;
        this.f310a = (E[]) new Object[i];
    }

    public void a(E e) {
        this.b = (this.b - 1) & this.d;
        this.f310a[this.b] = e;
        if (this.b == this.c) {
            h();
        }
    }

    public void b(E e) {
        this.f310a[this.c] = e;
        this.c = (this.c + 1) & this.d;
        if (this.c == this.b) {
            h();
        }
    }

    public E a() {
        if (this.b == this.c) {
            throw new ArrayIndexOutOfBoundsException();
        }
        E e = this.f310a[this.b];
        this.f310a[this.b] = null;
        this.b = (this.b + 1) & this.d;
        return e;
    }

    public E b() {
        if (this.b == this.c) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i = (this.c - 1) & this.d;
        E e = this.f310a[i];
        this.f310a[i] = null;
        this.c = i;
        return e;
    }

    public void c() {
        a(f());
    }

    public void a(int i) {
        if (i <= 0) {
            return;
        }
        if (i > f()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int length = this.f310a.length;
        if (i < length - this.b) {
            length = this.b + i;
        }
        for (int i2 = this.b; i2 < length; i2++) {
            this.f310a[i2] = null;
        }
        int i3 = length - this.b;
        int i4 = i - i3;
        this.b = this.d & (this.b + i3);
        if (i4 > 0) {
            for (int i5 = 0; i5 < i4; i5++) {
                this.f310a[i5] = null;
            }
            this.b = i4;
        }
    }

    public void b(int i) {
        if (i <= 0) {
            return;
        }
        if (i > f()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i2 = i < this.c ? this.c - i : 0;
        for (int i3 = i2; i3 < this.c; i3++) {
            this.f310a[i3] = null;
        }
        int i4 = this.c - i2;
        int i5 = i - i4;
        this.c -= i4;
        if (i5 > 0) {
            this.c = this.f310a.length;
            int i6 = this.c - i5;
            for (int i7 = i6; i7 < this.c; i7++) {
                this.f310a[i7] = null;
            }
            this.c = i6;
        }
    }

    public E d() {
        if (this.b == this.c) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return this.f310a[this.b];
    }

    public E e() {
        if (this.b == this.c) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return this.f310a[this.d & (this.c - 1)];
    }

    public E c(int i) {
        if (i < 0 || i >= f()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return this.f310a[this.d & (this.b + i)];
    }

    public int f() {
        return this.d & (this.c - this.b);
    }

    public boolean g() {
        return this.b == this.c;
    }
}
