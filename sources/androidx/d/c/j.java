package androidx.d.c;

import androidx.d.c.b;
import java.util.Arrays;

/* loaded from: /home/user/work/dex/classes.dex */
public class j implements b.a {
    private static final boolean j = false;
    private static final boolean k = true;
    private static float l = 0.001f;
    protected final c i;
    private final b p;
    private final int m = -1;
    private int n = 16;
    private int o = 16;

    /* renamed from: a, reason: collision with root package name */
    int[] f702a = new int[this.n];
    int[] b = new int[this.n];
    int[] c = new int[this.n];
    float[] d = new float[this.n];
    int[] e = new int[this.n];
    int[] f = new int[this.n];
    int g = 0;
    int h = -1;

    @Override // androidx.d.c.b.a
    public int g() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(b bVar, c cVar) {
        this.p = bVar;
        this.i = cVar;
        a();
    }

    @Override // androidx.d.c.b.a
    public int e() {
        return this.g;
    }

    @Override // androidx.d.c.b.a
    public i d(int i) {
        int i2 = this.g;
        if (i2 == 0) {
            return null;
        }
        int i3 = this.h;
        for (int i4 = 0; i4 < i2; i4++) {
            if (i4 == i && i3 != -1) {
                return this.i.d[this.c[i3]];
            }
            i3 = this.f[i3];
            if (i3 == -1) {
                break;
            }
        }
        return null;
    }

    @Override // androidx.d.c.b.a
    public float e(int i) {
        int i2 = this.g;
        int i3 = this.h;
        for (int i4 = 0; i4 < i2; i4++) {
            if (i4 == i) {
                return this.d[i3];
            }
            i3 = this.f[i3];
            if (i3 == -1) {
                return 0.0f;
            }
        }
        return 0.0f;
    }

    @Override // androidx.d.c.b.a
    public boolean a(i iVar) {
        if (b(iVar) != -1) {
            return k;
        }
        return false;
    }

    @Override // androidx.d.c.b.a
    public int b(i iVar) {
        if (this.g == 0 || iVar == null) {
            return -1;
        }
        int i = iVar.k;
        int i2 = this.f702a[i % this.o];
        if (i2 == -1) {
            return -1;
        }
        if (this.c[i2] == i) {
            return i2;
        }
        while (this.b[i2] != -1 && this.c[this.b[i2]] != i) {
            i2 = this.b[i2];
        }
        if (this.b[i2] != -1 && this.c[this.b[i2]] == i) {
            return this.b[i2];
        }
        return -1;
    }

    @Override // androidx.d.c.b.a
    public float c(i iVar) {
        int b = b(iVar);
        if (b != -1) {
            return this.d[b];
        }
        return 0.0f;
    }

    @Override // androidx.d.c.b.a
    public void h() {
        int i = this.g;
        System.out.print("{ ");
        for (int i2 = 0; i2 < i; i2++) {
            i d = d(i2);
            if (d != null) {
                System.out.print(d + " = " + e(i2) + " ");
            }
        }
        System.out.println(" }");
    }

    public String toString() {
        String str = hashCode() + " { ";
        int i = this.g;
        for (int i2 = 0; i2 < i; i2++) {
            i d = d(i2);
            if (d != null) {
                String str2 = str + d + " = " + e(i2) + " ";
                int b = b(d);
                String str3 = str2 + "[p: ";
                String str4 = (this.e[b] != -1 ? str3 + this.i.d[this.c[this.e[b]]] : str3 + "none") + ", n: ";
                str = (this.f[b] != -1 ? str4 + this.i.d[this.c[this.f[b]]] : str4 + "none") + "]";
            }
        }
        return str + " }";
    }

    @Override // androidx.d.c.b.a
    public void a() {
        int i = this.g;
        for (int i2 = 0; i2 < i; i2++) {
            i d = d(i2);
            if (d != null) {
                d.b(this.p);
            }
        }
        for (int i3 = 0; i3 < this.n; i3++) {
            this.c[i3] = -1;
            this.b[i3] = -1;
        }
        for (int i4 = 0; i4 < this.o; i4++) {
            this.f702a[i4] = -1;
        }
        this.g = 0;
        this.h = -1;
    }

    private void b() {
        int i = this.n * 2;
        this.c = Arrays.copyOf(this.c, i);
        this.d = Arrays.copyOf(this.d, i);
        this.e = Arrays.copyOf(this.e, i);
        this.f = Arrays.copyOf(this.f, i);
        this.b = Arrays.copyOf(this.b, i);
        for (int i2 = this.n; i2 < i; i2++) {
            this.c[i2] = -1;
            this.b[i2] = -1;
        }
        this.n = i;
    }

    private void a(i iVar, int i) {
        int i2 = iVar.k % this.o;
        int i3 = this.f702a[i2];
        if (i3 == -1) {
            this.f702a[i2] = i;
        } else {
            while (this.b[i3] != -1) {
                i3 = this.b[i3];
            }
            this.b[i3] = i;
        }
        this.b[i] = -1;
    }

