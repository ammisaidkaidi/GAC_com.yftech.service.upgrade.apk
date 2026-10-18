package androidx.core.app;

import android.app.Activity;
import android.app.AppComponentFactory;
import android.app.Application;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ContentProvider;
import android.content.Intent;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.am;
import androidx.annotation.ap;

@am(b = 28)
@ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public class CoreComponentFactory extends AppComponentFactory {

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface a {
        Object a();
    }

    @Override // android.app.AppComponentFactory
    @ah
    public Activity instantiateActivity(@ah ClassLoader classLoader, @ah String str, @ai Intent intent) {
        return (Activity) checkCompatWrapper(super.instantiateActivity(classLoader, str, intent));
    }

    @Override // android.app.AppComponentFactory
    @ah
    public Application instantiateApplication(@ah ClassLoader classLoader, @ah String str) {
        return (Application) checkCompatWrapper(super.instantiateApplication(classLoader, str));
    }

    @Override // android.app.AppComponentFactory
    @ah
    public BroadcastReceiver instantiateReceiver(@ah ClassLoader classLoader, @ah String str, @ai Intent intent) {
        return (BroadcastReceiver) checkCompatWrapper(super.instantiateReceiver(classLoader, str, intent));
    }

    @Override // android.app.AppComponentFactory
    @ah
    public ContentProvider instantiateProvider(@ah ClassLoader classLoader, @ah String str) {
        return (ContentProvider) checkCompatWrapper(super.instantiateProvider(classLoader, str));
    }

    @Override // android.app.AppComponentFactory
    @ah
    public Service instantiateService(@ah ClassLoader classLoader, @ah String str, @ai Intent intent) {
        return (Service) checkCompatWrapper(super.instantiateService(classLoader, str, intent));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T checkCompatWrapper(T t) {
        T t2;
        return (!(t instanceof a) || (t2 = (T) ((a) t).a()) == null) ? t : t2;
    }
}
