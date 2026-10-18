package com.yftech.service.upgrade.adapter.screen.project;

import com.yftech.service.upgrade.adapter.IScreenAdapter;

/* loaded from: /home/user/work/dex/classes.dex */
public class a implements IScreenAdapter {
    @Override // com.yftech.service.upgrade.adapter.b
    public String a() {
        return "default";
    }

    @Override // com.yftech.service.upgrade.adapter.IScreenAdapter
    public void a(IScreenAdapter.a aVar) {
    }

    @Override // com.yftech.service.upgrade.adapter.IScreenAdapter
    public boolean a(String[] strArr) {
        return false;
    }

    @Override // com.yftech.service.upgrade.adapter.b
    public String b() {
        return "default";
    }

    @Override // com.yftech.service.upgrade.adapter.IScreenAdapter
    public boolean b(String[] strArr) {
        return false;
    }

    @Override // com.yftech.service.upgrade.adapter.IScreenAdapter
    public void onUpgradeProgressChanged(int i) {
    }

    @Override // com.yftech.service.upgrade.adapter.IScreenAdapter
    public void onUpgradeStateChanged(int i) {
    }

    @Override // com.yftech.service.upgrade.adapter.b
    public String c() {
        return "platform=" + a() + "\nproject=" + b() + "\n";
    }
}
