package androidx.j;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.j.aa;

/* loaded from: /home/user/work/dex/classes.dex */
public class k extends bf {

    /* renamed from: a, reason: collision with root package name */
    private static final TimeInterpolator f901a = new DecelerateInterpolator();
    private static final TimeInterpolator b = new AccelerateInterpolator();
    private static final String r = "android:explode:screenBounds";
    private int[] s;

    public k() {
        this.s = new int[2];
        a(new j());
    }

    public k(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.s = new int[2];
        a(new j());
    }

    private void e(an anVar) {
        View view = anVar.b;
        view.getLocationOnScreen(this.s);
        int i = this.s[0];
        int i2 = this.s[1];
        anVar.f859a.put(r, new Rect(i, i2, view.getWidth() + i, view.getHeight() + i2));
    }

    @Override // androidx.j.bf, androidx.j.ag
    public void a(@androidx.annotation.ah an anVar) {
        super.a(anVar);
        e(anVar);
    }

    @Override // androidx.j.bf, androidx.j.ag
    public void b(@androidx.annotation.ah an anVar) {
        super.b(anVar);
        e(anVar);
    }

    @Override // androidx.j.bf
    public Animator a(ViewGroup viewGroup, View view, an anVar, an anVar2) {
        if (anVar2 == null) {
            return null;
        }
        Rect rect = (Rect) anVar2.f859a.get(r);
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        a(viewGroup, rect, this.s);
        return ap.a(view, anVar2, rect.left, rect.top, translationX + this.s[0], translationY + this.s[1], translationX, translationY, f901a, this);
    }

    @Override // androidx.j.bf
    public Animator b(ViewGroup viewGroup, View view, an anVar, an anVar2) {
        float f;
        float f2;
        if (anVar == null) {
            return null;
        }
        Rect rect = (Rect) anVar.f859a.get(r);
        int i = rect.left;
        int i2 = rect.top;
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        int[] iArr = (int[]) anVar.b.getTag(aa.e.transition_position);
        if (iArr != null) {
            f = (iArr[0] - rect.left) + translationX;
            f2 = (iArr[1] - rect.top) + translationY;
            rect.offsetTo(iArr[0], iArr[1]);
        } else {
            f = translationX;
            f2 = translationY;
        }
        a(viewGroup, rect, this.s);
        return ap.a(view, anVar, i, i2, translationX, translationY, f + this.s[0], f2 + this.s[1], b, this);
    }

    private void a(View view, Rect rect, int[] iArr) {
        int centerY;
        int i;
        float f;
        float f2;
        view.getLocationOnScreen(this.s);
        int i2 = this.s[0];
        int i3 = this.s[1];
        Rect q = q();
        if (q == null) {
            i = (view.getWidth() / 2) + i2 + Math.round(view.getTranslationX());
            centerY = (view.getHeight() / 2) + i3 + Math.round(view.getTranslationY());
        } else {
            int centerX = q.centerX();
            centerY = q.centerY();
            i = centerX;
        }
        float centerX2 = rect.centerX() - i;
        float centerY2 = rect.centerY() - centerY;
        if (centerX2 == 0.0f && centerY2 == 0.0f) {
            f2 = ((float) (Math.random() * 2.0d)) - 1.0f;
            f = ((float) (Math.random() * 2.0d)) - 1.0f;
        } else {
            f = centerY2;
            f2 = centerX2;
        }
        float a2 = a(f2, f);
        float a3 = a(view, i - i2, centerY - i3);
        iArr[0] = Math.round((f2 / a2) * a3);
        iArr[1] = Math.round(a3 * (f / a2));
    }

    private static float a(View view, int i, int i2) {
        return a(Math.max(i, view.getWidth() - i), Math.max(i2, view.getHeight() - i2));
    }

    private static float a(float f, float f2) {
        return (float) Math.sqrt((f * f) + (f2 * f2));
    }
}
