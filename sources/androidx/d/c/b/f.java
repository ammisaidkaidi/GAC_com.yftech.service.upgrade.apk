package androidx.d.c.b;

import androidx.d.c.b.a.b;
import androidx.d.c.b.e;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes.dex */
public class f extends n {

    /* renamed from: a, reason: collision with root package name */
    static final boolean f684a = false;
    static int bp = 0;
    private static final int br = 8;
    private static final boolean bs = false;
    private static final boolean bt = false;
    protected androidx.d.c.e aY;
    int aZ;
    androidx.d.c.b.a.b b;
    private WeakReference<d> bA;
    private WeakReference<d> bB;
    int ba;
    int bb;
    int bc;
    public int bd;
    public int be;
    c[] bf;
    c[] bg;
    public boolean bh;
    public boolean bi;
    public boolean bj;
    public int bk;
    public int bl;
    public boolean bm;
    int bn;
    public b.a bo;
    private boolean bu;
    private int bv;
    private boolean bw;
    private boolean bx;
    private WeakReference<d> by;
    private WeakReference<d> bz;
    public androidx.d.c.b.a.e c;
    protected b.InterfaceC0050b d;
    public androidx.d.c.f e;

    @Override // androidx.d.c.b.e
    public String D() {
        return "ConstraintLayout";
    }

    public boolean au() {
        return false;
    }

    public void b() {
        this.c.b();
    }

    public void c() {
        this.c.c();
    }

    public boolean a(boolean z) {
        return this.c.a(z);
    }

    public boolean h(boolean z) {
        return this.c.b(z);
    }

    public boolean a(boolean z, int i) {
        return this.c.a(z, i);
    }

    public void f() {
        this.c.a(aj(), ak());
    }

    public long a(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        this.aZ = i8;
        this.ba = i9;
        return this.b.a(this, i, i8, i9, i2, i3, i4, i5, i6, i7);
    }

    public void g() {
        this.b.a(this);
    }

    public void a(b.InterfaceC0050b interfaceC0050b) {
        this.d = interfaceC0050b;
        this.c.a(interfaceC0050b);
    }

    public b.InterfaceC0050b h() {
        return this.d;
    }

    public void a(androidx.d.c.f fVar) {
        this.e = fVar;
        this.aY.a(fVar);
    }

    public f() {
        this.b = new androidx.d.c.b.a.b(this);
        this.c = new androidx.d.c.b.a.e(this);
        this.d = null;
        this.bu = false;
        this.aY = new androidx.d.c.e();
        this.bd = 0;
        this.be = 0;
        this.bf = new c[4];
        this.bg = new c[4];
        this.bh = false;
        this.bi = false;
        this.bj = false;
        this.bk = 0;
        this.bl = 0;
        this.bv = 257;
        this.bm = false;
        this.bw = false;
        this.bx = false;
        this.bn = 0;
        this.by = null;
        this.bz = null;
        this.bA = null;
        this.bB = null;
        this.bo = new b.a();
    }

    public f(int i, int i2, int i3, int i4) {
        super(i, i2, i3, i4);
        this.b = new androidx.d.c.b.a.b(this);
        this.c = new androidx.d.c.b.a.e(this);
        this.d = null;
        this.bu = false;
        this.aY = new androidx.d.c.e();
        this.bd = 0;
        this.be = 0;
        this.bf = new c[4];
        this.bg = new c[4];
        this.bh = false;
        this.bi = false;
        this.bj = false;
        this.bk = 0;
        this.bl = 0;
        this.bv = 257;
        this.bm = false;
        this.bw = false;
        this.bx = false;
        this.bn = 0;
        this.by = null;
        this.bz = null;
        this.bA = null;
        this.bB = null;
        this.bo = new b.a();
    }

    public f(int i, int i2) {
        super(i, i2);
        this.b = new androidx.d.c.b.a.b(this);
        this.c = new androidx.d.c.b.a.e(this);
        this.d = null;
        this.bu = false;
        this.aY = new androidx.d.c.e();
        this.bd = 0;
        this.be = 0;
        this.bf = new c[4];
        this.bg = new c[4];
        this.bh = false;
        this.bi = false;
        this.bj = false;
        this.bk = 0;
        this.bl = 0;
        this.bv = 257;
        this.bm = false;
        this.bw = false;
        this.bx = false;
        this.bn = 0;
        this.by = null;
        this.bz = null;
        this.bA = null;
        this.bB = null;
        this.bo = new b.a();
    }

