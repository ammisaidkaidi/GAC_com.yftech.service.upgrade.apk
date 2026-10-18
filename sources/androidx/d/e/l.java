package androidx.d.e;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.View;
import androidx.d.c.b.e;
import androidx.d.e.d;
import androidx.d.e.m;

/* loaded from: /home/user/work/dex/classes.dex */
public class l extends View {

    /* renamed from: a, reason: collision with root package name */
    private int f732a;
    private View b;
    private int c;

    public l(Context context) {
        super(context);
        this.f732a = -1;
        this.b = null;
        this.c = 4;
        a((AttributeSet) null);
    }

    public l(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f732a = -1;
        this.b = null;
        this.c = 4;
        a(attributeSet);
    }

    public l(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f732a = -1;
        this.b = null;
        this.c = 4;
        a(attributeSet);
    }

    public l(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i);
        this.f732a = -1;
        this.b = null;
        this.c = 4;
        a(attributeSet);
    }

    private void a(AttributeSet attributeSet) {
        super.setVisibility(this.c);
        this.f732a = -1;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, m.C0052m.ConstraintLayout_placeholder);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == m.C0052m.ConstraintLayout_placeholder_content) {
                    this.f732a = obtainStyledAttributes.getResourceId(index, this.f732a);
                } else if (index == m.C0052m.ConstraintLayout_placeholder_placeholder_emptyVisibility) {
                    this.c = obtainStyledAttributes.getInt(index, this.c);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    public void setEmptyVisibility(int i) {
        this.c = i;
    }

    public int getEmptyVisibility() {
        return this.c;
    }

    public View getContent() {
        return this.b;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (isInEditMode()) {
            canvas.drawRGB(223, 223, 223);
            Paint paint = new Paint();
            paint.setARGB(255, 210, 210, 210);
            paint.setTextAlign(Paint.Align.CENTER);
            paint.setTypeface(Typeface.create(Typeface.DEFAULT, 0));
            Rect rect = new Rect();
            canvas.getClipBounds(rect);
            paint.setTextSize(rect.height());
            int height = rect.height();
            int width = rect.width();
            paint.setTextAlign(Paint.Align.LEFT);
            paint.getTextBounds("?", 0, "?".length(), rect);
            canvas.drawText("?", ((width / 2.0f) - (rect.width() / 2.0f)) - rect.left, ((height / 2.0f) + (rect.height() / 2.0f)) - rect.bottom, paint);
        }
    }

    public void a(d dVar) {
        if (this.f732a == -1 && !isInEditMode()) {
            setVisibility(this.c);
        }
        this.b = dVar.findViewById(this.f732a);
        if (this.b != null) {
            ((d.a) this.b.getLayoutParams()).at = true;
            this.b.setVisibility(0);
            setVisibility(0);
        }
    }

    public void setContentId(int i) {
        View findViewById;
        if (this.f732a == i) {
            return;
        }
        if (this.b != null) {
            this.b.setVisibility(0);
            ((d.a) this.b.getLayoutParams()).at = false;
            this.b = null;
        }
        this.f732a = i;
        if (i == -1 || (findViewById = ((View) getParent()).findViewById(i)) == null) {
            return;
        }
        findViewById.setVisibility(8);
    }

    public void b(d dVar) {
        if (this.b == null) {
            return;
        }
        d.a aVar = (d.a) getLayoutParams();
        d.a aVar2 = (d.a) this.b.getLayoutParams();
        aVar2.aF.k(0);
        if (aVar.aF.aj() != e.a.FIXED) {
            aVar.aF.p(aVar2.aF.I());
        }
        if (aVar.aF.ak() != e.a.FIXED) {
            aVar.aF.q(aVar2.aF.L());
        }
        aVar2.aF.k(8);
    }
}
