package androidx.lifecycle;

import android.annotation.SuppressLint;
import android.app.Application;
import androidx.annotation.ah;

/* loaded from: /home/user/work/dex/classes.dex */
public class a extends v {

    /* renamed from: a, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    private Application f960a;

    public a(@ah Application application) {
        this.f960a = application;
    }

    @ah
    public <T extends Application> T b() {
        return (T) this.f960a;
    }
}
