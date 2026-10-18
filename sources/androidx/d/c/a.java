package androidx.d.c;

import androidx.d.c.b;
import java.util.Arrays;

/* loaded from: /home/user/work/dex/classes.dex */
public class a implements b.a {

    /* renamed from: a, reason: collision with root package name */
    static final int f640a = -1;
    private static final boolean d = false;
    private static final boolean e = false;
    private static float o = 0.001f;
    protected final c c;
    private final b f;
    int b = 0;
    private int g = 8;
    private i h = null;
    private int[] i = new int[this.g];
    private int[] j = new int[this.g];
    private float[] k = new float[this.g];
    private int l = -1;
    private int m = -1;
    private boolean n = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(b bVar, c cVar) {
        this.f = bVar;
        this.c = cVar;
    }

    @Override // androidx.d.c.b.a
    public final void a(i iVar, float f) {
        if (f == 0.0f) {
            a(iVar, true);
            return;
        }
        if (this.l == -1) {
            this.l = 0;
            this.k[this.l] = f;
            this.i[this.l] = iVar.k;
            this.j[this.l] = -1;
            iVar.v++;
            iVar.a(this.f);
            this.b++;
            if (this.n) {
                return;
            }
            this.m++;
            if (this.m >= this.i.length) {
                this.n = true;
                this.m = this.i.length - 1;
                return;
            }
            return;
        }
        int i = this.l;
        int i2 = -1;
        for (int i3 = 0; i != -1 && i3 < this.b; i3++) {
            if (this.i[i] == iVar.k) {
                this.k[i] = f;
                return;
            }
            if (this.i[i] < iVar.k) {
                i2 = i;
            }
            i = this.j[i];
        }
        int i4 = this.m + 1;
        if (this.n) {
            if (this.i[this.m] == -1) {
                i4 = this.m;
            } else {
                i4 = this.i.length;
            }
        }
        if (i4 >= this.i.length && this.b < this.i.length) {
            int i5 = 0;
            while (true) {
                if (i5 >= this.i.length) {
                    break;
                }
                if (this.i[i5] == -1) {
                    i4 = i5;
                    break;
                }
                i5++;
            }
        }
        if (i4 >= this.i.length) {
            i4 = this.i.length;
            this.g *= 2;
            this.n = false;
            this.m = i4 - 1;
            this.k = Arrays.copyOf(this.k, this.g);
            this.i = Arrays.copyOf(this.i, this.g);
            this.j = Arrays.copyOf(this.j, this.g);
        }
        this.i[i4] = iVar.k;
        this.k[i4] = f;
        if (i2 != -1) {
            this.j[i4] = this.j[i2];
            this.j[i2] = i4;
        } else {
            this.j[i4] = this.l;
            this.l = i4;
        }
        iVar.v++;
        iVar.a(this.f);
        this.b++;
        if (!this.n) {
            this.m++;
        }
        if (this.b >= this.i.length) {
            this.n = true;
        }
        if (this.m >= this.i.length) {
            this.n = true;
            this.m = this.i.length - 1;
        }
    }

    @Override // androidx.d.c.b.a
    public void a(i iVar, float f, boolean z) {
        if (f <= (-o) || f >= o) {
            if (this.l == -1) {
                this.l = 0;
                this.k[this.l] = f;
                this.i[this.l] = iVar.k;
                this.j[this.l] = -1;
                iVar.v++;
                iVar.a(this.f);
                this.b++;
                if (this.n) {
                    return;
                }
                this.m++;
                if (this.m >= this.i.length) {
                    this.n = true;
                    this.m = this.i.length - 1;
                    return;
                }
                return;
            }
            int i = this.l;
            int i2 = -1;
            for (int i3 = 0; i != -1 && i3 < this.b; i3++) {
                if (this.i[i] == iVar.k) {
                    float f2 = this.k[i] + f;
                    if (f2 > (-o) && f2 < o) {
                        f2 = 0.0f;
                    }
                    this.k[i] = f2;
                    if (f2 == 0.0f) {
                        if (i == this.l) {
                            this.l = this.j[i];
                        } else {
                            this.j[i2] = this.j[i];
                        }
                        if (z) {
                            iVar.b(this.f);
                        }
                        if (this.n) {
                            this.m = i;
                        }
                        iVar.v--;
                        this.b--;
                        return;
                    }
                    return;
                }
                if (this.i[i] < iVar.k) {
                    i2 = i;
                }
                i = this.j[i];
            }
            int i4 = this.m + 1;
            if (this.n) {
                if (this.i[this.m] == -1) {
                    i4 = this.m;
                } else {
                    i4 = this.i.length;
                }
            }
            if (i4 >= this.i.length && this.b < this.i.length) {
                int i5 = 0;
                while (true) {
                    if (i5 >= this.i.length) {
                        break;
                    }
                    if (this.i[i5] == -1) {
                        i4 = i5;
                        break;
                    }
                    i5++;
                }
            }
            if (i4 >= this.i.length) {
                i4 = this.i.length;
                this.g *= 2;
                this.n = false;
                this.m = i4 - 1;
                this.k = Arrays.copyOf(this.k, this.g);
                this.i = Arrays.copyOf(this.i, this.g);
                this.j = Arrays.copyOf(this.j, this.g);
            }
            this.i[i4] = iVar.k;
            this.k[i4] = f;
            if (i2 != -1) {
                this.j[i4] = this.j[i2];
                this.j[i2] = i4;
            } else {
                this.j[i4] = this.l;
                this.l = i4;
            }
            iVar.v++;
            iVar.a(this.f);
            this.b++;
            if (!this.n) {
                this.m++;
            }
            if (this.m >= this.i.length) {
                this.n = true;
                this.m = this.i.length - 1;
            }
        }
    }

