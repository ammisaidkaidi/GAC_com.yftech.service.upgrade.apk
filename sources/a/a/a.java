package a.a;

import java.io.OutputStream;
import java.io.PushbackInputStream;

/* loaded from: /home/user/work/dex/classes.dex */
public class a extends e {
    private static final char[] b = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'};
    private static final byte[] c = new byte[256];

    /* renamed from: a, reason: collision with root package name */
    byte[] f0a = new byte[4];

    @Override // a.a.e
    protected int a() {
        return 4;
    }

    @Override // a.a.e
    protected int b() {
        return 72;
    }

    static {
        for (int i = 0; i < 255; i++) {
            c[i] = -1;
        }
        for (int i2 = 0; i2 < b.length; i2++) {
            c[b[i2]] = (byte) i2;
        }
    }

    @Override // a.a.e
    protected void a(PushbackInputStream pushbackInputStream, OutputStream outputStream, int i) {
        byte b2;
        byte b3;
        byte b4;
        byte b5;
        if (i < 2) {
            throw new c("BASE64Decoder: Not enough bytes for an atom.");
        }
        while (true) {
            int read = pushbackInputStream.read();
            byte b6 = -1;
            if (read == -1) {
                throw new d();
            }
            if (read != 10 && read != 13) {
                this.f0a[0] = (byte) read;
                if (a(pushbackInputStream, this.f0a, 1, i - 1) == -1) {
                    throw new d();
                }
                if (i > 3 && this.f0a[3] == 61) {
                    i = 3;
                }
                if (i > 2 && this.f0a[2] == 61) {
                    i = 2;
                }
                switch (i) {
                    case 2:
                        b2 = -1;
                        byte b7 = c[this.f0a[1] & 255];
                        b3 = c[this.f0a[0] & 255];
                        b4 = b2;
                        b5 = b6;
                        b6 = b7;
                        break;
                    case 4:
                        b6 = c[this.f0a[3] & 255];
                    case 3:
                        byte b8 = b6;
                        b6 = c[this.f0a[2] & 255];
                        b2 = b8;
                        byte b72 = c[this.f0a[1] & 255];
                        b3 = c[this.f0a[0] & 255];
                        b4 = b2;
                        b5 = b6;
                        b6 = b72;
                        break;
                    default:
                        b3 = -1;
                        b5 = -1;
                        b4 = -1;
                        break;
                }
                switch (i) {
                    case 2:
                        outputStream.write((byte) (((b3 << 2) & 252) | ((b6 >>> 4) & 3)));
                        return;
                    case 3:
                        outputStream.write((byte) (((b3 << 2) & 252) | ((b6 >>> 4) & 3)));
                        outputStream.write((byte) (((b6 << 4) & 240) | ((b5 >>> 2) & 15)));
                        return;
                    case 4:
                        outputStream.write((byte) (((b3 << 2) & 252) | ((b6 >>> 4) & 3)));
                        outputStream.write((byte) (((b6 << 4) & 240) | ((b5 >>> 2) & 15)));
                        outputStream.write((byte) (((b5 << 6) & 192) | (b4 & 63)));
                        return;
                    default:
                        return;
                }
            }
        }
    }
}
