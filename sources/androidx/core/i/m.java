package androidx.core.i;

import android.os.Parcel;
import android.os.Parcelable;

@Deprecated
/* loaded from: /home/user/work/dex/classes.dex */
public final class m {
    @Deprecated
    public static <T> Parcelable.Creator<T> a(n<T> nVar) {
        return new a(nVar);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    static class a<T> implements Parcelable.ClassLoaderCreator<T> {

        /* renamed from: a, reason: collision with root package name */
        private final n<T> f454a;

        a(n<T> nVar) {
            this.f454a = nVar;
        }

        @Override // android.os.Parcelable.Creator
        public T createFromParcel(Parcel parcel) {
            return this.f454a.a(parcel, null);
        }

        @Override // android.os.Parcelable.ClassLoaderCreator
        public T createFromParcel(Parcel parcel, ClassLoader classLoader) {
            return this.f454a.a(parcel, classLoader);
        }

        @Override // android.os.Parcelable.Creator
        public T[] newArray(int i) {
            return this.f454a.a(i);
        }
    }

    private m() {
    }
}
