package com.yftech.service.upgrade.d;

import android.content.Context;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.appcompat.widget.ActivityChooserView;
import com.yftech.service.upgrade.adapter.c;
import com.yftech.service.upgrade.b;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* loaded from: /home/user/work/dex/classes.dex */
public class a implements c.a, b {

    /* renamed from: a, reason: collision with root package name */
    private Context f1593a;
    private c b;
    private b.a c;
    private int d = ActivityChooserView.a.f166a;
    private int e = ActivityChooserView.a.f166a;

    @Override // com.yftech.service.upgrade.b
    public int a() {
        return 1;
    }

    public a(Context context) {
        this.f1593a = context;
        this.b = com.yftech.service.upgrade.adapter.a.a(this.f1593a).d();
        this.b.a(this);
    }

    @Override // com.yftech.service.upgrade.b
    public boolean a(String[] strArr) {
        if (strArr == null || strArr.length == 0) {
            com.yftech.service.upgrade.g.b.e("checkUpgradeFile, path list is empty");
            return false;
        }
        return this.b.a(strArr);
    }

    @Override // com.yftech.service.upgrade.b
    public boolean b(String[] strArr) {
        this.e = ActivityChooserView.a.f166a;
        this.d = ActivityChooserView.a.f166a;
        if (strArr == null || strArr.length == 0) {
            com.yftech.service.upgrade.g.b.e("startUpgrade, path list is empty");
            return false;
        }
        return this.b.b(strArr);
    }

    @Override // com.yftech.service.upgrade.b
    public void a(b.a aVar) {
        this.c = aVar;
    }

    @Override // com.yftech.service.upgrade.adapter.c.a
    public void a(int i) {
        if (this.c != null && i != this.d) {
            this.c.a(this, i);
        }
        this.d = i;
    }

    @Override // com.yftech.service.upgrade.adapter.c.a
    public void b(int i) {
        if (this.c != null && i != this.e) {
            this.c.b(this, i);
        }
        this.e = i;
    }

    @Override // com.yftech.service.upgrade.b
    public void a(@ah FileDescriptor fileDescriptor, @ah PrintWriter printWriter, @ai String[] strArr) {
        printWriter.println("OS upgrade state:");
        printWriter.println("  last state: " + this.d);
        printWriter.println("  last progress: " + this.e);
        printWriter.println("OS upgrade adapter:");
        printWriter.println(this.b.c());
    }
}
