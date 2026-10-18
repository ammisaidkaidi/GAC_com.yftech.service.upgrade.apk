package com.yftech.service.upgrade.adapter.screen.a;

import com.yftech.service.upgrade.adapter.IScreenAdapter;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class a implements IScreenAdapter {

    /* renamed from: a, reason: collision with root package name */
    private IScreenAdapter.a f1585a;

    @Override // com.yftech.service.upgrade.adapter.b
    public String c() {
        return null;
    }

    @Override // com.yftech.service.upgrade.adapter.IScreenAdapter
    public void a(IScreenAdapter.a aVar) {
        this.f1585a = aVar;
    }

    @Override // com.yftech.service.upgrade.adapter.IScreenAdapter
    public void onUpgradeStateChanged(int i) {
        if (this.f1585a != null) {
            this.f1585a.a(i);
        }
    }

    @Override // com.yftech.service.upgrade.adapter.IScreenAdapter
    public void onUpgradeProgressChanged(int i) {
        if (this.f1585a != null) {
            this.f1585a.b(i);
        }
    }
}
