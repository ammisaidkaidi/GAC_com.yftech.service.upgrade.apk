package com.yftech.service.upgrade.adapter.dsp.project;

import android.os.SystemClock;
import androidx.appcompat.widget.ActivityChooserView;
import com.yftech.service.upgrade.adapter.dsp.a.a;
import com.yftech.service.upgrade.g.a;
import com.yftech.service.upgrade.g.b;
import com.yftech.service.upgrade.g.c;
import java.io.File;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarDspAdapterDefault extends a implements a.InterfaceC0100a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f1582a = "dspupgrade.bin";
    private static final String b = "dspupgrade.md5";
    private final Object c = new Object();
    private int d = ActivityChooserView.a.f166a;

    @Override // com.yftech.service.upgrade.adapter.b
    public String a() {
        return "default";
    }

    @Override // com.yftech.service.upgrade.adapter.b
    public String b() {
        return "default";
    }

    public native boolean nativeStartUpgrade(String str, byte[] bArr);

    @Override // com.yftech.service.upgrade.adapter.IDspAdapter
    public boolean a(String[] strArr) {
        return c(strArr) != null;
    }

    @Override // com.yftech.service.upgrade.adapter.IDspAdapter
    public boolean b(String[] strArr) {
        int charAt;
        this.d = ActivityChooserView.a.f166a;
        onUpgradeStateChanged(3);
        File[] c = c(strArr);
        if (c == null) {
            b.e("startUpgrade, not find upgrade file");
            onUpgradeStateChanged(2);
            return false;
        }
        onUpgradeStateChanged(4);
        File file = new File(com.yftech.service.upgrade.a.a.a().b());
        if (!com.yftech.service.upgrade.g.a.a(c, file, this)) {
            b.e("startUpgrade, copy failed");
            onUpgradeStateChanged(2);
            a(new File[]{new File(file, f1582a), new File(file, b)});
            return false;
        }
        onUpgradeStateChanged(5);
        onUpgradeProgressChanged(0);
        File file2 = new File(file, f1582a);
        File file3 = new File(file, b);
        String a2 = c.a(file2, file3);
        if (a2 == null) {
            b.e("startUpgrade, md5 not equals");
            onUpgradeStateChanged(2);
            a(new File[]{file2, file3});
            return false;
        }
        onUpgradeStateChanged(6);
        onUpgradeProgressChanged(0);
        byte[] bArr = new byte[a2.length() / 2];
        int i = 0;
        int i2 = 0;
        while (i < a2.length()) {
            if (a2.charAt(i) >= 'a' && a2.charAt(i) <= 'z') {
                charAt = (a2.charAt(i) - 'a') + 10;
            } else if (a2.charAt(i) >= 'A' && a2.charAt(i) <= 'Z') {
                charAt = (a2.charAt(i) - 'A') + 10;
            } else {
                charAt = a2.charAt(i) - '0';
            }
            int i3 = i + 1;
            if (i3 < a2.length()) {
                int i4 = charAt << 4;
                if (a2.charAt(i3) >= 'a' && a2.charAt(i3) <= 'z') {
                    charAt = (((a2.charAt(i3) - 'a') + 10) & 15) | i4;
                } else if (a2.charAt(i3) >= 'A' && a2.charAt(i3) <= 'Z') {
                    charAt = (((a2.charAt(i3) - 'A') + 10) & 15) | i4;
                } else {
                    charAt = ((a2.charAt(i3) - '0') & 15) | i4;
                }
            }
            bArr[i2] = (byte) charAt;
            i += 2;
            i2++;
        }
        if (!nativeStartUpgrade(file2.getPath(), bArr)) {
            b.e("startUpgrade, start upgrade mcu failed");
            onUpgradeStateChanged(2);
            a(new File[]{file2, file3});
            return false;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        while (true) {
            synchronized (this.c) {
                if (this.d == 2 || this.d == 1) {
                    break;
                }
                try {
                    this.c.wait(2000L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                if (SystemClock.uptimeMillis() - uptimeMillis > 600000) {
                    b.e("startUpgrade, timeout not finish");
                    onUpgradeStateChanged(2);
                }
            }
        }
        a(new File[]{file2, file3});
        return true;
    }

    @Override // com.yftech.service.upgrade.adapter.dsp.a.a, com.yftech.service.upgrade.adapter.IDspAdapter
    public void onUpgradeStateChanged(int i) {
        super.onUpgradeStateChanged(i);
        this.d = i;
        if (i == 2 || i == 1) {
            synchronized (this.c) {
                this.c.notifyAll();
            }
        }
    }

    @Override // com.yftech.service.upgrade.g.a.InterfaceC0100a
    public void a(int i) {
        onUpgradeProgressChanged(i);
    }

    private File[] c(String[] strArr) {
        if (strArr == null || strArr.length == 0) {
            b.e("findUpgradeFiles, pathList is empty");
            return null;
        }
        File file = new File(strArr[0]);
        if (!file.exists()) {
            b.e("findUpgradeFiles, pathList not exists");
            return null;
        }
        if (!file.isDirectory()) {
            b.e("findUpgradeFiles, pathList is not directory");
            return null;
        }
        File[] listFiles = file.listFiles();
        if (listFiles == null || listFiles.length == 0) {
            b.e("findUpgradeFiles, directory is empty");
            return null;
        }
        File file2 = null;
        File file3 = null;
        for (File file4 : listFiles) {
            if (file4.isFile()) {
                if (f1582a.equals(file4.getName())) {
                    file2 = file4;
                } else if (b.equals(file4.getName())) {
                    file3 = file4;
                }
                if (file2 != null && file3 != null) {
                    break;
                }
            }
        }
        if (file2 == null || file3 == null) {
            return null;
        }
        return new File[]{file2, file3};
    }

    private void a(File[] fileArr) {
        if (fileArr == null) {
            return;
        }
        for (File file : fileArr) {
            if (file != null && file.exists() && !file.delete()) {
                b.e("deleteFiles, delete fail:" + file.getPath());
            }
        }
    }

    @Override // com.yftech.service.upgrade.adapter.dsp.a.a, com.yftech.service.upgrade.adapter.b
    public String c() {
        StringBuilder sb = new StringBuilder();
        String c = super.c();
        if (c != null) {
            sb.append(c);
        }
        sb.append("platform=");
        sb.append(a());
        sb.append("\n");
        sb.append("project=");
        sb.append(b());
        sb.append("\n");
        sb.append("lastState=");
        sb.append(this.d);
        sb.append("\n");
        return sb.toString();
    }
}
