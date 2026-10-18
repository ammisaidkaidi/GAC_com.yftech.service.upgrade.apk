package com.yftech.service.upgrade.adapter.screenmcu.project;

import android.os.SystemClock;
import androidx.appcompat.widget.ActivityChooserView;
import com.yftech.car.utils.Loger;
import com.yftech.car.utils.PlatformProjectDescribe;
import com.yftech.service.upgrade.adapter.screenmcu.a.b;
import com.yftech.service.upgrade.g.a;
import com.yftech.service.upgrade.g.c;
import java.io.File;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarScreenMcuAdapterA58 extends b implements a.InterfaceC0100a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f1589a = "screenupgrade.bin";
    private static final String b = "screenupgrade.md5";
    private int c = ActivityChooserView.a.f166a;
    private final Object d = new Object();

    private native boolean nativeStartUpgrade(String str);

    @Override // com.yftech.service.upgrade.adapter.b
    public String b() {
        return PlatformProjectDescribe.VehicleType.CBIHU12_A58.toString();
    }

    @Override // com.yftech.service.upgrade.adapter.IScreenMcuAdapter
    public boolean a(String[] strArr) {
        return c(strArr) != null;
    }

    @Override // com.yftech.service.upgrade.adapter.IScreenMcuAdapter
    public boolean b(String[] strArr) {
        com.yftech.service.upgrade.g.b.c("startUpgrade, screen upgrade start");
        this.c = ActivityChooserView.a.f166a;
        onUpgradeStateChanged(3);
        File[] c = c(strArr);
        if (c == null) {
            com.yftech.service.upgrade.g.b.e("startUpgrade, not find upgrade file");
            onUpgradeStateChanged(2);
            return false;
        }
        onUpgradeStateChanged(4);
        File file = new File(com.yftech.service.upgrade.a.a.a().b());
        if (!com.yftech.service.upgrade.g.a.a(c, file, this)) {
            com.yftech.service.upgrade.g.b.e("startUpgrade, copy upgrade file failed");
            onUpgradeStateChanged(2);
            a(new File[]{new File(file, f1589a), new File(file, b)});
            return false;
        }
        onUpgradeStateChanged(5);
        onUpgradeProgressChanged(0);
        File file2 = new File(file, f1589a);
        File file3 = new File(file, b);
        if (c.b(file2, file3) == null) {
            com.yftech.service.upgrade.g.b.e("startUpgrade, md5 not equals");
            onUpgradeStateChanged(2);
            a(new File[]{file2, file3});
            return false;
        }
        onUpgradeStateChanged(6);
        onUpgradeProgressChanged(0);
        com.yftech.service.upgrade.g.b.c("screen upgrade file:" + file2.getPath());
        if (!nativeStartUpgrade(file2.getPath())) {
            com.yftech.service.upgrade.g.b.e("startUpgrade, start upgrade screen failed");
            onUpgradeStateChanged(2);
            a(new File[]{file2, file3});
            return false;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        this.c = 6;
        while (true) {
            synchronized (this.d) {
                if (this.c == 1 || this.c == 2) {
                    break;
                }
                if (SystemClock.uptimeMillis() - uptimeMillis > 60000 && this.c != 7) {
                    Loger.i("startUpgrade, request upgrade screen timeout, state=" + this.c);
                    onUpgradeStateChanged(2);
                } else {
                    try {
                        this.d.wait(2000L);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
        a(new File[]{file2, file3});
        return true;
    }

    private void a(File[] fileArr) {
        if (fileArr == null) {
            return;
        }
        for (File file : fileArr) {
            if (file != null && file.exists() && !file.delete()) {
                com.yftech.service.upgrade.g.b.e("deleteFile, delete fail:" + file.getPath());
            }
        }
    }

    private File[] c(String[] strArr) {
        if (strArr == null || strArr.length == 0) {
            com.yftech.service.upgrade.g.b.e("findUpgradeFile, pathList is empty");
            return null;
        }
        File file = new File(strArr[0]);
        if (!file.exists()) {
            com.yftech.service.upgrade.g.b.e("findUpgradeFile, pathList not exists");
            return null;
        }
        if (!file.isDirectory()) {
            com.yftech.service.upgrade.g.b.e("findUpgradeFile, pathList is not directory");
            return null;
        }
        File[] listFiles = file.listFiles();
        if (listFiles == null || listFiles.length == 0) {
            com.yftech.service.upgrade.g.b.e("findUpgradeFile, directory is empty");
            return null;
        }
        File file2 = null;
        File file3 = null;
        for (File file4 : listFiles) {
            if (file4.isFile()) {
                if (f1589a.equals(file4.getName())) {
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

    @Override // com.yftech.service.upgrade.adapter.screenmcu.a.a, com.yftech.service.upgrade.adapter.IScreenMcuAdapter
    public void onUpgradeStateChanged(int i) {
        super.onUpgradeStateChanged(i);
        this.c = i;
        if (i == 1 || i == 2) {
            synchronized (this.d) {
                this.d.notifyAll();
            }
        }
    }

    @Override // com.yftech.service.upgrade.g.a.InterfaceC0100a
    public void a(int i) {
        onUpgradeProgressChanged(i);
    }

    @Override // com.yftech.service.upgrade.adapter.screenmcu.a.b, com.yftech.service.upgrade.adapter.screenmcu.a.a, com.yftech.service.upgrade.adapter.b
    public String c() {
        StringBuilder sb = new StringBuilder();
        String c = super.c();
        if (c != null) {
            sb.append(c);
        }
        sb.append("project=");
        sb.append(b());
        sb.append("\n");
        sb.append("lastState=");
        sb.append(this.c);
        sb.append("\n");
        return sb.toString();
    }
}
