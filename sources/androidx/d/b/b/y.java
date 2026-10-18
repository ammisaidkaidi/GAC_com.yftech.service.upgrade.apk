package androidx.d.b.b;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.widget.NestedScrollView;
import androidx.d.b.b.s;
import androidx.d.e.m;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public class y {
    private static final int A = 5;
    private static final int B = 0;
    private static final int C = 1;
    private static final int D = 2;
    private static final int E = 3;
    private static final int F = 4;
    private static final int G = 5;
    private static final int H = 6;

    /* renamed from: a, reason: collision with root package name */
    static final int f637a = 1;
    static final int b = 2;
    private static final String c = "TouchResponse";
    private static final boolean d = false;
    private static final float[][] t = {new float[]{0.5f, 0.0f}, new float[]{0.0f, 0.5f}, new float[]{1.0f, 0.5f}, new float[]{0.5f, 1.0f}, new float[]{0.5f, 0.5f}, new float[]{0.0f, 0.5f}, new float[]{1.0f, 0.5f}};
    private static final float[][] u = {new float[]{0.0f, -1.0f}, new float[]{0.0f, 1.0f}, new float[]{-1.0f, 0.0f}, new float[]{1.0f, 0.0f}, new float[]{-1.0f, 0.0f}, new float[]{1.0f, 0.0f}};
    private static final int v = 0;
    private static final int w = 1;
    private static final int x = 2;
    private static final int y = 3;
    private static final int z = 4;
    private float q;
    private float r;
    private final s s;
    private int e = 0;
    private int f = 0;
    private int g = 0;
    private int h = -1;
    private int i = -1;
    private int j = -1;
    private float k = 0.5f;
    private float l = 0.5f;
    private float m = 0.0f;
    private float n = 1.0f;
    private boolean o = false;
    private float[] p = new float[2];
    private float I = 4.0f;
    private float J = 1.2f;
    private boolean K = true;
    private float L = 1.0f;
    private int M = 0;
    private float N = 10.0f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y(Context context, s sVar, XmlPullParser xmlPullParser) {
        this.s = sVar;
        a(context, Xml.asAttributeSet(xmlPullParser));
    }

    public void a(boolean z2) {
        if (z2) {
            u[4] = u[3];
            u[5] = u[2];
            t[5] = t[2];
            t[6] = t[1];
        } else {
            u[4] = u[2];
            u[5] = u[3];
            t[5] = t[1];
            t[6] = t[2];
        }
        this.l = t[this.e][0];
        this.k = t[this.e][1];
        this.m = u[this.f][0];
        this.n = u[this.f][1];
    }

    private void a(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, m.C0052m.OnSwipe);
        a(obtainStyledAttributes);
        obtainStyledAttributes.recycle();
    }

    private void a(TypedArray typedArray) {
        int indexCount = typedArray.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = typedArray.getIndex(i);
            if (index == m.C0052m.OnSwipe_touchAnchorId) {
                this.h = typedArray.getResourceId(index, this.h);
            } else if (index == m.C0052m.OnSwipe_touchAnchorSide) {
                this.e = typedArray.getInt(index, this.e);
                this.l = t[this.e][0];
                this.k = t[this.e][1];
            } else if (index == m.C0052m.OnSwipe_dragDirection) {
                this.f = typedArray.getInt(index, this.f);
                this.m = u[this.f][0];
                this.n = u[this.f][1];
            } else if (index == m.C0052m.OnSwipe_maxVelocity) {
                this.I = typedArray.getFloat(index, this.I);
            } else if (index == m.C0052m.OnSwipe_maxAcceleration) {
                this.J = typedArray.getFloat(index, this.J);
            } else if (index == m.C0052m.OnSwipe_moveWhenScrollAtTop) {
                this.K = typedArray.getBoolean(index, this.K);
            } else if (index == m.C0052m.OnSwipe_dragScale) {
                this.L = typedArray.getFloat(index, this.L);
            } else if (index == m.C0052m.OnSwipe_dragThreshold) {
                this.N = typedArray.getFloat(index, this.N);
            } else if (index == m.C0052m.OnSwipe_touchRegionId) {
                this.i = typedArray.getResourceId(index, this.i);
            } else if (index == m.C0052m.OnSwipe_onTouchUp) {
                this.g = typedArray.getInt(index, this.g);
            } else if (index == m.C0052m.OnSwipe_nestedScrollFlags) {
                this.M = typedArray.getInteger(index, 0);
            } else if (index == m.C0052m.OnSwipe_limitBoundsTo) {
                this.j = typedArray.getResourceId(index, 0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(float f, float f2) {
        this.q = f;
        this.r = f2;
        this.o = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(MotionEvent motionEvent, s.d dVar, int i, u uVar) {
        float f;
        float f2;
        dVar.a(motionEvent);
        switch (motionEvent.getAction()) {
            case 0:
                this.q = motionEvent.getRawX();
                this.r = motionEvent.getRawY();
                this.o = false;
                return;
            case 1:
                this.o = false;
                dVar.a(1000);
                float c2 = dVar.c();
                float d2 = dVar.d();
                float progress = this.s.getProgress();
                if (this.h != -1) {
                    this.s.a(this.h, progress, this.l, this.k, this.p);
                } else {
                    float min = Math.min(this.s.getWidth(), this.s.getHeight());
                    this.p[1] = this.n * min;
                    this.p[0] = min * this.m;
                }
                float f3 = this.m;
                float f4 = this.p[0];
                float f5 = this.n;
                float f6 = this.p[1];
                if (this.m != 0.0f) {
                    f = c2 / this.p[0];
                } else {
                    f = d2 / this.p[1];
                }
                float f7 = !Float.isNaN(f) ? (f / 3.0f) + progress : progress;
                if (f7 == 0.0f || f7 == 1.0f || this.g == 3) {
                    if (0.0f >= f7 || 1.0f <= f7) {
                        this.s.setState(s.h.FINISHED);
                        return;
                    }
                    return;
                }
                this.s.a(this.g, ((double) f7) < 0.5d ? 0.0f : 1.0f, f);
                if (0.0f >= progress || 1.0f <= progress) {
                    this.s.setState(s.h.FINISHED);
                    return;
                }
                return;
            case 2:
                float rawY = motionEvent.getRawY() - this.r;
                float rawX = motionEvent.getRawX() - this.q;
                if (Math.abs((this.m * rawX) + (this.n * rawY)) > this.N || this.o) {
                    float progress2 = this.s.getProgress();
                    if (!this.o) {
                        this.o = true;
                        this.s.setProgress(progress2);
                    }
                    if (this.h != -1) {
                        this.s.a(this.h, progress2, this.l, this.k, this.p);
                    } else {
                        float min2 = Math.min(this.s.getWidth(), this.s.getHeight());
                        this.p[1] = this.n * min2;
                        this.p[0] = min2 * this.m;
                    }
                    if (Math.abs(((this.m * this.p[0]) + (this.n * this.p[1])) * this.L) < 0.01d) {
                        this.p[0] = 0.01f;
                        this.p[1] = 0.01f;
                    }
                    if (this.m != 0.0f) {
                        f2 = rawX / this.p[0];
                    } else {
                        f2 = rawY / this.p[1];
                    }
                    float max = Math.max(Math.min(progress2 + f2, 1.0f), 0.0f);
                    if (max != this.s.getProgress()) {
                        this.s.setProgress(max);
                        dVar.a(1000);
                        this.s.k = this.m != 0.0f ? dVar.c() / this.p[0] : dVar.d() / this.p[1];
                    } else {
                        this.s.k = 0.0f;
                    }
                    this.q = motionEvent.getRawX();
                    this.r = motionEvent.getRawY();
                    return;
                }
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(float f, float f2) {
        this.q = f;
        this.r = f2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float c(float f, float f2) {
        this.s.a(this.h, this.s.getProgress(), this.l, this.k, this.p);
        if (this.m != 0.0f) {
            if (this.p[0] == 0.0f) {
                this.p[0] = 1.0E-7f;
            }
            return (f * this.m) / this.p[0];
        }
        if (this.p[1] == 0.0f) {
            this.p[1] = 1.0E-7f;
        }
        return (f2 * this.n) / this.p[1];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(float f, float f2) {
        float f3;
        this.o = false;
        float progress = this.s.getProgress();
        this.s.a(this.h, progress, this.l, this.k, this.p);
        float f4 = this.m;
        float f5 = this.p[0];
        float f6 = this.n;
        float f7 = this.p[1];
        if (this.m != 0.0f) {
            f3 = (f * this.m) / this.p[0];
        } else {
            f3 = (f2 * this.n) / this.p[1];
        }
        if (!Float.isNaN(f3)) {
            progress += f3 / 3.0f;
        }
        if (progress != 0.0f) {
            if ((this.g != 3) && (progress != 1.0f)) {
                this.s.a(this.g, ((double) progress) < 0.5d ? 0.0f : 1.0f, f3);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(float f, float f2) {
        float f3;
        float f4 = this.m;
        float f5 = this.n;
        float progress = this.s.getProgress();
        if (!this.o) {
            this.o = true;
            this.s.setProgress(progress);
        }
        this.s.a(this.h, progress, this.l, this.k, this.p);
        if (Math.abs((this.m * this.p[0]) + (this.n * this.p[1])) < 0.01d) {
            this.p[0] = 0.01f;
            this.p[1] = 0.01f;
        }
        if (this.m != 0.0f) {
            f3 = (f * this.m) / this.p[0];
        } else {
            f3 = (f2 * this.n) / this.p[1];
        }
        float max = Math.max(Math.min(progress + f3, 1.0f), 0.0f);
        if (max != this.s.getProgress()) {
            this.s.setProgress(max);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        View view;
        if (this.h != -1) {
            view = this.s.findViewById(this.h);
            if (view == null) {
                Log.e(c, "cannot find TouchAnchorId @id/" + c.a(this.s.getContext(), this.h));
            }
        } else {
            view = null;
        }
        if (view instanceof NestedScrollView) {
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            nestedScrollView.setOnTouchListener(new View.OnTouchListener() { // from class: androidx.d.b.b.y.1
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view2, MotionEvent motionEvent) {
                    return false;
                }
            });
            nestedScrollView.setOnScrollChangeListener(new NestedScrollView.b() { // from class: androidx.d.b.b.y.2
                @Override // androidx.core.widget.NestedScrollView.b
                public void a(NestedScrollView nestedScrollView2, int i, int i2, int i3, int i4) {
                }
            });
        }
    }

    public void a(int i) {
        this.h = i;
    }

    public int b() {
        return this.h;
    }

    public void f(float f, float f2) {
        this.l = f;
        this.k = f2;
    }

    public void a(float f) {
        this.I = f;
    }

    public void b(float f) {
        this.J = f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float c() {
        return this.J;
    }

    public float d() {
        return this.I;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean e() {
        return this.K;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RectF a(ViewGroup viewGroup, RectF rectF) {
        View findViewById;
        if (this.i == -1 || (findViewById = viewGroup.findViewById(this.i)) == null) {
            return null;
        }
        rectF.set(findViewById.getLeft(), findViewById.getTop(), findViewById.getRight(), findViewById.getBottom());
        return rectF;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int f() {
        return this.i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RectF b(ViewGroup viewGroup, RectF rectF) {
        View findViewById;
        if (this.j == -1 || (findViewById = viewGroup.findViewById(this.j)) == null) {
            return null;
        }
        rectF.set(findViewById.getLeft(), findViewById.getTop(), findViewById.getRight(), findViewById.getBottom());
        return rectF;
    }

    int g() {
        return this.j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float g(float f, float f2) {
        return (f * this.m) + (f2 * this.n);
    }

    public String toString() {
        return this.m + " , " + this.n;
    }

    public int h() {
        return this.M;
    }
}
