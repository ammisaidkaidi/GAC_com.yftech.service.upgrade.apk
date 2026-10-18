package com.yftech.service.upgrade.adapter.screenmcu.project;

import com.yftech.service.upgrade.adapter.IScreenMcuAdapter;

/* loaded from: /home/user/work/dex/classes.dex */
public class a implements IScreenMcuAdapter {
    @Override // com.yftech.service.upgrade.adapter.b
    public String a() {
        return "default";
    }

    @Override // com.yftech.service.upgrade.adapter.IScreenMcuAdapter
    public void a(IScreenMcuAdapter.a aVar) {
    }

    @Override // com.yftech.service.upgrade.adapter.IScreenMcuAdapter
    public boolean a(String[] strArr) {
        return false;
    }

    @Override // com.yftech.service.upgrade.adapter.b
    public String b() {
        return "default";
    }

    @Override // com.yftech.service.upgrade.adapter.IScreenMcuAdapter
    public boolean b(String[] strArr) {
        return false;
    }

    @Override // com.yftech.service.upgrade.adapter.b
    public String c() {
        return null;
    }

    @Override // com.yftech.service.upgrade.adapter.IScreenMcuAdapter
    public void onUpgradeProgressChanged(int i) {
    }

    @Override // com.yftech.service.upgrade.adapter.IScreenMcuAdapter
    public void onUpgradeStateChanged(int i) {
    }
}
