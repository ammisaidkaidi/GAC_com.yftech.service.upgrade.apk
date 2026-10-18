package android.support.v4.a;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: /home/user/work/dex/classes.dex */
public interface a extends IInterface {

    /* renamed from: android.support.v4.a.a$a, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class C0000a implements a {
        @Override // android.support.v4.a.a
        public void a(int i, Bundle bundle) {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    void a(int i, Bundle bundle);

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class b extends Binder implements a {

        /* renamed from: a, reason: collision with root package name */
        static final int f2a = 1;
        private static final String b = "android.support.v4.os.IResultReceiver";

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public b() {
            attachInterface(this, b);
        }

        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(b);
            if (queryLocalInterface != null && (queryLocalInterface instanceof a)) {
                return (a) queryLocalInterface;
            }
            return new C0001a(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i == 1) {
                parcel.enforceInterface(b);
                a(parcel.readInt(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                return true;
            }
            if (i == 1598968902) {
                parcel2.writeString(b);
                return true;
            }
            return super.onTransact(i, parcel, parcel2, i2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: android.support.v4.a.a$b$a, reason: collision with other inner class name */
        /* loaded from: /home/user/work/dex/classes.dex */
        public static class C0001a implements a {

            /* renamed from: a, reason: collision with root package name */
            public static a f3a;
            private IBinder b;

            public String a() {
                return b.b;
            }

            C0001a(IBinder iBinder) {
                this.b = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.b;
            }

            @Override // android.support.v4.a.a
            public void a(int i, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.b);
                    obtain.writeInt(i);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.b.transact(1, obtain, null, 1) || b.a() == null) {
                        return;
                    }
                    b.a().a(i, bundle);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public static boolean a(a aVar) {
            if (C0001a.f3a != null || aVar == null) {
                return false;
            }
            C0001a.f3a = aVar;
            return true;
        }

        public static a a() {
            return C0001a.f3a;
        }
    }
}
