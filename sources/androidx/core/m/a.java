package androidx.core.m;

import android.util.Log;
import androidx.annotation.ah;
import androidx.annotation.ai;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/* loaded from: /home/user/work/dex/classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private final File f501a;
    private final File b;

    public a(@ah File file) {
        this.f501a = file;
        this.b = new File(file.getPath() + ".bak");
    }

    @ah
    public File a() {
        return this.f501a;
    }

    public void b() {
        this.f501a.delete();
        this.b.delete();
    }

    @ah
    public FileOutputStream c() {
        if (this.f501a.exists()) {
            if (!this.b.exists()) {
                if (!this.f501a.renameTo(this.b)) {
                    Log.w("AtomicFile", "Couldn't rename file " + this.f501a + " to backup file " + this.b);
                }
            } else {
                this.f501a.delete();
            }
        }
        try {
            return new FileOutputStream(this.f501a);
        } catch (FileNotFoundException unused) {
            if (!this.f501a.getParentFile().mkdirs()) {
                throw new IOException("Couldn't create directory " + this.f501a);
            }
            try {
                return new FileOutputStream(this.f501a);
            } catch (FileNotFoundException unused2) {
                throw new IOException("Couldn't create " + this.f501a);
            }
        }
    }

    public void a(@ai FileOutputStream fileOutputStream) {
        if (fileOutputStream != null) {
            c(fileOutputStream);
            try {
                fileOutputStream.close();
                this.b.delete();
            } catch (IOException e) {
                Log.w("AtomicFile", "finishWrite: Got exception:", e);
            }
        }
    }

    public void b(@ai FileOutputStream fileOutputStream) {
        if (fileOutputStream != null) {
            c(fileOutputStream);
            try {
                fileOutputStream.close();
                this.f501a.delete();
                this.b.renameTo(this.f501a);
            } catch (IOException e) {
                Log.w("AtomicFile", "failWrite: Got exception:", e);
            }
        }
    }

    @ah
    public FileInputStream d() {
        if (this.b.exists()) {
            this.f501a.delete();
            this.b.renameTo(this.f501a);
        }
        return new FileInputStream(this.f501a);
    }

    @ah
    public byte[] e() {
        FileInputStream d = d();
        try {
            byte[] bArr = new byte[d.available()];
            int i = 0;
            while (true) {
                int read = d.read(bArr, i, bArr.length - i);
                if (read <= 0) {
                    return bArr;
                }
                i += read;
                int available = d.available();
                if (available > bArr.length - i) {
                    byte[] bArr2 = new byte[available + i];
                    System.arraycopy(bArr, 0, bArr2, 0, i);
                    bArr = bArr2;
                }
            }
        } finally {
            d.close();
        }
    }

    private static boolean c(@ah FileOutputStream fileOutputStream) {
        try {
            fileOutputStream.getFD().sync();
            return true;
        } catch (IOException unused) {
            return false;
        }
    }
}
