package androidx.core.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Build;
import android.widget.EdgeEffect;
import androidx.annotation.ah;

/* loaded from: /home/user/work/dex/classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    private EdgeEffect f586a;

    @Deprecated
    public e(Context context) {
        this.f586a = new EdgeEffect(context);
    }

    @Deprecated
    public void a(int i, int i2) {
        this.f586a.setSize(i, i2);
    }

    @Deprecated
    public boolean a() {
        return this.f586a.isFinished();
    }

    @Deprecated
    public void b() {
        this.f586a.finish();
    }

    @Deprecated
    public boolean a(float f) {
        this.f586a.onPull(f);
        return true;
    }

    @Deprecated
    public boolean a(float f, float f2) {
        a(this.f586a, f, f2);
        return true;
    }

    public static void a(@ah EdgeEffect edgeEffect, float f, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            edgeEffect.onPull(f, f2);
        } else {
            edgeEffect.onPull(f);
        }
    }

    @Deprecated
    public boolean c() {
        this.f586a.onRelease();
        return this.f586a.isFinished();
    }

    @Deprecated
    public boolean a(int i) {
        this.f586a.onAbsorb(i);
        return true;
    }

    @Deprecated
    public boolean a(Canvas canvas) {
        return this.f586a.draw(canvas);
    }
}
