package com.yftech.service.upgrade.f;

import android.content.Context;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.appcompat.widget.ActivityChooserView;
import com.yftech.service.upgrade.adapter.IScreenMcuAdapter;
import com.yftech.service.upgrade.b;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* loaded from: /home/user/work/dex/classes.dex */
public class a implements IScreenMcuAdapter.a, b {

    /* renamed from: a, reason: collision with root package name */
    private Context f1595a;
    private b.a b;
    private final IScreenMcuAdapter c;
    private int d = ActivityChooserView.a.f166a;
    private int e = ActivityChooserView.a.f166a;

    @Override // com.yftech.service.upgrade.b
    public int a() {
        return 5;
    }

    public a(Context context) {
        this.f1595a = context;
        this.c = com.yftech.service.upgrade.adapter.a.a(context).e();
        this.c.a(this);
    }

    @Override // com.yftech.service.upgrade.b
    public boolean a(String[] strArr) {
        if (strArr == null || strArr.length == 0) {
            com.yftech.service.upgrade.g.b.e("checkUpgradeFile, path list is empty");
            return false;
        }
        return this.c.a(strArr);
    }

    @Override // com.yftech.service.upgrade.b
    public boolean b(String[] strArr) {
        if (strArr == null || strArr.length == 0) {
            com.yftech.service.upgrade.g.b.e("startUpgrade, path list is empty");
            return false;
        }
        return this.c.b(strArr);
    }

    @Override // com.yftech.service.upgrade.b
    public void a(b.a aVar) {
        this.b = aVar;
    }

    @Override // com.yftech.service.upgrade.adapter.IScreenMcuAdapter.a
    public void a(int i) {
        if (this.b != null && i != this.d) {
            this.b.a(this, i);
        }
        this.d = i;
    }

    @Override // com.yftech.service.upgrade.adapter.IScreenMcuAdapter.a
    public void b(int i) {
        if (this.b != null && i != this.e) {
            this.b.b(this, i);
        }
        this.e = i;
    }

    @Override // com.yftech.service.upgrade.b
    public void a(@ah FileDescriptor fileDescriptor, @ah PrintWriter printWriter, @ai String[] strArr) {
        printWriter.println("screen mcu upgrade state:");
        printWriter.println("  last state: " + this.d);
        printWriter.println("  last progress: " + this.e);
        printWriter.println("screen mcu upgrade adapter:");
        printWriter.println(this.c.c());
    }
}
