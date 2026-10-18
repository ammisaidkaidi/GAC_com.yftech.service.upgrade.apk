package a.a;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PushbackInputStream;
import java.nio.ByteBuffer;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class e {
    protected abstract int a();

    protected void a(PushbackInputStream pushbackInputStream, OutputStream outputStream) {
    }

    protected abstract int b();

    protected void b(PushbackInputStream pushbackInputStream, OutputStream outputStream) {
    }

    protected void d(PushbackInputStream pushbackInputStream, OutputStream outputStream) {
    }

    protected int c(PushbackInputStream pushbackInputStream, OutputStream outputStream) {
        return b();
    }

    protected void a(PushbackInputStream pushbackInputStream, OutputStream outputStream, int i) {
        throw new d();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int a(InputStream inputStream, byte[] bArr, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            int read = inputStream.read();
            if (read == -1) {
                if (i3 == 0) {
                    return -1;
                }
                return i3;
            }
            bArr[i3 + i] = (byte) read;
        }
        return i2;
    }

    public void a(InputStream inputStream, OutputStream outputStream) {
        PushbackInputStream pushbackInputStream = new PushbackInputStream(inputStream);
        a(pushbackInputStream, outputStream);
        while (true) {
            try {
                int c = c(pushbackInputStream, outputStream);
                int i = 0;
                while (a() + i < c) {
                    a(pushbackInputStream, outputStream, a());
                    a();
                    i += a();
                }
                if (a() + i == c) {
                    a(pushbackInputStream, outputStream, a());
                    a();
                } else {
                    a(pushbackInputStream, outputStream, c - i);
                }
                d(pushbackInputStream, outputStream);
            } catch (d unused) {
                b(pushbackInputStream, outputStream);
                return;
            }
        }
    }

    public byte[] a(String str) {
        byte[] bArr = new byte[str.length()];
        str.getBytes(0, str.length(), bArr, 0);
        InputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        a(byteArrayInputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public byte[] a(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        a(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public ByteBuffer b(String str) {
        return ByteBuffer.wrap(a(str));
    }

    public ByteBuffer b(InputStream inputStream) {
        return ByteBuffer.wrap(a(inputStream));
    }
}
