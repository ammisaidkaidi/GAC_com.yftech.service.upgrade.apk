package androidx.appcompat.widget;

/* loaded from: /home/user/work/dex/classes.dex */
class aq {

    /* renamed from: a, reason: collision with root package name */
    public static final int f225a = Integer.MIN_VALUE;
    private int b = 0;
    private int c = 0;
    private int d = Integer.MIN_VALUE;
    private int e = Integer.MIN_VALUE;
    private int f = 0;
    private int g = 0;
    private boolean h = false;
    private boolean i = false;

    public int a() {
        return this.b;
    }

    public int b() {
        return this.c;
    }

    public int c() {
        return this.h ? this.c : this.b;
    }

    public int d() {
        return this.h ? this.b : this.c;
    }

    public void a(int i, int i2) {
        this.d = i;
        this.e = i2;
        this.i = true;
        if (this.h) {
            if (i2 != Integer.MIN_VALUE) {
                this.b = i2;
            }
            if (i != Integer.MIN_VALUE) {
                this.c = i;
                return;
            }
            return;
        }
        if (i != Integer.MIN_VALUE) {
            this.b = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.c = i2;
        }
    }

    public void b(int i, int i2) {
        this.i = false;
        if (i != Integer.MIN_VALUE) {
            this.f = i;
            this.b = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.g = i2;
            this.c = i2;
        }
    }

    public void a(boolean z) {
        if (z == this.h) {
            return;
        }
        this.h = z;
        if (!this.i) {
            this.b = this.f;
            this.c = this.g;
        } else if (z) {
            this.b = this.e != Integer.MIN_VALUE ? this.e : this.f;
            this.c = this.d != Integer.MIN_VALUE ? this.d : this.g;
        } else {
            this.b = this.d != Integer.MIN_VALUE ? this.d : this.f;
            this.c = this.e != Integer.MIN_VALUE ? this.e : this.g;
        }
    }
}
