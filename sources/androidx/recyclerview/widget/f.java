package androidx.recyclerview.widget;

/* loaded from: /home/user/work/dex/classes.dex */
public class f implements t {
    private static final int f = 0;
    private static final int g = 1;
    private static final int h = 2;
    private static final int i = 3;

    /* renamed from: a, reason: collision with root package name */
    final t f1051a;
    int b = 0;
    int c = -1;
    int d = -1;
    Object e = null;

    public f(@androidx.annotation.ah t tVar) {
        this.f1051a = tVar;
    }

    public void a() {
        if (this.b == 0) {
            return;
        }
        switch (this.b) {
            case 1:
                this.f1051a.a(this.c, this.d);
                break;
            case 2:
                this.f1051a.b(this.c, this.d);
                break;
            case 3:
                this.f1051a.a(this.c, this.d, this.e);
                break;
        }
        this.e = null;
        this.b = 0;
    }

    @Override // androidx.recyclerview.widget.t
    public void a(int i2, int i3) {
        if (this.b == 1 && i2 >= this.c && i2 <= this.c + this.d) {
            this.d += i3;
            this.c = Math.min(i2, this.c);
        } else {
            a();
            this.c = i2;
            this.d = i3;
            this.b = 1;
        }
    }

    @Override // androidx.recyclerview.widget.t
    public void b(int i2, int i3) {
        if (this.b == 2 && this.c >= i2 && this.c <= i2 + i3) {
            this.d += i3;
            this.c = i2;
        } else {
            a();
            this.c = i2;
            this.d = i3;
            this.b = 2;
        }
    }

    @Override // androidx.recyclerview.widget.t
    public void c(int i2, int i3) {
        a();
        this.f1051a.c(i2, i3);
    }

    @Override // androidx.recyclerview.widget.t
    public void a(int i2, int i3, Object obj) {
        int i4;
        if (this.b == 3 && i2 <= this.c + this.d && (i4 = i2 + i3) >= this.c && this.e == obj) {
            int i5 = this.c + this.d;
            this.c = Math.min(i2, this.c);
            this.d = Math.max(i5, i4) - this.c;
        } else {
            a();
            this.c = i2;
            this.d = i3;
            this.e = obj;
            this.b = 3;
        }
    }
}
