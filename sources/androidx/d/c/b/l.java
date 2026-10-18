package androidx.d.c.b;

/* loaded from: /home/user/work/dex/classes.dex */
public class l {

    /* renamed from: a, reason: collision with root package name */
    public int f690a;
    public int b;
    public int c;
    public int d;

    public void a(int i, int i2, int i3, int i4) {
        this.f690a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
    }

    void a(int i, int i2) {
        this.f690a -= i;
        this.b -= i2;
        this.c += i * 2;
        this.d += i2 * 2;
    }

    boolean a(l lVar) {
        return this.f690a >= lVar.f690a && this.f690a < lVar.f690a + lVar.c && this.b >= lVar.b && this.b < lVar.b + lVar.d;
    }

    public boolean b(int i, int i2) {
        return i >= this.f690a && i < this.f690a + this.c && i2 >= this.b && i2 < this.b + this.d;
    }

    public int a() {
        return (this.f690a + this.c) / 2;
    }

    public int b() {
        return (this.b + this.d) / 2;
    }
}
