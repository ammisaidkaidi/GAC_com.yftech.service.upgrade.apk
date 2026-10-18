package a.a;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.nio.ByteBuffer;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class f {

    /* renamed from: a, reason: collision with root package name */
    protected PrintStream f1a;

    protected abstract int a();

    protected void a(OutputStream outputStream, int i) {
    }

    protected abstract void a(OutputStream outputStream, byte[] bArr, int i, int i2);

    protected abstract int b();

    protected void b(OutputStream outputStream) {
    }

    protected void a(OutputStream outputStream) {
        this.f1a = new PrintStream(outputStream);
    }

    protected void c(OutputStream outputStream) {
        this.f1a.println();
    }

    protected int a(InputStream inputStream, byte[] bArr) {
        for (int i = 0; i < bArr.length; i++) {
            int read = inputStream.read();
            if (read == -1) {
                return i;
            }
            bArr[i] = (byte) read;
        }
        return bArr.length;
    }

    public void a(InputStream inputStream, OutputStream outputStream) {
        byte[] bArr = new byte[b()];
        a(outputStream);
        while (true) {
            int a2 = a(inputStream, bArr);
            if (a2 == 0) {
                break;
            }
            a(outputStream, a2);
            int i = 0;
            while (i < a2) {
                if (a() + i <= a2) {
                    a(outputStream, bArr, i, a());
                } else {
                    a(outputStream, bArr, i, a2 - i);
                }
                i += a();
            }
            if (a2 < b()) {
                break;
            } else {
                c(outputStream);
            }
        }
        b(outputStream);
    }

    public void a(byte[] bArr, OutputStream outputStream) {
        a(new ByteArrayInputStream(bArr), outputStream);
    }

    public String a(byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            a(new ByteArrayInputStream(bArr), byteArrayOutputStream);
            return byteArrayOutputStream.toString("8859_1");
        } catch (Exception unused) {
            throw new Error("CharacterEncoder.encode internal error");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private byte[] c(ByteBuffer byteBuffer) {
        byte[] bArr;
        if (byteBuffer.hasArray()) {
            bArr = byteBuffer.array();
            if (bArr.length == byteBuffer.capacity() && bArr.length == byteBuffer.remaining()) {
                byteBuffer.position(byteBuffer.limit());
                if (bArr == null) {
                    return bArr;
                }
                byte[] bArr2 = new byte[byteBuffer.remaining()];
                byteBuffer.get(bArr2);
                return bArr2;
            }
        }
        bArr = null;
        if (bArr == null) {
        }
    }

    public void a(ByteBuffer byteBuffer, OutputStream outputStream) {
        a(c(byteBuffer), outputStream);
    }

    public String a(ByteBuffer byteBuffer) {
        return a(c(byteBuffer));
    }

    public void b(InputStream inputStream, OutputStream outputStream) {
        int a2;
        byte[] bArr = new byte[b()];
        a(outputStream);
        do {
            a2 = a(inputStream, bArr);
            if (a2 == 0) {
                break;
            }
            a(outputStream, a2);
            int i = 0;
            while (i < a2) {
                if (a() + i <= a2) {
                    a(outputStream, bArr, i, a());
                } else {
                    a(outputStream, bArr, i, a2 - i);
                }
                i += a();
            }
            c(outputStream);
        } while (a2 >= b());
        b(outputStream);
    }

    public void b(byte[] bArr, OutputStream outputStream) {
        b(new ByteArrayInputStream(bArr), outputStream);
    }

    public String b(byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            b(new ByteArrayInputStream(bArr), byteArrayOutputStream);
            return byteArrayOutputStream.toString();
        } catch (Exception unused) {
            throw new Error("CharacterEncoder.encodeBuffer internal error");
        }
    }

    public void b(ByteBuffer byteBuffer, OutputStream outputStream) {
        b(c(byteBuffer), outputStream);
    }

    public String b(ByteBuffer byteBuffer) {
        return b(c(byteBuffer));
    }
}
