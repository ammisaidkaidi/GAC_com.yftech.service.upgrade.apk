package com.google.android.material.i;

import android.R;
import android.app.Dialog;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.annotation.ah;
import androidx.annotation.ap;

@ap(a = {ap.a.LIBRARY_GROUP})
/* loaded from: /home/user/work/dex/classes.dex */
public class a implements View.OnTouchListener {

    /* renamed from: a, reason: collision with root package name */
    @ah
    private final Dialog f1321a;
    private final int b;
    private final int c;
    private final int d;

    public a(@ah Dialog dialog, @ah Rect rect) {
        this.f1321a = dialog;
        this.b = rect.left;
        this.c = rect.top;
        this.d = ViewConfiguration.get(dialog.getContext()).getScaledWindowTouchSlop();
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(@ah View view, @ah MotionEvent motionEvent) {
        View findViewById = view.findViewById(R.id.content);
        int left = this.b + findViewById.getLeft();
        int width = findViewById.getWidth() + left;
        if (new RectF(left, this.c + findViewById.getTop(), width, findViewById.getHeight() + r3).contains(motionEvent.getX(), motionEvent.getY())) {
            return false;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        if (motionEvent.getAction() == 1) {
            obtain.setAction(4);
        }
        if (Build.VERSION.SDK_INT < 28) {
            obtain.setAction(0);
            obtain.setLocation((-this.d) - 1, (-this.d) - 1);
        }
        view.performClick();
        return this.f1321a.onTouchEvent(obtain);
    }
}
