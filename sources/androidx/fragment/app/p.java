package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import androidx.annotation.ah;
import androidx.lifecycle.g;

/* JADX INFO: Access modifiers changed from: package-private */
@SuppressLint({"BanParcelableUsage"})
/* loaded from: /home/user/work/dex/classes.dex */
public final class p implements Parcelable {
    public static final Parcelable.Creator<p> CREATOR = new Parcelable.Creator<p>() { // from class: androidx.fragment.app.p.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public p createFromParcel(Parcel parcel) {
            return new p(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public p[] newArray(int i) {
            return new p[i];
        }
    };

    /* renamed from: a, reason: collision with root package name */
    final String f781a;
    final String b;
    final boolean c;
    final int d;
    final int e;
    final String f;
    final boolean g;
    final boolean h;
    final boolean i;
    final Bundle j;
    final boolean k;
    final int l;
    Bundle m;
    d n;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(d dVar) {
        this.f781a = dVar.getClass().getName();
        this.b = dVar.x;
        this.c = dVar.E;
        this.d = dVar.N;
        this.e = dVar.O;
        this.f = dVar.P;
        this.g = dVar.S;
        this.h = dVar.D;
        this.i = dVar.R;
        this.j = dVar.y;
        this.k = dVar.Q;
        this.l = dVar.ai.ordinal();
    }

    p(Parcel parcel) {
        this.f781a = parcel.readString();
        this.b = parcel.readString();
        this.c = parcel.readInt() != 0;
        this.d = parcel.readInt();
        this.e = parcel.readInt();
        this.f = parcel.readString();
        this.g = parcel.readInt() != 0;
        this.h = parcel.readInt() != 0;
        this.i = parcel.readInt() != 0;
        this.j = parcel.readBundle();
        this.k = parcel.readInt() != 0;
        this.m = parcel.readBundle();
        this.l = parcel.readInt();
    }

    public d a(@ah ClassLoader classLoader, @ah h hVar) {
        if (this.n == null) {
            if (this.j != null) {
                this.j.setClassLoader(classLoader);
            }
            this.n = hVar.c(classLoader, this.f781a);
            this.n.g(this.j);
            if (this.m != null) {
                this.m.setClassLoader(classLoader);
                this.n.u = this.m;
            } else {
                this.n.u = new Bundle();
            }
            this.n.x = this.b;
            this.n.E = this.c;
            this.n.G = true;
            this.n.N = this.d;
            this.n.O = this.e;
            this.n.P = this.f;
            this.n.S = this.g;
            this.n.D = this.h;
            this.n.R = this.i;
            this.n.Q = this.k;
            this.n.ai = g.b.values()[this.l];
            if (k.c) {
                Log.v("FragmentManager", "Instantiated fragment " + this.n);
            }
        }
        return this.n;
    }

    @ah
    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentState{");
        sb.append(this.f781a);
        sb.append(" (");
        sb.append(this.b);
        sb.append(")}:");
        if (this.c) {
            sb.append(" fromLayout");
        }
        if (this.e != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.e));
        }
        if (this.f != null && !this.f.isEmpty()) {
            sb.append(" tag=");
            sb.append(this.f);
        }
        if (this.g) {
            sb.append(" retainInstance");
        }
        if (this.h) {
            sb.append(" removing");
        }
        if (this.i) {
            sb.append(" detached");
        }
        if (this.k) {
            sb.append(" hidden");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f781a);
        parcel.writeString(this.b);
        parcel.writeInt(this.c ? 1 : 0);
        parcel.writeInt(this.d);
        parcel.writeInt(this.e);
        parcel.writeString(this.f);
        parcel.writeInt(this.g ? 1 : 0);
        parcel.writeInt(this.h ? 1 : 0);
        parcel.writeInt(this.i ? 1 : 0);
        parcel.writeBundle(this.j);
        parcel.writeInt(this.k ? 1 : 0);
        parcel.writeBundle(this.m);
        parcel.writeInt(this.l);
    }
}
