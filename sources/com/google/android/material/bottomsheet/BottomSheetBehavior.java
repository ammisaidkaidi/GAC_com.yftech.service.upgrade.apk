package com.google.android.material.bottomsheet;

import android.R;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import androidx.annotation.ax;
import androidx.annotation.r;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.n.a.d;
import androidx.core.n.a.g;
import androidx.core.n.af;
import androidx.core.n.ao;
import androidx.f.b.c;
import com.google.android.material.a;
import com.google.android.material.internal.z;
import com.google.android.material.t.j;
import com.google.android.material.t.o;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes.dex */
public class BottomSheetBehavior<V extends View> extends CoordinatorLayout.b<V> {
    private static final String C = "BottomSheetBehavior";
    private static final int E = 500;
    private static final float F = 0.5f;
    private static final float G = 0.1f;
    private static final int H = 500;
    private static final int X = a.n.Widget_Design_BottomSheet_Modal;

    /* renamed from: a, reason: collision with root package name */
    public static final int f1195a = 1;
    public static final int b = 2;
    public static final int c = 3;
    public static final int d = 4;
    public static final int e = 5;
    public static final int f = 6;
    public static final int g = -1;
    public static final int h = 1;
    public static final int i = 2;
    public static final int j = 4;
    public static final int k = 8;
    public static final int l = -1;
    public static final int m = 0;
    int A;
    boolean B;
    private int D;
    private boolean I;
    private boolean J;
    private float K;
    private int L;
    private boolean M;
    private int N;
    private int O;
    private boolean P;
    private j Q;
    private int R;
    private boolean S;
    private o T;
    private boolean U;
    private BottomSheetBehavior<V>.d V;

    @ai
    private ValueAnimator W;
    private boolean Y;
    private boolean Z;
    private boolean aa;
    private int ab;
    private boolean ac;
    private int ad;

    @ah
    private final ArrayList<a> ae;

    @ai
    private VelocityTracker af;
    private int ag;

    @ai
    private Map<View, Integer> ah;
    private final c.a ai;
    int n;
    int o;
    int p;
    float q;
    int r;
    float s;
    boolean t;
    int u;

    @ai
    androidx.f.b.c v;
    int w;
    int x;

    @ai
    WeakReference<V> y;

    @ai
    WeakReference<View> z;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class a {
        public abstract void a(@ah View view, float f);

        public abstract void a(@ah View view, int i);
    }

    @Retention(RetentionPolicy.SOURCE)
    @ap(a = {ap.a.LIBRARY_GROUP})
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface b {
    }

