package com.yftech.service.upgrade.adapter.a.b;

import android.content.Context;
import android.os.RecoverySystem;
import androidx.appcompat.widget.ActivityChooserView;
import com.yftech.service.upgrade.g.a;
import com.yftech.service.upgrade.g.b;
import java.io.File;
import java.io.IOException;
import java.security.GeneralSecurityException;

/* loaded from: /home/user/work/dex/classes.dex */
public class a extends com.yftech.service.upgrade.adapter.a.a.a implements a.InterfaceC0100a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f1579a = "update.zip";
    private Context b;
    private int c = ActivityChooserView.a.f166a;
    private int d = ActivityChooserView.a.f166a;

    @Override // com.yftech.service.upgrade.adapter.b
    public String a() {
        return "default";
    }

    @Override // com.yftech.service.upgrade.adapter.b
    public String b() {
        return "default";
    }

    public a(Context context) {
        this.b = context;
    }

    @Override // com.yftech.service.upgrade.adapter.c
    public boolean a(String[] strArr) {
        return c(strArr) != null;
    }

    @Override // com.yftech.service.upgrade.adapter.c
    public boolean b(String[] strArr) {
        this.c = ActivityChooserView.a.f166a;
        this.d = ActivityChooserView.a.f166a;
        a_(3);
        File c = c(strArr);
        if (c == null) {
            b.e("startUpgrade, not find upgrade file");
            a_(2);
            return false;
        }
        a_(4);
        File file = new File(com.yftech.service.upgrade.a.a.a().b());
        if (!com.yftech.service.upgrade.g.a.a(c, file, this)) {
            b.e("startUpgrade, copy upgrade file failed");
            a_(2);
            a(new File[]{new File(file, c.getName())});
            return false;
        }
        a_(5);
        b(0);
        File file2 = new File(file, c.getName());
        if (!a(file2)) {
            b.e("startUpgrade, verify package failed");
            a_(2);
            a(new File[]{file2});
            return false;
        }
        a_(6);
        b(0);
        try {
            RecoverySystem.installPackage(this.b, file2);
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            a_(2);
            a(new File[]{file2});
            return false;
        }
    }

    private boolean a(File file) {
        try {
            RecoverySystem.verifyPackage(file, new RecoverySystem.ProgressListener() { // from class: com.yftech.service.upgrade.adapter.a.b.a.1
                @Override // android.os.RecoverySystem.ProgressListener
                public void onProgress(int i) {
                    a.this.b(i);
                }
            }, new File(com.yftech.service.upgrade.a.a.a().c()));
            return true;
        } catch (IOException | GeneralSecurityException e) {
            e.printStackTrace();
            return false;
        }
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

    @Override // com.yftech.service.upgrade.adapter.a.a.a, com.yftech.service.upgrade.adapter.c
    public void a_(int i) {
        super.a_(i);
        this.c = i;
    }

    @Override // com.yftech.service.upgrade.adapter.a.a.a, com.yftech.service.upgrade.adapter.c
    public void b(int i) {
        super.b(i);
        this.d = i;
    }

    @Override // com.yftech.service.upgrade.g.a.InterfaceC0100a
    public void a(int i) {
        b(i);
    }

    private File c(String[] strArr) {
        if (strArr == null || strArr.length == 0) {
            b.e("findUpgradeFile, pathList is empty");
            return null;
        }
        File file = new File(strArr[0]);
        if (!file.exists()) {
            b.e("findUpgradeFile, pathList not exists");
            return null;
        }
        if (!file.isDirectory()) {
            b.e("findUpgradeFile, pathList is not directory");
            return null;
        }
        File[] listFiles = file.listFiles();
        if (listFiles == null || listFiles.length == 0) {
            b.e("findUpgradeFile, directory is empty");
            return null;
        }
        for (File file2 : listFiles) {
            if (file2.isFile() && f1579a.equals(file2.getName())) {
                return file2;
            }
        }
        return null;
    }

    @Override // com.yftech.service.upgrade.adapter.a.a.a, com.yftech.service.upgrade.adapter.b
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
        sb.append(this.c);
        sb.append("\n");
        sb.append("lastProgress=");
        sb.append(this.d);
        sb.append("\n");
        return sb.toString();
    }
}
