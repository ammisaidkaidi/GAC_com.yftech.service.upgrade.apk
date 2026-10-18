package android.support.v4.app;

import android.app.Notification;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: /home/user/work/dex/classes.dex */
public interface a extends IInterface {

    /* renamed from: android.support.v4.app.a$a, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class C0003a implements a {
        @Override // android.support.v4.app.a
        public void a(String str) {
        }

        @Override // android.support.v4.app.a
        public void a(String str, int i, String str2) {
        }

        @Override // android.support.v4.app.a
        public void a(String str, int i, String str2, Notification notification) {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    void a(String str);

    void a(String str, int i, String str2);

    void a(String str, int i, String str2, Notification notification);

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class b extends Binder implements a {

        /* renamed from: a, reason: collision with root package name */
        static final int f6a = 1;
        static final int b = 2;
        static final int c = 3;
        private static final String d = "android.support.v4.app.INotificationSideChannel";

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public b() {
            attachInterface(this, d);
        }

        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(d);
            if (queryLocalInterface != null && (queryLocalInterface instanceof a)) {
                return (a) queryLocalInterface;
            }
            return new C0004a(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i == 1598968902) {
                parcel2.writeString(d);
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface(d);
                    a(parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? (Notification) Notification.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 2:
                    parcel.enforceInterface(d);
                    a(parcel.readString(), parcel.readInt(), parcel.readString());
                    return true;
                case 3:
                    parcel.enforceInterface(d);
                    a(parcel.readString());
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: android.support.v4.app.a$b$a, reason: collision with other inner class name */
        /* loaded from: /home/user/work/dex/classes.dex */
        public static class C0004a implements a {

            /* renamed from: a, reason: collision with root package name */
            public static a f7a;
            private IBinder b;

            public String a() {
                return b.d;
            }

            C0004a(IBinder iBinder) {
                this.b = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.b;
            }

            @Override // android.support.v4.app.a
            public void a(String str, int i, String str2, Notification notification) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.d);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeString(str2);
                    if (notification != null) {
                        obtain.writeInt(1);
                        notification.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.b.transact(1, obtain, null, 1) || b.a() == null) {
                        return;
                    }
                    b.a().a(str, i, str2, notification);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.app.a
            public void a(String str, int i, String str2) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.d);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeString(str2);
                    if (this.b.transact(2, obtain, null, 1) || b.a() == null) {
                        return;
                    }
                    b.a().a(str, i, str2);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.app.a
            public void a(String str) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.d);
                    obtain.writeString(str);
                    if (this.b.transact(3, obtain, null, 1) || b.a() == null) {
                        return;
                    }
                    b.a().a(str);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public static boolean a(a aVar) {
            if (C0004a.f7a != null || aVar == null) {
                return false;
            }
            C0004a.f7a = aVar;
            return true;
        }

        public static a a() {
            return C0004a.f7a;
        }
    }
}
