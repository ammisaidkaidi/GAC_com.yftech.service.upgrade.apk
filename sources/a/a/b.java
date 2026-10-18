package a.a;

import java.io.OutputStream;

/* loaded from: /home/user/work/dex/classes.dex */
public class b extends f {
    private static final char[] b = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'};

    @Override // a.a.f
    protected int a() {
        return 3;
    }

    @Override // a.a.f
    protected int b() {
        return 57;
    }

    @Override // a.a.f
    protected void a(OutputStream outputStream, byte[] bArr, int i, int i2) {
        if (i2 == 1) {
            byte b2 = bArr[i];
            outputStream.write(b[(b2 >>> 2) & 63]);
            outputStream.write(b[((b2 << 4) & 48) + 0]);
            outputStream.write(61);
            outputStream.write(61);
            return;
        }
        if (i2 == 2) {
            byte b3 = bArr[i];
            byte b4 = bArr[i + 1];
            outputStream.write(b[(b3 >>> 2) & 63]);
            outputStream.write(b[((b3 << 4) & 48) + ((b4 >>> 4) & 15)]);
            outputStream.write(b[((b4 << 2) & 60) + 0]);
            outputStream.write(61);
            return;
        }
        byte b5 = bArr[i];
        byte b6 = bArr[i + 1];
        byte b7 = bArr[i + 2];
        outputStream.write(b[(b5 >>> 2) & 63]);
        outputStream.write(b[((b5 << 4) & 48) + ((b6 >>> 4) & 15)]);
        outputStream.write(b[((b6 << 2) & 60) + ((b7 >>> 6) & 3)]);
        outputStream.write(b[b7 & 63]);
    }
}
