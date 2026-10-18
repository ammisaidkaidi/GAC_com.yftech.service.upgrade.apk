package androidx.d.c;

import androidx.d.c.b;
import java.util.Arrays;
import java.util.Comparator;

/* loaded from: /home/user/work/dex/classes.dex */
public class h extends b {
    static final int i = -1;
    private static final float j = 1.0E-4f;
    private static final boolean k = false;
    a g;
    c h;
    private int l;
    private i[] m;
    private i[] n;
    private int o;

    /* loaded from: /home/user/work/dex/classes.dex */
    class a implements Comparable {

        /* renamed from: a, reason: collision with root package name */
        i f698a;
        h b;

        public a(h hVar) {
            this.b = hVar;
        }

        public void a(i iVar) {
            this.f698a = iVar;
        }

        public boolean a(i iVar, float f) {
            boolean z = true;
            if (!this.f698a.j) {
                for (int i = 0; i < 9; i++) {
                    float f2 = iVar.r[i];
                    if (f2 != 0.0f) {
                        float f3 = f2 * f;
                        if (Math.abs(f3) < 1.0E-4f) {
                            f3 = 0.0f;
                        }
                        this.f698a.r[i] = f3;
                    } else {
                        this.f698a.r[i] = 0.0f;
                    }
                }
                return true;
            }
            for (int i2 = 0; i2 < 9; i2++) {
                float[] fArr = this.f698a.r;
                fArr[i2] = fArr[i2] + (iVar.r[i2] * f);
                if (Math.abs(this.f698a.r[i2]) < 1.0E-4f) {
                    this.f698a.r[i2] = 0.0f;
                } else {
                    z = false;
                }
            }
            if (z) {
                h.this.f(this.f698a);
            }
            return false;
        }

        public void b(i iVar) {
            for (int i = 0; i < 9; i++) {
                float[] fArr = this.f698a.r;
                fArr[i] = fArr[i] + iVar.r[i];
                if (Math.abs(this.f698a.r[i]) < 1.0E-4f) {
                    this.f698a.r[i] = 0.0f;
                }
            }
        }

        public final boolean a() {
            for (int i = 8; i >= 0; i--) {
                float f = this.f698a.r[i];
                if (f > 0.0f) {
                    return false;
                }
                if (f < 0.0f) {
                    return true;
                }
            }
            return false;
        }

        public final boolean c(i iVar) {
            for (int i = 8; i >= 0; i--) {
                float f = iVar.r[i];
                float f2 = this.f698a.r[i];
                if (f2 != f) {
                    return f2 < f;
                }
            }
            return false;
        }

        public final boolean b() {
            for (int i = 0; i < 9; i++) {
                if (this.f698a.r[i] != 0.0f) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.lang.Comparable
        public int compareTo(Object obj) {
            return this.f698a.k - ((i) obj).k;
        }

        public void c() {
            Arrays.fill(this.f698a.r, 0.0f);
        }

        public String toString() {
            String str = "[ ";
            if (this.f698a != null) {
                for (int i = 0; i < 9; i++) {
                    str = str + this.f698a.r[i] + " ";
                }
            }
            return str + "] " + this.f698a;
        }
    }

    @Override // androidx.d.c.b, androidx.d.c.e.a
    public void g() {
        this.o = 0;
        this.b = 0.0f;
    }

    public h(c cVar) {
        super(cVar);
        this.l = 128;
        this.m = new i[this.l];
        this.n = new i[this.l];
        this.o = 0;
        this.g = new a(this);
        this.h = cVar;
    }

    @Override // androidx.d.c.b, androidx.d.c.e.a
    public boolean f() {
        return this.o == 0;
    }

    @Override // androidx.d.c.b, androidx.d.c.e.a
    public i a(e eVar, boolean[] zArr) {
        int i2 = -1;
        for (int i3 = 0; i3 < this.o; i3++) {
            i iVar = this.m[i3];
            if (!zArr[iVar.k]) {
                this.g.a(iVar);
                if (i2 == -1) {
                    if (!this.g.a()) {
                    }
                    i2 = i3;
                } else {
                    if (!this.g.c(this.m[i2])) {
                    }
                    i2 = i3;
                }
            }
        }
        if (i2 == -1) {
            return null;
        }
        return this.m[i2];
    }

    @Override // androidx.d.c.b, androidx.d.c.e.a
    public void d(i iVar) {
        this.g.a(iVar);
        this.g.c();
        iVar.r[iVar.m] = 1.0f;
        e(iVar);
    }

    private final void e(i iVar) {
        if (this.o + 1 > this.m.length) {
            this.m = (i[]) Arrays.copyOf(this.m, this.m.length * 2);
            this.n = (i[]) Arrays.copyOf(this.m, this.m.length * 2);
        }
        this.m[this.o] = iVar;
        this.o++;
        if (this.o > 1 && this.m[this.o - 1].k > iVar.k) {
            for (int i2 = 0; i2 < this.o; i2++) {
                this.n[i2] = this.m[i2];
            }
            Arrays.sort(this.n, 0, this.o, new Comparator<i>() { // from class: androidx.d.c.h.1
                @Override // java.util.Comparator
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public int compare(i iVar2, i iVar3) {
                    return iVar2.k - iVar3.k;
                }
            });
            for (int i3 = 0; i3 < this.o; i3++) {
                this.m[i3] = this.n[i3];
            }
        }
        iVar.j = true;
        iVar.a(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f(i iVar) {
        int i2 = 0;
        while (i2 < this.o) {
            if (this.m[i2] == iVar) {
                while (i2 < this.o - 1) {
                    int i3 = i2 + 1;
                    this.m[i2] = this.m[i3];
                    i2 = i3;
                }
                this.o--;
                iVar.j = false;
                return;
            }
            i2++;
        }
    }

    @Override // androidx.d.c.b, androidx.d.c.e.a
    public void a(e eVar, b bVar, boolean z) {
        i iVar = bVar.f657a;
        if (iVar == null) {
            return;
        }
        b.a aVar = bVar.e;
        int e = aVar.e();
        for (int i2 = 0; i2 < e; i2++) {
            i d = aVar.d(i2);
            float e2 = aVar.e(i2);
            this.g.a(d);
            if (this.g.a(iVar, e2)) {
                e(d);
            }
            this.b += bVar.b * e2;
        }
        f(iVar);
    }

    @Override // androidx.d.c.b
    public String toString() {
        String str = com.yftech.service.upgrade.a.d + " goal -> (" + this.b + ") : ";
        for (int i2 = 0; i2 < this.o; i2++) {
            this.g.a(this.m[i2]);
            str = str + this.g + " ";
        }
        return str;
    }
}
