package com.yftech.service.upgrade.adapter.a.a;

import com.yftech.service.upgrade.adapter.c;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class a implements c {

    /* renamed from: a, reason: collision with root package name */
    private c.a f1578a;

    @Override // com.yftech.service.upgrade.adapter.b
    public String c() {
        return null;
    }

    @Override // com.yftech.service.upgrade.adapter.c
    public void a(c.a aVar) {
        this.f1578a = aVar;
    }

    @Override // com.yftech.service.upgrade.adapter.c
    public void a_(int i) {
        if (this.f1578a != null) {
            this.f1578a.a(i);
        }
    }

    @Override // com.yftech.service.upgrade.adapter.c
    public void b(int i) {
        if (this.f1578a != null) {
            this.f1578a.b(i);
        }
    }
}
