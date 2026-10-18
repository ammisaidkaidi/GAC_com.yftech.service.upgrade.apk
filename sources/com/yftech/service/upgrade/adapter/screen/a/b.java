package com.yftech.service.upgrade.adapter.screen.a;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class b extends a {
    @Override // com.yftech.service.upgrade.adapter.b
    public String a() {
        return "8015";
    }

    @Override // com.yftech.service.upgrade.adapter.screen.a.a, com.yftech.service.upgrade.adapter.b
    public String c() {
        StringBuilder sb = new StringBuilder();
        String c = super.c();
        if (c != null) {
            sb.append(c);
        }
        sb.append("platform=");
        sb.append(a());
        sb.append("\n");
        return sb.toString();
    }
}
