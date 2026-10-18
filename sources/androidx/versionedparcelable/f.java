package androidx.versionedparcelable;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseIntArray;
import androidx.annotation.ap;
import java.lang.reflect.Method;

@ap(a = {ap.a.LIBRARY})
/* loaded from: /home/user/work/dex/classes.dex */
class f extends e {
    private static final boolean d = false;
    private static final String e = "VersionedParcelParcel";
    private final SparseIntArray f;
    private final Parcel g;
    private final int h;
    private final int i;
    private final String j;
    private int k;
    private int l;
    private int m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), com.yftech.service.upgrade.a.d, new androidx.c.a(), new androidx.c.a(), new androidx.c.a());
    }

    private f(Parcel parcel, int i, int i2, String str, androidx.c.a<String, Method> aVar, androidx.c.a<String, Method> aVar2, androidx.c.a<String, Class> aVar3) {
        super(aVar, aVar2, aVar3);
        this.f = new SparseIntArray();
        this.k = -1;
        this.l = 0;
        this.m = -1;
        this.g = parcel;
        this.h = i;
        this.i = i2;
        this.l = this.h;
        this.j = str;
    }

    @Override // androidx.versionedparcelable.e
    public boolean b(int i) {
        while (this.l < this.i) {
            if (this.m == i) {
                return true;
            }
            if (String.valueOf(this.m).compareTo(String.valueOf(i)) > 0) {
                return false;
            }
            this.g.setDataPosition(this.l);
            int readInt = this.g.readInt();
            this.m = this.g.readInt();
            this.l += readInt;
        }
        return this.m == i;
    }

    @Override // androidx.versionedparcelable.e
    public void c(int i) {
        b();
        this.k = i;
        this.f.put(i, this.g.dataPosition());
        a(0);
        a(i);
    }

    @Override // androidx.versionedparcelable.e
    public void b() {
        if (this.k >= 0) {
            int i = this.f.get(this.k);
            int dataPosition = this.g.dataPosition();
            this.g.setDataPosition(i);
            this.g.writeInt(dataPosition - i);
            this.g.setDataPosition(dataPosition);
        }
    }

    @Override // androidx.versionedparcelable.e
    protected e c() {
        return new f(this.g, this.g.dataPosition(), this.l == this.h ? this.i : this.l, this.j + "  ", this.f1111a, this.b, this.c);
    }

    @Override // androidx.versionedparcelable.e
    public void a(byte[] bArr) {
        if (bArr != null) {
            this.g.writeInt(bArr.length);
            this.g.writeByteArray(bArr);
        } else {
            this.g.writeInt(-1);
        }
    }

    @Override // androidx.versionedparcelable.e
    public void a(byte[] bArr, int i, int i2) {
        if (bArr != null) {
            this.g.writeInt(bArr.length);
            this.g.writeByteArray(bArr, i, i2);
        } else {
            this.g.writeInt(-1);
        }
    }

    @Override // androidx.versionedparcelable.e
    public void a(int i) {
        this.g.writeInt(i);
    }

    @Override // androidx.versionedparcelable.e
    public void a(long j) {
        this.g.writeLong(j);
    }

    @Override // androidx.versionedparcelable.e
    public void a(float f) {
        this.g.writeFloat(f);
    }

    @Override // androidx.versionedparcelable.e
    public void a(double d2) {
        this.g.writeDouble(d2);
    }

    @Override // androidx.versionedparcelable.e
    public void a(String str) {
        this.g.writeString(str);
    }

    @Override // androidx.versionedparcelable.e
    public void a(IBinder iBinder) {
        this.g.writeStrongBinder(iBinder);
    }

    @Override // androidx.versionedparcelable.e
    public void a(Parcelable parcelable) {
        this.g.writeParcelable(parcelable, 0);
    }

    @Override // androidx.versionedparcelable.e
    public void a(boolean z) {
        this.g.writeInt(z ? 1 : 0);
    }

    @Override // androidx.versionedparcelable.e
    public void a(IInterface iInterface) {
        this.g.writeStrongInterface(iInterface);
    }

    @Override // androidx.versionedparcelable.e
    public void a(Bundle bundle) {
        this.g.writeBundle(bundle);
    }

    @Override // androidx.versionedparcelable.e
    protected void a(CharSequence charSequence) {
        TextUtils.writeToParcel(charSequence, this.g, 0);
    }

    @Override // androidx.versionedparcelable.e
    protected CharSequence k() {
        return (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(this.g);
    }

    @Override // androidx.versionedparcelable.e
    public int d() {
        return this.g.readInt();
    }

    @Override // androidx.versionedparcelable.e
    public long e() {
        return this.g.readLong();
    }

    @Override // androidx.versionedparcelable.e
    public float f() {
        return this.g.readFloat();
    }

    @Override // androidx.versionedparcelable.e
    public double g() {
        return this.g.readDouble();
    }

    @Override // androidx.versionedparcelable.e
    public String h() {
        return this.g.readString();
    }

    @Override // androidx.versionedparcelable.e
    public IBinder i() {
        return this.g.readStrongBinder();
    }

    @Override // androidx.versionedparcelable.e
    public byte[] j() {
        int readInt = this.g.readInt();
        if (readInt < 0) {
            return null;
        }
        byte[] bArr = new byte[readInt];
        this.g.readByteArray(bArr);
        return bArr;
    }

    @Override // androidx.versionedparcelable.e
    public <T extends Parcelable> T l() {
        return (T) this.g.readParcelable(getClass().getClassLoader());
    }

    @Override // androidx.versionedparcelable.e
    public Bundle m() {
        return this.g.readBundle(getClass().getClassLoader());
    }

    @Override // androidx.versionedparcelable.e
    public boolean n() {
        return this.g.readInt() != 0;
    }
}
