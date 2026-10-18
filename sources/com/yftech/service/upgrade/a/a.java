package com.yftech.service.upgrade.a;

import android.content.Context;
import androidx.annotation.ah;
import com.yftech.service.upgrade.g.b;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Properties;

/* loaded from: /home/user/work/dex/classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f1575a = "a";
    private static volatile a b = null;
    private static String c = "default.properties";
    private static final String f = "store.upgrade.files.path";
    private static final String g = "verify.os.certs.file";
    private String d;
    private Properties e = new Properties();

    private a() {
    }

    public static a a() {
        if (b == null) {
            synchronized (a.class) {
                if (b == null) {
                    b = new a();
                }
            }
        }
        return b;
    }

    public void a(@ah Context context, String str) {
        b.c("setConfigName name:" + str);
        this.d = str;
        try {
            this.e.load(context.getAssets().open(this.d));
            a(context);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void a(Context context) {
        Properties properties = new Properties();
        try {
            properties.load(context.getAssets().open(c));
            Enumeration<?> propertyNames = properties.propertyNames();
            while (propertyNames.hasMoreElements()) {
                String str = (String) propertyNames.nextElement();
                if (!this.e.containsKey(str)) {
                    this.e.setProperty(str, properties.getProperty(str));
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private int a(String str, int i) {
        String property = this.e.getProperty(str);
        return property == null ? i : Integer.parseInt(property);
    }

    private String a(String str, String str2) {
        return this.e.getProperty(str, str2);
    }

    public String b() {
        return a(f, (String) null);
    }

    public String c() {
        return a(g, (String) null);
    }
}