    @Retention(RetentionPolicy.SOURCE)
    @ap(a = {ap.a.LIBRARY_GROUP})
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface e {
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public void a(@ah CoordinatorLayout coordinatorLayout, @ah V v, @ah View view, int i2, int i3, int i4, int i5, int i6, @ah int[] iArr) {
    }

    public BottomSheetBehavior() {
        this.D = 0;
        this.I = true;
        this.J = false;
        this.V = null;
        this.q = F;
        this.s = -1.0f;
        this.Z = true;
        this.u = 4;
        this.ae = new ArrayList<>();
        this.ai = new c.a() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.4
            @Override // androidx.f.b.c.a
            public boolean b(@ah View view, int i2) {
                if (BottomSheetBehavior.this.u == 1 || BottomSheetBehavior.this.B) {
                    return false;
                }
                if (BottomSheetBehavior.this.u == 3 && BottomSheetBehavior.this.A == i2) {
                    View view2 = BottomSheetBehavior.this.z != null ? BottomSheetBehavior.this.z.get() : null;
                    if (view2 != null && view2.canScrollVertically(-1)) {
                        return false;
                    }
                }
                return BottomSheetBehavior.this.y != null && BottomSheetBehavior.this.y.get() == view;
            }

            @Override // androidx.f.b.c.a
            public void a(@ah View view, int i2, int i3, int i4, int i5) {
                BottomSheetBehavior.this.f(i3);
            }

            @Override // androidx.f.b.c.a
            public void a(int i2) {
                if (i2 == 1 && BottomSheetBehavior.this.Z) {
                    BottomSheetBehavior.this.e(1);
                }
            }

            private boolean c(@ah View view) {
                return view.getTop() > (BottomSheetBehavior.this.x + BottomSheetBehavior.this.e()) / 2;
            }

            @Override // androidx.f.b.c.a
            public void a(@ah View view, float f2, float f3) {
                int i2;
                int i3 = 4;
                if (f3 < 0.0f) {
                    if (BottomSheetBehavior.this.I) {
                        i2 = BottomSheetBehavior.this.o;
                    } else if (view.getTop() > BottomSheetBehavior.this.p) {
                        i2 = BottomSheetBehavior.this.p;
                        i3 = 6;
                    } else {
                        i2 = BottomSheetBehavior.this.n;
                    }
                    i3 = 3;
                } else if (BottomSheetBehavior.this.t && BottomSheetBehavior.this.a(view, f3)) {
                    if ((Math.abs(f2) >= Math.abs(f3) || f3 <= 500.0f) && !c(view)) {
                        if (BottomSheetBehavior.this.I) {
                            i2 = BottomSheetBehavior.this.o;
                        } else if (Math.abs(view.getTop() - BottomSheetBehavior.this.n) < Math.abs(view.getTop() - BottomSheetBehavior.this.p)) {
                            i2 = BottomSheetBehavior.this.n;
                        } else {
                            i2 = BottomSheetBehavior.this.p;
                            i3 = 6;
                        }
                        i3 = 3;
                    } else {
                        i2 = BottomSheetBehavior.this.x;
                        i3 = 5;
                    }
                } else if (f3 != 0.0f && Math.abs(f2) <= Math.abs(f3)) {
                    if (BottomSheetBehavior.this.I) {
                        i2 = BottomSheetBehavior.this.r;
                    } else {
                        int top = view.getTop();
                        if (Math.abs(top - BottomSheetBehavior.this.p) < Math.abs(top - BottomSheetBehavior.this.r)) {
                            i2 = BottomSheetBehavior.this.p;
                            i3 = 6;
                        } else {
                            i2 = BottomSheetBehavior.this.r;
                        }
                    }
                } else {
                    int top2 = view.getTop();
                    if (BottomSheetBehavior.this.I) {
                        if (Math.abs(top2 - BottomSheetBehavior.this.o) < Math.abs(top2 - BottomSheetBehavior.this.r)) {
                            i2 = BottomSheetBehavior.this.o;
                            i3 = 3;
                        } else {
                            i2 = BottomSheetBehavior.this.r;
                        }
                    } else {
                        if (top2 < BottomSheetBehavior.this.p) {
                            if (top2 < Math.abs(top2 - BottomSheetBehavior.this.r)) {
                                i2 = BottomSheetBehavior.this.n;
                                i3 = 3;
                            } else {
                                i2 = BottomSheetBehavior.this.p;
                            }
                        } else if (Math.abs(top2 - BottomSheetBehavior.this.p) < Math.abs(top2 - BottomSheetBehavior.this.r)) {
                            i2 = BottomSheetBehavior.this.p;
                        } else {
                            i2 = BottomSheetBehavior.this.r;
                        }
                        i3 = 6;
                    }
                }
                BottomSheetBehavior.this.a(view, i3, i2, true);
            }

            @Override // androidx.f.b.c.a
            public int b(@ah View view, int i2, int i3) {
                return androidx.core.g.a.a(i2, BottomSheetBehavior.this.e(), BottomSheetBehavior.this.t ? BottomSheetBehavior.this.x : BottomSheetBehavior.this.r);
            }

            @Override // androidx.f.b.c.a
            public int a(@ah View view, int i2, int i3) {
                return view.getLeft();
            }

            @Override // androidx.f.b.c.a
            public int b(@ah View view) {
                if (BottomSheetBehavior.this.t) {
                    return BottomSheetBehavior.this.x;
                }
                return BottomSheetBehavior.this.r;
            }
        };
    }

