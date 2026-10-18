package com.yftech.service.upgrade.adapter;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IMCUAdapter extends b {

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface a {
        void a(int i);

        void b(int i);
    }

    void a(a aVar);

    boolean a(String[] strArr);

    boolean b(String[] strArr);

    void onUpgradeProgressChanged(int i);

    void onUpgradeStateChanged(int i);
}