    public f(String str, int i, int i2) {
        super(i, i2);
        this.b = new androidx.d.c.b.a.b(this);
        this.c = new androidx.d.c.b.a.e(this);
        this.d = null;
        this.bu = false;
        this.aY = new androidx.d.c.e();
        this.bd = 0;
        this.be = 0;
        this.bf = new c[4];
        this.bg = new c[4];
        this.bh = false;
        this.bi = false;
        this.bj = false;
        this.bk = 0;
        this.bl = 0;
        this.bv = 257;
        this.bm = false;
        this.bw = false;
        this.bx = false;
        this.bn = 0;
        this.by = null;
        this.bz = null;
        this.bA = null;
        this.bB = null;
        this.bo = new b.a();
        b(str);
    }

    public void a(int i) {
        this.bv = i;
        androidx.d.c.e eVar = this.aY;
        androidx.d.c.e.d = b(512);
    }

    public int i() {
        return this.bv;
    }

    public boolean b(int i) {
        return (this.bv & i) == i;
    }

    @Override // androidx.d.c.b.n, androidx.d.c.b.e
    public void w() {
        this.aY.b();
        this.aZ = 0;
        this.bb = 0;
        this.ba = 0;
        this.bc = 0;
        this.bm = false;
        super.w();
    }

    public boolean aq() {
        return this.bw;
    }

