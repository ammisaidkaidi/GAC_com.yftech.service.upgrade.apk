package com.yftech.service.upgrade.adapter.dsp.a;

import com.yftech.service.upgrade.adapter.IDspAdapter;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class a implements IDspAdapter {

    /* renamed from: a, reason: collision with root package name */
    private IDspAdapter.a f1581a;

    @Override // com.yftech.service.upgrade.adapter.b
    public String c() {
        return null;
    }

    @Override // com.yftech.service.upgrade.adapter.IDspAdapter
    public void a(IDspAdapter.a aVar) {
        this.f1581a = aVar;
    }

    @Override // com.yftech.service.upgrade.adapter.IDspAdapter
    public void onUpgradeStateChanged(int i) {
        if (this.f1581a != null) {
            this.f1581a.a(i);
        }
    }

    @Override // com.yftech.service.upgrade.adapter.IDspAdapter
    public void onUpgradeProgressChanged(int i) {
        if (this.f1581a != null) {
            this.f1581a.b(i);
        }
    }
}
