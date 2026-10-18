package androidx.versionedparcelable;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcelable;
import androidx.annotation.ap;
import androidx.versionedparcelable.e;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.nio.charset.Charset;
import java.util.Set;

@ap(a = {ap.a.LIBRARY})
/* loaded from: /home/user/work/dex/classes.dex */
class g extends e {
    private static final Charset f = Charset.forName("UTF-16");
    private static final int g = 0;
    private static final int h = 1;
    private static final int i = 2;
    private static final int j = 3;
    private static final int k = 4;
    private static final int l = 5;
    private static final int m = 6;
    private static final int n = 7;
    private static final int o = 8;
    private static final int p = 9;
    private static final int q = 10;
    private static final int r = 11;
    private static final int s = 12;
    private static final int t = 13;
    private static final int u = 14;
    private boolean A;
    private int B;
    int d;
    int e;
    private final DataInputStream v;
    private final DataOutputStream w;
    private DataInputStream x;
    private DataOutputStream y;
    private a z;

    @Override // androidx.versionedparcelable.e
    public boolean a() {
        return true;
    }

    @Override // androidx.versionedparcelable.e
    public IBinder i() {
        return null;
    }

    @Override // androidx.versionedparcelable.e
    protected CharSequence k() {
        return null;
    }

    @Override // androidx.versionedparcelable.e
    public <T extends Parcelable> T l() {
        return null;
    }

    public g(InputStream inputStream, OutputStream outputStream) {
        this(inputStream, outputStream, new androidx.c.a(), new androidx.c.a(), new androidx.c.a());
    }

