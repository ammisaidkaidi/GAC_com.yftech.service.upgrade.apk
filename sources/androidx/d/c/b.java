package androidx.d.c;

import androidx.d.c.e;
import androidx.d.c.i;
import java.util.ArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public class b implements e.a {
    private static final boolean g = false;
    private static final boolean h = false;
    public a e;

    /* renamed from: a, reason: collision with root package name */
    i f657a = null;
    float b = 0.0f;
    boolean c = false;
    ArrayList<i> d = new ArrayList<>();
    boolean f = false;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface a {
        float a(b bVar, boolean z);

        float a(i iVar, boolean z);

        void a();

        void a(float f);

        void a(i iVar, float f);

        void a(i iVar, float f, boolean z);

        boolean a(i iVar);

        int b(i iVar);

        float c(i iVar);

        void c();

        i d(int i);

        float e(int i);

        int e();

        int g();

        void h();
    }

    public b() {
    }

    public b(c cVar) {
        this.e = new androidx.d.c.a(this, cVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a() {
        return this.f657a != null && (this.f657a.s == i.a.UNRESTRICTED || this.b >= 0.0f);
    }

    public String toString() {
        return b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String b() {
        boolean z;
        String str = (this.f657a == null ? com.yftech.service.upgrade.a.d + "0" : com.yftech.service.upgrade.a.d + this.f657a) + " = ";
        if (this.b != 0.0f) {
            str = str + this.b;
            z = true;
        } else {
            z = false;
        }
        int e = this.e.e();
        for (int i = 0; i < e; i++) {
            i d = this.e.d(i);
            if (d != null) {
                float e2 = this.e.e(i);
                if (e2 != 0.0f) {
                    String iVar = d.toString();
                    if (z) {
                        if (e2 > 0.0f) {
                            str = str + " + ";
                        } else {
                            str = str + " - ";
                            e2 *= -1.0f;
                        }
                    } else if (e2 < 0.0f) {
                        str = str + "- ";
                        e2 *= -1.0f;
                    }
                    str = e2 == 1.0f ? str + iVar : str + e2 + " " + iVar;
                    z = true;
                }
            }
        }
        if (z) {
            return str;
        }
        return str + "0.0";
    }

    public void c() {
        this.f657a = null;
        this.e.a();
        this.b = 0.0f;
        this.f = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(i iVar) {
        return this.e.a(iVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b a(i iVar, int i) {
        this.f657a = iVar;
        float f = i;
        iVar.n = f;
        this.b = f;
        this.f = true;
        return this;
    }

    public b b(i iVar, int i) {
        if (i < 0) {
            this.b = i * (-1);
            this.e.a(iVar, 1.0f);
        } else {
            this.b = i;
            this.e.a(iVar, -1.0f);
        }
        return this;
    }

    public b a(i iVar, i iVar2, int i) {
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            this.b = i;
        }
        if (!z) {
            this.e.a(iVar, -1.0f);
            this.e.a(iVar2, 1.0f);
        } else {
            this.e.a(iVar, 1.0f);
            this.e.a(iVar2, -1.0f);
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b c(i iVar, int i) {
        this.e.a(iVar, i);
        return this;
    }

    public b a(i iVar, i iVar2, i iVar3, int i) {
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            this.b = i;
        }
        if (!z) {
            this.e.a(iVar, -1.0f);
            this.e.a(iVar2, 1.0f);
            this.e.a(iVar3, 1.0f);
        } else {
            this.e.a(iVar, 1.0f);
            this.e.a(iVar2, -1.0f);
            this.e.a(iVar3, -1.0f);
        }
        return this;
    }

    public b a(i iVar, int i, i iVar2) {
        this.b = i;
        this.e.a(iVar, -1.0f);
        return this;
    }

    public b b(i iVar, i iVar2, i iVar3, int i) {
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            this.b = i;
        }
        if (!z) {
            this.e.a(iVar, -1.0f);
            this.e.a(iVar2, 1.0f);
            this.e.a(iVar3, -1.0f);
        } else {
            this.e.a(iVar, 1.0f);
            this.e.a(iVar2, -1.0f);
            this.e.a(iVar3, 1.0f);
        }
        return this;
    }

    public b a(float f, float f2, float f3, i iVar, i iVar2, i iVar3, i iVar4) {
        this.b = 0.0f;
        if (f2 == 0.0f || f == f3) {
            this.e.a(iVar, 1.0f);
            this.e.a(iVar2, -1.0f);
            this.e.a(iVar4, 1.0f);
            this.e.a(iVar3, -1.0f);
        } else if (f == 0.0f) {
            this.e.a(iVar, 1.0f);
            this.e.a(iVar2, -1.0f);
        } else if (f3 == 0.0f) {
            this.e.a(iVar3, 1.0f);
            this.e.a(iVar4, -1.0f);
        } else {
            float f4 = (f / f2) / (f3 / f2);
            this.e.a(iVar, 1.0f);
            this.e.a(iVar2, -1.0f);
            this.e.a(iVar4, f4);
            this.e.a(iVar3, -f4);
        }
        return this;
    }

    public b a(float f, float f2, float f3, i iVar, int i, i iVar2, int i2, i iVar3, int i3, i iVar4, int i4) {
        if (f2 == 0.0f || f == f3) {
            this.b = ((-i) - i2) + i3 + i4;
            this.e.a(iVar, 1.0f);
            this.e.a(iVar2, -1.0f);
            this.e.a(iVar4, 1.0f);
            this.e.a(iVar3, -1.0f);
        } else {
            float f4 = (f / f2) / (f3 / f2);
            this.b = ((-i) - i2) + (i3 * f4) + (i4 * f4);
            this.e.a(iVar, 1.0f);
            this.e.a(iVar2, -1.0f);
            this.e.a(iVar4, f4);
            this.e.a(iVar3, -f4);
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b a(i iVar, i iVar2, int i, float f, i iVar3, i iVar4, int i2) {
        if (iVar2 == iVar3) {
            this.e.a(iVar, 1.0f);
            this.e.a(iVar4, 1.0f);
            this.e.a(iVar2, -2.0f);
            return this;
        }
        if (f == 0.5f) {
            this.e.a(iVar, 1.0f);
            this.e.a(iVar2, -1.0f);
            this.e.a(iVar3, -1.0f);
            this.e.a(iVar4, 1.0f);
            if (i > 0 || i2 > 0) {
                this.b = (-i) + i2;
            }
        } else if (f <= 0.0f) {
            this.e.a(iVar, -1.0f);
            this.e.a(iVar2, 1.0f);
            this.b = i;
        } else if (f >= 1.0f) {
            this.e.a(iVar4, -1.0f);
            this.e.a(iVar3, 1.0f);
            this.b = -i2;
        } else {
            float f2 = 1.0f - f;
            this.e.a(iVar, f2 * 1.0f);
            this.e.a(iVar2, f2 * (-1.0f));
            this.e.a(iVar3, (-1.0f) * f);
            this.e.a(iVar4, 1.0f * f);
            if (i > 0 || i2 > 0) {
                this.b = ((-i) * f2) + (i2 * f);
            }
        }
        return this;
    }

    public b a(e eVar, int i) {
        this.e.a(eVar.a(i, "ep"), 1.0f);
        this.e.a(eVar.a(i, "em"), -1.0f);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b a(i iVar, i iVar2, float f) {
        this.e.a(iVar, -1.0f);
        this.e.a(iVar2, f);
        return this;
    }

    public b a(i iVar, i iVar2, i iVar3, i iVar4, float f) {
        this.e.a(iVar, -1.0f);
        this.e.a(iVar2, 1.0f);
        this.e.a(iVar3, f);
        this.e.a(iVar4, -f);
        return this;
    }

    public b b(i iVar, i iVar2, i iVar3, i iVar4, float f) {
        this.e.a(iVar3, 0.5f);
        this.e.a(iVar4, 0.5f);
        this.e.a(iVar, -0.5f);
        this.e.a(iVar2, -0.5f);
        this.b = -f;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int d() {
        return (this.f657a != null ? 4 : 0) + 4 + 4 + this.e.g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e() {
        if (this.b < 0.0f) {
            this.b *= -1.0f;
            this.e.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(e eVar) {
        boolean z;
        i b = b(eVar);
        if (b == null) {
            z = true;
        } else {
            b(b);
            z = false;
        }
        if (this.e.e() == 0) {
            this.f = true;
        }
        return z;
    }

    i b(e eVar) {
        boolean a2;
        boolean a3;
        int e = this.e.e();
        i iVar = null;
        i iVar2 = null;
        boolean z = false;
        boolean z2 = false;
        float f = 0.0f;
        float f2 = 0.0f;
        for (int i = 0; i < e; i++) {
            float e2 = this.e.e(i);
            i d = this.e.d(i);
            if (d.s == i.a.UNRESTRICTED) {
                if (iVar == null) {
                    a3 = a(d, eVar);
                } else if (f > e2) {
                    a3 = a(d, eVar);
                } else if (!z && a(d, eVar)) {
                    f = e2;
                    iVar = d;
                    z = true;
                }
                z = a3;
                f = e2;
                iVar = d;
            } else if (iVar == null && e2 < 0.0f) {
                if (iVar2 == null) {
                    a2 = a(d, eVar);
                } else if (f2 > e2) {
                    a2 = a(d, eVar);
                } else if (!z2 && a(d, eVar)) {
                    f2 = e2;
                    iVar2 = d;
                    z2 = true;
                }
                z2 = a2;
                f2 = e2;
                iVar2 = d;
            }
        }
        return iVar != null ? iVar : iVar2;
    }

    private boolean a(i iVar, e eVar) {
        return iVar.v <= 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(i iVar) {
        if (this.f657a != null) {
            this.e.a(this.f657a, -1.0f);
            this.f657a.l = -1;
            this.f657a = null;
        }
        float a2 = this.e.a(iVar, true) * (-1.0f);
        this.f657a = iVar;
        if (a2 == 1.0f) {
            return;
        }
        this.b /= a2;
        this.e.a(a2);
    }

    @Override // androidx.d.c.e.a
    public boolean f() {
        return this.f657a == null && this.b == 0.0f && this.e.e() == 0;
    }

    @Override // androidx.d.c.e.a
    public void a(e eVar, b bVar, boolean z) {
        this.b += bVar.b * this.e.a(bVar, z);
        if (z) {
            bVar.f657a.b(this);
        }
        if (e.f && this.f657a != null && this.e.e() == 0) {
            this.f = true;
            eVar.j = true;
        }
    }

    @Override // androidx.d.c.e.a
    public void a(e eVar, i iVar, boolean z) {
        if (iVar.o) {
            this.b += iVar.n * this.e.c(iVar);
            this.e.a(iVar, z);
            if (z) {
                iVar.b(this);
            }
            if (e.f && iVar != null && this.e.e() == 0) {
                this.f = true;
                eVar.j = true;
            }
        }
    }

    public void b(e eVar, i iVar, boolean z) {
        if (iVar.w) {
            float c = this.e.c(iVar);
            this.b += iVar.y * c;
            this.e.a(iVar, z);
            if (z) {
                iVar.b(this);
            }
            this.e.a(eVar.q.d[iVar.x], c, z);
            if (e.f && iVar != null && this.e.e() == 0) {
                this.f = true;
                eVar.j = true;
            }
        }
    }

    private i a(boolean[] zArr, i iVar) {
        int e = this.e.e();
        i iVar2 = null;
        float f = 0.0f;
        for (int i = 0; i < e; i++) {
            float e2 = this.e.e(i);
            if (e2 < 0.0f) {
                i d = this.e.d(i);
                if ((zArr == null || !zArr[d.k]) && d != iVar && ((d.s == i.a.SLACK || d.s == i.a.ERROR) && e2 < f)) {
                    f = e2;
                    iVar2 = d;
                }
            }
        }
        return iVar2;
    }

    public i c(i iVar) {
        return a((boolean[]) null, iVar);
    }

    @Override // androidx.d.c.e.a
    public i a(e eVar, boolean[] zArr) {
        return a(zArr, (i) null);
    }

    @Override // androidx.d.c.e.a
    public void g() {
        this.e.a();
        this.f657a = null;
        this.b = 0.0f;
    }

    @Override // androidx.d.c.e.a
    public void a(e.a aVar) {
        if (aVar instanceof b) {
            b bVar = (b) aVar;
            this.f657a = null;
            this.e.a();
            for (int i = 0; i < bVar.e.e(); i++) {
                this.e.a(bVar.e.d(i), bVar.e.e(i), true);
            }
        }
    }

    @Override // androidx.d.c.e.a
    public void d(i iVar) {
        float f = 1.0f;
        if (iVar.m != 1) {
            if (iVar.m == 2) {
                f = 1000.0f;
            } else if (iVar.m == 3) {
                f = 1000000.0f;
            } else if (iVar.m == 4) {
                f = 1.0E9f;
            } else if (iVar.m == 5) {
                f = 1.0E12f;
            }
        }
        this.e.a(iVar, f);
    }

    @Override // androidx.d.c.e.a
    public i h() {
        return this.f657a;
    }

    @Override // androidx.d.c.e.a
    public void c(e eVar) {
        if (eVar.l.length == 0) {
            return;
        }
        boolean z = false;
        while (!z) {
            int e = this.e.e();
            for (int i = 0; i < e; i++) {
                i d = this.e.d(i);
                if (d.l != -1 || d.o || d.w) {
                    this.d.add(d);
                }
            }
            int size = this.d.size();
            if (size > 0) {
                for (int i2 = 0; i2 < size; i2++) {
                    i iVar = this.d.get(i2);
                    if (iVar.o) {
                        a(eVar, iVar, true);
                    } else if (iVar.w) {
                        b(eVar, iVar, true);
                    } else {
                        a(eVar, eVar.l[iVar.l], true);
                    }
                }
                this.d.clear();
            } else {
                z = true;
            }
        }
        if (e.f && this.f657a != null && this.e.e() == 0) {
            this.f = true;
            eVar.j = true;
        }
    }
}
