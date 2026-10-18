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
import java.lang.reflect.InvocationTargetException;

@am(a = 28)
/* loaded from: /home/user/work/dex/classes.dex */
public class f extends AppComponentFactory {
    @Override // android.app.AppComponentFactory
    @ah
    public final Activity instantiateActivity(@ah ClassLoader classLoader, @ah String str, @ai Intent intent) {
        return (Activity) CoreComponentFactory.checkCompatWrapper(a(classLoader, str, intent));
    }

    @Override // android.app.AppComponentFactory
    @ah
    public final Application instantiateApplication(@ah ClassLoader classLoader, @ah String str) {
        return (Application) CoreComponentFactory.checkCompatWrapper(a(classLoader, str));
    }

    @Override // android.app.AppComponentFactory
    @ah
    public final BroadcastReceiver instantiateReceiver(@ah ClassLoader classLoader, @ah String str, @ai Intent intent) {
        return (BroadcastReceiver) CoreComponentFactory.checkCompatWrapper(b(classLoader, str, intent));
    }

    @Override // android.app.AppComponentFactory
    @ah
    public final ContentProvider instantiateProvider(@ah ClassLoader classLoader, @ah String str) {
        return (ContentProvider) CoreComponentFactory.checkCompatWrapper(b(classLoader, str));
    }

    @Override // android.app.AppComponentFactory
    @ah
    public final Service instantiateService(@ah ClassLoader classLoader, @ah String str, @ai Intent intent) {
        return (Service) CoreComponentFactory.checkCompatWrapper(c(classLoader, str, intent));
    }

    @ah
    public Application a(@ah ClassLoader classLoader, @ah String str) {
        try {
            return (Application) Class.forName(str, false, classLoader).asSubclass(Application.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (NoSuchMethodException | InvocationTargetException e) {
            throw new RuntimeException("Couldn't call constructor", e);
        }
    }

    @ah
    public Activity a(@ah ClassLoader classLoader, @ah String str, @ai Intent intent) {
        try {
            return (Activity) Class.forName(str, false, classLoader).asSubclass(Activity.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (NoSuchMethodException | InvocationTargetException e) {
            throw new RuntimeException("Couldn't call constructor", e);
        }
    }

    @ah
    public BroadcastReceiver b(@ah ClassLoader classLoader, @ah String str, @ai Intent intent) {
        try {
            return (BroadcastReceiver) Class.forName(str, false, classLoader).asSubclass(BroadcastReceiver.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (NoSuchMethodException | InvocationTargetException e) {
            throw new RuntimeException("Couldn't call constructor", e);
        }
    }

    @ah
    public Service c(@ah ClassLoader classLoader, @ah String str, @ai Intent intent) {
        try {
            return (Service) Class.forName(str, false, classLoader).asSubclass(Service.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (NoSuchMethodException | InvocationTargetException e) {
            throw new RuntimeException("Couldn't call constructor", e);
        }
    }

    @ah
    public ContentProvider b(@ah ClassLoader classLoader, @ah String str) {
        try {
            return (ContentProvider) Class.forName(str, false, classLoader).asSubclass(ContentProvider.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (NoSuchMethodException | InvocationTargetException e) {
            throw new RuntimeException("Couldn't call constructor", e);
        }
    }
}
