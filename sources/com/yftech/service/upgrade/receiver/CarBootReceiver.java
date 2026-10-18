package com.yftech.service.upgrade.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yftech.service.upgrade.a;
import com.yftech.service.upgrade.g.b;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarBootReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null || intent.getAction() == null || !"android.intent.action.BOOT_COMPLETED".equals(intent.getAction())) {
            return;
        }
        b.c("receive boot completed broadcast");
        Intent intent2 = new Intent("com.yftech.action.upgradeservice.start");
        intent2.setPackage(a.b);
        context.getApplicationContext().startService(intent2);
    }
}
