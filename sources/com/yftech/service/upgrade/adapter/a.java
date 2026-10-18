package com.yftech.service.upgrade.adapter;

import android.content.Context;
import com.yftech.car.utils.PlatformProjectDescribe;
import com.yftech.service.upgrade.adapter.dsp.project.CarDspAdapterDefault;
import com.yftech.service.upgrade.adapter.mcu.project.CarMcuAdapterDefault;
import com.yftech.service.upgrade.adapter.screen.project.CarScreenAdapterA58;
import com.yftech.service.upgrade.adapter.screen.project.CarScreenAdapterCar1105;
import com.yftech.service.upgrade.adapter.screenmcu.project.CarScreenMcuAdapterA58;

/* loaded from: /home/user/work/dex/classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static volatile a f1576a;
    private final PlatformProjectDescribe.Project b = PlatformProjectDescribe.getProject();
    private IMCUAdapter c;
    private IScreenAdapter d;
    private IDspAdapter e;
    private c f;
    private IScreenMcuAdapter g;

    private a(Context context) {
        switch (AnonymousClass1.f1577a[this.b.ordinal()]) {
            case 1:
            case 2:
            case 3:
                com.yftech.service.upgrade.a.a.a().a(context, "default_8015.properties");
                this.d = new CarScreenAdapterA58();
                this.g = new CarScreenMcuAdapterA58();
                break;
            case 4:
                com.yftech.service.upgrade.a.a.a().a(context, "default_8015.properties");
                this.d = new CarScreenAdapterCar1105();
                break;
            default:
                com.yftech.service.upgrade.a.a.a().a(context, "default_8015.properties");
                break;
        }
        if (this.c == null) {
            this.c = new CarMcuAdapterDefault();
        }
        if (this.d == null) {
            this.d = new com.yftech.service.upgrade.adapter.screen.project.a();
        }
        if (this.e == null) {
            this.e = new CarDspAdapterDefault();
        }
        if (this.f == null) {
            this.f = new com.yftech.service.upgrade.adapter.a.b.a(context);
        }
        if (this.g == null) {
            this.g = new com.yftech.service.upgrade.adapter.screenmcu.project.a();
        }
    }

    /* renamed from: com.yftech.service.upgrade.adapter.a$1, reason: invalid class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f1577a = new int[PlatformProjectDescribe.Project.values().length];

        static {
            try {
                f1577a[PlatformProjectDescribe.Project.CBIHU12.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1577a[PlatformProjectDescribe.Project.CBIHU12_C1.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1577a[PlatformProjectDescribe.Project.CBIHU23.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1577a[PlatformProjectDescribe.Project.CA1105.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static a a(Context context) {
        if (f1576a == null) {
            synchronized (a.class) {
                f1576a = new a(context);
            }
        }
        return f1576a;
    }

    public IMCUAdapter a() {
        return this.c;
    }

    public IScreenAdapter b() {
        return this.d;
    }

    public IDspAdapter c() {
        return this.e;
    }

    public c d() {
        return this.f;
    }

    public IScreenMcuAdapter e() {
        return this.g;
    }
}
