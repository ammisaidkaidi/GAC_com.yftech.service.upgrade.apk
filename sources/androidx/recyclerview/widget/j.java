package androidx.recyclerview.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.View;
import androidx.annotation.ai;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: /home/user/work/dex/classes.dex */
public class j extends RecyclerView.h {

    /* renamed from: a, reason: collision with root package name */
    public static final int f1070a = 0;
    public static final int b = 1;
    private static final String c = "DividerItem";
    private static final int[] d = {R.attr.listDivider};
    private Drawable e;
    private int f;
    private final Rect g = new Rect();

    public j(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(d);
        this.e = obtainStyledAttributes.getDrawable(0);
        if (this.e == null) {
            Log.w(c, "@android:attr/listDivider was not set in the theme used for this DividerItemDecoration. Please set that attribute all call setDrawable()");
        }
        obtainStyledAttributes.recycle();
        a(i);
    }

    public void a(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException("Invalid orientation. It should be either HORIZONTAL or VERTICAL");
        }
        this.f = i;
    }

    public void a(@androidx.annotation.ah Drawable drawable) {
        if (drawable == null) {
            throw new IllegalArgumentException("Drawable cannot be null.");
        }
        this.e = drawable;
    }

    @ai
    public Drawable a() {
        return this.e;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public void a(Canvas canvas, RecyclerView recyclerView, RecyclerView.w wVar) {
        if (recyclerView.getLayoutManager() == null || this.e == null) {
            return;
        }
        if (this.f == 1) {
            c(canvas, recyclerView);
        } else {
            d(canvas, recyclerView);
        }
    }

    private void c(Canvas canvas, RecyclerView recyclerView) {
        int width;
        int i;
        canvas.save();
        if (recyclerView.getClipToPadding()) {
            i = recyclerView.getPaddingLeft();
            width = recyclerView.getWidth() - recyclerView.getPaddingRight();
            canvas.clipRect(i, recyclerView.getPaddingTop(), width, recyclerView.getHeight() - recyclerView.getPaddingBottom());
        } else {
            width = recyclerView.getWidth();
            i = 0;
        }
        int childCount = recyclerView.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = recyclerView.getChildAt(i2);
            recyclerView.a(childAt, this.g);
            int round = this.g.bottom + Math.round(childAt.getTranslationY());
            this.e.setBounds(i, round - this.e.getIntrinsicHeight(), width, round);
            this.e.draw(canvas);
        }
        canvas.restore();
    }

    private void d(Canvas canvas, RecyclerView recyclerView) {
        int height;
        int i;
        canvas.save();
        if (recyclerView.getClipToPadding()) {
            i = recyclerView.getPaddingTop();
            height = recyclerView.getHeight() - recyclerView.getPaddingBottom();
            canvas.clipRect(recyclerView.getPaddingLeft(), i, recyclerView.getWidth() - recyclerView.getPaddingRight(), height);
        } else {
            height = recyclerView.getHeight();
            i = 0;
        }
        int childCount = recyclerView.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = recyclerView.getChildAt(i2);
            recyclerView.getLayoutManager().a(childAt, this.g);
            int round = this.g.right + Math.round(childAt.getTranslationX());
            this.e.setBounds(round - this.e.getIntrinsicWidth(), i, round, height);
            this.e.draw(canvas);
        }
        canvas.restore();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public void a(Rect rect, View view, RecyclerView recyclerView, RecyclerView.w wVar) {
        if (this.e == null) {
            rect.set(0, 0, 0, 0);
        } else if (this.f == 1) {
            rect.set(0, 0, 0, this.e.getIntrinsicHeight());
        } else {
            rect.set(0, 0, this.e.getIntrinsicWidth(), 0);
        }
    }
}
