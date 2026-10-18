package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.fragment.app.s;
import androidx.lifecycle.g;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
@SuppressLint({"BanParcelableUsage"})
/* loaded from: /home/user/work/dex/classes.dex */
public final class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new Parcelable.Creator<b>() { // from class: androidx.fragment.app.b.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public b createFromParcel(Parcel parcel) {
            return new b(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public b[] newArray(int i) {
            return new b[i];
        }
    };

    /* renamed from: a, reason: collision with root package name */
    final int[] f749a;
    final ArrayList<String> b;
    final int[] c;
    final int[] d;
    final int e;
    final int f;
    final String g;
    final int h;
    final int i;
    final CharSequence j;
    final int k;
    final CharSequence l;
    final ArrayList<String> m;
    final ArrayList<String> n;
    final boolean o;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public b(a aVar) {
        int size = aVar.p.size();
        this.f749a = new int[size * 5];
        if (!aVar.w) {
            throw new IllegalStateException("Not on back stack");
        }
        this.b = new ArrayList<>(size);
        this.c = new int[size];
        this.d = new int[size];
        int i = 0;
        int i2 = 0;
        while (i < size) {
            s.a aVar2 = aVar.p.get(i);
            int i3 = i2 + 1;
            this.f749a[i2] = aVar2.f787a;
            this.b.add(aVar2.b != null ? aVar2.b.x : null);
            int i4 = i3 + 1;
            this.f749a[i3] = aVar2.c;
            int i5 = i4 + 1;
            this.f749a[i4] = aVar2.d;
            int i6 = i5 + 1;
            this.f749a[i5] = aVar2.e;
            this.f749a[i6] = aVar2.f;
            this.c[i] = aVar2.g.ordinal();
            this.d[i] = aVar2.h.ordinal();
            i++;
            i2 = i6 + 1;
        }
        this.e = aVar.u;
        this.f = aVar.v;
        this.g = aVar.y;
        this.h = aVar.d;
        this.i = aVar.z;
        this.j = aVar.A;
        this.k = aVar.B;
        this.l = aVar.C;
        this.m = aVar.D;
        this.n = aVar.E;
        this.o = aVar.F;
    }

    public b(Parcel parcel) {
        this.f749a = parcel.createIntArray();
        this.b = parcel.createStringArrayList();
        this.c = parcel.createIntArray();
        this.d = parcel.createIntArray();
        this.e = parcel.readInt();
        this.f = parcel.readInt();
        this.g = parcel.readString();
        this.h = parcel.readInt();
        this.i = parcel.readInt();
        this.j = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.k = parcel.readInt();
        this.l = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.m = parcel.createStringArrayList();
        this.n = parcel.createStringArrayList();
        this.o = parcel.readInt() != 0;
    }

    public a a(k kVar) {
        a aVar = new a(kVar);
        int i = 0;
        int i2 = 0;
        while (i < this.f749a.length) {
            s.a aVar2 = new s.a();
            int i3 = i + 1;
            aVar2.f787a = this.f749a[i];
            if (k.c) {
                Log.v("FragmentManager", "Instantiate " + aVar + " op #" + i2 + " base fragment #" + this.f749a[i3]);
            }
            String str = this.b.get(i2);
            if (str != null) {
                aVar2.b = kVar.m.get(str);
            } else {
                aVar2.b = null;
            }
            aVar2.g = g.b.values()[this.c[i2]];
            aVar2.h = g.b.values()[this.d[i2]];
            int i4 = i3 + 1;
            aVar2.c = this.f749a[i3];
            int i5 = i4 + 1;
            aVar2.d = this.f749a[i4];
            int i6 = i5 + 1;
            aVar2.e = this.f749a[i5];
            aVar2.f = this.f749a[i6];
            aVar.q = aVar2.c;
            aVar.r = aVar2.d;
            aVar.s = aVar2.e;
            aVar.t = aVar2.f;
            aVar.a(aVar2);
            i2++;
            i = i6 + 1;
        }
        aVar.u = this.e;
        aVar.v = this.f;
        aVar.y = this.g;
        aVar.d = this.h;
        aVar.w = true;
        aVar.z = this.i;
        aVar.A = this.j;
        aVar.B = this.k;
        aVar.C = this.l;
        aVar.D = this.m;
        aVar.E = this.n;
        aVar.F = this.o;
        aVar.a(1);
        return aVar;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeIntArray(this.f749a);
        parcel.writeStringList(this.b);
        parcel.writeIntArray(this.c);
        parcel.writeIntArray(this.d);
        parcel.writeInt(this.e);
        parcel.writeInt(this.f);
        parcel.writeString(this.g);
        parcel.writeInt(this.h);
        parcel.writeInt(this.i);
        TextUtils.writeToParcel(this.j, parcel, 0);
        parcel.writeInt(this.k);
        TextUtils.writeToParcel(this.l, parcel, 0);
        parcel.writeStringList(this.m);
        parcel.writeStringList(this.n);
        parcel.writeInt(this.o ? 1 : 0);
    }
}
