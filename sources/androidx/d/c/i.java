package androidx.d.c;

import java.util.Arrays;
import java.util.HashSet;

/* loaded from: /home/user/work/dex/classes.dex */
public class i {
    private static final boolean A = false;
    private static final boolean B = false;
    private static int C = 1;
    private static int D = 1;
    private static int E = 1;
    private static int F = 1;
    private static int G = 1;

    /* renamed from: a, reason: collision with root package name */
    public static final int f699a = 0;
    public static final int b = 1;
    public static final int c = 2;
    public static final int d = 3;
    public static final int e = 4;
    public static final int f = 5;
    public static final int g = 6;
    public static final int h = 7;
    public static final int i = 8;
    static final int p = 9;
    private String H;
    public boolean j;
    public int k;
    int l;
    public int m;
    public float n;
    public boolean o;
    float[] q;
    float[] r;
    a s;
    b[] t;
    int u;
    public int v;
    boolean w;
    int x;
    float y;
    HashSet<b> z;

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum a {
        UNRESTRICTED,
        CONSTANT,
        SLACK,
        ERROR,
        UNKNOWN
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a() {
        D++;
    }

    private static String b(a aVar, String str) {
        if (str != null) {
            return str + D;
        }
        switch (aVar) {
            case UNRESTRICTED:
                StringBuilder sb = new StringBuilder();
                sb.append("U");
                int i2 = E + 1;
                E = i2;
                sb.append(i2);
                return sb.toString();
            case CONSTANT:
                StringBuilder sb2 = new StringBuilder();
                sb2.append("C");
                int i3 = F + 1;
                F = i3;
                sb2.append(i3);
                return sb2.toString();
            case SLACK:
                StringBuilder sb3 = new StringBuilder();
                sb3.append("S");
                int i4 = C + 1;
                C = i4;
                sb3.append(i4);
                return sb3.toString();
            case ERROR:
                StringBuilder sb4 = new StringBuilder();
                sb4.append("e");
                int i5 = D + 1;
                D = i5;
                sb4.append(i5);
                return sb4.toString();
            case UNKNOWN:
                StringBuilder sb5 = new StringBuilder();
                sb5.append("V");
                int i6 = G + 1;
                G = i6;
                sb5.append(i6);
                return sb5.toString();
            default:
                throw new AssertionError(aVar.name());
        }
    }

    public i(String str, a aVar) {
        this.k = -1;
        this.l = -1;
        this.m = 0;
        this.o = false;
        this.q = new float[9];
        this.r = new float[9];
        this.t = new b[16];
        this.u = 0;
        this.v = 0;
        this.w = false;
        this.x = -1;
        this.y = 0.0f;
        this.z = null;
        this.H = str;
        this.s = aVar;
    }

    public i(a aVar, String str) {
        this.k = -1;
        this.l = -1;
        this.m = 0;
        this.o = false;
        this.q = new float[9];
        this.r = new float[9];
        this.t = new b[16];
        this.u = 0;
        this.v = 0;
        this.w = false;
        this.x = -1;
        this.y = 0.0f;
        this.z = null;
        this.s = aVar;
    }

    void b() {
        for (int i2 = 0; i2 < 9; i2++) {
            this.q[i2] = 0.0f;
        }
    }

    String c() {
        String str = this + "[";
        boolean z = true;
        boolean z2 = false;
        for (int i2 = 0; i2 < this.q.length; i2++) {
            String str2 = str + this.q[i2];
            if (this.q[i2] > 0.0f) {
                z2 = false;
            } else if (this.q[i2] < 0.0f) {
                z2 = true;
            }
            if (this.q[i2] != 0.0f) {
                z = false;
            }
            str = i2 < this.q.length - 1 ? str2 + ", " : str2 + "] ";
        }
        if (z2) {
            str = str + " (-)";
        }
        if (!z) {
            return str;
        }
        return str + " (*)";
    }

    public final void a(b bVar) {
        for (int i2 = 0; i2 < this.u; i2++) {
            if (this.t[i2] == bVar) {
                return;
            }
        }
        if (this.u >= this.t.length) {
            this.t = (b[]) Arrays.copyOf(this.t, this.t.length * 2);
        }
        this.t[this.u] = bVar;
        this.u++;
    }

    public final void b(b bVar) {
        int i2 = this.u;
        int i3 = 0;
        while (i3 < i2) {
            if (this.t[i3] == bVar) {
                while (i3 < i2 - 1) {
                    int i4 = i3 + 1;
                    this.t[i3] = this.t[i4];
                    i3 = i4;
                }
                this.u--;
                return;
            }
            i3++;
        }
    }

    public final void a(e eVar, b bVar) {
        int i2 = this.u;
        for (int i3 = 0; i3 < i2; i3++) {
            this.t[i3].a(eVar, bVar, false);
        }
        this.u = 0;
    }

    public void a(e eVar, float f2) {
        this.n = f2;
        this.o = true;
        this.w = false;
        this.x = -1;
        this.y = 0.0f;
        int i2 = this.u;
        this.l = -1;
        for (int i3 = 0; i3 < i2; i3++) {
            this.t[i3].a(eVar, this, false);
        }
        this.u = 0;
    }

    public void a(e eVar, i iVar, float f2) {
        this.w = true;
        this.x = iVar.k;
        this.y = f2;
        int i2 = this.u;
        this.l = -1;
        for (int i3 = 0; i3 < i2; i3++) {
            this.t[i3].b(eVar, this, false);
        }
        this.u = 0;
        eVar.i();
    }

    public void d() {
        this.H = null;
        this.s = a.UNKNOWN;
        this.m = 0;
        this.k = -1;
        this.l = -1;
        this.n = 0.0f;
        this.o = false;
        this.w = false;
        this.x = -1;
        this.y = 0.0f;
        int i2 = this.u;
        for (int i3 = 0; i3 < i2; i3++) {
            this.t[i3] = null;
        }
        this.u = 0;
        this.v = 0;
        this.j = false;
        Arrays.fill(this.r, 0.0f);
    }

    public String e() {
        return this.H;
    }

    public void a(String str) {
        this.H = str;
    }

    public void a(a aVar, String str) {
        this.s = aVar;
    }

    public String toString() {
        if (this.H != null) {
            return com.yftech.service.upgrade.a.d + this.H;
        }
        return com.yftech.service.upgrade.a.d + this.k;
    }
}