    @Override // androidx.d.c.b.a
    public float a(b bVar, boolean z) {
        float c = c(bVar.f657a);
        a(bVar.f657a, z);
        b.a aVar = bVar.e;
        int e2 = aVar.e();
        for (int i = 0; i < e2; i++) {
            i d2 = aVar.d(i);
            a(d2, aVar.c(d2) * c, z);
        }
        return c;
    }

    @Override // androidx.d.c.b.a
    public final float a(i iVar, boolean z) {
        if (this.h == iVar) {
            this.h = null;
        }
        if (this.l == -1) {
            return 0.0f;
        }
        int i = this.l;
        int i2 = 0;
        int i3 = -1;
        while (i != -1 && i2 < this.b) {
            if (this.i[i] == iVar.k) {
                if (i == this.l) {
                    this.l = this.j[i];
                } else {
                    this.j[i3] = this.j[i];
                }
                if (z) {
                    iVar.b(this.f);
                }
                iVar.v--;
                this.b--;
                this.i[i] = -1;
                if (this.n) {
                    this.m = i;
                }
                return this.k[i];
            }
            i2++;
            i3 = i;
            i = this.j[i];
        }
        return 0.0f;
    }

    @Override // androidx.d.c.b.a
    public final void a() {
        int i = this.l;
        for (int i2 = 0; i != -1 && i2 < this.b; i2++) {
            i iVar = this.c.d[this.i[i]];
            if (iVar != null) {
                iVar.b(this.f);
            }
            i = this.j[i];
        }
        this.l = -1;
        this.m = -1;
        this.n = false;
        this.b = 0;
    }

    @Override // androidx.d.c.b.a
    public boolean a(i iVar) {
        if (this.l == -1) {
            return false;
        }
        int i = this.l;
        for (int i2 = 0; i != -1 && i2 < this.b; i2++) {
            if (this.i[i] == iVar.k) {
                return true;
            }
            i = this.j[i];
        }
        return false;
    }

    @Override // androidx.d.c.b.a
    public int b(i iVar) {
        if (this.l == -1) {
            return -1;
        }
        int i = this.l;
        for (int i2 = 0; i != -1 && i2 < this.b; i2++) {
            if (this.i[i] == iVar.k) {
                return i;
            }
            i = this.j[i];
        }
        return -1;
    }

    boolean b() {
        int i = this.l;
        for (int i2 = 0; i != -1 && i2 < this.b; i2++) {
            if (this.k[i] > 0.0f) {
                return true;
            }
            i = this.j[i];
        }
        return false;
    }

    @Override // androidx.d.c.b.a
    public void c() {
        int i = this.l;
        for (int i2 = 0; i != -1 && i2 < this.b; i2++) {
            float[] fArr = this.k;
            fArr[i] = fArr[i] * (-1.0f);
            i = this.j[i];
        }
    }

    @Override // androidx.d.c.b.a
    public void a(float f) {
        int i = this.l;
        for (int i2 = 0; i != -1 && i2 < this.b; i2++) {
            float[] fArr = this.k;
            fArr[i] = fArr[i] / f;
            i = this.j[i];
        }
    }

    public int d() {
        return this.l;
    }

    @Override // androidx.d.c.b.a
    public int e() {
        return this.b;
    }

    public final int a(int i) {
        return this.i[i];
    }

    public final float b(int i) {
        return this.k[i];
    }

    public final int c(int i) {
        return this.j[i];
    }

    i f() {
        if (this.h == null) {
            int i = this.l;
            i iVar = null;
            for (int i2 = 0; i != -1 && i2 < this.b; i2++) {
                if (this.k[i] < 0.0f) {
                    i iVar2 = this.c.d[this.i[i]];
                    if (iVar == null || iVar.m < iVar2.m) {
                        iVar = iVar2;
                    }
                }
                i = this.j[i];
            }
            return iVar;
        }
        return this.h;
    }

    @Override // androidx.d.c.b.a
    public i d(int i) {
        int i2 = this.l;
        for (int i3 = 0; i2 != -1 && i3 < this.b; i3++) {
            if (i3 == i) {
                return this.c.d[this.i[i2]];
            }
            i2 = this.j[i2];
        }
        return null;
    }

    @Override // androidx.d.c.b.a
    public float e(int i) {
        int i2 = this.l;
        for (int i3 = 0; i2 != -1 && i3 < this.b; i3++) {
            if (i3 == i) {
                return this.k[i2];
            }
            i2 = this.j[i2];
        }
        return 0.0f;
    }

    @Override // androidx.d.c.b.a
    public final float c(i iVar) {
        int i = this.l;
        for (int i2 = 0; i != -1 && i2 < this.b; i2++) {
            if (this.i[i] == iVar.k) {
                return this.k[i];
            }
            i = this.j[i];
        }
        return 0.0f;
    }

    @Override // androidx.d.c.b.a
    public int g() {
        return (this.i.length * 4 * 3) + 0 + 36;
    }

    @Override // androidx.d.c.b.a
    public void h() {
        int i = this.b;
        System.out.print("{ ");
        for (int i2 = 0; i2 < i; i2++) {
            i d2 = d(i2);
            if (d2 != null) {
                System.out.print(d2 + " = " + e(i2) + " ");
            }
        }
        System.out.println(" }");
    }

    public String toString() {
        String str = com.yftech.service.upgrade.a.d;
        int i = this.l;
        for (int i2 = 0; i != -1 && i2 < this.b; i2++) {
            str = ((str + " -> ") + this.k[i] + " : ") + this.c.d[this.i[i]];
            i = this.j[i];
        }
        return str;
    }
}