    private g(InputStream inputStream, OutputStream outputStream, androidx.c.a<String, Method> aVar, androidx.c.a<String, Method> aVar2, androidx.c.a<String, Class> aVar3) {
        super(aVar, aVar2, aVar3);
        this.d = 0;
        this.B = -1;
        this.e = -1;
        this.v = inputStream != null ? new DataInputStream(new FilterInputStream(inputStream) { // from class: androidx.versionedparcelable.g.1
            @Override // java.io.FilterInputStream, java.io.InputStream
            public int read() {
                if (g.this.e != -1 && g.this.d >= g.this.e) {
                    throw new IOException();
                }
                int read = super.read();
                g.this.d++;
                return read;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public int read(byte[] bArr, int i2, int i3) {
                if (g.this.e != -1 && g.this.d >= g.this.e) {
                    throw new IOException();
                }
                int read = super.read(bArr, i2, i3);
                if (read > 0) {
                    g.this.d += read;
                }
                return read;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public long skip(long j2) {
                if (g.this.e != -1 && g.this.d >= g.this.e) {
                    throw new IOException();
                }
                long skip = super.skip(j2);
                if (skip > 0) {
                    g.this.d += (int) skip;
                }
                return skip;
            }
        }) : null;
        this.w = outputStream != null ? new DataOutputStream(outputStream) : null;
        this.x = this.v;
        this.y = this.w;
    }

    @Override // androidx.versionedparcelable.e
    public void a(boolean z, boolean z2) {
        if (!z) {
            throw new RuntimeException("Serialization of this object is not allowed");
        }
        this.A = z2;
    }

    @Override // androidx.versionedparcelable.e
    public void b() {
        if (this.z != null) {
            try {
                if (this.z.f1114a.size() != 0) {
                    this.z.a();
                }
                this.z = null;
            } catch (IOException e) {
                throw new e.a(e);
            }
        }
    }

    @Override // androidx.versionedparcelable.e
    protected e c() {
        return new g(this.x, this.y, this.f1111a, this.b, this.c);
    }

    @Override // androidx.versionedparcelable.e
    public boolean b(int i2) {
        while (this.B != i2) {
            try {
                if (String.valueOf(this.B).compareTo(String.valueOf(i2)) > 0) {
                    return false;
                }
                if (this.d < this.e) {
                    this.v.skip(this.e - this.d);
                }
                this.e = -1;
                int readInt = this.v.readInt();
                this.d = 0;
                int i3 = readInt & androidx.core.e.a.a.d;
                if (i3 == 65535) {
                    i3 = this.v.readInt();
                }
                this.B = (readInt >> 16) & androidx.core.e.a.a.d;
                this.e = i3;
            } catch (IOException unused) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.versionedparcelable.e
    public void c(int i2) {
        b();
        this.z = new a(i2, this.w);
        this.y = this.z.b;
    }

    @Override // androidx.versionedparcelable.e
    public void a(byte[] bArr) {
        try {
            if (bArr != null) {
                this.y.writeInt(bArr.length);
                this.y.write(bArr);
            } else {
                this.y.writeInt(-1);
            }
        } catch (IOException e) {
            throw new e.a(e);
        }
    }

    @Override // androidx.versionedparcelable.e
    public void a(byte[] bArr, int i2, int i3) {
        try {
            if (bArr != null) {
                this.y.writeInt(i3);
                this.y.write(bArr, i2, i3);
            } else {
                this.y.writeInt(-1);
            }
        } catch (IOException e) {
            throw new e.a(e);
        }
    }

    @Override // androidx.versionedparcelable.e
    protected void a(CharSequence charSequence) {
        if (!this.A) {
            throw new RuntimeException("CharSequence cannot be written to an OutputStream");
        }
    }

    @Override // androidx.versionedparcelable.e
    public void a(int i2) {
        try {
            this.y.writeInt(i2);
        } catch (IOException e) {
            throw new e.a(e);
        }
    }

    @Override // androidx.versionedparcelable.e
    public void a(long j2) {
        try {
            this.y.writeLong(j2);
        } catch (IOException e) {
            throw new e.a(e);
        }
    }

    @Override // androidx.versionedparcelable.e
    public void a(float f2) {
        try {
            this.y.writeFloat(f2);
        } catch (IOException e) {
            throw new e.a(e);
        }
    }

    @Override // androidx.versionedparcelable.e
    public void a(double d) {
        try {
            this.y.writeDouble(d);
        } catch (IOException e) {
            throw new e.a(e);
        }
    }

    @Override // androidx.versionedparcelable.e
    public void a(String str) {
        try {
            if (str != null) {
                byte[] bytes = str.getBytes(f);
                this.y.writeInt(bytes.length);
                this.y.write(bytes);
            } else {
                this.y.writeInt(-1);
            }
        } catch (IOException e) {
            throw new e.a(e);
        }
    }

    @Override // androidx.versionedparcelable.e
    public void a(boolean z) {
        try {
            this.y.writeBoolean(z);
        } catch (IOException e) {
            throw new e.a(e);
        }
    }

    @Override // androidx.versionedparcelable.e
    public void a(IBinder iBinder) {
        if (!this.A) {
            throw new RuntimeException("Binders cannot be written to an OutputStream");
        }
    }

    @Override // androidx.versionedparcelable.e
    public void a(Parcelable parcelable) {
        if (!this.A) {
            throw new RuntimeException("Parcelables cannot be written to an OutputStream");
        }
    }

    @Override // androidx.versionedparcelable.e
    public void a(IInterface iInterface) {
        if (!this.A) {
            throw new RuntimeException("Binders cannot be written to an OutputStream");
        }
    }

    @Override // androidx.versionedparcelable.e
    public int d() {
        try {
            return this.x.readInt();
        } catch (IOException e) {
            throw new e.a(e);
        }
    }

    @Override // androidx.versionedparcelable.e
    public long e() {
        try {
            return this.x.readLong();
        } catch (IOException e) {
            throw new e.a(e);
        }
    }

    @Override // androidx.versionedparcelable.e
    public float f() {
        try {
            return this.x.readFloat();
        } catch (IOException e) {
            throw new e.a(e);
        }
    }

    @Override // androidx.versionedparcelable.e
    public double g() {
        try {
            return this.x.readDouble();
        } catch (IOException e) {
            throw new e.a(e);
        }
    }

    @Override // androidx.versionedparcelable.e
    public String h() {
        try {
            int readInt = this.x.readInt();
            if (readInt <= 0) {
                return null;
            }
            byte[] bArr = new byte[readInt];
            this.x.readFully(bArr);
            return new String(bArr, f);
        } catch (IOException e) {
            throw new e.a(e);
        }
    }

    @Override // androidx.versionedparcelable.e
    public byte[] j() {
        try {
            int readInt = this.x.readInt();
            if (readInt <= 0) {
                return null;
            }
            byte[] bArr = new byte[readInt];
            this.x.readFully(bArr);
            return bArr;
        } catch (IOException e) {
            throw new e.a(e);
        }
    }

    @Override // androidx.versionedparcelable.e
    public boolean n() {
        try {
            return this.x.readBoolean();
        } catch (IOException e) {
            throw new e.a(e);
        }
    }

    @Override // androidx.versionedparcelable.e
    public void a(Bundle bundle) {
        try {
            if (bundle != null) {
                Set<String> keySet = bundle.keySet();
                this.y.writeInt(keySet.size());
                for (String str : keySet) {
                    a(str);
                    a(bundle.get(str));
                }
                return;
            }
            this.y.writeInt(-1);
        } catch (IOException e) {
            throw new e.a(e);
        }
    }

    @Override // androidx.versionedparcelable.e
    public Bundle m() {
        int d = d();
        if (d < 0) {
            return null;
        }
        Bundle bundle = new Bundle();
        for (int i2 = 0; i2 < d; i2++) {
            a(d(), h(), bundle);
        }
        return bundle;
    }

    private void a(Object obj) {
        if (obj == null) {
            a(0);
            return;
        }
        if (obj instanceof Bundle) {
            a(1);
            a((Bundle) obj);
            return;
        }
        if (obj instanceof String) {
            a(3);
            a((String) obj);
            return;
        }
        if (obj instanceof String[]) {
            a(4);
            a((Object[]) obj);
            return;
        }
        if (obj instanceof Boolean) {
            a(5);
            a(((Boolean) obj).booleanValue());
            return;
        }
        if (obj instanceof boolean[]) {
            a(6);
            a((boolean[]) obj);
            return;
        }
        if (obj instanceof Double) {
            a(7);
            a(((Double) obj).doubleValue());
            return;
        }
        if (obj instanceof double[]) {
            a(8);
            a((double[]) obj);
            return;
        }
        if (obj instanceof Integer) {
            a(9);
            a(((Integer) obj).intValue());
            return;
        }
        if (obj instanceof int[]) {
            a(10);
            a((int[]) obj);
            return;
        }
        if (obj instanceof Long) {
            a(11);
            a(((Long) obj).longValue());
            return;
        }
        if (obj instanceof long[]) {
            a(12);
            a((long[]) obj);
            return;
        }
        if (obj instanceof Float) {
            a(13);
            a(((Float) obj).floatValue());
        } else if (obj instanceof float[]) {
            a(14);
            a((float[]) obj);
        } else {
            throw new IllegalArgumentException("Unsupported type " + obj.getClass());
        }
    }

    private void a(int i2, String str, Bundle bundle) {
        switch (i2) {
            case 0:
                bundle.putParcelable(str, null);
                return;
            case 1:
                bundle.putBundle(str, m());
                return;
            case 2:
                bundle.putBundle(str, m());
                return;
            case 3:
                bundle.putString(str, h());
                return;
            case 4:
                bundle.putStringArray(str, (String[]) b(new String[0]));
                return;
            case 5:
                bundle.putBoolean(str, n());
                return;
            case 6:
                bundle.putBooleanArray(str, o());
                return;
            case 7:
                bundle.putDouble(str, g());
                return;
            case 8:
                bundle.putDoubleArray(str, s());
                return;
            case 9:
                bundle.putInt(str, d());
                return;
            case 10:
                bundle.putIntArray(str, p());
                return;
            case 11:
                bundle.putLong(str, e());
                return;
            case 12:
                bundle.putLongArray(str, q());
                return;
            case 13:
                bundle.putFloat(str, f());
                return;
            case 14:
                bundle.putFloatArray(str, r());
                return;
            default:
                throw new RuntimeException("Unknown type " + i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        final ByteArrayOutputStream f1114a = new ByteArrayOutputStream();
        final DataOutputStream b = new DataOutputStream(this.f1114a);
        private final int c;
        private final DataOutputStream d;

        a(int i, DataOutputStream dataOutputStream) {
            this.c = i;
            this.d = dataOutputStream;
        }

        void a() {
            this.b.flush();
            int size = this.f1114a.size();
            this.d.writeInt((this.c << 16) | (size >= 65535 ? 65535 : size));
            if (size >= 65535) {
                this.d.writeInt(size);
            }
            this.f1114a.writeTo(this.d);
        }
    }
}
