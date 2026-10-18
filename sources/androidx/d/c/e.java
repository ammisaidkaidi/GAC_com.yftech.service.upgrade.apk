package androidx.d.c;

import androidx.d.c.b.d;
import androidx.d.c.i;
import java.util.Arrays;
import java.util.HashMap;

/* loaded from: /home/user/work/dex/classes.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean f693a = false;
    public static final boolean b = false;
    public static final boolean c = false;
    public static boolean d = false;
    public static boolean e = true;
    public static boolean f = true;
    public static boolean g = true;
    public static boolean h = true;
    public static boolean i = false;
    public static f r = null;
    public static long s = 0;
    public static long t = 0;
    private static final boolean u = false;
    private static int v = 1000;
    private a E;
    androidx.d.c.b[] l;
    final c q;
    private a x;
    public boolean j = false;
    int k = 0;
    private HashMap<String, i> w = null;
    private int y = 32;
    private int z = this.y;
    public boolean m = false;
    public boolean n = false;
    private boolean[] A = new boolean[this.y];
    int o = 1;
    int p = 0;
    private int B = this.y;
    private i[] C = new i[v];
    private int D = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface a {
        i a(e eVar, boolean[] zArr);

        void a(a aVar);

        void a(e eVar, androidx.d.c.b bVar, boolean z);

        void a(e eVar, i iVar, boolean z);

        void c(e eVar);

        void d(i iVar);

        boolean f();

        void g();

        i h();
    }

    private String c(int i2) {
        return i2 == 1 ? "LOW" : i2 == 2 ? "MEDIUM" : i2 == 3 ? "HIGH" : i2 == 4 ? "HIGHEST" : i2 == 5 ? "EQUALITY" : i2 == 8 ? "FIXED" : i2 == 6 ? "BARRIER" : "NONE";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class b extends androidx.d.c.b {
        public b(c cVar) {
            this.e = new j(this, cVar);
        }
    }

    public e() {
        this.l = null;
        this.l = new androidx.d.c.b[this.y];
        q();
        this.q = new c();
        this.x = new h(this.q);
        if (i) {
            this.E = new b(this.q);
        } else {
            this.E = new androidx.d.c.b(this.q);
        }
    }

    public void a(f fVar) {
        r = fVar;
    }

    public static f a() {
        return r;
    }

    private void p() {
        this.y *= 2;
        this.l = (androidx.d.c.b[]) Arrays.copyOf(this.l, this.y);
        this.q.d = (i[]) Arrays.copyOf(this.q.d, this.y);
        this.A = new boolean[this.y];
        this.z = this.y;
        this.B = this.y;
        if (r != null) {
            r.h++;
            r.t = Math.max(r.t, this.y);
            r.J = r.t;
        }
    }

    private void q() {
        int i2 = 0;
        if (i) {
            while (i2 < this.p) {
                androidx.d.c.b bVar = this.l[i2];
                if (bVar != null) {
                    this.q.f692a.a(bVar);
                }
                this.l[i2] = null;
                i2++;
            }
            return;
        }
        while (i2 < this.p) {
            androidx.d.c.b bVar2 = this.l[i2];
            if (bVar2 != null) {
                this.q.b.a(bVar2);
            }
            this.l[i2] = null;
            i2++;
        }
    }

    public void b() {
        for (int i2 = 0; i2 < this.q.d.length; i2++) {
            i iVar = this.q.d[i2];
            if (iVar != null) {
                iVar.d();
            }
        }
        this.q.c.a(this.C, this.D);
        this.D = 0;
        Arrays.fill(this.q.d, (Object) null);
        if (this.w != null) {
            this.w.clear();
        }
        this.k = 0;
        this.x.g();
        this.o = 1;
        for (int i3 = 0; i3 < this.p; i3++) {
            if (this.l[i3] != null) {
                this.l[i3].c = false;
            }
        }
        q();
        this.p = 0;
        if (i) {
            this.E = new b(this.q);
        } else {
            this.E = new androidx.d.c.b(this.q);
        }
    }

    public i a(Object obj) {
        i iVar = null;
        if (obj == null) {
            return null;
        }
        if (this.o + 1 >= this.z) {
            p();
        }
        if (obj instanceof androidx.d.c.b.d) {
            androidx.d.c.b.d dVar = (androidx.d.c.b.d) obj;
            iVar = dVar.g();
            if (iVar == null) {
                dVar.a(this.q);
                iVar = dVar.g();
            }
            if (iVar.k == -1 || iVar.k > this.k || this.q.d[iVar.k] == null) {
                if (iVar.k != -1) {
                    iVar.d();
                }
                this.k++;
                this.o++;
                iVar.k = this.k;
                iVar.s = i.a.UNRESTRICTED;
                this.q.d[this.k] = iVar;
            }
        }
        return iVar;
    }

    public androidx.d.c.b c() {
        androidx.d.c.b a2;
        if (i) {
            a2 = this.q.f692a.a();
            if (a2 == null) {
                a2 = new b(this.q);
                t++;
            } else {
                a2.c();
            }
        } else {
            a2 = this.q.b.a();
            if (a2 == null) {
                a2 = new androidx.d.c.b(this.q);
                s++;
            } else {
                a2.c();
            }
        }
        i.a();
        return a2;
    }

    public i d() {
        if (r != null) {
            r.r++;
        }
        if (this.o + 1 >= this.z) {
            p();
        }
        i a2 = a(i.a.SLACK, (String) null);
        this.k++;
        this.o++;
        a2.k = this.k;
        this.q.d[this.k] = a2;
        return a2;
    }

    public i e() {
        if (r != null) {
            r.s++;
        }
        if (this.o + 1 >= this.z) {
            p();
        }
        i a2 = a(i.a.SLACK, (String) null);
        this.k++;
        this.o++;
        a2.k = this.k;
        this.q.d[this.k] = a2;
        return a2;
    }

    private void c(androidx.d.c.b bVar) {
        bVar.a(this, 0);
    }

    private void a(androidx.d.c.b bVar, int i2) {
        a(bVar, i2, 0);
    }

    void a(androidx.d.c.b bVar, int i2, int i3) {
        bVar.c(a(i3, (String) null), i2);
    }

    private i b(String str, i.a aVar) {
        if (r != null) {
            r.p++;
        }
        if (this.o + 1 >= this.z) {
            p();
        }
        i a2 = a(aVar, (String) null);
        a2.a(str);
        this.k++;
        this.o++;
        a2.k = this.k;
        if (this.w == null) {
            this.w = new HashMap<>();
        }
        this.w.put(str, a2);
        this.q.d[this.k] = a2;
        return a2;
    }

    public i a(int i2, String str) {
        if (r != null) {
            r.q++;
        }
        if (this.o + 1 >= this.z) {
            p();
        }
        i a2 = a(i.a.ERROR, str);
        this.k++;
        this.o++;
        a2.k = this.k;
        a2.m = i2;
        this.q.d[this.k] = a2;
        this.x.d(a2);
        return a2;
    }

    private i a(i.a aVar, String str) {
        i a2 = this.q.c.a();
        if (a2 == null) {
            a2 = new i(aVar, str);
            a2.a(aVar, str);
        } else {
            a2.d();
            a2.a(aVar, str);
        }
        if (this.D >= v) {
            v *= 2;
            this.C = (i[]) Arrays.copyOf(this.C, v);
        }
        i[] iVarArr = this.C;
        int i2 = this.D;
        this.D = i2 + 1;
        iVarArr[i2] = a2;
        return a2;
    }

    a f() {
        return this.x;
    }

    androidx.d.c.b a(int i2) {
        return this.l[i2];
    }

    float a(String str) {
        i a2 = a(str, i.a.UNRESTRICTED);
        if (a2 == null) {
            return 0.0f;
        }
        return a2.n;
    }

    public int b(Object obj) {
        i g2 = ((androidx.d.c.b.d) obj).g();
        if (g2 != null) {
            return (int) (g2.n + 0.5f);
        }
        return 0;
    }

    i a(String str, i.a aVar) {
        if (this.w == null) {
            this.w = new HashMap<>();
        }
        i iVar = this.w.get(str);
        return iVar == null ? b(str, aVar) : iVar;
    }

    public void g() {
        if (r != null) {
            r.i++;
        }
        if (this.x.f()) {
            r();
            return;
        }
        if (this.m || this.n) {
            if (r != null) {
                r.v++;
            }
            boolean z = false;
            int i2 = 0;
            while (true) {
                if (i2 >= this.p) {
                    z = true;
                    break;
                } else if (!this.l[i2].f) {
                    break;
                } else {
                    i2++;
                }
            }
            if (!z) {
                a(this.x);
                return;
            }
            if (r != null) {
                r.u++;
            }
            r();
            return;
        }
        a(this.x);
    }

    void a(a aVar) {
        if (r != null) {
            r.z++;
            r.A = Math.max(r.A, this.o);
            r.B = Math.max(r.B, this.p);
        }
        b(aVar);
        a(aVar, false);
        r();
    }

    final void h() {
        int i2 = 0;
        while (i2 < this.p) {
            androidx.d.c.b bVar = this.l[i2];
            if (bVar.e.e() == 0) {
                bVar.f = true;
            }
            if (bVar.f) {
                bVar.f657a.n = bVar.b;
                bVar.f657a.b(bVar);
                int i3 = i2;
                while (i3 < this.p - 1) {
                    int i4 = i3 + 1;
                    this.l[i3] = this.l[i4];
                    i3 = i4;
                }
                this.l[this.p - 1] = null;
                this.p--;
                i2--;
                if (i) {
                    this.q.f692a.a(bVar);
                } else {
                    this.q.b.a(bVar);
                }
            }
            i2++;
        }
    }

    public void a(androidx.d.c.b bVar) {
        i c2;
        if (bVar == null) {
            return;
        }
        if (r != null) {
            r.j++;
            if (bVar.f) {
                r.k++;
            }
        }
        if (this.p + 1 >= this.B || this.o + 1 >= this.z) {
            p();
        }
        boolean z = false;
        if (!bVar.f) {
            bVar.c(this);
            if (bVar.f()) {
                return;
            }
            bVar.e();
            if (bVar.a(this)) {
                i e2 = e();
                bVar.f657a = e2;
                int i2 = this.p;
                d(bVar);
                if (this.p == i2 + 1) {
                    this.E.a(bVar);
                    a(this.E, true);
                    if (e2.l == -1) {
                        if (bVar.f657a == e2 && (c2 = bVar.c(e2)) != null) {
                            if (r != null) {
                                r.n++;
                            }
                            bVar.b(c2);
                        }
                        if (!bVar.f) {
                            bVar.f657a.a(this, bVar);
                        }
                        if (i) {
                            this.q.f692a.a(bVar);
                        } else {
                            this.q.b.a(bVar);
                        }
                        this.p--;
                    }
                    z = true;
                }
            }
            if (!bVar.a()) {
                return;
            }
        }
        if (z) {
            return;
        }
        d(bVar);
    }

    private final void d(androidx.d.c.b bVar) {
        if (f && bVar.f) {
            bVar.f657a.a(this, bVar.b);
        } else {
            this.l[this.p] = bVar;
            bVar.f657a.l = this.p;
            this.p++;
            bVar.f657a.a(this, bVar);
        }
        if (f && this.j) {
            int i2 = 0;
            while (i2 < this.p) {
                if (this.l[i2] == null) {
                    System.out.println("WTF");
                }
                if (this.l[i2] != null && this.l[i2].f) {
                    androidx.d.c.b bVar2 = this.l[i2];
                    bVar2.f657a.a(this, bVar2.b);
                    if (i) {
                        this.q.f692a.a(bVar2);
                    } else {
                        this.q.b.a(bVar2);
                    }
                    this.l[i2] = null;
                    int i3 = i2 + 1;
                    int i4 = i3;
                    while (i3 < this.p) {
                        int i5 = i3 - 1;
                        this.l[i5] = this.l[i3];
                        if (this.l[i5].f657a.l == i3) {
                            this.l[i5].f657a.l = i5;
                        }
                        i4 = i3;
                        i3++;
                    }
                    if (i4 < this.p) {
                        this.l[i4] = null;
                    }
                    this.p--;
                    i2--;
                }
                i2++;
            }
            this.j = false;
        }
    }

    public void b(androidx.d.c.b bVar) {
        if (!bVar.f || bVar.f657a == null) {
            return;
        }
        if (bVar.f657a.l != -1) {
            int i2 = bVar.f657a.l;
            while (i2 < this.p - 1) {
                int i3 = i2 + 1;
                i iVar = this.l[i3].f657a;
                if (iVar.l == i3) {
                    iVar.l = i2;
                }
                this.l[i2] = this.l[i3];
                i2 = i3;
            }
            this.p--;
        }
        if (!bVar.f657a.o) {
            bVar.f657a.a(this, bVar.b);
        }
        if (i) {
            this.q.f692a.a(bVar);
        } else {
            this.q.b.a(bVar);
        }
    }

    private final int a(a aVar, boolean z) {
        if (r != null) {
            r.l++;
        }
        for (int i2 = 0; i2 < this.o; i2++) {
            this.A[i2] = false;
        }
        boolean z2 = false;
        int i3 = 0;
        while (!z2) {
            if (r != null) {
                r.m++;
            }
            i3++;
            if (i3 >= this.o * 2) {
                return i3;
            }
            if (aVar.h() != null) {
                this.A[aVar.h().k] = true;
            }
            i a2 = aVar.a(this, this.A);
            if (a2 != null) {
                if (this.A[a2.k]) {
                    return i3;
                }
                this.A[a2.k] = true;
            }
            if (a2 != null) {
                float f2 = Float.MAX_VALUE;
                int i4 = -1;
                for (int i5 = 0; i5 < this.p; i5++) {
                    androidx.d.c.b bVar = this.l[i5];
                    if (bVar.f657a.s != i.a.UNRESTRICTED && !bVar.f && bVar.a(a2)) {
                        float c2 = bVar.e.c(a2);
                        if (c2 < 0.0f) {
                            float f3 = (-bVar.b) / c2;
                            if (f3 < f2) {
                                i4 = i5;
                                f2 = f3;
                            }
                        }
                    }
                }
                if (i4 > -1) {
                    androidx.d.c.b bVar2 = this.l[i4];
                    bVar2.f657a.l = -1;
                    if (r != null) {
                        r.n++;
                    }
                    bVar2.b(a2);
                    bVar2.f657a.l = i4;
                    bVar2.f657a.a(this, bVar2);
                }
            } else {
                z2 = true;
            }
        }
        return i3;
    }

    private int b(a aVar) {
        boolean z;
        int i2 = 0;
        while (true) {
            if (i2 >= this.p) {
                z = false;
                break;
            }
            if (this.l[i2].f657a.s != i.a.UNRESTRICTED && this.l[i2].b < 0.0f) {
                z = true;
                break;
            }
            i2++;
        }
        if (!z) {
            return 0;
        }
        boolean z2 = false;
        int i3 = 0;
        while (!z2) {
            if (r != null) {
                r.o++;
            }
            i3++;
            float f2 = Float.MAX_VALUE;
            int i4 = -1;
            int i5 = -1;
            int i6 = 0;
            for (int i7 = 0; i7 < this.p; i7++) {
                androidx.d.c.b bVar = this.l[i7];
                if (bVar.f657a.s != i.a.UNRESTRICTED && !bVar.f && bVar.b < 0.0f) {
                    int i8 = 9;
                    if (h) {
                        int e2 = bVar.e.e();
                        int i9 = i6;
                        float f3 = f2;
                        int i10 = i5;
                        int i11 = i4;
                        int i12 = 0;
                        while (i12 < e2) {
                            i d2 = bVar.e.d(i12);
                            float c2 = bVar.e.c(d2);
                            if (c2 > 0.0f) {
                                int i13 = i9;
                                int i14 = 0;
                                while (i14 < i8) {
                                    float f4 = d2.q[i14] / c2;
                                    if ((f4 < f3 && i14 == i13) || i14 > i13) {
                                        i11 = i7;
                                        i10 = d2.k;
                                        f3 = f4;
                                        i13 = i14;
                                    }
                                    i14++;
                                    i8 = 9;
                                }
                                i9 = i13;
                            }
                            i12++;
                            i8 = 9;
                        }
                        i4 = i11;
                        i5 = i10;
                        f2 = f3;
                        i6 = i9;
                    } else {
                        for (int i15 = 1; i15 < this.o; i15++) {
                            i iVar = this.q.d[i15];
                            float c3 = bVar.e.c(iVar);
                            if (c3 > 0.0f) {
                                for (int i16 = 0; i16 < 9; i16++) {
                                    float f5 = iVar.q[i16] / c3;
                                    if ((f5 < f2 && i16 == i6) || i16 > i6) {
                                        i5 = i15;
                                        i4 = i7;
                                        i6 = i16;
                                        f2 = f5;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            if (i4 != -1) {
                androidx.d.c.b bVar2 = this.l[i4];
                bVar2.f657a.l = -1;
                if (r != null) {
                    r.n++;
                }
                bVar2.b(this.q.d[i5]);
                bVar2.f657a.l = i4;
                bVar2.f657a.a(this, bVar2);
            } else {
                z2 = true;
            }
            if (i3 > this.o / 2) {
                z2 = true;
            }
        }
        return i3;
    }

    private void r() {
        for (int i2 = 0; i2 < this.p; i2++) {
            androidx.d.c.b bVar = this.l[i2];
            bVar.f657a.n = bVar.b;
        }
    }

    private void s() {
        t();
        String str = com.yftech.service.upgrade.a.d;
        for (int i2 = 0; i2 < this.p; i2++) {
            str = (str + this.l[i2]) + "\n";
        }
        System.out.println(str + this.x + "\n");
    }

    public void i() {
        t();
        String str = " num vars " + this.k + "\n";
        for (int i2 = 0; i2 < this.k + 1; i2++) {
            i iVar = this.q.d[i2];
            if (iVar != null && iVar.o) {
                str = str + " $[" + i2 + "] => " + iVar + " = " + iVar.n + "\n";
            }
        }
        String str2 = str + "\n";
        for (int i3 = 0; i3 < this.k + 1; i3++) {
            i iVar2 = this.q.d[i3];
            if (iVar2 != null && iVar2.w) {
                str2 = str2 + " ~[" + i3 + "] => " + iVar2 + " = " + this.q.d[iVar2.x] + " + " + iVar2.y + "\n";
            }
        }
        String str3 = str2 + "\n\n #  ";
        for (int i4 = 0; i4 < this.p; i4++) {
            str3 = (str3 + this.l[i4].b()) + "\n #  ";
        }
        if (this.x != null) {
            str3 = str3 + "Goal: " + this.x + "\n";
        }
        System.out.println(str3);
    }

    public void j() {
        t();
        String str = com.yftech.service.upgrade.a.d;
        for (int i2 = 0; i2 < this.p; i2++) {
            if (this.l[i2].f657a.s == i.a.UNRESTRICTED) {
                str = (str + this.l[i2].b()) + "\n";
            }
        }
        System.out.println(str + this.x + "\n");
    }

    public int k() {
        int i2 = 0;
        for (int i3 = 0; i3 < this.p; i3++) {
            if (this.l[i3] != null) {
                i2 += this.l[i3].d();
            }
        }
        return i2;
    }

    public int l() {
        return this.p;
    }

    public int m() {
        return this.k;
    }

    void n() {
        int i2 = 0;
        for (int i3 = 0; i3 < this.y; i3++) {
            if (this.l[i3] != null) {
                i2 += this.l[i3].d();
            }
        }
        int i4 = 0;
        for (int i5 = 0; i5 < this.p; i5++) {
            if (this.l[i5] != null) {
                i4 += this.l[i5].d();
            }
        }
        System.out.println("Linear System -> Table size: " + this.y + " (" + b(this.y * this.y) + ") -- row sizes: " + b(i2) + ", actual size: " + b(i4) + " rows: " + this.p + "/" + this.B + " cols: " + this.o + "/" + this.z + " 0 occupied cells, " + b(0));
    }

    private void t() {
        System.out.println("Display Rows (" + this.p + "x" + this.o + ")\n");
    }

    private String b(int i2) {
        int i3 = i2 * 4;
        int i4 = i3 / 1024;
        int i5 = i4 / 1024;
        if (i5 > 0) {
            return com.yftech.service.upgrade.a.d + i5 + " Mb";
        }
        if (i4 > 0) {
            return com.yftech.service.upgrade.a.d + i4 + " Kb";
        }
        return com.yftech.service.upgrade.a.d + i3 + " bytes";
    }

    public c o() {
        return this.q;
    }

    public void a(i iVar, i iVar2, int i2, int i3) {
        androidx.d.c.b c2 = c();
        i d2 = d();
        d2.m = 0;
        c2.a(iVar, iVar2, d2, i2);
        if (i3 != 8) {
            a(c2, (int) (c2.e.c(d2) * (-1.0f)), i3);
        }
        a(c2);
    }

    public void a(i iVar, i iVar2, int i2, boolean z) {
        androidx.d.c.b c2 = c();
        i d2 = d();
        d2.m = 0;
        c2.a(iVar, iVar2, d2, i2);
        a(c2);
    }

    public void b(i iVar, i iVar2, int i2, int i3) {
        androidx.d.c.b c2 = c();
        i d2 = d();
        d2.m = 0;
        c2.b(iVar, iVar2, d2, i2);
        if (i3 != 8) {
            a(c2, (int) (c2.e.c(d2) * (-1.0f)), i3);
        }
        a(c2);
    }

    public void b(i iVar, i iVar2, int i2, boolean z) {
        androidx.d.c.b c2 = c();
        i d2 = d();
        d2.m = 0;
        c2.b(iVar, iVar2, d2, i2);
        a(c2);
    }

    public void a(i iVar, i iVar2, int i2, float f2, i iVar3, i iVar4, int i3, int i4) {
        androidx.d.c.b c2 = c();
        c2.a(iVar, iVar2, i2, f2, iVar3, iVar4, i3);
        if (i4 != 8) {
            c2.a(this, i4);
        }
        a(c2);
    }

    public void a(i iVar, i iVar2, i iVar3, i iVar4, float f2, int i2) {
        androidx.d.c.b c2 = c();
        c2.a(iVar, iVar2, iVar3, iVar4, f2);
        if (i2 != 8) {
            c2.a(this, i2);
        }
        a(c2);
    }

    public void a(i iVar, i iVar2, int i2) {
        if (iVar.l == -1 && i2 == 0) {
            if (iVar2.w) {
                float f2 = iVar2.y;
                iVar2 = this.q.d[iVar2.x];
            }
            if (iVar.w) {
                float f3 = iVar.y;
                i iVar3 = this.q.d[iVar.x];
                return;
            } else {
                iVar.a(this, iVar2, 0.0f);
                return;
            }
        }
        c(iVar, iVar2, i2, 8);
    }

    public androidx.d.c.b c(i iVar, i iVar2, int i2, int i3) {
        if (e && i3 == 8 && iVar2.o && iVar.l == -1) {
            iVar.a(this, iVar2.n + i2);
            return null;
        }
        androidx.d.c.b c2 = c();
        c2.a(iVar, iVar2, i2);
        if (i3 != 8) {
            c2.a(this, i3);
        }
        a(c2);
        return c2;
    }

    public void a(i iVar, int i2) {
        if (e && iVar.l == -1) {
            float f2 = i2;
            iVar.a(this, f2);
            for (int i3 = 0; i3 < this.k + 1; i3++) {
                i iVar2 = this.q.d[i3];
                if (iVar2 != null && iVar2.w && iVar2.x == iVar.k) {
                    iVar2.a(this, iVar2.y + f2);
                }
            }
            return;
        }
        int i4 = iVar.l;
        if (iVar.l != -1) {
            androidx.d.c.b bVar = this.l[i4];
            if (bVar.f) {
                bVar.b = i2;
                return;
            }
            if (bVar.e.e() == 0) {
                bVar.f = true;
                bVar.b = i2;
                return;
            } else {
                androidx.d.c.b c2 = c();
                c2.b(iVar, i2);
                a(c2);
                return;
            }
        }
        androidx.d.c.b c3 = c();
        c3.a(iVar, i2);
        a(c3);
    }

    public static androidx.d.c.b a(e eVar, i iVar, i iVar2, float f2) {
        return eVar.c().a(iVar, iVar2, f2);
    }

    public void a(androidx.d.c.b.e eVar, androidx.d.c.b.e eVar2, float f2, int i2) {
        i a2 = a(eVar.a(d.a.LEFT));
        i a3 = a(eVar.a(d.a.TOP));
        i a4 = a(eVar.a(d.a.RIGHT));
        i a5 = a(eVar.a(d.a.BOTTOM));
        i a6 = a(eVar2.a(d.a.LEFT));
        i a7 = a(eVar2.a(d.a.TOP));
        i a8 = a(eVar2.a(d.a.RIGHT));
        i a9 = a(eVar2.a(d.a.BOTTOM));
        androidx.d.c.b c2 = c();
        double d2 = f2;
        double d3 = i2;
        c2.b(a3, a5, a7, a9, (float) (Math.sin(d2) * d3));
        a(c2);
        androidx.d.c.b c3 = c();
        c3.b(a2, a4, a6, a8, (float) (Math.cos(d2) * d3));
        a(c3);
    }
}
