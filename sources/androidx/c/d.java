package androidx.c;

/* loaded from: /home/user/work/dex/classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    private int[] f311a;
    private int b;
    private int c;
    private int d;

    private void h() {
        int length = this.f311a.length;
        int i = length - this.b;
        int i2 = length << 1;
        if (i2 < 0) {
            throw new RuntimeException("Max array capacity exceeded");
        }
        int[] iArr = new int[i2];
        System.arraycopy(this.f311a, this.b, iArr, 0, i);
        System.arraycopy(this.f311a, 0, iArr, i, this.b);
        this.f311a = iArr;
        this.b = 0;
        this.c = length;
        this.d = i2 - 1;
    }

    public d() {
        this(8);
    }

    public d(int i) {
        if (i < 1) {
            throw new IllegalArgumentException("capacity must be >= 1");
        }
        if (i > 1073741824) {
            throw new IllegalArgumentException("capacity must be <= 2^30");
        }
        i = Integer.bitCount(i) != 1 ? Integer.highestOneBit(i - 1) << 1 : i;
        this.d = i - 1;
        this.f311a = new int[i];
    }

    public void a(int i) {
        this.b = (this.b - 1) & this.d;
        this.f311a[this.b] = i;
        if (this.b == this.c) {
            h();
        }
    }

    public void b(int i) {
        this.f311a[this.c] = i;
        this.c = (this.c + 1) & this.d;
        if (this.c == this.b) {
            h();
        }
    }

    public int a() {
        if (this.b == this.c) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i = this.f311a[this.b];
        this.b = (this.b + 1) & this.d;
        return i;
    }

    public int b() {
        if (this.b == this.c) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i = (this.c - 1) & this.d;
        int i2 = this.f311a[i];
        this.c = i;
        return i2;
    }

    public void c() {
        this.c = this.b;
    }

    public void c(int i) {
        if (i <= 0) {
            return;
        }
        if (i > f()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        this.b = this.d & (this.b + i);
    }

    public void d(int i) {
        if (i <= 0) {
            return;
        }
        if (i > f()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        this.c = this.d & (this.c - i);
    }

    public int d() {
        if (this.b == this.c) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return this.f311a[this.b];
    }

    public int e() {
        if (this.b == this.c) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return this.f311a[this.d & (this.c - 1)];
    }

    public int e(int i) {
        if (i < 0 || i >= f()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return this.f311a[this.d & (this.b + i)];
    }

    public int f() {
        return this.d & (this.c - this.b);
    }

    public boolean g() {
        return this.b == this.c;
    }
}
