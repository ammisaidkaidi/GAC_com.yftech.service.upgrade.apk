package androidx.d.c.b;

import androidx.d.c.b.e;

/* loaded from: /home/user/work/dex/classes.dex */
public class k {

    /* renamed from: a, reason: collision with root package name */
    public static final int f689a = 0;
    public static final int b = 1;
    public static final int c = 2;
    public static final int d = 4;
    public static final int e = 8;
    public static final int f = 16;
    public static final int g = 32;
    public static final int h = 64;
    public static final int i = 128;
    public static final int j = 256;
    public static final int k = 512;
    public static final int l = 1024;
    public static final int m = 257;
    static boolean[] n = new boolean[3];
    static final int o = 0;
    static final int p = 1;
    static final int q = 2;

    public static final boolean a(int i2, int i3) {
        return (i2 & i3) == i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(f fVar, androidx.d.c.e eVar, e eVar2) {
        eVar2.E = -1;
        eVar2.F = -1;
        if (fVar.ak[0] != e.a.WRAP_CONTENT && eVar2.ak[0] == e.a.MATCH_PARENT) {
            int i2 = eVar2.T.d;
            int I = fVar.I() - eVar2.V.d;
            eVar2.T.f = eVar.a(eVar2.T);
            eVar2.V.f = eVar.a(eVar2.V);
            eVar.a(eVar2.T.f, i2);
            eVar.a(eVar2.V.f, I);
            eVar2.E = 2;
            eVar2.h(i2, I);
        }
        if (fVar.ak[1] == e.a.WRAP_CONTENT || eVar2.ak[1] != e.a.MATCH_PARENT) {
            return;
        }
        int i3 = eVar2.U.d;
        int L = fVar.L() - eVar2.W.d;
        eVar2.U.f = eVar.a(eVar2.U);
        eVar2.W.f = eVar.a(eVar2.W);
        eVar.a(eVar2.U.f, i3);
        eVar.a(eVar2.W.f, L);
        if (eVar2.aw > 0 || eVar2.E() == 8) {
            eVar2.X.f = eVar.a(eVar2.X);
            eVar.a(eVar2.X.f, eVar2.aw + i3);
        }
        eVar2.F = 2;
        eVar2.i(i3, L);
    }
}
