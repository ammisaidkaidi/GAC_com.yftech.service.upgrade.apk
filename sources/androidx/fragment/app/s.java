package androidx.fragment.app;

import android.view.View;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.as;
import androidx.annotation.at;
import androidx.core.n.af;
import androidx.lifecycle.g;
import java.lang.reflect.Modifier;
import java.util.ArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class s {
    public static final int H = 4096;
    public static final int I = 8192;
    public static final int J = -1;
    public static final int K = 0;
    public static final int L = 4097;
    public static final int M = 8194;
    public static final int N = 4099;
    static final int e = 0;
    static final int f = 1;
    static final int g = 2;
    static final int h = 3;
    static final int i = 4;
    static final int j = 5;
    static final int k = 6;
    static final int l = 7;
    static final int m = 8;
    static final int n = 9;
    static final int o = 10;
    CharSequence A;
    int B;
    CharSequence C;
    ArrayList<String> D;
    ArrayList<String> E;
    ArrayList<Runnable> G;
    int q;
    int r;
    int s;
    int t;
    int u;
    int v;
    boolean w;

    @ai
    String y;
    int z;
    ArrayList<a> p = new ArrayList<>();
    boolean x = true;
    boolean F = false;

    public abstract int g();

    public abstract int h();

    public abstract void i();

    public abstract void j();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        int f787a;
        d b;
        int c;
        int d;
        int e;
        int f;
        g.b g;
        g.b h;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(int i, d dVar) {
            this.f787a = i;
            this.b = dVar;
            this.g = g.b.RESUMED;
            this.h = g.b.RESUMED;
        }

        a(int i, @ah d dVar, g.b bVar) {
            this.f787a = i;
            this.b = dVar;
            this.g = dVar.ai;
            this.h = bVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(a aVar) {
        this.p.add(aVar);
        aVar.c = this.q;
        aVar.d = this.r;
        aVar.e = this.s;
        aVar.f = this.t;
    }

    @ah
    public s a(@ah d dVar, @ai String str) {
        a(0, dVar, str, 1);
        return this;
    }

    @ah
    public s a(@androidx.annotation.w int i2, @ah d dVar) {
        a(i2, dVar, (String) null, 1);
        return this;
    }

    @ah
    public s a(@androidx.annotation.w int i2, @ah d dVar, @ai String str) {
        a(i2, dVar, str, 1);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i2, d dVar, @ai String str, int i3) {
        Class<?> cls = dVar.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
        }
        if (str != null) {
            if (dVar.P != null && !str.equals(dVar.P)) {
                throw new IllegalStateException("Can't change tag of fragment " + dVar + ": was " + dVar.P + " now " + str);
            }
            dVar.P = str;
        }
        if (i2 != 0) {
            if (i2 == -1) {
                throw new IllegalArgumentException("Can't add fragment " + dVar + " with tag " + str + " to container view with no id");
            }
            if (dVar.N != 0 && dVar.N != i2) {
                throw new IllegalStateException("Can't change container ID of fragment " + dVar + ": was " + dVar.N + " now " + i2);
            }
            dVar.N = i2;
            dVar.O = i2;
        }
        a(new a(i3, dVar));
    }

    @ah
    public s b(@androidx.annotation.w int i2, @ah d dVar) {
        return b(i2, dVar, null);
    }

    @ah
    public s b(@androidx.annotation.w int i2, @ah d dVar, @ai String str) {
        if (i2 == 0) {
            throw new IllegalArgumentException("Must use non-zero containerViewId");
        }
        a(i2, dVar, str, 2);
        return this;
    }

    @ah
    public s a(@ah d dVar) {
        a(new a(3, dVar));
        return this;
    }

    @ah
    public s b(@ah d dVar) {
        a(new a(4, dVar));
        return this;
    }

    @ah
    public s c(@ah d dVar) {
        a(new a(5, dVar));
        return this;
    }

    @ah
    public s d(@ah d dVar) {
        a(new a(6, dVar));
        return this;
    }

    @ah
    public s f(@ah d dVar) {
        a(new a(7, dVar));
        return this;
    }

    @ah
    public s e(@ai d dVar) {
        a(new a(8, dVar));
        return this;
    }

    @ah
    public s a(@ah d dVar, @ah g.b bVar) {
        a(new a(10, dVar, bVar));
        return this;
    }

    public boolean n() {
        return this.p.isEmpty();
    }

    @ah
    public s a(@androidx.annotation.a @androidx.annotation.b int i2, @androidx.annotation.a @androidx.annotation.b int i3) {
        return a(i2, i3, 0, 0);
    }

    @ah
    public s a(@androidx.annotation.a @androidx.annotation.b int i2, @androidx.annotation.a @androidx.annotation.b int i3, @androidx.annotation.a @androidx.annotation.b int i4, @androidx.annotation.a @androidx.annotation.b int i5) {
        this.q = i2;
        this.r = i3;
        this.s = i4;
        this.t = i5;
        return this;
    }

    @ah
    public s a(@ah View view, @ah String str) {
        if (t.a()) {
            String R = af.R(view);
            if (R == null) {
                throw new IllegalArgumentException("Unique transitionNames are required for all sharedElements");
            }
            if (this.D == null) {
                this.D = new ArrayList<>();
                this.E = new ArrayList<>();
            } else {
                if (this.E.contains(str)) {
                    throw new IllegalArgumentException("A shared element with the target name '" + str + "' has already been added to the transaction.");
                }
                if (this.D.contains(R)) {
                    throw new IllegalArgumentException("A shared element with the source name '" + R + "' has already been added to the transaction.");
                }
            }
            this.D.add(R);
            this.E.add(str);
        }
        return this;
    }

    @ah
    public s c(int i2) {
        this.u = i2;
        return this;
    }

    @ah
    public s d(@at int i2) {
        this.v = i2;
        return this;
    }

    @ah
    public s a(@ai String str) {
        if (!this.x) {
            throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
        }
        this.w = true;
        this.y = str;
        return this;
    }

    public boolean o() {
        return this.x;
    }

    @ah
    public s p() {
        if (this.w) {
            throw new IllegalStateException("This transaction is already being added to the back stack");
        }
        this.x = false;
        return this;
    }

    @ah
    public s e(@as int i2) {
        this.z = i2;
        this.A = null;
        return this;
    }

    @ah
    public s a(@ai CharSequence charSequence) {
        this.z = 0;
        this.A = charSequence;
        return this;
    }

    @ah
    public s f(@as int i2) {
        this.B = i2;
        this.C = null;
        return this;
    }

    @ah
    public s b(@ai CharSequence charSequence) {
        this.B = 0;
        this.C = charSequence;
        return this;
    }

    @ah
    public s c(boolean z) {
        this.F = z;
        return this;
    }

    @ah
    @Deprecated
    public s d(boolean z) {
        return c(z);
    }

    @ah
    public s a(@ah Runnable runnable) {
        p();
        if (this.G == null) {
            this.G = new ArrayList<>();
        }
        this.G.add(runnable);
        return this;
    }
}