    private void d() {
        for (int i = 0; i < this.o; i++) {
            if (this.f702a[i] != -1) {
                String str = hashCode() + " hash [" + i + "] => ";
                int i2 = this.f702a[i];
                String str2 = str;
                boolean z = false;
                while (!z) {
                    str2 = str2 + " " + this.c[i2];
                    if (this.b[i2] != -1) {
                        i2 = this.b[i2];
                    } else {
                        z = k;
                    }
                }
                System.out.println(str2);
            }
        }
    }

    private void d(i iVar) {
        int i = iVar.k % this.o;
        int i2 = this.f702a[i];
        if (i2 == -1) {
            return;
        }
        int i3 = iVar.k;
        if (this.c[i2] == i3) {
            this.f702a[i] = this.b[i2];
            this.b[i2] = -1;
            return;
        }
        while (this.b[i2] != -1 && this.c[this.b[i2]] != i3) {
            i2 = this.b[i2];
        }
        int i4 = this.b[i2];
        if (i4 == -1 || this.c[i4] != i3) {
            return;
        }
        this.b[i2] = this.b[i4];
        this.b[i4] = -1;
    }

    private void a(int i, i iVar, float f) {
        this.c[i] = iVar.k;
        this.d[i] = f;
        this.e[i] = -1;
        this.f[i] = -1;
        iVar.a(this.p);
        iVar.v++;
        this.g++;
    }

    private int f() {
        for (int i = 0; i < this.n; i++) {
            if (this.c[i] == -1) {
                return i;
            }
        }
        return -1;
    }

    private void b(int i, i iVar, float f) {
        int f2 = f();
        a(f2, iVar, f);
        if (i != -1) {
            this.e[f2] = i;
            this.f[f2] = this.f[i];
            this.f[i] = f2;
        } else {
            this.e[f2] = -1;
            if (this.g > 0) {
                this.f[f2] = this.h;
                this.h = f2;
            } else {
                this.f[f2] = -1;
            }
        }
        if (this.f[f2] != -1) {
            this.e[this.f[f2]] = f2;
        }
        a(iVar, f2);
    }

    @Override // androidx.d.c.b.a
    public void a(i iVar, float f) {
        if (f > (-l) && f < l) {
            a(iVar, k);
            return;
        }
        if (this.g == 0) {
            a(0, iVar, f);
            a(iVar, 0);
            this.h = 0;
            return;
        }
        int b = b(iVar);
        if (b != -1) {
            this.d[b] = f;
            return;
        }
        if (this.g + 1 >= this.n) {
            b();
        }
        int i = this.g;
        int i2 = this.h;
        int i3 = -1;
        for (int i4 = 0; i4 < i; i4++) {
            if (this.c[i2] == iVar.k) {
                this.d[i2] = f;
                return;
            }
            if (this.c[i2] < iVar.k) {
                i3 = i2;
            }
            i2 = this.f[i2];
            if (i2 == -1) {
                break;
            }
        }
        b(i3, iVar, f);
    }

    @Override // androidx.d.c.b.a
    public float a(i iVar, boolean z) {
        int b = b(iVar);
        if (b == -1) {
            return 0.0f;
        }
        d(iVar);
        float f = this.d[b];
        if (this.h == b) {
            this.h = this.f[b];
        }
        this.c[b] = -1;
        if (this.e[b] != -1) {
            this.f[this.e[b]] = this.f[b];
        }
        if (this.f[b] != -1) {
            this.e[this.f[b]] = this.e[b];
        }
        this.g--;
        iVar.v--;
        if (z) {
            iVar.b(this.p);
        }
        return f;
    }

    @Override // androidx.d.c.b.a
    public void a(i iVar, float f, boolean z) {
        if (f <= (-l) || f >= l) {
            int b = b(iVar);
            if (b == -1) {
                a(iVar, f);
                return;
            }
            float[] fArr = this.d;
            fArr[b] = fArr[b] + f;
            if (this.d[b] <= (-l) || this.d[b] >= l) {
                return;
            }
            this.d[b] = 0.0f;
            a(iVar, z);
        }
    }

    @Override // androidx.d.c.b.a
    public float a(b bVar, boolean z) {
        float c = c(bVar.f657a);
        a(bVar.f657a, z);
        j jVar = (j) bVar.e;
        int e = jVar.e();
        int i = jVar.h;
        int i2 = 0;
        int i3 = 0;
        while (i2 < e) {
            if (jVar.c[i3] != -1) {
                a(this.i.d[jVar.c[i3]], jVar.d[i3] * c, z);
                i2++;
            }
            i3++;
        }
        return c;
    }

    @Override // androidx.d.c.b.a
    public void c() {
        int i = this.g;
        int i2 = this.h;
        for (int i3 = 0; i3 < i; i3++) {
            float[] fArr = this.d;
            fArr[i2] = fArr[i2] * (-1.0f);
            i2 = this.f[i2];
            if (i2 == -1) {
                return;
            }
        }
    }

    @Override // androidx.d.c.b.a
    public void a(float f) {
        int i = this.g;
        int i2 = this.h;
        for (int i3 = 0; i3 < i; i3++) {
            float[] fArr = this.d;
            fArr[i2] = fArr[i2] / f;
            i2 = this.f[i2];
            if (i2 == -1) {
                return;
            }
        }
    }
}
