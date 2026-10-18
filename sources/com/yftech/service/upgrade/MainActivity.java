package com.yftech.service.upgrade;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.appcompat.app.e;
import com.yftech.car.upgrade.CarUpgradeManager;
import com.yftech.service.upgrade.d;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* loaded from: /home/user/work/dex/classes.dex */
public class MainActivity extends e implements View.OnClickListener, CompoundButton.OnCheckedChangeListener {
    private static final String p = "/sdcard";
    private a A = new a();
    private Handler B = new Handler();
    private Set<Integer> C = new HashSet();
    private boolean D = false;
    private CheckBox q;
    private TextView r;
    private CheckBox s;
    private TextView t;
    private CheckBox u;
    private TextView v;
    private CheckBox w;
    private TextView x;
    private Button y;
    private TextView z;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.e, androidx.fragment.app.e, androidx.activity.b, androidx.core.app.j, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(d.k.activity_main);
        s();
        t();
    }

    private void s() {
        this.q = (CheckBox) findViewById(d.h.cbMcuUpgrade);
        this.r = (TextView) findViewById(d.h.tvMcuUpgradeProgress);
        this.s = (CheckBox) findViewById(d.h.cbOsUpgrade);
        this.t = (TextView) findViewById(d.h.tvOsUpgradeProgress);
        this.u = (CheckBox) findViewById(d.h.cbScreenUpgrade);
        this.v = (TextView) findViewById(d.h.tvScreenUpgradeProgress);
        this.w = (CheckBox) findViewById(d.h.cbDspUpgrade);
        this.x = (TextView) findViewById(d.h.tvDspUpgradeProgress);
        this.y = (Button) findViewById(d.h.btnStartUpgrade);
        this.z = (TextView) findViewById(d.h.tvUpgradeMsg);
    }

    private void t() {
        this.q.setOnCheckedChangeListener(this);
        this.s.setOnCheckedChangeListener(this);
        this.u.setOnCheckedChangeListener(this);
        this.w.setOnCheckedChangeListener(this);
        this.y.setOnClickListener(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x012d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void u() {
        boolean z;
        int addDSPUpgradeModule;
        int addScreenUpgradeModule;
        int addOSUpgradeModule;
        this.D = true;
        d(false);
        v();
        this.C.clear();
        if (this.q.isChecked()) {
            int addMCUUpgradeModule = CarUpgradeManager.getInstance().addMCUUpgradeModule(p);
            if (addMCUUpgradeModule != 1) {
                com.yftech.service.upgrade.g.b.e("startUpgrade, add mcu fail, error code:" + addMCUUpgradeModule);
                z = false;
                if (z && this.s.isChecked()) {
                    addOSUpgradeModule = CarUpgradeManager.getInstance().addOSUpgradeModule(p);
                    if (addOSUpgradeModule == 1) {
                        com.yftech.service.upgrade.g.b.e("startUpgrade, add os fail, error code:" + addOSUpgradeModule);
                        z = false;
                    } else {
                        CarUpgradeManager.getInstance().registerCarOSUpgradeCallback(this.A, this.B);
                        this.C.add(1);
                    }
                }
                if (z && this.u.isChecked()) {
                    addScreenUpgradeModule = CarUpgradeManager.getInstance().addScreenUpgradeModule(p);
                    if (addScreenUpgradeModule == 1) {
                        com.yftech.service.upgrade.g.b.e("startUpgrade, add screen fail, error code:" + addScreenUpgradeModule);
                        z = false;
                    } else {
                        CarUpgradeManager.getInstance().registerCarScreenUpgradeCallback(this.A, this.B);
                        this.C.add(3);
                    }
                }
                if (z && this.w.isChecked()) {
                    addDSPUpgradeModule = CarUpgradeManager.getInstance().addDSPUpgradeModule(p);
                    if (addDSPUpgradeModule == 1) {
                        com.yftech.service.upgrade.g.b.e("startUpgrade, add dsp fail, error code:" + addDSPUpgradeModule);
                        z = false;
                    } else {
                        CarUpgradeManager.getInstance().registerCarDSPUpgradeCallback(this.A, this.B);
                        this.C.add(4);
                    }
                }
                if (z && !CarUpgradeManager.getInstance().startUpgrade()) {
                    com.yftech.service.upgrade.g.b.e("startUpgrade, start fail");
                    z = false;
                }
                if (!z) {
                    this.z.setText("start upgrade\n");
                    return;
                }
                Iterator<Integer> it = this.C.iterator();
                while (it.hasNext()) {
                    switch (it.next().intValue()) {
                        case 1:
                            CarUpgradeManager.getInstance().removeOSUpgradeModule();
                            CarUpgradeManager.getInstance().unregisterCarOSUpgradeCallback(this.A);
                            break;
                        case 2:
                            CarUpgradeManager.getInstance().removeMCUUpgradeModule();
                            CarUpgradeManager.getInstance().unregisterCarMCUUpgradeCallback(this.A);
                            break;
                        case 3:
                            CarUpgradeManager.getInstance().removeScreenUpgradeModule();
                            CarUpgradeManager.getInstance().unregisterCarScreenUpgradeCallback(this.A);
                            break;
                        case 4:
                            CarUpgradeManager.getInstance().removeDSPUpgradeModule();
                            CarUpgradeManager.getInstance().unregisterCarDSPUpgradeCallback(this.A);
                            break;
                    }
                }
                this.C.clear();
                d(true);
                this.z.setText("start upgrade fail\n");
                this.D = false;
                return;
            }
            CarUpgradeManager.getInstance().registerCarMCUUpgradeCallback(this.A, this.B);
            this.C.add(2);
        }
        z = true;
        if (z) {
            addOSUpgradeModule = CarUpgradeManager.getInstance().addOSUpgradeModule(p);
            if (addOSUpgradeModule == 1) {
            }
        }
        if (z) {
            addScreenUpgradeModule = CarUpgradeManager.getInstance().addScreenUpgradeModule(p);
            if (addScreenUpgradeModule == 1) {
            }
        }
        if (z) {
            addDSPUpgradeModule = CarUpgradeManager.getInstance().addDSPUpgradeModule(p);
            if (addDSPUpgradeModule == 1) {
            }
        }
        if (z) {
            com.yftech.service.upgrade.g.b.e("startUpgrade, start fail");
            z = false;
        }
        if (!z) {
        }
    }

    private void a(String str) {
        this.z.setText(this.z.getText().toString() + str);
    }

    private void d(boolean z) {
        this.q.setEnabled(z);
        this.s.setEnabled(z);
        this.u.setEnabled(z);
        this.w.setEnabled(z);
        this.y.setEnabled(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, int i2) {
        switch (i) {
            case 1:
                g(i2);
                break;
            case 2:
                f(i2);
                break;
            case 3:
                h(i2);
                break;
            case 4:
                i(i2);
                break;
        }
        d(this.C.isEmpty());
    }

    private void f(int i) {
        switch (i) {
            case 1:
                a("mcu upgrade success\n\n");
                this.C.remove(2);
                return;
            case 2:
                a("mcu upgrade fail\n\n");
                this.C.remove(2);
                return;
            case 3:
                a("mcu upgrade start\n");
                return;
            case 4:
                a("mcu copying\n");
                return;
            case 5:
                a("mcu checking\n");
                return;
            case 6:
                a("mcu request upgrade\n");
                return;
            case 7:
                a("mcu upgrading\n");
                return;
            default:
                a("mcu unknown state\n");
                return;
        }
    }

    private void g(int i) {
        switch (i) {
            case 1:
                a("os upgrade success\n\n");
                this.C.remove(1);
                return;
            case 2:
                a("os upgrade fail\n\n");
                this.C.remove(1);
                return;
            case 3:
                a("os upgrade start\n");
                return;
            case 4:
                a("os copying\n");
                return;
            case 5:
                a("os checking\n");
                return;
            case 6:
                a("os upgrading\n");
                return;
            default:
                a("os unknown state\n");
                return;
        }
    }

    private void h(int i) {
        switch (i) {
            case 1:
                a("screen upgrade success\n\n");
                this.C.remove(3);
                return;
            case 2:
                a("screen upgrade fail\n\n");
                this.C.remove(3);
                return;
            case 3:
                a("screen upgrade start\n");
                return;
            case 4:
                a("screen copying\n");
                return;
            case 5:
                a("screen checking\n");
                return;
            case 6:
                a("screen request upgrade\n");
                return;
            case 7:
                a("screen upgrading\n");
                return;
            default:
                a("screen unkown state\n");
                return;
        }
    }

    private void i(int i) {
        switch (i) {
            case 1:
                a("dsp upgrade success\n\n");
                this.C.remove(4);
                return;
            case 2:
                a("dsp upgrade fail\n\n");
                this.C.remove(4);
                return;
            case 3:
                a("dsp upgrade start\n");
                return;
            case 4:
                a("dsp copying\n");
                return;
            case 5:
                a("dsp checking\n");
                return;
            case 6:
                a("dsp request upgrade\n");
                return;
            case 7:
                a("dsp upgrading\n");
                return;
            default:
                a("dsp unknown state\n");
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i, int i2) {
        switch (i) {
            case 1:
                this.t.setText(i2 + "%");
                return;
            case 2:
                this.r.setText(i2 + "%");
                return;
            case 3:
                this.v.setText(i2 + "%");
                return;
            case 4:
                this.x.setText(i2 + "%");
                return;
            default:
                com.yftech.service.upgrade.g.b.e("updateUpgradeProgress, unknown module:" + i);
                return;
        }
    }

    private void v() {
        this.r.setText(com.yftech.service.upgrade.a.d);
        this.t.setText(com.yftech.service.upgrade.a.d);
        this.v.setText(com.yftech.service.upgrade.a.d);
        this.x.setText(com.yftech.service.upgrade.a.d);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != 2131230807) {
            return;
        }
        u();
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (this.D) {
            return;
        }
        if (!z) {
            switch (compoundButton.getId()) {
                case d.h.cbDspUpgrade /* 2131230811 */:
                    z |= this.q.isChecked() || this.s.isChecked() || this.u.isChecked();
                    break;
                case d.h.cbMcuUpgrade /* 2131230812 */:
                    z |= this.s.isChecked() || this.u.isChecked() || this.w.isChecked();
                    break;
                case d.h.cbOsUpgrade /* 2131230813 */:
                    z |= this.q.isChecked() || this.u.isChecked() || this.w.isChecked();
                    break;
                case d.h.cbScreenUpgrade /* 2131230814 */:
                    z |= this.q.isChecked() || this.s.isChecked() || this.w.isChecked();
                    break;
            }
        }
        this.y.setEnabled(z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class a extends CarUpgradeManager.CarUpgradeCallback {
        a() {
        }

        public void onUpgradeProgress(int i, int i2) {
            com.yftech.service.upgrade.g.b.c("onUpgradeProgress, module=" + i + ", progress=" + i2);
            MainActivity.this.b(i, i2);
        }

        public void onUpgradeState(int i, int i2) {
            com.yftech.service.upgrade.g.b.c("onUpgradeState, module=" + i + ", state=" + i2);
            MainActivity.this.a(i, i2);
        }
    }
}