    public boolean ar() {
        return this.bx;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(d dVar) {
        if (this.by == null || this.by.get() == null || dVar.d() > this.by.get().d()) {
            this.by = new WeakReference<>(dVar);
        }
    }

    public void c(d dVar) {
        if (this.bz == null || this.bz.get() == null || dVar.d() > this.bz.get().d()) {
            this.bz = new WeakReference<>(dVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(d dVar) {
        if (this.bA == null || this.bA.get() == null || dVar.d() > this.bA.get().d()) {
            this.bA = new WeakReference<>(dVar);
        }
    }

    public void e(d dVar) {
        if (this.bB == null || this.bB.get() == null || dVar.d() > this.bB.get().d()) {
            this.bB = new WeakReference<>(dVar);
        }
    }

    private void a(d dVar, androidx.d.c.i iVar) {
        this.aY.a(this.aY.a(dVar), iVar, 0, 5);
    }

    private void b(d dVar, androidx.d.c.i iVar) {
        this.aY.a(iVar, this.aY.a(dVar), 0, 5);
    }

    public boolean b(androidx.d.c.e eVar) {
        boolean b = b(64);
        a(eVar, b);
        int size = this.bq.size();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            e eVar2 = this.bq.get(i);
            eVar2.a(0, false);
            eVar2.a(1, false);
            if (eVar2 instanceof a) {
                z = true;
            }
        }
        if (z) {
            for (int i2 = 0; i2 < size; i2++) {
                e eVar3 = this.bq.get(i2);
                if (eVar3 instanceof a) {
                    ((a) eVar3).f();
                }
            }
        }
        for (int i3 = 0; i3 < size; i3++) {
            e eVar4 = this.bq.get(i3);
            if (eVar4.ap()) {
                eVar4.a(eVar, b);
            }
        }
        if (androidx.d.c.e.d) {
            HashSet<e> hashSet = new HashSet<>();
            for (int i4 = 0; i4 < size; i4++) {
                e eVar5 = this.bq.get(i4);
                if (!eVar5.ap()) {
                    hashSet.add(eVar5);
                }
            }
            a(this, eVar, hashSet, aj() == e.a.WRAP_CONTENT ? 0 : 1, false);
            Iterator<e> it = hashSet.iterator();
            while (it.hasNext()) {
                e next = it.next();
                k.a(this, eVar, next);
                next.a(eVar, b);
            }
        } else {
            for (int i5 = 0; i5 < size; i5++) {
                e eVar6 = this.bq.get(i5);
                if (eVar6 instanceof f) {
                    e.a aVar = eVar6.ak[0];
                    e.a aVar2 = eVar6.ak[1];
                    if (aVar == e.a.WRAP_CONTENT) {
                        eVar6.a(e.a.FIXED);
                    }
                    if (aVar2 == e.a.WRAP_CONTENT) {
                        eVar6.b(e.a.FIXED);
                    }
                    eVar6.a(eVar, b);
                    if (aVar == e.a.WRAP_CONTENT) {
                        eVar6.a(aVar);
                    }
                    if (aVar2 == e.a.WRAP_CONTENT) {
                        eVar6.b(aVar2);
                    }
                } else {
                    k.a(this, eVar, eVar6);
                    if (!eVar6.ap()) {
                        eVar6.a(eVar, b);
                    }
                }
            }
        }
        if (this.bd > 0) {
            b.a(this, eVar, null, 0);
        }
        if (this.be > 0) {
            b.a(this, eVar, null, 1);
        }
        return true;
    }

    public void a(androidx.d.c.e eVar, boolean[] zArr) {
        zArr[2] = false;
        boolean b = b(64);
        b(eVar, b);
        int size = this.bq.size();
        for (int i = 0; i < size; i++) {
            this.bq.get(i).b(eVar, b);
        }
    }

    @Override // androidx.d.c.b.e
    public void a(boolean z, boolean z2) {
        super.a(z, z2);
        int size = this.bq.size();
        for (int i = 0; i < size; i++) {
            this.bq.get(i).a(z, z2);
        }
    }

    public void b(int i, int i2, int i3, int i4) {
        this.aZ = i;
        this.ba = i2;
        this.bb = i3;
        this.bc = i4;
    }

    public void i(boolean z) {
        this.bu = z;
    }

    public boolean as() {
        return this.bu;
    }

    public static boolean a(e eVar, b.InterfaceC0050b interfaceC0050b, b.a aVar, int i) {
        int i2;
        int i3;
        if (interfaceC0050b == null) {
            return false;
        }
        aVar.d = eVar.aj();
        aVar.e = eVar.ak();
        aVar.f = eVar.I();
        aVar.g = eVar.L();
        aVar.l = false;
        aVar.m = i;
        boolean z = aVar.d == e.a.MATCH_CONSTRAINT;
        boolean z2 = aVar.e == e.a.MATCH_CONSTRAINT;
        boolean z3 = z && eVar.ao > 0.0f;
        boolean z4 = z2 && eVar.ao > 0.0f;
        if (z && eVar.g(0) && eVar.G == 0 && !z3) {
            aVar.d = e.a.WRAP_CONTENT;
            if (z2 && eVar.H == 0) {
                aVar.d = e.a.FIXED;
            }
            z = false;
        }
        if (z2 && eVar.g(1) && eVar.H == 0 && !z4) {
            aVar.e = e.a.WRAP_CONTENT;
            if (z && eVar.G == 0) {
                aVar.e = e.a.FIXED;
            }
            z2 = false;
        }
        if (eVar.d()) {
            aVar.d = e.a.FIXED;
            z = false;
        }
        if (eVar.e()) {
            aVar.e = e.a.FIXED;
            z2 = false;
        }
        if (z3) {
            if (eVar.I[0] == 4) {
                aVar.d = e.a.FIXED;
            } else if (!z2) {
                if (aVar.e == e.a.FIXED) {
                    i3 = aVar.g;
                } else {
                    aVar.d = e.a.WRAP_CONTENT;
                    interfaceC0050b.a(eVar, aVar);
                    i3 = aVar.i;
                }
                aVar.d = e.a.FIXED;
                if (eVar.ap == 0 || eVar.ap == -1) {
                    aVar.f = (int) (eVar.ac() * i3);
                } else {
                    aVar.f = (int) (eVar.ac() / i3);
                }
            }
        }
        if (z4) {
            if (eVar.I[1] == 4) {
                aVar.e = e.a.FIXED;
            } else if (!z) {
                if (aVar.d == e.a.FIXED) {
                    i2 = aVar.f;
                } else {
                    aVar.e = e.a.WRAP_CONTENT;
                    interfaceC0050b.a(eVar, aVar);
                    i2 = aVar.h;
                }
                aVar.e = e.a.FIXED;
                if (eVar.ap == 0 || eVar.ap == -1) {
                    aVar.g = (int) (i2 / eVar.ac());
                } else {
                    aVar.g = (int) (i2 * eVar.ac());
                }
            }
        }
        interfaceC0050b.a(eVar, aVar);
        eVar.p(aVar.h);
        eVar.q(aVar.i);
        eVar.c(aVar.k);
        eVar.u(aVar.j);
        aVar.m = b.a.f660a;
        return aVar.l;
    }

    /* JADX WARN: Removed duplicated region for block: B:120:0x021c  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x02c0  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x02dc  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x02ec  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x02e9  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0224  */
    /* JADX WARN: Type inference failed for: r8v10, types: [boolean] */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v9 */
    @Override // androidx.d.c.b.n
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void at() {
        int i;
        int i2;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        int max;
        int max2;
        ?? r8;
        int i3 = 0;
        this.aq = 0;
        this.ar = 0;
        this.bw = false;
        this.bx = false;
        int size = this.bq.size();
        int max3 = Math.max(0, I());
        int max4 = Math.max(0, L());
        e.a aVar = this.ak[1];
        e.a aVar2 = this.ak[0];
        if (this.e != null) {
            this.e.P++;
        }
        if (k.a(this.bv, 1)) {
            androidx.d.c.b.a.h.a(this, h());
            for (int i4 = 0; i4 < size; i4++) {
                e eVar = this.bq.get(i4);
                if (eVar.t() && !(eVar instanceof h) && !(eVar instanceof a) && !(eVar instanceof m) && !eVar.m()) {
                    if (!(eVar.y(0) == e.a.MATCH_CONSTRAINT && eVar.G != 1 && eVar.y(1) == e.a.MATCH_CONSTRAINT && eVar.H != 1)) {
                        a(eVar, this.d, new b.a(), b.a.f660a);
                    }
                }
            }
        }
        if (size <= 2 || !((aVar2 == e.a.WRAP_CONTENT || aVar == e.a.WRAP_CONTENT) && k.a(this.bv, 1024) && androidx.d.c.b.a.i.a(this, h()))) {
            i = max4;
            i2 = max3;
            z = false;
        } else {
            if (aVar2 == e.a.WRAP_CONTENT) {
                if (max3 < I() && max3 > 0) {
                    p(max3);
                    this.bw = true;
                } else {
                    max3 = I();
                }
            }
            if (aVar == e.a.WRAP_CONTENT) {
                if (max4 < L() && max4 > 0) {
                    q(max4);
                    this.bx = true;
                } else {
                    max4 = L();
                }
            }
            i = max4;
            i2 = max3;
            z = true;
        }
        boolean z5 = b(64) || b(128);
        this.aY.m = false;
        this.aY.n = false;
        if (this.bv != 0 && z5) {
            this.aY.n = true;
        }
        ArrayList<e> arrayList = this.bq;
        boolean z6 = aj() == e.a.WRAP_CONTENT || ak() == e.a.WRAP_CONTENT;
        aB();
        for (int i5 = 0; i5 < size; i5++) {
            e eVar2 = this.bq.get(i5);
            if (eVar2 instanceof n) {
                ((n) eVar2).at();
            }
        }
        boolean b = b(64);
        boolean z7 = z;
        int i6 = 0;
        boolean z8 = true;
        while (z8) {
            int i7 = i6 + 1;
            try {
                this.aY.b();
                aB();
                a(this.aY);
                for (int i8 = i3; i8 < size; i8++) {
                    this.bq.get(i8).a(this.aY);
                }
                z2 = b(this.aY);
            } catch (Exception e) {
                e = e;
                z2 = z8;
            }
            try {
                if (this.by != null && this.by.get() != null) {
                    a(this.by.get(), this.aY.a(this.U));
                    this.by = null;
                }
                if (this.bA != null && this.bA.get() != null) {
                    b(this.bA.get(), this.aY.a(this.W));
                    this.bA = null;
                }
                if (this.bz != null && this.bz.get() != null) {
                    a(this.bz.get(), this.aY.a(this.T));
                    this.bz = null;
                }
                if (this.bB != null && this.bB.get() != null) {
                    b(this.bB.get(), this.aY.a(this.V));
                    this.bB = null;
                }
                if (z2) {
                    this.aY.g();
                }
            } catch (Exception e2) {
                e = e2;
                e.printStackTrace();
                System.out.println("EXCEPTION : " + e);
                if (!z2) {
                }
                if (z6) {
                }
                z3 = z7;
                z4 = false;
                max = Math.max(this.ax, I());
                if (max > I()) {
                }
                max2 = Math.max(this.ay, L());
                if (max2 <= L()) {
                }
                if (!z3) {
                }
                z8 = z4;
                z7 = z3;
                i6 = i7;
                i3 = 0;
            }
            if (!z2) {
                a(this.aY, k.n);
            } else {
                b(this.aY, b);
                for (int i9 = 0; i9 < size; i9++) {
                    this.bq.get(i9).b(this.aY, b);
                }
            }
            if (z6 || i7 >= 8 || !k.n[2]) {
                z3 = z7;
                z4 = false;
            } else {
                int i10 = 0;
                int i11 = 0;
                for (int i12 = 0; i12 < size; i12++) {
                    e eVar3 = this.bq.get(i12);
                    i10 = Math.max(i10, eVar3.aq + eVar3.I());
                    i11 = Math.max(i11, eVar3.ar + eVar3.L());
                }
                int max5 = Math.max(this.ax, i10);
                int max6 = Math.max(this.ay, i11);
                if (aVar2 != e.a.WRAP_CONTENT || I() >= max5) {
                    z4 = false;
                } else {
                    p(max5);
                    this.ak[0] = e.a.WRAP_CONTENT;
                    z4 = true;
                    z7 = true;
                }
                if (aVar != e.a.WRAP_CONTENT || L() >= max6) {
                    z3 = z7;
                } else {
                    q(max6);
                    this.ak[1] = e.a.WRAP_CONTENT;
                    z4 = true;
                    z3 = true;
                }
            }
            max = Math.max(this.ax, I());
            if (max > I()) {
                p(max);
                this.ak[0] = e.a.FIXED;
                z4 = true;
                z3 = true;
            }
            max2 = Math.max(this.ay, L());
            if (max2 <= L()) {
                q(max2);
                r8 = 1;
                this.ak[1] = e.a.FIXED;
                z4 = true;
                z3 = true;
            } else {
                r8 = 1;
            }
            if (!z3) {
                if (this.ak[0] == e.a.WRAP_CONTENT && i2 > 0 && I() > i2) {
                    this.bw = r8;
                    this.ak[0] = e.a.FIXED;
                    p(i2);
                    z4 = r8;
                    z3 = z4;
                }
                if (this.ak[r8] == e.a.WRAP_CONTENT && i > 0 && L() > i) {
                    this.bx = r8;
                    this.ak[r8] = e.a.FIXED;
                    q(i);
                    z8 = true;
                    z7 = true;
                    i6 = i7;
                    i3 = 0;
                }
            }
            z8 = z4;
            z7 = z3;
            i6 = i7;
            i3 = 0;
        }
        this.bq = arrayList;
        if (z7) {
            this.ak[0] = aVar2;
            this.ak[1] = aVar;
        }
        a(this.aY.o());
    }

    public ArrayList<h> av() {
        ArrayList<h> arrayList = new ArrayList<>();
        int size = this.bq.size();
        for (int i = 0; i < size; i++) {
            e eVar = this.bq.get(i);
            if (eVar instanceof h) {
                h hVar = (h) eVar;
                if (hVar.f() == 1) {
                    arrayList.add(hVar);
                }
            }
        }
        return arrayList;
    }

    public ArrayList<h> aw() {
        ArrayList<h> arrayList = new ArrayList<>();
        int size = this.bq.size();
        for (int i = 0; i < size; i++) {
            e eVar = this.bq.get(i);
            if (eVar instanceof h) {
                h hVar = (h) eVar;
                if (hVar.f() == 0) {
                    arrayList.add(hVar);
                }
            }
        }
        return arrayList;
    }

    public androidx.d.c.e ax() {
        return this.aY;
    }

    private void aB() {
        this.bd = 0;
        this.be = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(e eVar, int i) {
        if (i == 0) {
            d(eVar);
        } else if (i == 1) {
            e(eVar);
        }
    }

    private void d(e eVar) {
        if (this.bd + 1 >= this.bg.length) {
            this.bg = (c[]) Arrays.copyOf(this.bg, this.bg.length * 2);
        }
        this.bg[this.bd] = new c(eVar, 0, as());
        this.bd++;
    }

    private void e(e eVar) {
        if (this.be + 1 >= this.bf.length) {
            this.bf = (c[]) Arrays.copyOf(this.bf, this.bf.length * 2);
        }
        this.bf[this.be] = new c(eVar, 1, as());
        this.be++;
    }
}
