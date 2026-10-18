package androidx.fragment.app;

import android.util.Log;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.fragment.app.d;
import androidx.fragment.app.j;
import androidx.fragment.app.k;
import androidx.fragment.app.s;
import androidx.lifecycle.g;
import java.io.PrintWriter;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public final class a extends s implements j.a, k.e {

    /* renamed from: a, reason: collision with root package name */
    static final String f748a = "FragmentManager";
    final k b;
    boolean c;
    int d = -1;

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.d >= 0) {
            sb.append(" #");
            sb.append(this.d);
        }
        if (this.y != null) {
            sb.append(" ");
            sb.append(this.y);
        }
        sb.append("}");
        return sb.toString();
    }

    public void a(String str, PrintWriter printWriter) {
        a(str, printWriter, true);
    }

    public void a(String str, PrintWriter printWriter, boolean z) {
        String str2;
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.y);
            printWriter.print(" mIndex=");
            printWriter.print(this.d);
            printWriter.print(" mCommitted=");
            printWriter.println(this.c);
            if (this.u != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.u));
                printWriter.print(" mTransitionStyle=#");
                printWriter.println(Integer.toHexString(this.v));
            }
            if (this.q != 0 || this.r != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.q));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.r));
            }
            if (this.s != 0 || this.t != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.s));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.t));
            }
            if (this.z != 0 || this.A != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.z));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.A);
            }
            if (this.B != 0 || this.C != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.B));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.C);
            }
        }
        if (this.p.isEmpty()) {
            return;
        }
        printWriter.print(str);
        printWriter.println("Operations:");
        int size = this.p.size();
        for (int i = 0; i < size; i++) {
            s.a aVar = this.p.get(i);
            switch (aVar.f787a) {
                case 0:
                    str2 = "NULL";
                    break;
                case 1:
                    str2 = "ADD";
                    break;
                case 2:
                    str2 = "REPLACE";
                    break;
                case 3:
                    str2 = "REMOVE";
                    break;
                case 4:
                    str2 = "HIDE";
                    break;
                case 5:
                    str2 = "SHOW";
                    break;
                case 6:
                    str2 = "DETACH";
                    break;
                case 7:
                    str2 = "ATTACH";
                    break;
                case 8:
                    str2 = "SET_PRIMARY_NAV";
                    break;
                case 9:
                    str2 = "UNSET_PRIMARY_NAV";
                    break;
                case 10:
                    str2 = "OP_SET_MAX_LIFECYCLE";
                    break;
                default:
                    str2 = "cmd=" + aVar.f787a;
                    break;
            }
            printWriter.print(str);
            printWriter.print("  Op #");
            printWriter.print(i);
            printWriter.print(": ");
            printWriter.print(str2);
            printWriter.print(" ");
            printWriter.println(aVar.b);
            if (z) {
                if (aVar.c != 0 || aVar.d != 0) {
                    printWriter.print(str);
                    printWriter.print("enterAnim=#");
                    printWriter.print(Integer.toHexString(aVar.c));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(Integer.toHexString(aVar.d));
                }
                if (aVar.e != 0 || aVar.f != 0) {
                    printWriter.print(str);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(Integer.toHexString(aVar.e));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(Integer.toHexString(aVar.f));
                }
            }
        }
    }

    public a(k kVar) {
        this.b = kVar;
    }

    @Override // androidx.fragment.app.j.a
    public int a() {
        return this.d;
    }

    @Override // androidx.fragment.app.j.a
    public int b() {
        return this.z;
    }

    @Override // androidx.fragment.app.j.a
    public int c() {
        return this.B;
    }

    @Override // androidx.fragment.app.j.a
    @ai
    public CharSequence d() {
        if (this.z != 0) {
            return this.b.t.l().getText(this.z);
        }
        return this.A;
    }

    @Override // androidx.fragment.app.j.a
    @ai
    public CharSequence e() {
        if (this.B != 0) {
            return this.b.t.l().getText(this.B);
        }
        return this.C;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.fragment.app.s
    public void a(int i, d dVar, @ai String str, int i2) {
        super.a(i, dVar, str, i2);
        dVar.J = this.b;
    }

    @Override // androidx.fragment.app.s
    @ah
    public s a(@ah d dVar) {
        if (dVar.J != null && dVar.J != this.b) {
            throw new IllegalStateException("Cannot remove Fragment attached to a different FragmentManager. Fragment " + dVar.toString() + " is already attached to a FragmentManager.");
        }
        return super.a(dVar);
    }

    @Override // androidx.fragment.app.s
    @ah
    public s b(@ah d dVar) {
        if (dVar.J != null && dVar.J != this.b) {
            throw new IllegalStateException("Cannot hide Fragment attached to a different FragmentManager. Fragment " + dVar.toString() + " is already attached to a FragmentManager.");
        }
        return super.b(dVar);
    }

    @Override // androidx.fragment.app.s
    @ah
    public s c(@ah d dVar) {
        if (dVar.J != null && dVar.J != this.b) {
            throw new IllegalStateException("Cannot show Fragment attached to a different FragmentManager. Fragment " + dVar.toString() + " is already attached to a FragmentManager.");
        }
        return super.c(dVar);
    }

    @Override // androidx.fragment.app.s
    @ah
    public s d(@ah d dVar) {
        if (dVar.J != null && dVar.J != this.b) {
            throw new IllegalStateException("Cannot detach Fragment attached to a different FragmentManager. Fragment " + dVar.toString() + " is already attached to a FragmentManager.");
        }
        return super.d(dVar);
    }

    @Override // androidx.fragment.app.s
    @ah
    public s e(@ai d dVar) {
        if (dVar != null && dVar.J != null && dVar.J != this.b) {
            throw new IllegalStateException("Cannot setPrimaryNavigation for Fragment attached to a different FragmentManager. Fragment " + dVar.toString() + " is already attached to a FragmentManager.");
        }
        return super.e(dVar);
    }

    @Override // androidx.fragment.app.s
    @ah
    public s a(@ah d dVar, @ah g.b bVar) {
        if (dVar.J != this.b) {
            throw new IllegalArgumentException("Cannot setMaxLifecycle for Fragment not attached to FragmentManager " + this.b);
        }
        if (!bVar.a(g.b.CREATED)) {
            throw new IllegalArgumentException("Cannot set maximum Lifecycle below " + g.b.CREATED);
        }
        return super.a(dVar, bVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i) {
        if (this.w) {
            if (k.c) {
                Log.v(f748a, "Bump nesting in " + this + " by " + i);
            }
            int size = this.p.size();
            for (int i2 = 0; i2 < size; i2++) {
                s.a aVar = this.p.get(i2);
                if (aVar.b != null) {
                    aVar.b.I += i;
                    if (k.c) {
                        Log.v(f748a, "Bump nesting of " + aVar.b + " to " + aVar.b.I);
                    }
                }
            }
        }
    }

    public void f() {
        if (this.G != null) {
            for (int i = 0; i < this.G.size(); i++) {
                this.G.get(i).run();
            }
            this.G = null;
        }
    }

    @Override // androidx.fragment.app.s
    public int g() {
        return a(false);
    }

    @Override // androidx.fragment.app.s
    public int h() {
        return a(true);
    }

    @Override // androidx.fragment.app.s
    public void i() {
        p();
        this.b.b((k.e) this, false);
    }

    @Override // androidx.fragment.app.s
    public void j() {
        p();
        this.b.b((k.e) this, true);
    }

    int a(boolean z) {
        if (this.c) {
            throw new IllegalStateException("commit already called");
        }
        if (k.c) {
            Log.v(f748a, "Commit: " + this);
            PrintWriter printWriter = new PrintWriter(new androidx.core.m.d(f748a));
            a("  ", printWriter);
            printWriter.close();
        }
        this.c = true;
        if (this.w) {
            this.d = this.b.a(this);
        } else {
            this.d = -1;
        }
        this.b.a(this, z);
        return this.d;
    }

    @Override // androidx.fragment.app.k.e
    public boolean a(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2) {
        if (k.c) {
            Log.v(f748a, "Run: " + this);
        }
        arrayList.add(this);
        arrayList2.add(false);
        if (!this.w) {
            return true;
        }
        this.b.b(this);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(int i) {
        int size = this.p.size();
        for (int i2 = 0; i2 < size; i2++) {
            s.a aVar = this.p.get(i2);
            int i3 = aVar.b != null ? aVar.b.O : 0;
            if (i3 != 0 && i3 == i) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(ArrayList<a> arrayList, int i, int i2) {
        if (i2 == i) {
            return false;
        }
        int size = this.p.size();
        int i3 = -1;
        for (int i4 = 0; i4 < size; i4++) {
            s.a aVar = this.p.get(i4);
            int i5 = aVar.b != null ? aVar.b.O : 0;
            if (i5 != 0 && i5 != i3) {
                for (int i6 = i; i6 < i2; i6++) {
                    a aVar2 = arrayList.get(i6);
                    int size2 = aVar2.p.size();
                    for (int i7 = 0; i7 < size2; i7++) {
                        s.a aVar3 = aVar2.p.get(i7);
                        if ((aVar3.b != null ? aVar3.b.O : 0) == i5) {
                            return true;
                        }
                    }
                }
                i3 = i5;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k() {
        int size = this.p.size();
        for (int i = 0; i < size; i++) {
            s.a aVar = this.p.get(i);
            d dVar = aVar.b;
            if (dVar != null) {
                dVar.b(this.u, this.v);
            }
            int i2 = aVar.f787a;
            if (i2 == 1) {
                dVar.c(aVar.c);
                this.b.a(dVar, false);
            } else {
                switch (i2) {
                    case 3:
                        dVar.c(aVar.d);
                        this.b.n(dVar);
                        break;
                    case 4:
                        dVar.c(aVar.d);
                        this.b.o(dVar);
                        break;
                    case 5:
                        dVar.c(aVar.c);
                        this.b.p(dVar);
                        break;
                    case 6:
                        dVar.c(aVar.d);
                        this.b.q(dVar);
                        break;
                    case 7:
                        dVar.c(aVar.c);
                        this.b.r(dVar);
                        break;
                    case 8:
                        this.b.u(dVar);
                        break;
                    case 9:
                        this.b.u(null);
                        break;
                    case 10:
                        this.b.a(dVar, aVar.h);
                        break;
                    default:
                        throw new IllegalArgumentException("Unknown cmd: " + aVar.f787a);
                }
            }
            if (!this.F && aVar.f787a != 1 && dVar != null) {
                this.b.k(dVar);
            }
        }
        if (this.F) {
            return;
        }
        this.b.a(this.b.s, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(boolean z) {
        for (int size = this.p.size() - 1; size >= 0; size--) {
            s.a aVar = this.p.get(size);
            d dVar = aVar.b;
            if (dVar != null) {
                dVar.b(k.e(this.u), this.v);
            }
            int i = aVar.f787a;
            if (i == 1) {
                dVar.c(aVar.f);
                this.b.n(dVar);
            } else {
                switch (i) {
                    case 3:
                        dVar.c(aVar.e);
                        this.b.a(dVar, false);
                        break;
                    case 4:
                        dVar.c(aVar.e);
                        this.b.p(dVar);
                        break;
                    case 5:
                        dVar.c(aVar.f);
                        this.b.o(dVar);
                        break;
                    case 6:
                        dVar.c(aVar.e);
                        this.b.r(dVar);
                        break;
                    case 7:
                        dVar.c(aVar.f);
                        this.b.q(dVar);
                        break;
                    case 8:
                        this.b.u(null);
                        break;
                    case 9:
                        this.b.u(dVar);
                        break;
                    case 10:
                        this.b.a(dVar, aVar.g);
                        break;
                    default:
                        throw new IllegalArgumentException("Unknown cmd: " + aVar.f787a);
                }
            }
            if (!this.F && aVar.f787a != 3 && dVar != null) {
                this.b.k(dVar);
            }
        }
        if (this.F || !z) {
            return;
        }
        this.b.a(this.b.s, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d a(ArrayList<d> arrayList, d dVar) {
        d dVar2 = dVar;
        int i = 0;
        while (i < this.p.size()) {
            s.a aVar = this.p.get(i);
            switch (aVar.f787a) {
                case 1:
                case 7:
                    arrayList.add(aVar.b);
                    break;
                case 2:
                    d dVar3 = aVar.b;
                    int i2 = dVar3.O;
                    d dVar4 = dVar2;
                    int i3 = i;
                    boolean z = false;
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        d dVar5 = arrayList.get(size);
                        if (dVar5.O == i2) {
                            if (dVar5 == dVar3) {
                                z = true;
                            } else {
                                if (dVar5 == dVar4) {
                                    this.p.add(i3, new s.a(9, dVar5));
                                    i3++;
                                    dVar4 = null;
                                }
                                s.a aVar2 = new s.a(3, dVar5);
                                aVar2.c = aVar.c;
                                aVar2.e = aVar.e;
                                aVar2.d = aVar.d;
                                aVar2.f = aVar.f;
                                this.p.add(i3, aVar2);
                                arrayList.remove(dVar5);
                                i3++;
                            }
                        }
                    }
                    if (z) {
                        this.p.remove(i3);
                        i3--;
                    } else {
                        aVar.f787a = 1;
                        arrayList.add(dVar3);
                    }
                    i = i3;
                    dVar2 = dVar4;
                    break;
                case 3:
                case 6:
                    arrayList.remove(aVar.b);
                    if (aVar.b == dVar2) {
                        this.p.add(i, new s.a(9, aVar.b));
                        i++;
                        dVar2 = null;
                        break;
                    } else {
                        break;
                    }
                case 8:
                    this.p.add(i, new s.a(9, dVar2));
                    i++;
                    dVar2 = aVar.b;
                    break;
            }
            i++;
        }
        return dVar2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d b(ArrayList<d> arrayList, d dVar) {
        for (int size = this.p.size() - 1; size >= 0; size--) {
            s.a aVar = this.p.get(size);
            int i = aVar.f787a;
            if (i != 1) {
                if (i != 3) {
                    switch (i) {
                        case 8:
                            dVar = null;
                            break;
                        case 9:
                            dVar = aVar.b;
                            break;
                        case 10:
                            aVar.h = aVar.g;
                            break;
                    }
                }
                arrayList.add(aVar.b);
            }
            arrayList.remove(aVar.b);
        }
        return dVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean l() {
        for (int i = 0; i < this.p.size(); i++) {
            if (b(this.p.get(i))) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(d.c cVar) {
        for (int i = 0; i < this.p.size(); i++) {
            s.a aVar = this.p.get(i);
            if (b(aVar)) {
                aVar.b.a(cVar);
            }
        }
    }

    private static boolean b(s.a aVar) {
        d dVar = aVar.b;
        return (dVar == null || !dVar.C || dVar.X == null || dVar.R || dVar.Q || !dVar.aI()) ? false : true;
    }

    @Override // androidx.fragment.app.j.a
    @ai
    public String m() {
        return this.y;
    }

    @Override // androidx.fragment.app.s
    public boolean n() {
        return this.p.isEmpty();
    }
}
