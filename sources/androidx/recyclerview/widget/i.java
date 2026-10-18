package androidx.recyclerview.widget;

import androidx.annotation.ai;
import androidx.annotation.ax;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class i {

    /* renamed from: a, reason: collision with root package name */
    private static final Comparator<f> f1065a = new Comparator<f>() { // from class: androidx.recyclerview.widget.i.1
        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(f fVar, f fVar2) {
            int i = fVar.f1069a - fVar2.f1069a;
            return i == 0 ? fVar.b - fVar2.b : i;
        }
    };

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class a {
        public abstract int a();

        public abstract boolean a(int i, int i2);

        public abstract int b();

        public abstract boolean b(int i, int i2);

        @ai
        public Object c(int i, int i2) {
            return null;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class c<T> {
        public abstract boolean a(@androidx.annotation.ah T t, @androidx.annotation.ah T t2);

        public abstract boolean b(@androidx.annotation.ah T t, @androidx.annotation.ah T t2);

        @ai
        public Object c(@androidx.annotation.ah T t, @androidx.annotation.ah T t2) {
            return null;
        }
    }

    private i() {
    }

    @androidx.annotation.ah
    public static b a(@androidx.annotation.ah a aVar) {
        return a(aVar, true);
    }

    @androidx.annotation.ah
    public static b a(@androidx.annotation.ah a aVar, boolean z) {
        int a2 = aVar.a();
        int b2 = aVar.b();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new e(0, a2, 0, b2));
        int abs = Math.abs(a2 - b2) + a2 + b2;
        int i = abs * 2;
        int[] iArr = new int[i];
        int[] iArr2 = new int[i];
        ArrayList arrayList3 = new ArrayList();
        while (!arrayList2.isEmpty()) {
            e eVar = (e) arrayList2.remove(arrayList2.size() - 1);
            f a3 = a(aVar, eVar.f1068a, eVar.b, eVar.c, eVar.d, iArr, iArr2, abs);
            if (a3 != null) {
                if (a3.c > 0) {
                    arrayList.add(a3);
                }
                a3.f1069a += eVar.f1068a;
                a3.b += eVar.c;
                e eVar2 = arrayList3.isEmpty() ? new e() : (e) arrayList3.remove(arrayList3.size() - 1);
                eVar2.f1068a = eVar.f1068a;
                eVar2.c = eVar.c;
                if (a3.e) {
                    eVar2.b = a3.f1069a;
                    eVar2.d = a3.b;
                } else if (a3.d) {
                    eVar2.b = a3.f1069a - 1;
                    eVar2.d = a3.b;
                } else {
                    eVar2.b = a3.f1069a;
                    eVar2.d = a3.b - 1;
                }
                arrayList2.add(eVar2);
                if (a3.e) {
                    if (a3.d) {
                        eVar.f1068a = a3.f1069a + a3.c + 1;
                        eVar.c = a3.b + a3.c;
                    } else {
                        eVar.f1068a = a3.f1069a + a3.c;
                        eVar.c = a3.b + a3.c + 1;
                    }
                } else {
                    eVar.f1068a = a3.f1069a + a3.c;
                    eVar.c = a3.b + a3.c;
                }
                arrayList2.add(eVar);
            } else {
                arrayList3.add(eVar);
            }
        }
        Collections.sort(arrayList, f1065a);
        return new b(aVar, arrayList, iArr, iArr2, z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x00e0, code lost:
    
        if (r27[r9 - 1] < r27[r9 + 1]) goto L52;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0074 A[LOOP:2: B:18:0x0062->B:22:0x0074, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0081 A[EDGE_INSN: B:23:0x0081->B:24:0x0081 BREAK  A[LOOP:2: B:18:0x0062->B:22:0x0074], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static f a(a aVar, int i, int i2, int i3, int i4, int[] iArr, int[] iArr2, int i5) {
        int i6;
        boolean z;
        int i7;
        boolean z2;
        boolean z3;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12 = i2 - i;
        int i13 = i4 - i3;
        int i14 = 1;
        if (i12 < 1 || i13 < 1) {
            return null;
        }
        int i15 = i12 - i13;
        int i16 = ((i12 + i13) + 1) / 2;
        int i17 = (i5 - i16) - 1;
        int i18 = i5 + i16 + 1;
        boolean z4 = false;
        Arrays.fill(iArr, i17, i18, 0);
        Arrays.fill(iArr2, i17 + i15, i18 + i15, i12);
        boolean z5 = i15 % 2 != 0;
        int i19 = 0;
        while (i19 <= i16) {
            int i20 = -i19;
            int i21 = i20;
            while (i21 <= i19) {
                if (i21 != i20) {
                    if (i21 != i19) {
                        int i22 = i5 + i21;
                        if (iArr[i22 - 1] < iArr[i22 + i14]) {
                        }
                    }
                    i8 = iArr[(i5 + i21) - 1] + 1;
                    z3 = true;
                    int i23 = i16;
                    i9 = i8 - i21;
                    while (i8 < i12 && i9 < i13) {
                        i10 = i12;
                        i11 = i13;
                        if (aVar.a(i + i8, i3 + i9)) {
                            break;
                        }
                        i8++;
                        i9++;
                        i12 = i10;
                        i13 = i11;
                    }
                    i10 = i12;
                    i11 = i13;
                    int i24 = i5 + i21;
                    iArr[i24] = i8;
                    if (!z5 && i21 >= (i15 - i19) + 1 && i21 <= (i15 + i19) - 1 && iArr[i24] >= iArr2[i24]) {
                        f fVar = new f();
                        fVar.f1069a = iArr2[i24];
                        fVar.b = fVar.f1069a - i21;
                        fVar.c = iArr[i24] - iArr2[i24];
                        fVar.d = z3;
                        fVar.e = false;
                        return fVar;
                    }
                    i21 += 2;
                    z4 = false;
                    i16 = i23;
                    i12 = i10;
                    i13 = i11;
                    i14 = 1;
                }
                i8 = iArr[i5 + i21 + 1];
                z3 = false;
                int i232 = i16;
                i9 = i8 - i21;
                while (i8 < i12) {
                    i10 = i12;
                    i11 = i13;
                    if (aVar.a(i + i8, i3 + i9)) {
                    }
                }
                i10 = i12;
                i11 = i13;
                int i242 = i5 + i21;
                iArr[i242] = i8;
                if (!z5) {
                }
                i21 += 2;
                z4 = false;
                i16 = i232;
                i12 = i10;
                i13 = i11;
                i14 = 1;
            }
            int i25 = i12;
            int i26 = i13;
            int i27 = i16;
            boolean z6 = z4;
            int i28 = i20;
            while (i28 <= i19) {
                int i29 = i28 + i15;
                if (i29 != i19 + i15) {
                    if (i29 != i20 + i15) {
                        int i30 = i5 + i29;
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                    i6 = iArr2[(i5 + i29) + 1] - 1;
                    z = z2;
                    for (i7 = i6 - i29; i6 > 0 && i7 > 0 && aVar.a((i + i6) - 1, (i3 + i7) - 1); i7--) {
                        i6--;
                    }
                    int i31 = i5 + i29;
                    iArr2[i31] = i6;
                    if (z5 && i29 >= i20 && i29 <= i19 && iArr[i31] >= iArr2[i31]) {
                        f fVar2 = new f();
                        fVar2.f1069a = iArr2[i31];
                        fVar2.b = fVar2.f1069a - i29;
                        fVar2.c = iArr[i31] - iArr2[i31];
                        fVar2.d = z;
                        fVar2.e = true;
                        return fVar2;
                    }
                    i28 += 2;
                    z6 = false;
                }
                i6 = iArr2[(i5 + i29) - 1];
                z = z6;
                while (i6 > 0) {
                    i6--;
                }
                int i312 = i5 + i29;
                iArr2[i312] = i6;
                if (z5) {
                }
                i28 += 2;
                z6 = false;
            }
            i19++;
            i14 = 1;
            i16 = i27;
            i12 = i25;
            i13 = i26;
            z4 = false;
        }
        throw new IllegalStateException("DiffUtil hit an unexpected case while trying to calculate the optimal path. Please make sure your data is not changing during the diff calculation.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class f {

        /* renamed from: a, reason: collision with root package name */
        int f1069a;
        int b;
        int c;
        boolean d;
        boolean e;

        f() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class e {

        /* renamed from: a, reason: collision with root package name */
        int f1068a;
        int b;
        int c;
        int d;

        public e() {
        }

        public e(int i, int i2, int i3, int i4) {
            this.f1068a = i;
            this.b = i2;
            this.c = i3;
            this.d = i4;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public static final int f1066a = -1;
        private static final int b = 1;
        private static final int c = 2;
        private static final int d = 4;
        private static final int e = 8;
        private static final int f = 16;
        private static final int g = 5;
        private static final int h = 31;
        private final List<f> i;
        private final int[] j;
        private final int[] k;
        private final a l;
        private final int m;
        private final int n;
        private final boolean o;

        b(a aVar, List<f> list, int[] iArr, int[] iArr2, boolean z) {
            this.i = list;
            this.j = iArr;
            this.k = iArr2;
            Arrays.fill(this.j, 0);
            Arrays.fill(this.k, 0);
            this.l = aVar;
            this.m = aVar.a();
            this.n = aVar.b();
            this.o = z;
            b();
            c();
        }

        private void b() {
            f fVar = this.i.isEmpty() ? null : this.i.get(0);
            if (fVar != null && fVar.f1069a == 0 && fVar.b == 0) {
                return;
            }
            f fVar2 = new f();
            fVar2.f1069a = 0;
            fVar2.b = 0;
            fVar2.d = false;
            fVar2.c = 0;
            fVar2.e = false;
            this.i.add(0, fVar2);
        }

        private void c() {
            int i = this.m;
            int i2 = this.n;
            for (int size = this.i.size() - 1; size >= 0; size--) {
                f fVar = this.i.get(size);
                int i3 = fVar.f1069a + fVar.c;
                int i4 = fVar.b + fVar.c;
                if (this.o) {
                    while (i > i3) {
                        a(i, i2, size);
                        i--;
                    }
                    while (i2 > i4) {
                        b(i, i2, size);
                        i2--;
                    }
                }
                for (int i5 = 0; i5 < fVar.c; i5++) {
                    int i6 = fVar.f1069a + i5;
                    int i7 = fVar.b + i5;
                    int i8 = this.l.b(i6, i7) ? 1 : 2;
                    this.j[i6] = (i7 << 5) | i8;
                    this.k[i7] = (i6 << 5) | i8;
                }
                i = fVar.f1069a;
                i2 = fVar.b;
            }
        }

        private void a(int i, int i2, int i3) {
            if (this.j[i - 1] != 0) {
                return;
            }
            a(i, i2, i3, false);
        }

        private void b(int i, int i2, int i3) {
            if (this.k[i2 - 1] != 0) {
                return;
            }
            a(i, i2, i3, true);
        }

        public int a(@androidx.annotation.z(a = 0) int i) {
            if (i < 0 || i >= this.m) {
                throw new IndexOutOfBoundsException("Index out of bounds - passed position = " + i + ", old list size = " + this.m);
            }
            int i2 = this.j[i];
            if ((i2 & 31) == 0) {
                return -1;
            }
            return i2 >> 5;
        }

        public int b(@androidx.annotation.z(a = 0) int i) {
            if (i < 0 || i >= this.n) {
                throw new IndexOutOfBoundsException("Index out of bounds - passed position = " + i + ", new list size = " + this.n);
            }
            int i2 = this.k[i];
            if ((i2 & 31) == 0) {
                return -1;
            }
            return i2 >> 5;
        }

        private boolean a(int i, int i2, int i3, boolean z) {
            int i4;
            int i5;
            int i6;
            if (z) {
                i2--;
                i4 = i;
                i5 = i2;
            } else {
                i4 = i - 1;
                i5 = i4;
            }
            while (i3 >= 0) {
                f fVar = this.i.get(i3);
                int i7 = fVar.f1069a + fVar.c;
                int i8 = fVar.b + fVar.c;
                if (z) {
                    for (int i9 = i4 - 1; i9 >= i7; i9--) {
                        if (this.l.a(i9, i5)) {
                            i6 = this.l.b(i9, i5) ? 8 : 4;
                            this.k[i5] = (i9 << 5) | 16;
                            this.j[i9] = (i5 << 5) | i6;
                            return true;
                        }
                    }
                } else {
                    for (int i10 = i2 - 1; i10 >= i8; i10--) {
                        if (this.l.a(i5, i10)) {
                            i6 = this.l.b(i5, i10) ? 8 : 4;
                            int i11 = i - 1;
                            this.j[i11] = (i10 << 5) | 16;
                            this.k[i10] = (i11 << 5) | i6;
                            return true;
                        }
                    }
                }
                i4 = fVar.f1069a;
                i2 = fVar.b;
                i3--;
            }
            return false;
        }

        public void a(@androidx.annotation.ah RecyclerView.a aVar) {
            a(new androidx.recyclerview.widget.b(aVar));
        }

        public void a(@androidx.annotation.ah t tVar) {
            androidx.recyclerview.widget.f fVar;
            if (tVar instanceof androidx.recyclerview.widget.f) {
                fVar = (androidx.recyclerview.widget.f) tVar;
            } else {
                fVar = new androidx.recyclerview.widget.f(tVar);
            }
            ArrayList arrayList = new ArrayList();
            int i = this.m;
            int i2 = this.n;
            for (int size = this.i.size() - 1; size >= 0; size--) {
                f fVar2 = this.i.get(size);
                int i3 = fVar2.c;
                int i4 = fVar2.f1069a + i3;
                int i5 = fVar2.b + i3;
                if (i4 < i) {
                    b(arrayList, fVar, i4, i - i4, i4);
                }
                if (i5 < i2) {
                    a(arrayList, fVar, i4, i2 - i5, i5);
                }
                for (int i6 = i3 - 1; i6 >= 0; i6--) {
                    if ((this.j[fVar2.f1069a + i6] & 31) == 2) {
                        fVar.a(fVar2.f1069a + i6, 1, this.l.c(fVar2.f1069a + i6, fVar2.b + i6));
                    }
                }
                i = fVar2.f1069a;
                i2 = fVar2.b;
            }
            fVar.a();
        }

        private static d a(List<d> list, int i, boolean z) {
            int size = list.size() - 1;
            while (size >= 0) {
                d dVar = list.get(size);
                if (dVar.f1067a == i && dVar.c == z) {
                    list.remove(size);
                    while (size < list.size()) {
                        list.get(size).b += z ? 1 : -1;
                        size++;
                    }
                    return dVar;
                }
                size--;
            }
            return null;
        }

        private void a(List<d> list, t tVar, int i, int i2, int i3) {
            if (!this.o) {
                tVar.a(i, i2);
                return;
            }
            for (int i4 = i2 - 1; i4 >= 0; i4--) {
                int i5 = i3 + i4;
                int i6 = this.k[i5] & 31;
                if (i6 == 0) {
                    tVar.a(i, 1);
                    Iterator<d> it = list.iterator();
                    while (it.hasNext()) {
                        it.next().b++;
                    }
                } else if (i6 == 4 || i6 == 8) {
                    int i7 = this.k[i5] >> 5;
                    tVar.c(a(list, i7, true).b, i);
                    if (i6 == 4) {
                        tVar.a(i, 1, this.l.c(i7, i5));
                    }
                } else if (i6 == 16) {
                    list.add(new d(i5, i, false));
                } else {
                    throw new IllegalStateException("unknown flag for pos " + i5 + " " + Long.toBinaryString(i6));
                }
            }
        }

        private void b(List<d> list, t tVar, int i, int i2, int i3) {
            if (!this.o) {
                tVar.b(i, i2);
                return;
            }
            for (int i4 = i2 - 1; i4 >= 0; i4--) {
                int i5 = i3 + i4;
                int i6 = this.j[i5] & 31;
                if (i6 == 0) {
                    tVar.b(i + i4, 1);
                    Iterator<d> it = list.iterator();
                    while (it.hasNext()) {
                        it.next().b--;
                    }
                } else if (i6 == 4 || i6 == 8) {
                    int i7 = this.j[i5] >> 5;
                    d a2 = a(list, i7, false);
                    tVar.c(i + i4, a2.b - 1);
                    if (i6 == 4) {
                        tVar.a(a2.b - 1, 1, this.l.c(i5, i7));
                    }
                } else if (i6 == 16) {
                    list.add(new d(i5, i + i4, true));
                } else {
                    throw new IllegalStateException("unknown flag for pos " + i5 + " " + Long.toBinaryString(i6));
                }
            }
        }

        @ax
        List<f> a() {
            return this.i;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class d {

        /* renamed from: a, reason: collision with root package name */
        int f1067a;
        int b;
        boolean c;

        public d(int i, int i2, boolean z) {
            this.f1067a = i;
            this.b = i2;
            this.c = z;
        }
    }
}