    public BottomSheetBehavior(@ah Context context, @ai AttributeSet attributeSet) {
        super(context, attributeSet);
        this.D = 0;
        this.I = true;
        this.J = false;
        this.V = null;
        this.q = F;
        this.s = -1.0f;
        this.Z = true;
        this.u = 4;
        this.ae = new ArrayList<>();
        this.ai = new c.a() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.4
            @Override // androidx.f.b.c.a
            public boolean b(@ah View view, int i2) {
                if (BottomSheetBehavior.this.u == 1 || BottomSheetBehavior.this.B) {
                    return false;
                }
                if (BottomSheetBehavior.this.u == 3 && BottomSheetBehavior.this.A == i2) {
                    View view2 = BottomSheetBehavior.this.z != null ? BottomSheetBehavior.this.z.get() : null;
                    if (view2 != null && view2.canScrollVertically(-1)) {
                        return false;
                    }
                }
                return BottomSheetBehavior.this.y != null && BottomSheetBehavior.this.y.get() == view;
            }

            @Override // androidx.f.b.c.a
            public void a(@ah View view, int i2, int i3, int i4, int i5) {
                BottomSheetBehavior.this.f(i3);
            }

            @Override // androidx.f.b.c.a
            public void a(int i2) {
                if (i2 == 1 && BottomSheetBehavior.this.Z) {
                    BottomSheetBehavior.this.e(1);
                }
            }

            private boolean c(@ah View view) {
                return view.getTop() > (BottomSheetBehavior.this.x + BottomSheetBehavior.this.e()) / 2;
            }

            @Override // androidx.f.b.c.a
            public void a(@ah View view, float f2, float f3) {
                int i2;
                int i3 = 4;
                if (f3 < 0.0f) {
                    if (BottomSheetBehavior.this.I) {
                        i2 = BottomSheetBehavior.this.o;
                    } else if (view.getTop() > BottomSheetBehavior.this.p) {
                        i2 = BottomSheetBehavior.this.p;
                        i3 = 6;
                    } else {
                        i2 = BottomSheetBehavior.this.n;
                    }
                    i3 = 3;
                } else if (BottomSheetBehavior.this.t && BottomSheetBehavior.this.a(view, f3)) {
                    if ((Math.abs(f2) >= Math.abs(f3) || f3 <= 500.0f) && !c(view)) {
                        if (BottomSheetBehavior.this.I) {
                            i2 = BottomSheetBehavior.this.o;
                        } else if (Math.abs(view.getTop() - BottomSheetBehavior.this.n) < Math.abs(view.getTop() - BottomSheetBehavior.this.p)) {
                            i2 = BottomSheetBehavior.this.n;
                        } else {
                            i2 = BottomSheetBehavior.this.p;
                            i3 = 6;
                        }
                        i3 = 3;
                    } else {
                        i2 = BottomSheetBehavior.this.x;
                        i3 = 5;
                    }
                } else if (f3 != 0.0f && Math.abs(f2) <= Math.abs(f3)) {
                    if (BottomSheetBehavior.this.I) {
                        i2 = BottomSheetBehavior.this.r;
                    } else {
                        int top = view.getTop();
                        if (Math.abs(top - BottomSheetBehavior.this.p) < Math.abs(top - BottomSheetBehavior.this.r)) {
                            i2 = BottomSheetBehavior.this.p;
                            i3 = 6;
                        } else {
                            i2 = BottomSheetBehavior.this.r;
                        }
                    }
                } else {
                    int top2 = view.getTop();
                    if (BottomSheetBehavior.this.I) {
                        if (Math.abs(top2 - BottomSheetBehavior.this.o) < Math.abs(top2 - BottomSheetBehavior.this.r)) {
                            i2 = BottomSheetBehavior.this.o;
                            i3 = 3;
                        } else {
                            i2 = BottomSheetBehavior.this.r;
                        }
                    } else {
                        if (top2 < BottomSheetBehavior.this.p) {
                            if (top2 < Math.abs(top2 - BottomSheetBehavior.this.r)) {
                                i2 = BottomSheetBehavior.this.n;
                                i3 = 3;
                            } else {
                                i2 = BottomSheetBehavior.this.p;
                            }
                        } else if (Math.abs(top2 - BottomSheetBehavior.this.p) < Math.abs(top2 - BottomSheetBehavior.this.r)) {
                            i2 = BottomSheetBehavior.this.p;
                        } else {
                            i2 = BottomSheetBehavior.this.r;
                        }
                        i3 = 6;
                    }
                }
                BottomSheetBehavior.this.a(view, i3, i2, true);
            }

            @Override // androidx.f.b.c.a
            public int b(@ah View view, int i2, int i3) {
                return androidx.core.g.a.a(i2, BottomSheetBehavior.this.e(), BottomSheetBehavior.this.t ? BottomSheetBehavior.this.x : BottomSheetBehavior.this.r);
            }

            @Override // androidx.f.b.c.a
            public int a(@ah View view, int i2, int i3) {
                return view.getLeft();
            }

            @Override // androidx.f.b.c.a
            public int b(@ah View view) {
                if (BottomSheetBehavior.this.t) {
                    return BottomSheetBehavior.this.x;
                }
                return BottomSheetBehavior.this.r;
            }
        };
        this.O = context.getResources().getDimensionPixelSize(a.f.mtrl_min_touch_target_size);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.o.BottomSheetBehavior_Layout);
        this.P = obtainStyledAttributes.hasValue(a.o.BottomSheetBehavior_Layout_shapeAppearance);
        boolean hasValue = obtainStyledAttributes.hasValue(a.o.BottomSheetBehavior_Layout_backgroundTint);
        if (hasValue) {
            a(context, attributeSet, hasValue, com.google.android.material.q.c.a(context, obtainStyledAttributes, a.o.BottomSheetBehavior_Layout_backgroundTint));
        } else {
            a(context, attributeSet, hasValue);
        }
        r();
        if (Build.VERSION.SDK_INT >= 21) {
            this.s = obtainStyledAttributes.getDimension(a.o.BottomSheetBehavior_Layout_android_elevation, -1.0f);
        }
        TypedValue peekValue = obtainStyledAttributes.peekValue(a.o.BottomSheetBehavior_Layout_behavior_peekHeight);
        if (peekValue != null && peekValue.data == -1) {
            a(peekValue.data);
        } else {
            a(obtainStyledAttributes.getDimensionPixelSize(a.o.BottomSheetBehavior_Layout_behavior_peekHeight, -1));
        }
        b(obtainStyledAttributes.getBoolean(a.o.BottomSheetBehavior_Layout_behavior_hideable, false));
        e(obtainStyledAttributes.getBoolean(a.o.BottomSheetBehavior_Layout_gestureInsetBottomIgnored, false));
        a(obtainStyledAttributes.getBoolean(a.o.BottomSheetBehavior_Layout_behavior_fitToContents, true));
        c(obtainStyledAttributes.getBoolean(a.o.BottomSheetBehavior_Layout_behavior_skipCollapsed, false));
        d(obtainStyledAttributes.getBoolean(a.o.BottomSheetBehavior_Layout_behavior_draggable, true));
        c(obtainStyledAttributes.getInt(a.o.BottomSheetBehavior_Layout_behavior_saveFlags, 0));
        a(obtainStyledAttributes.getFloat(a.o.BottomSheetBehavior_Layout_behavior_halfExpandedRatio, F));
        TypedValue peekValue2 = obtainStyledAttributes.peekValue(a.o.BottomSheetBehavior_Layout_behavior_expandedOffset);
        if (peekValue2 != null && peekValue2.type == 16) {
            b(peekValue2.data);
        } else {
            b(obtainStyledAttributes.getDimensionPixelOffset(a.o.BottomSheetBehavior_Layout_behavior_expandedOffset, 0));
        }
        obtainStyledAttributes.recycle();
        this.K = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    @ah
    public Parcelable d(@ah CoordinatorLayout coordinatorLayout, @ah V v) {
        return new c(super.d(coordinatorLayout, v), (BottomSheetBehavior<?>) this);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public void a(@ah CoordinatorLayout coordinatorLayout, @ah V v, @ah Parcelable parcelable) {
        c cVar = (c) parcelable;
        super.a(coordinatorLayout, (CoordinatorLayout) v, cVar.a());
        a(cVar);
        if (cVar.f1201a == 1 || cVar.f1201a == 2) {
            this.u = 4;
        } else {
            this.u = cVar.f1201a;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public void a(@ah CoordinatorLayout.f fVar) {
        super.a(fVar);
        this.y = null;
        this.v = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public void a() {
        super.a();
        this.y = null;
        this.v = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public boolean a(@ah CoordinatorLayout coordinatorLayout, @ah V v, int i2) {
        if (af.U(coordinatorLayout) && !af.U(v)) {
            v.setFitsSystemWindows(true);
        }
        if (this.y == null) {
            this.N = coordinatorLayout.getResources().getDimensionPixelSize(a.f.design_bottom_sheet_peek_height_min);
            d(v);
            this.y = new WeakReference<>(v);
            if (this.P && this.Q != null) {
                af.a(v, this.Q);
            }
            if (this.Q != null) {
                this.Q.r(this.s == -1.0f ? af.P(v) : this.s);
                this.U = this.u == 3;
                this.Q.p(this.U ? 0.0f : 1.0f);
            }
            t();
            if (af.i(v) == 0) {
                af.e((View) v, 1);
            }
        }
        if (this.v == null) {
            this.v = androidx.f.b.c.a(coordinatorLayout, this.ai);
        }
        int top = v.getTop();
        coordinatorLayout.b(v, i2);
        this.w = coordinatorLayout.getWidth();
        this.x = coordinatorLayout.getHeight();
        this.ad = v.getHeight();
        this.o = Math.max(0, this.x - this.ad);
        p();
        o();
        if (this.u == 3) {
            af.n((View) v, e());
        } else if (this.u == 6) {
            af.n((View) v, this.p);
        } else if (this.t && this.u == 5) {
            af.n((View) v, this.x);
        } else if (this.u == 4) {
            af.n((View) v, this.r);
        } else if (this.u == 1 || this.u == 2) {
            af.n((View) v, top - v.getTop());
        }
        this.z = new WeakReference<>(b(v));
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0096  */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean a(@ah CoordinatorLayout coordinatorLayout, @ah V v, @ah MotionEvent motionEvent) {
        if (!v.isShown() || !this.Z) {
            this.aa = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            q();
        }
        if (this.af == null) {
            this.af = VelocityTracker.obtain();
        }
        this.af.addMovement(motionEvent);
        if (actionMasked != 3) {
            switch (actionMasked) {
                case 0:
                    int x = (int) motionEvent.getX();
                    this.ag = (int) motionEvent.getY();
                    if (this.u != 2) {
                        View view = this.z != null ? this.z.get() : null;
                        if (view != null && coordinatorLayout.a(view, x, this.ag)) {
                            this.A = motionEvent.getPointerId(motionEvent.getActionIndex());
                            this.B = true;
                        }
                    }
                    this.aa = this.A == -1 && !coordinatorLayout.a(v, x, this.ag);
                    break;
            }
            if (this.aa && this.v != null && this.v.a(motionEvent)) {
                return true;
            }
            View view2 = this.z != null ? this.z.get() : null;
            return actionMasked != 2 ? false : false;
        }
        this.B = false;
        this.A = -1;
        if (this.aa) {
            this.aa = false;
            return false;
        }
        if (this.aa) {
        }
        if (this.z != null) {
        }
        return actionMasked != 2 ? false : false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public boolean b(@ah CoordinatorLayout coordinatorLayout, @ah V v, @ah MotionEvent motionEvent) {
        if (!v.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.u == 1 && actionMasked == 0) {
            return true;
        }
        if (this.v != null) {
            this.v.b(motionEvent);
        }
        if (actionMasked == 0) {
            q();
        }
        if (this.af == null) {
            this.af = VelocityTracker.obtain();
        }
        this.af.addMovement(motionEvent);
        if (this.v != null && actionMasked == 2 && !this.aa && Math.abs(this.ag - motionEvent.getY()) > this.v.f()) {
            this.v.a(v, motionEvent.getPointerId(motionEvent.getActionIndex()));
        }
        return !this.aa;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public boolean a(@ah CoordinatorLayout coordinatorLayout, @ah V v, @ah View view, @ah View view2, int i2, int i3) {
        this.ab = 0;
        this.ac = false;
        return (i2 & 2) != 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public void a(@ah CoordinatorLayout coordinatorLayout, @ah V v, @ah View view, int i2, int i3, @ah int[] iArr, int i4) {
        if (i4 == 1) {
            return;
        }
        if (view != (this.z != null ? this.z.get() : null)) {
            return;
        }
        int top = v.getTop();
        int i5 = top - i3;
        if (i3 > 0) {
            if (i5 < e()) {
                iArr[1] = top - e();
                af.n((View) v, -iArr[1]);
                e(3);
            } else {
                if (!this.Z) {
                    return;
                }
                iArr[1] = i3;
                af.n((View) v, -i3);
                e(1);
            }
        } else if (i3 < 0 && !view.canScrollVertically(-1)) {
            if (i5 <= this.r || this.t) {
                if (!this.Z) {
                    return;
                }
                iArr[1] = i3;
                af.n((View) v, -i3);
                e(1);
            } else {
                iArr[1] = top - this.r;
                af.n((View) v, -iArr[1]);
                e(4);
            }
        }
        f(v.getTop());
        this.ab = i3;
        this.ac = true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public void a(@ah CoordinatorLayout coordinatorLayout, @ah V v, @ah View view, int i2) {
        int i3;
        int i4 = 3;
        if (v.getTop() == e()) {
            e(3);
            return;
        }
        if (this.z != null && view == this.z.get() && this.ac) {
            if (this.ab > 0) {
                if (this.I) {
                    i3 = this.o;
                } else if (v.getTop() > this.p) {
                    i3 = this.p;
                    i4 = 6;
                } else {
                    i3 = this.n;
                }
            } else if (this.t && a(v, s())) {
                i3 = this.x;
                i4 = 5;
            } else if (this.ab == 0) {
                int top = v.getTop();
                if (this.I) {
                    if (Math.abs(top - this.o) < Math.abs(top - this.r)) {
                        i3 = this.o;
                    } else {
                        i3 = this.r;
                        i4 = 4;
                    }
                } else {
                    if (top < this.p) {
                        if (top < Math.abs(top - this.r)) {
                            i3 = this.n;
                        } else {
                            i3 = this.p;
                        }
                    } else if (Math.abs(top - this.p) < Math.abs(top - this.r)) {
                        i3 = this.p;
                    } else {
                        i3 = this.r;
                        i4 = 4;
                    }
                    i4 = 6;
                }
            } else {
                if (this.I) {
                    i3 = this.r;
                } else {
                    int top2 = v.getTop();
                    if (Math.abs(top2 - this.p) < Math.abs(top2 - this.r)) {
                        i3 = this.p;
                        i4 = 6;
                    } else {
                        i3 = this.r;
                    }
                }
                i4 = 4;
            }
            a((View) v, i4, i3, false);
            this.ac = false;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public boolean a(@ah CoordinatorLayout coordinatorLayout, @ah V v, @ah View view, float f2, float f3) {
        if (this.z == null || view != this.z.get()) {
            return false;
        }
        return this.u != 3 || super.a(coordinatorLayout, (CoordinatorLayout) v, view, f2, f3);
    }

    public boolean b() {
        return this.I;
    }

    public void a(boolean z) {
        if (this.I == z) {
            return;
        }
        this.I = z;
        if (this.y != null) {
            o();
        }
        e((this.I && this.u == 6) ? 3 : this.u);
        t();
    }

    public void a(int i2) {
        a(i2, false);
    }

    public final void a(int i2, boolean z) {
        boolean z2 = true;
        if (i2 == -1) {
            if (!this.M) {
                this.M = true;
            }
            z2 = false;
        } else {
            if (this.M || this.L != i2) {
                this.M = false;
                this.L = Math.max(0, i2);
            }
            z2 = false;
        }
        if (z2) {
            g(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(boolean z) {
        V v;
        if (this.y != null) {
            o();
            if (this.u != 4 || (v = this.y.get()) == null) {
                return;
            }
            if (z) {
                g(this.u);
            } else {
                v.requestLayout();
            }
        }
    }

    public int c() {
        if (this.M) {
            return -1;
        }
        return this.L;
    }

    public void a(@r(a = 0.0d, b = 1.0d) float f2) {
        if (f2 <= 0.0f || f2 >= 1.0f) {
            throw new IllegalArgumentException("ratio must be a float value between 0 and 1");
        }
        this.q = f2;
        if (this.y != null) {
            p();
        }
    }

    @r(a = 0.0d, b = 1.0d)
    public float d() {
        return this.q;
    }

    public void b(int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException("offset must be greater than or equal to 0");
        }
        this.n = i2;
    }

    public int e() {
        return this.I ? this.o : this.n;
    }

    public void b(boolean z) {
        if (this.t != z) {
            this.t = z;
            if (!z && this.u == 5) {
                d(4);
            }
            t();
        }
    }

    public boolean f() {
        return this.t;
    }

    public void c(boolean z) {
        this.Y = z;
    }

    public boolean g() {
        return this.Y;
    }

    public void d(boolean z) {
        this.Z = z;
    }

    public boolean h() {
        return this.Z;
    }

    public void c(int i2) {
        this.D = i2;
    }

    public int i() {
        return this.D;
    }

    @Deprecated
    public void a(a aVar) {
        Log.w(C, "BottomSheetBehavior now supports multiple callbacks. `setBottomSheetCallback()` removes all existing callbacks, including ones set internally by library authors, which may result in unintended behavior. This may change in the future. Please use `addBottomSheetCallback()` and `removeBottomSheetCallback()` instead to set your own callbacks.");
        this.ae.clear();
        if (aVar != null) {
            this.ae.add(aVar);
        }
    }

    public void b(@ah a aVar) {
        if (this.ae.contains(aVar)) {
            return;
        }
        this.ae.add(aVar);
    }

    public void c(@ah a aVar) {
        this.ae.remove(aVar);
    }

    public void d(int i2) {
        if (i2 == this.u) {
            return;
        }
        if (this.y == null) {
            if (i2 == 4 || i2 == 3 || i2 == 6 || (this.t && i2 == 5)) {
                this.u = i2;
                return;
            }
            return;
        }
        g(i2);
    }

    public void e(boolean z) {
        this.S = z;
    }

    public boolean j() {
        return this.S;
    }

    private void g(final int i2) {
        final V v = this.y.get();
        if (v == null) {
            return;
        }
        ViewParent parent = v.getParent();
        if (parent != null && parent.isLayoutRequested() && af.ak(v)) {
            v.post(new Runnable() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.1
                @Override // java.lang.Runnable
                public void run() {
                    BottomSheetBehavior.this.a(v, i2);
                }
            });
        } else {
            a((View) v, i2);
        }
    }

    public int k() {
        return this.u;
    }

    void e(int i2) {
        V v;
        if (this.u == i2) {
            return;
        }
        this.u = i2;
        if (this.y == null || (v = this.y.get()) == null) {
            return;
        }
        if (i2 == 3) {
            h(true);
        } else if (i2 == 6 || i2 == 5 || i2 == 4) {
            h(false);
        }
        h(i2);
        for (int i3 = 0; i3 < this.ae.size(); i3++) {
            this.ae.get(i3).a((View) v, i2);
        }
        t();
    }

    private void h(int i2) {
        if (i2 == 2) {
            return;
        }
        boolean z = i2 == 3;
        if (this.U != z) {
            this.U = z;
            if (this.Q == null || this.W == null) {
                return;
            }
            if (this.W.isRunning()) {
                this.W.reverse();
                return;
            }
            float f2 = z ? 0.0f : 1.0f;
            this.W.setFloatValues(1.0f - f2, f2);
            this.W.start();
        }
    }

    private int n() {
        if (this.M) {
            return Math.min(Math.max(this.N, this.x - ((this.w * 9) / 16)), this.ad);
        }
        if (!this.S && this.R > 0) {
            return Math.max(this.L, this.R + this.O);
        }
        return this.L;
    }

    private void o() {
        int n = n();
        if (this.I) {
            this.r = Math.max(this.x - n, this.o);
        } else {
            this.r = this.x - n;
        }
    }

    private void p() {
        this.p = (int) (this.x * (1.0f - this.q));
    }

    private void q() {
        this.A = -1;
        if (this.af != null) {
            this.af.recycle();
            this.af = null;
        }
    }

    private void a(@ah c cVar) {
        if (this.D == 0) {
            return;
        }
        if (this.D == -1 || (this.D & 1) == 1) {
            this.L = cVar.b;
        }
        if (this.D == -1 || (this.D & 2) == 2) {
            this.I = cVar.d;
        }
        if (this.D == -1 || (this.D & 4) == 4) {
            this.t = cVar.e;
        }
        if (this.D == -1 || (this.D & 8) == 8) {
            this.Y = cVar.f;
        }
    }

    boolean a(@ah View view, float f2) {
        if (this.Y) {
            return true;
        }
        if (view.getTop() < this.r) {
            return false;
        }
        return Math.abs((((float) view.getTop()) + (f2 * G)) - ((float) this.r)) / ((float) n()) > F;
    }

    @ai
    @ax
    View b(View view) {
        if (af.ac(view)) {
            return view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View b2 = b(viewGroup.getChildAt(i2));
            if (b2 != null) {
                return b2;
            }
        }
        return null;
    }

    private void a(@ah Context context, AttributeSet attributeSet, boolean z) {
        a(context, attributeSet, z, (ColorStateList) null);
    }

    private void a(@ah Context context, AttributeSet attributeSet, boolean z, @ai ColorStateList colorStateList) {
        if (this.P) {
            this.T = o.a(context, attributeSet, a.c.bottomSheetStyle, X).a();
            this.Q = new j(this.T);
            this.Q.b(context);
            if (z && colorStateList != null) {
                this.Q.g(colorStateList);
                return;
            }
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(R.attr.colorBackground, typedValue, true);
            this.Q.setTint(typedValue.data);
        }
    }

    private void r() {
        this.W = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.W.setDuration(500L);
        this.W.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(@ah ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                if (BottomSheetBehavior.this.Q != null) {
                    BottomSheetBehavior.this.Q.p(floatValue);
                }
            }
        });
    }

    private void d(@ah View view) {
        if (Build.VERSION.SDK_INT < 29 || j() || this.M) {
            return;
        }
        z.a(view, new z.a() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.3
            @Override // com.google.android.material.internal.z.a
            public ao a(View view2, ao aoVar, z.b bVar) {
                BottomSheetBehavior.this.R = aoVar.t().e;
                BottomSheetBehavior.this.g(false);
                return aoVar;
            }
        });
    }

    private float s() {
        if (this.af == null) {
            return 0.0f;
        }
        this.af.computeCurrentVelocity(1000, this.K);
        return this.af.getYVelocity(this.A);
    }

    void a(@ah View view, int i2) {
        int i3;
        if (i2 == 4) {
            i3 = this.r;
        } else if (i2 == 6) {
            int i4 = this.p;
            if (!this.I || i4 > this.o) {
                i3 = i4;
            } else {
                i3 = this.o;
                i2 = 3;
            }
        } else if (i2 == 3) {
            i3 = e();
        } else if (this.t && i2 == 5) {
            i3 = this.x;
        } else {
            throw new IllegalArgumentException("Illegal state argument: " + i2);
        }
        a(view, i2, i3, false);
    }

    void a(View view, int i2, int i3, boolean z) {
        if (this.v != null && (!z ? !this.v.a(view, view.getLeft(), i3) : !this.v.a(view.getLeft(), i3))) {
            e(2);
            h(i2);
            if (this.V == null) {
                this.V = new d(view, i2);
            }
            if (!((d) this.V).d) {
                this.V.f1202a = i2;
                af.a(view, this.V);
                ((d) this.V).d = true;
                return;
            }
            this.V.f1202a = i2;
            return;
        }
        e(i2);
    }

    void f(int i2) {
        float f2;
        V v = this.y.get();
        if (v == null || this.ae.isEmpty()) {
            return;
        }
        if (i2 > this.r || this.r == e()) {
            f2 = (this.r - i2) / (this.x - this.r);
        } else {
            f2 = (this.r - i2) / (this.r - e());
        }
        for (int i3 = 0; i3 < this.ae.size(); i3++) {
            this.ae.get(i3).a(v, f2);
        }
    }

    @ax
    int l() {
        return this.N;
    }

    @ap(a = {ap.a.LIBRARY_GROUP})
    @ax
    public void m() {
        this.W = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class d implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        int f1202a;
        private final View c;
        private boolean d;

        d(View view, int i) {
            this.c = view;
            this.f1202a = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (BottomSheetBehavior.this.v != null && BottomSheetBehavior.this.v.a(true)) {
                af.a(this.c, this);
            } else {
                BottomSheetBehavior.this.e(this.f1202a);
            }
            this.d = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class c extends androidx.f.a.a {
        public static final Parcelable.Creator<c> CREATOR = new Parcelable.ClassLoaderCreator<c>() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.c.1
            @Override // android.os.Parcelable.ClassLoaderCreator
            @ah
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public c createFromParcel(@ah Parcel parcel, ClassLoader classLoader) {
                return new c(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            @ai
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public c createFromParcel(@ah Parcel parcel) {
                return new c(parcel, (ClassLoader) null);
            }

            @Override // android.os.Parcelable.Creator
            @ah
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public c[] newArray(int i) {
                return new c[i];
            }
        };

        /* renamed from: a, reason: collision with root package name */
        final int f1201a;
        int b;
        boolean d;
        boolean e;
        boolean f;

        public c(@ah Parcel parcel) {
            this(parcel, (ClassLoader) null);
        }

        public c(@ah Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f1201a = parcel.readInt();
            this.b = parcel.readInt();
            this.d = parcel.readInt() == 1;
            this.e = parcel.readInt() == 1;
            this.f = parcel.readInt() == 1;
        }

        public c(Parcelable parcelable, @ah BottomSheetBehavior<?> bottomSheetBehavior) {
            super(parcelable);
            this.f1201a = bottomSheetBehavior.u;
            this.b = ((BottomSheetBehavior) bottomSheetBehavior).L;
            this.d = ((BottomSheetBehavior) bottomSheetBehavior).I;
            this.e = bottomSheetBehavior.t;
            this.f = ((BottomSheetBehavior) bottomSheetBehavior).Y;
        }

        @Deprecated
        public c(Parcelable parcelable, int i) {
            super(parcelable);
            this.f1201a = i;
        }

        @Override // androidx.f.a.a, android.os.Parcelable
        public void writeToParcel(@ah Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f1201a);
            parcel.writeInt(this.b);
            parcel.writeInt(this.d ? 1 : 0);
            parcel.writeInt(this.e ? 1 : 0);
            parcel.writeInt(this.f ? 1 : 0);
        }
    }

    @ah
    public static <V extends View> BottomSheetBehavior<V> c(@ah V v) {
        ViewGroup.LayoutParams layoutParams = v.getLayoutParams();
        if (!(layoutParams instanceof CoordinatorLayout.f)) {
            throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
        }
        CoordinatorLayout.b b2 = ((CoordinatorLayout.f) layoutParams).b();
        if (!(b2 instanceof BottomSheetBehavior)) {
            throw new IllegalArgumentException("The view is not associated with BottomSheetBehavior");
        }
        return (BottomSheetBehavior) b2;
    }

    public void f(boolean z) {
        this.J = z;
    }

    private void h(boolean z) {
        if (this.y == null) {
            return;
        }
        ViewParent parent = this.y.get().getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (Build.VERSION.SDK_INT >= 16 && z) {
                if (this.ah != null) {
                    return;
                } else {
                    this.ah = new HashMap(childCount);
                }
            }
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = coordinatorLayout.getChildAt(i2);
                if (childAt != this.y.get()) {
                    if (z) {
                        if (Build.VERSION.SDK_INT >= 16) {
                            this.ah.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                        }
                        if (this.J) {
                            af.e(childAt, 4);
                        }
                    } else if (this.J && this.ah != null && this.ah.containsKey(childAt)) {
                        af.e(childAt, this.ah.get(childAt).intValue());
                    }
                }
            }
            if (z) {
                return;
            }
            this.ah = null;
        }
    }

    private void t() {
        V v;
        if (this.y == null || (v = this.y.get()) == null) {
            return;
        }
        af.f((View) v, 524288);
        af.f((View) v, 262144);
        af.f((View) v, 1048576);
        if (this.t && this.u != 5) {
            a((BottomSheetBehavior<V>) v, d.a.u, 5);
        }
        int i2 = this.u;
        if (i2 != 6) {
            switch (i2) {
                case 3:
                    a((BottomSheetBehavior<V>) v, d.a.t, this.I ? 4 : 6);
                    return;
                case 4:
                    a((BottomSheetBehavior<V>) v, d.a.s, this.I ? 3 : 6);
                    return;
                default:
                    return;
            }
        }
        a((BottomSheetBehavior<V>) v, d.a.t, 4);
        a((BottomSheetBehavior<V>) v, d.a.s, 3);
    }

    private void a(V v, d.a aVar, final int i2) {
        af.a(v, aVar, (CharSequence) null, new g() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.5
            @Override // androidx.core.n.a.g
            public boolean a(@ah View view, @ai g.a aVar2) {
                BottomSheetBehavior.this.d(i2);
                return true;
            }
        });
    }
}
