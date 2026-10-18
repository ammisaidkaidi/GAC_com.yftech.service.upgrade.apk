package com.google.android.material.textfield;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import androidx.annotation.ah;
import androidx.annotation.ai;
import com.google.android.material.t.j;
import com.google.android.material.t.o;

/* loaded from: /home/user/work/dex/classes.dex */
class c extends j {

    @ah
    private final Paint d;

    @ah
    private final RectF e;
    private int f;

    c() {
        this(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(@ai o oVar) {
        super(oVar == null ? new o() : oVar);
        this.d = new Paint(1);
        c();
        this.e = new RectF();
    }

    private void c() {
        this.d.setStyle(Paint.Style.FILL_AND_STROKE);
        this.d.setColor(-1);
        this.d.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a() {
        return !this.e.isEmpty();
    }

    void a(float f, float f2, float f3, float f4) {
        if (f == this.e.left && f2 == this.e.top && f3 == this.e.right && f4 == this.e.bottom) {
            return;
        }
        this.e.set(f, f2, f3, f4);
        invalidateSelf();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@ah RectF rectF) {
        a(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        a(0.0f, 0.0f, 0.0f, 0.0f);
    }

    @Override // com.google.android.material.t.j, android.graphics.drawable.Drawable
    public void draw(@ah Canvas canvas) {
        a(canvas);
        super.draw(canvas);
        canvas.drawRect(this.e, this.d);
        c(canvas);
    }

    private void a(@ah Canvas canvas) {
        Drawable.Callback callback = getCallback();
        if (a(callback)) {
            View view = (View) callback;
            if (view.getLayerType() != 2) {
                view.setLayerType(2, null);
                return;
            }
            return;
        }
        b(canvas);
    }

    private void b(@ah Canvas canvas) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f = canvas.saveLayer(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), null);
        } else {
            this.f = canvas.saveLayer(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), null, 31);
        }
    }

    private void c(@ah Canvas canvas) {
        if (a(getCallback())) {
            return;
        }
        canvas.restoreToCount(this.f);
    }

    private boolean a(Drawable.Callback callback) {
        return callback instanceof View;
    }
}
