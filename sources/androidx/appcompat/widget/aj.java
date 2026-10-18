package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.annotation.ap;
import androidx.appcompat.a;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: /home/user/work/dex/classes.dex */
public class aj extends ViewGroup {
    public static final int e = 0;
    public static final int f = 1;
    public static final int g = 0;
    public static final int h = 1;
    public static final int i = 2;
    public static final int j = 4;
    private static final int q = 4;
    private static final int r = 0;
    private static final int s = 1;
    private static final int t = 2;
    private static final int u = 3;
    private static final String v = "androidx.appcompat.widget.LinearLayoutCompat";
    private int A;

    /* renamed from: a, reason: collision with root package name */
    private boolean f208a;
    private int b;
    private int c;
    private int d;
    private int k;
    private int l;
    private float m;
    private boolean n;
    private int[] o;
    private int[] p;
    private Drawable w;
    private int x;
    private int y;
    private int z;

    @Retention(RetentionPolicy.SOURCE)
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface a {
    }

    @Retention(RetentionPolicy.SOURCE)
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface c {
    }

    int a(View view) {
        return 0;
    }

    int a(View view, int i2) {
        return 0;
    }

    int b(View view) {
        return 0;
    }

    int d(int i2) {
        return 0;
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public aj(@androidx.annotation.ah Context context) {
        this(context, null);
    }

    public aj(@androidx.annotation.ah Context context, @androidx.annotation.ai AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public aj(@androidx.annotation.ah Context context, @androidx.annotation.ai AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f208a = true;
        this.b = -1;
        this.c = 0;
        this.k = com.google.android.material.b.a.b;
        ba a2 = ba.a(context, attributeSet, a.m.LinearLayoutCompat, i2, 0);
        androidx.core.n.af.a(this, context, a.m.LinearLayoutCompat, attributeSet, a2.a(), i2, 0);
        int a3 = a2.a(a.m.LinearLayoutCompat_android_orientation, -1);
        if (a3 >= 0) {
            setOrientation(a3);
        }
        int a4 = a2.a(a.m.LinearLayoutCompat_android_gravity, -1);
        if (a4 >= 0) {
            setGravity(a4);
        }
        boolean a5 = a2.a(a.m.LinearLayoutCompat_android_baselineAligned, true);
        if (!a5) {
            setBaselineAligned(a5);
        }
        this.m = a2.a(a.m.LinearLayoutCompat_android_weightSum, -1.0f);
        this.b = a2.a(a.m.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
        this.n = a2.a(a.m.LinearLayoutCompat_measureWithLargestChild, false);
        setDividerDrawable(a2.a(a.m.LinearLayoutCompat_divider));
        this.z = a2.a(a.m.LinearLayoutCompat_showDividers, 0);
        this.A = a2.e(a.m.LinearLayoutCompat_dividerPadding, 0);
        a2.f();
    }

    public void setShowDividers(int i2) {
        if (i2 != this.z) {
            requestLayout();
        }
        this.z = i2;
    }

    public int getShowDividers() {
        return this.z;
    }

    public Drawable getDividerDrawable() {
        return this.w;
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable == this.w) {
            return;
        }
        this.w = drawable;
        if (drawable != null) {
            this.x = drawable.getIntrinsicWidth();
            this.y = drawable.getIntrinsicHeight();
        } else {
            this.x = 0;
            this.y = 0;
        }
        setWillNotDraw(drawable == null);
        requestLayout();
    }

    public void setDividerPadding(int i2) {
        this.A = i2;
    }

    public int getDividerPadding() {
        return this.A;
    }

    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public int getDividerWidth() {
        return this.x;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.w == null) {
            return;
        }
        if (this.d == 1) {
            a(canvas);
        } else {
            b(canvas);
        }
    }

    void a(Canvas canvas) {
        int bottom;
        int virtualChildCount = getVirtualChildCount();
        for (int i2 = 0; i2 < virtualChildCount; i2++) {
            View b2 = b(i2);
            if (b2 != null && b2.getVisibility() != 8 && c(i2)) {
                a(canvas, (b2.getTop() - ((b) b2.getLayoutParams()).topMargin) - this.y);
            }
        }
        if (c(virtualChildCount)) {
            View b3 = b(virtualChildCount - 1);
            if (b3 == null) {
                bottom = (getHeight() - getPaddingBottom()) - this.y;
            } else {
                bottom = b3.getBottom() + ((b) b3.getLayoutParams()).bottomMargin;
            }
            a(canvas, bottom);
        }
    }

    void b(Canvas canvas) {
        int right;
        int left;
        int virtualChildCount = getVirtualChildCount();
        boolean a2 = bg.a(this);
        for (int i2 = 0; i2 < virtualChildCount; i2++) {
            View b2 = b(i2);
            if (b2 != null && b2.getVisibility() != 8 && c(i2)) {
                b bVar = (b) b2.getLayoutParams();
                if (a2) {
                    left = b2.getRight() + bVar.rightMargin;
                } else {
                    left = (b2.getLeft() - bVar.leftMargin) - this.x;
                }
                b(canvas, left);
            }
        }
        if (c(virtualChildCount)) {
            View b3 = b(virtualChildCount - 1);
            if (b3 != null) {
                b bVar2 = (b) b3.getLayoutParams();
                if (a2) {
                    right = (b3.getLeft() - bVar2.leftMargin) - this.x;
                } else {
                    right = b3.getRight() + bVar2.rightMargin;
                }
            } else if (a2) {
                right = getPaddingLeft();
            } else {
                right = (getWidth() - getPaddingRight()) - this.x;
            }
            b(canvas, right);
        }
    }

    void a(Canvas canvas, int i2) {
        this.w.setBounds(getPaddingLeft() + this.A, i2, (getWidth() - getPaddingRight()) - this.A, this.y + i2);
        this.w.draw(canvas);
    }

    void b(Canvas canvas, int i2) {
        this.w.setBounds(i2, getPaddingTop() + this.A, this.x + i2, (getHeight() - getPaddingBottom()) - this.A);
        this.w.draw(canvas);
    }

    public boolean k() {
        return this.f208a;
    }

    public void setBaselineAligned(boolean z) {
        this.f208a = z;
    }

    public boolean l() {
        return this.n;
    }

    public void setMeasureWithLargestChildEnabled(boolean z) {
        this.n = z;
    }

    @Override // android.view.View
    public int getBaseline() {
        int i2;
        if (this.b < 0) {
            return super.getBaseline();
        }
        if (getChildCount() <= this.b) {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        View childAt = getChildAt(this.b);
        int baseline = childAt.getBaseline();
        if (baseline == -1) {
            if (this.b == 0) {
                return -1;
            }
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
        }
        int i3 = this.c;
        if (this.d == 1 && (i2 = this.k & 112) != 48) {
            if (i2 == 16) {
                i3 += ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.l) / 2;
            } else if (i2 == 80) {
                i3 = ((getBottom() - getTop()) - getPaddingBottom()) - this.l;
            }
        }
        return i3 + ((b) childAt.getLayoutParams()).topMargin + baseline;
    }

    public int getBaselineAlignedChildIndex() {
        return this.b;
    }

    public void setBaselineAlignedChildIndex(int i2) {
        if (i2 < 0 || i2 >= getChildCount()) {
            throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
        }
        this.b = i2;
    }

    View b(int i2) {
        return getChildAt(i2);
    }

    int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.m;
    }

    public void setWeightSum(float f2) {
        this.m = Math.max(0.0f, f2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        if (this.d == 1) {
            a(i2, i3);
        } else {
            b(i2, i3);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @androidx.annotation.ap(a = {ap.a.LIBRARY})
    public boolean c(int i2) {
        if (i2 == 0) {
            return (this.z & 1) != 0;
        }
        if (i2 == getChildCount()) {
            return (this.z & 4) != 0;
        }
        if ((this.z & 2) == 0) {
            return false;
        }
        for (int i3 = i2 - 1; i3 >= 0; i3--) {
            if (getChildAt(i3).getVisibility() != 8) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:144:0x0337  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void a(int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        float f2;
        int i9;
        int i10;
        boolean z;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        View view;
        int max;
        boolean z2;
        int max2;
        this.l = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int i20 = this.b;
        boolean z3 = this.n;
        int i21 = 0;
        int i22 = 0;
        int i23 = 0;
        int i24 = 0;
        int i25 = 0;
        int i26 = 0;
        boolean z4 = false;
        boolean z5 = false;
        float f3 = 0.0f;
        boolean z6 = true;
        while (true) {
            int i27 = 8;
            int i28 = i24;
            if (i26 < virtualChildCount) {
                View b2 = b(i26);
                if (b2 == null) {
                    this.l += d(i26);
                    i15 = virtualChildCount;
                    i16 = mode2;
                    i24 = i28;
                } else {
                    int i29 = i21;
                    if (b2.getVisibility() == 8) {
                        i26 += a(b2, i26);
                        i15 = virtualChildCount;
                        i16 = mode2;
                        i24 = i28;
                        i21 = i29;
                    } else {
                        if (c(i26)) {
                            this.l += this.y;
                        }
                        b bVar = (b) b2.getLayoutParams();
                        float f4 = f3 + bVar.g;
                        if (mode2 == 1073741824 && bVar.height == 0 && bVar.g > 0.0f) {
                            int i30 = this.l;
                            this.l = Math.max(i30, bVar.topMargin + i30 + bVar.bottomMargin);
                            max = i23;
                            view = b2;
                            i18 = i25;
                            i15 = virtualChildCount;
                            i16 = mode2;
                            z4 = true;
                            i17 = i28;
                            i13 = i29;
                            i14 = i22;
                            i19 = i26;
                        } else {
                            int i31 = i22;
                            if (bVar.height != 0 || bVar.g <= 0.0f) {
                                i12 = Integer.MIN_VALUE;
                            } else {
                                bVar.height = -2;
                                i12 = 0;
                            }
                            i13 = i29;
                            int i32 = i12;
                            i14 = i31;
                            int i33 = i23;
                            i15 = virtualChildCount;
                            i16 = mode2;
                            i17 = i28;
                            i18 = i25;
                            i19 = i26;
                            a(b2, i26, i2, 0, i3, f4 == 0.0f ? this.l : 0);
                            if (i32 != Integer.MIN_VALUE) {
                                bVar.height = i32;
                            }
                            int measuredHeight = b2.getMeasuredHeight();
                            int i34 = this.l;
                            view = b2;
                            this.l = Math.max(i34, i34 + measuredHeight + bVar.topMargin + bVar.bottomMargin + b(view));
                            max = z3 ? Math.max(measuredHeight, i33) : i33;
                        }
                        if (i20 >= 0 && i20 == i19 + 1) {
                            this.c = this.l;
                        }
                        if (i19 < i20 && bVar.g > 0.0f) {
                            throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                        }
                        if (mode == 1073741824 || bVar.width != -1) {
                            z2 = false;
                        } else {
                            z2 = true;
                            z5 = true;
                        }
                        int i35 = bVar.leftMargin + bVar.rightMargin;
                        int measuredWidth = view.getMeasuredWidth() + i35;
                        int max3 = Math.max(i14, measuredWidth);
                        int combineMeasuredStates = View.combineMeasuredStates(i13, view.getMeasuredState());
                        boolean z7 = z6 && bVar.width == -1;
                        if (bVar.g > 0.0f) {
                            if (!z2) {
                                i35 = measuredWidth;
                            }
                            i17 = Math.max(i17, i35);
                            max2 = i18;
                        } else {
                            if (!z2) {
                                i35 = measuredWidth;
                            }
                            max2 = Math.max(i18, i35);
                        }
                        int a2 = a(view, i19) + i19;
                        i23 = max;
                        z6 = z7;
                        i24 = i17;
                        f3 = f4;
                        i25 = max2;
                        i21 = combineMeasuredStates;
                        i26 = a2;
                        i22 = max3;
                    }
                }
                i26++;
                mode2 = i16;
                virtualChildCount = i15;
            } else {
                int i36 = i21;
                int i37 = i23;
                int i38 = i25;
                int i39 = virtualChildCount;
                int i40 = mode2;
                int i41 = i22;
                if (this.l > 0) {
                    i4 = i39;
                    if (c(i4)) {
                        this.l += this.y;
                    }
                } else {
                    i4 = i39;
                }
                if (z3) {
                    i5 = i40;
                    if (i5 == Integer.MIN_VALUE || i5 == 0) {
                        this.l = 0;
                        int i42 = 0;
                        while (i42 < i4) {
                            View b3 = b(i42);
                            if (b3 == null) {
                                this.l += d(i42);
                            } else if (b3.getVisibility() == i27) {
                                i42 += a(b3, i42);
                            } else {
                                b bVar2 = (b) b3.getLayoutParams();
                                int i43 = this.l;
                                this.l = Math.max(i43, i43 + i37 + bVar2.topMargin + bVar2.bottomMargin + b(b3));
                            }
                            i42++;
                            i27 = 8;
                        }
                    }
                } else {
                    i5 = i40;
                }
                this.l += getPaddingTop() + getPaddingBottom();
                int resolveSizeAndState = View.resolveSizeAndState(Math.max(this.l, getSuggestedMinimumHeight()), i3, 0);
                int i44 = (16777215 & resolveSizeAndState) - this.l;
                if (z4 || (i44 != 0 && f3 > 0.0f)) {
                    if (this.m > 0.0f) {
                        f3 = this.m;
                    }
                    this.l = 0;
                    float f5 = f3;
                    int i45 = 0;
                    int i46 = i38;
                    i6 = i36;
                    while (i45 < i4) {
                        View b4 = b(i45);
                        if (b4.getVisibility() == 8) {
                            i9 = i5;
                            f2 = f5;
                        } else {
                            b bVar3 = (b) b4.getLayoutParams();
                            float f6 = bVar3.g;
                            if (f6 > 0.0f) {
                                int i47 = (int) ((i44 * f6) / f5);
                                float f7 = f5 - f6;
                                int i48 = i44 - i47;
                                int childMeasureSpec = getChildMeasureSpec(i2, getPaddingLeft() + getPaddingRight() + bVar3.leftMargin + bVar3.rightMargin, bVar3.width);
                                if (bVar3.height == 0) {
                                    i11 = androidx.d.c.b.a.b.b;
                                    if (i5 == 1073741824) {
                                        if (i47 <= 0) {
                                            i47 = 0;
                                        }
                                        b4.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(i47, androidx.d.c.b.a.b.b));
                                        i6 = View.combineMeasuredStates(i6, b4.getMeasuredState() & androidx.core.n.i.u);
                                        i44 = i48;
                                        f2 = f7;
                                    }
                                } else {
                                    i11 = androidx.d.c.b.a.b.b;
                                }
                                int measuredHeight2 = b4.getMeasuredHeight() + i47;
                                if (measuredHeight2 < 0) {
                                    measuredHeight2 = 0;
                                }
                                b4.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(measuredHeight2, i11));
                                i6 = View.combineMeasuredStates(i6, b4.getMeasuredState() & androidx.core.n.i.u);
                                i44 = i48;
                                f2 = f7;
                            } else {
                                f2 = f5;
                            }
                            int i49 = i6;
                            int i50 = bVar3.leftMargin + bVar3.rightMargin;
                            int measuredWidth2 = b4.getMeasuredWidth() + i50;
                            i41 = Math.max(i41, measuredWidth2);
                            if (mode != 1073741824) {
                                i9 = i5;
                                i10 = -1;
                                if (bVar3.width == -1) {
                                    z = true;
                                    if (!z) {
                                        i50 = measuredWidth2;
                                    }
                                    int max4 = Math.max(i46, i50);
                                    boolean z8 = !z6 && bVar3.width == i10;
                                    int i51 = this.l;
                                    this.l = Math.max(i51, i51 + b4.getMeasuredHeight() + bVar3.topMargin + bVar3.bottomMargin + b(b4));
                                    z6 = z8;
                                    i46 = max4;
                                    i6 = i49;
                                }
                            } else {
                                i9 = i5;
                                i10 = -1;
                            }
                            z = false;
                            if (!z) {
                            }
                            int max42 = Math.max(i46, i50);
                            if (z6) {
                            }
                            int i512 = this.l;
                            this.l = Math.max(i512, i512 + b4.getMeasuredHeight() + bVar3.topMargin + bVar3.bottomMargin + b(b4));
                            z6 = z8;
                            i46 = max42;
                            i6 = i49;
                        }
                        i45++;
                        f5 = f2;
                        i5 = i9;
                    }
                    i7 = i2;
                    this.l += getPaddingTop() + getPaddingBottom();
                    i8 = i46;
                } else {
                    i8 = Math.max(i38, i28);
                    if (z3 && i5 != 1073741824) {
                        for (int i52 = 0; i52 < i4; i52++) {
                            View b5 = b(i52);
                            if (b5 != null && b5.getVisibility() != 8 && ((b) b5.getLayoutParams()).g > 0.0f) {
                                b5.measure(View.MeasureSpec.makeMeasureSpec(b5.getMeasuredWidth(), androidx.d.c.b.a.b.b), View.MeasureSpec.makeMeasureSpec(i37, androidx.d.c.b.a.b.b));
                            }
                        }
                    }
                    i6 = i36;
                    i7 = i2;
                }
                if (z6 || mode == 1073741824) {
                    i8 = i41;
                }
                setMeasuredDimension(View.resolveSizeAndState(Math.max(i8 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i7, i6), resolveSizeAndState);
                if (z5) {
                    c(i4, i3);
                    return;
                }
                return;
            }
        }
    }

    private void c(int i2, int i3) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), androidx.d.c.b.a.b.b);
        for (int i4 = 0; i4 < i2; i4++) {
            View b2 = b(i4);
            if (b2.getVisibility() != 8) {
                b bVar = (b) b2.getLayoutParams();
                if (bVar.width == -1) {
                    int i5 = bVar.height;
                    bVar.height = b2.getMeasuredHeight();
                    measureChildWithMargins(b2, makeMeasureSpec, 0, i3, 0);
                    bVar.height = i5;
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01dc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void b(int i2, int i3) {
        int[] iArr;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        float f2;
        int i10;
        boolean z;
        int baseline;
        int i11;
        int i12;
        char c2;
        int i13;
        int i14;
        boolean z2;
        boolean z3;
        View view;
        int i15;
        boolean z4;
        int measuredHeight;
        int baseline2;
        this.l = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        if (this.o == null || this.p == null) {
            this.o = new int[4];
            this.p = new int[4];
        }
        int[] iArr2 = this.o;
        int[] iArr3 = this.p;
        iArr2[3] = -1;
        iArr2[2] = -1;
        iArr2[1] = -1;
        iArr2[0] = -1;
        iArr3[3] = -1;
        iArr3[2] = -1;
        iArr3[1] = -1;
        iArr3[0] = -1;
        boolean z5 = this.f208a;
        boolean z6 = this.n;
        int i16 = androidx.d.c.b.a.b.b;
        boolean z7 = mode == 1073741824;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        boolean z8 = false;
        int i20 = 0;
        int i21 = 0;
        int i22 = 0;
        boolean z9 = false;
        boolean z10 = true;
        float f3 = 0.0f;
        while (true) {
            iArr = iArr3;
            if (i17 >= virtualChildCount) {
                break;
            }
            View b2 = b(i17);
            if (b2 == null) {
                this.l += d(i17);
            } else if (b2.getVisibility() == 8) {
                i17 += a(b2, i17);
            } else {
                if (c(i17)) {
                    this.l += this.x;
                }
                b bVar = (b) b2.getLayoutParams();
                float f4 = f3 + bVar.g;
                if (mode == i16 && bVar.width == 0 && bVar.g > 0.0f) {
                    if (z7) {
                        this.l += bVar.leftMargin + bVar.rightMargin;
                    } else {
                        int i23 = this.l;
                        this.l = Math.max(i23, bVar.leftMargin + i23 + bVar.rightMargin);
                    }
                    if (z5) {
                        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                        b2.measure(makeMeasureSpec, makeMeasureSpec);
                        i14 = i17;
                        z2 = z6;
                        z3 = z5;
                        view = b2;
                    } else {
                        i14 = i17;
                        z2 = z6;
                        z3 = z5;
                        view = b2;
                        z8 = true;
                        i15 = androidx.d.c.b.a.b.b;
                        if (mode2 == i15 && bVar.height == -1) {
                            z4 = true;
                            z9 = true;
                        } else {
                            z4 = false;
                        }
                        int i24 = bVar.topMargin + bVar.bottomMargin;
                        measuredHeight = view.getMeasuredHeight() + i24;
                        int combineMeasuredStates = View.combineMeasuredStates(i22, view.getMeasuredState());
                        if (z3 && (baseline2 = view.getBaseline()) != -1) {
                            int i25 = ((((bVar.h >= 0 ? this.k : bVar.h) & 112) >> 4) & (-2)) >> 1;
                            iArr2[i25] = Math.max(iArr2[i25], baseline2);
                            iArr[i25] = Math.max(iArr[i25], measuredHeight - baseline2);
                        }
                        int max = Math.max(i19, measuredHeight);
                        boolean z11 = !z10 && bVar.height == -1;
                        if (bVar.g <= 0.0f) {
                            if (!z4) {
                                i24 = measuredHeight;
                            }
                            i21 = Math.max(i21, i24);
                        } else {
                            int i26 = i21;
                            if (z4) {
                                measuredHeight = i24;
                            }
                            i20 = Math.max(i20, measuredHeight);
                            i21 = i26;
                        }
                        int i27 = i14;
                        i19 = max;
                        i22 = combineMeasuredStates;
                        z10 = z11;
                        i17 = a(view, i27) + i27;
                        f3 = f4;
                        i17++;
                        iArr3 = iArr;
                        z6 = z2;
                        z5 = z3;
                        i16 = androidx.d.c.b.a.b.b;
                    }
                } else {
                    if (bVar.width != 0 || bVar.g <= 0.0f) {
                        c2 = 65534;
                        i13 = Integer.MIN_VALUE;
                    } else {
                        c2 = 65534;
                        bVar.width = -2;
                        i13 = 0;
                    }
                    i14 = i17;
                    int i28 = i13;
                    z2 = z6;
                    z3 = z5;
                    a(b2, i14, i2, f4 == 0.0f ? this.l : 0, i3, 0);
                    if (i28 != Integer.MIN_VALUE) {
                        bVar.width = i28;
                    }
                    int measuredWidth = b2.getMeasuredWidth();
                    if (z7) {
                        view = b2;
                        this.l += bVar.leftMargin + measuredWidth + bVar.rightMargin + b(view);
                    } else {
                        view = b2;
                        int i29 = this.l;
                        this.l = Math.max(i29, i29 + measuredWidth + bVar.leftMargin + bVar.rightMargin + b(view));
                    }
                    if (z2) {
                        i18 = Math.max(measuredWidth, i18);
                    }
                }
                i15 = androidx.d.c.b.a.b.b;
                if (mode2 == i15) {
                }
                z4 = false;
                int i242 = bVar.topMargin + bVar.bottomMargin;
                measuredHeight = view.getMeasuredHeight() + i242;
                int combineMeasuredStates2 = View.combineMeasuredStates(i22, view.getMeasuredState());
                if (z3) {
                    int i252 = ((((bVar.h >= 0 ? this.k : bVar.h) & 112) >> 4) & (-2)) >> 1;
                    iArr2[i252] = Math.max(iArr2[i252], baseline2);
                    iArr[i252] = Math.max(iArr[i252], measuredHeight - baseline2);
                }
                int max2 = Math.max(i19, measuredHeight);
                if (z10) {
                }
                if (bVar.g <= 0.0f) {
                }
                int i272 = i14;
                i19 = max2;
                i22 = combineMeasuredStates2;
                z10 = z11;
                i17 = a(view, i272) + i272;
                f3 = f4;
                i17++;
                iArr3 = iArr;
                z6 = z2;
                z5 = z3;
                i16 = androidx.d.c.b.a.b.b;
            }
            z2 = z6;
            z3 = z5;
            i17++;
            iArr3 = iArr;
            z6 = z2;
            z5 = z3;
            i16 = androidx.d.c.b.a.b.b;
        }
        boolean z12 = z6;
        boolean z13 = z5;
        int i30 = i19;
        int i31 = i20;
        int i32 = i21;
        int i33 = i22;
        if (this.l > 0 && c(virtualChildCount)) {
            this.l += this.x;
        }
        if (iArr2[1] == -1 && iArr2[0] == -1 && iArr2[2] == -1 && iArr2[3] == -1) {
            i4 = i33;
        } else {
            i4 = i33;
            i30 = Math.max(i30, Math.max(iArr2[3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))) + Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))));
        }
        if (z12 && (mode == Integer.MIN_VALUE || mode == 0)) {
            this.l = 0;
            int i34 = 0;
            while (i34 < virtualChildCount) {
                View b3 = b(i34);
                if (b3 == null) {
                    this.l += d(i34);
                } else if (b3.getVisibility() == 8) {
                    i34 += a(b3, i34);
                } else {
                    b bVar2 = (b) b3.getLayoutParams();
                    if (z7) {
                        this.l += bVar2.leftMargin + i18 + bVar2.rightMargin + b(b3);
                    } else {
                        int i35 = this.l;
                        i12 = i30;
                        this.l = Math.max(i35, i35 + i18 + bVar2.leftMargin + bVar2.rightMargin + b(b3));
                        i34++;
                        i30 = i12;
                    }
                }
                i12 = i30;
                i34++;
                i30 = i12;
            }
        }
        int i36 = i30;
        this.l += getPaddingLeft() + getPaddingRight();
        int resolveSizeAndState = View.resolveSizeAndState(Math.max(this.l, getSuggestedMinimumWidth()), i2, 0);
        int i37 = (16777215 & resolveSizeAndState) - this.l;
        if (z8 || (i37 != 0 && f3 > 0.0f)) {
            if (this.m > 0.0f) {
                f3 = this.m;
            }
            iArr2[3] = -1;
            iArr2[2] = -1;
            iArr2[1] = -1;
            iArr2[0] = -1;
            iArr[3] = -1;
            iArr[2] = -1;
            iArr[1] = -1;
            iArr[0] = -1;
            this.l = 0;
            int i38 = i31;
            int i39 = -1;
            int i40 = i4;
            float f5 = f3;
            int i41 = 0;
            while (i41 < virtualChildCount) {
                View b4 = b(i41);
                if (b4 == null || b4.getVisibility() == 8) {
                    i8 = i37;
                    i9 = virtualChildCount;
                } else {
                    b bVar3 = (b) b4.getLayoutParams();
                    float f6 = bVar3.g;
                    if (f6 > 0.0f) {
                        int i42 = (int) ((i37 * f6) / f5);
                        float f7 = f5 - f6;
                        int i43 = i37 - i42;
                        i9 = virtualChildCount;
                        int childMeasureSpec = getChildMeasureSpec(i3, getPaddingTop() + getPaddingBottom() + bVar3.topMargin + bVar3.bottomMargin, bVar3.height);
                        if (bVar3.width == 0) {
                            i11 = androidx.d.c.b.a.b.b;
                            if (mode == 1073741824) {
                                if (i42 <= 0) {
                                    i42 = 0;
                                }
                                b4.measure(View.MeasureSpec.makeMeasureSpec(i42, androidx.d.c.b.a.b.b), childMeasureSpec);
                                i40 = View.combineMeasuredStates(i40, b4.getMeasuredState() & androidx.core.n.af.s);
                                f5 = f7;
                                i8 = i43;
                            }
                        } else {
                            i11 = androidx.d.c.b.a.b.b;
                        }
                        int measuredWidth2 = b4.getMeasuredWidth() + i42;
                        if (measuredWidth2 < 0) {
                            measuredWidth2 = 0;
                        }
                        b4.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth2, i11), childMeasureSpec);
                        i40 = View.combineMeasuredStates(i40, b4.getMeasuredState() & androidx.core.n.af.s);
                        f5 = f7;
                        i8 = i43;
                    } else {
                        i8 = i37;
                        i9 = virtualChildCount;
                    }
                    if (z7) {
                        this.l += b4.getMeasuredWidth() + bVar3.leftMargin + bVar3.rightMargin + b(b4);
                        f2 = f5;
                    } else {
                        int i44 = this.l;
                        f2 = f5;
                        this.l = Math.max(i44, b4.getMeasuredWidth() + i44 + bVar3.leftMargin + bVar3.rightMargin + b(b4));
                    }
                    boolean z14 = mode2 != 1073741824 && bVar3.height == -1;
                    int i45 = bVar3.topMargin + bVar3.bottomMargin;
                    int measuredHeight2 = b4.getMeasuredHeight() + i45;
                    i39 = Math.max(i39, measuredHeight2);
                    if (!z14) {
                        i45 = measuredHeight2;
                    }
                    int max3 = Math.max(i38, i45);
                    if (z10) {
                        i10 = -1;
                        if (bVar3.height == -1) {
                            z = true;
                            if (!z13 && (baseline = b4.getBaseline()) != i10) {
                                int i46 = ((((bVar3.h < 0 ? this.k : bVar3.h) & 112) >> 4) & (-2)) >> 1;
                                iArr2[i46] = Math.max(iArr2[i46], baseline);
                                iArr[i46] = Math.max(iArr[i46], measuredHeight2 - baseline);
                            }
                            i38 = max3;
                            z10 = z;
                            f5 = f2;
                        }
                    } else {
                        i10 = -1;
                    }
                    z = false;
                    if (!z13) {
                    }
                    i38 = max3;
                    z10 = z;
                    f5 = f2;
                }
                i41++;
                i37 = i8;
                virtualChildCount = i9;
            }
            i5 = virtualChildCount;
            i6 = i3;
            this.l += getPaddingLeft() + getPaddingRight();
            i36 = (iArr2[1] == -1 && iArr2[0] == -1 && iArr2[2] == -1 && iArr2[3] == -1) ? i39 : Math.max(i39, Math.max(iArr2[3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))) + Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))));
            i4 = i40;
            i7 = i38;
        } else {
            i7 = Math.max(i31, i32);
            if (z12 && mode != 1073741824) {
                for (int i47 = 0; i47 < virtualChildCount; i47++) {
                    View b5 = b(i47);
                    if (b5 != null && b5.getVisibility() != 8 && ((b) b5.getLayoutParams()).g > 0.0f) {
                        b5.measure(View.MeasureSpec.makeMeasureSpec(i18, androidx.d.c.b.a.b.b), View.MeasureSpec.makeMeasureSpec(b5.getMeasuredHeight(), androidx.d.c.b.a.b.b));
                    }
                }
            }
            i5 = virtualChildCount;
            i6 = i3;
        }
        if (!z10 && mode2 != 1073741824) {
            i36 = i7;
        }
        setMeasuredDimension(resolveSizeAndState | (i4 & androidx.core.n.af.s), View.resolveSizeAndState(Math.max(i36 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i6, i4 << 16));
        if (z9) {
            d(i5, i2);
        }
    }

    private void d(int i2, int i3) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), androidx.d.c.b.a.b.b);
        for (int i4 = 0; i4 < i2; i4++) {
            View b2 = b(i4);
            if (b2.getVisibility() != 8) {
                b bVar = (b) b2.getLayoutParams();
                if (bVar.height == -1) {
                    int i5 = bVar.width;
                    bVar.width = b2.getMeasuredWidth();
                    measureChildWithMargins(b2, i3, 0, makeMeasureSpec, 0);
                    bVar.width = i5;
                }
            }
        }
    }

    void a(View view, int i2, int i3, int i4, int i5, int i6) {
        measureChildWithMargins(view, i3, i4, i5, i6);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        if (this.d == 1) {
            a(i2, i3, i4, i5);
        } else {
            b(i2, i3, i4, i5);
        }
    }

    void a(int i2, int i3, int i4, int i5) {
        int paddingTop;
        int i6;
        int i7;
        int paddingLeft = getPaddingLeft();
        int i8 = i4 - i2;
        int paddingRight = i8 - getPaddingRight();
        int paddingRight2 = (i8 - paddingLeft) - getPaddingRight();
        int virtualChildCount = getVirtualChildCount();
        int i9 = this.k & 112;
        int i10 = this.k & androidx.core.n.h.d;
        if (i9 == 16) {
            paddingTop = (((i5 - i3) - this.l) / 2) + getPaddingTop();
        } else if (i9 == 80) {
            paddingTop = ((getPaddingTop() + i5) - i3) - this.l;
        } else {
            paddingTop = getPaddingTop();
        }
        int i11 = 0;
        while (i11 < virtualChildCount) {
            View b2 = b(i11);
            if (b2 == null) {
                paddingTop += d(i11);
            } else if (b2.getVisibility() != 8) {
                int measuredWidth = b2.getMeasuredWidth();
                int measuredHeight = b2.getMeasuredHeight();
                b bVar = (b) b2.getLayoutParams();
                int i12 = bVar.h;
                if (i12 < 0) {
                    i12 = i10;
                }
                int a2 = androidx.core.n.h.a(i12, androidx.core.n.af.p(this)) & 7;
                if (a2 == 1) {
                    i6 = ((((paddingRight2 - measuredWidth) / 2) + paddingLeft) + bVar.leftMargin) - bVar.rightMargin;
                } else if (a2 == 5) {
                    i6 = (paddingRight - measuredWidth) - bVar.rightMargin;
                } else {
                    i6 = bVar.leftMargin + paddingLeft;
                }
                int i13 = i6;
                if (c(i11)) {
                    paddingTop += this.y;
                }
                int i14 = paddingTop + bVar.topMargin;
                a(b2, i13, i14 + a(b2), measuredWidth, measuredHeight);
                int b3 = i14 + measuredHeight + bVar.bottomMargin + b(b2);
                i11 += a(b2, i11);
                paddingTop = b3;
                i7 = 1;
                i11 += i7;
            }
            i7 = 1;
            i11 += i7;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void b(int i2, int i3, int i4, int i5) {
        int paddingLeft;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        boolean z;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        boolean a2 = bg.a(this);
        int paddingTop = getPaddingTop();
        int i16 = i5 - i3;
        int paddingBottom = i16 - getPaddingBottom();
        int paddingBottom2 = (i16 - paddingTop) - getPaddingBottom();
        int virtualChildCount = getVirtualChildCount();
        int i17 = this.k & androidx.core.n.h.d;
        int i18 = this.k & 112;
        boolean z2 = this.f208a;
        int[] iArr = this.o;
        int[] iArr2 = this.p;
        int a3 = androidx.core.n.h.a(i17, androidx.core.n.af.p(this));
        boolean z3 = true;
        if (a3 == 1) {
            paddingLeft = (((i4 - i2) - this.l) / 2) + getPaddingLeft();
        } else if (a3 == 5) {
            paddingLeft = ((getPaddingLeft() + i4) - i2) - this.l;
        } else {
            paddingLeft = getPaddingLeft();
        }
        if (a2) {
            i6 = virtualChildCount - 1;
            i7 = -1;
        } else {
            i6 = 0;
            i7 = 1;
        }
        int i19 = 0;
        while (i19 < virtualChildCount) {
            int i20 = i6 + (i7 * i19);
            View b2 = b(i20);
            if (b2 == null) {
                paddingLeft += d(i20);
                z = z3;
                i8 = paddingTop;
                i9 = virtualChildCount;
                i10 = i18;
            } else if (b2.getVisibility() != 8) {
                int measuredWidth = b2.getMeasuredWidth();
                int measuredHeight = b2.getMeasuredHeight();
                b bVar = (b) b2.getLayoutParams();
                if (z2) {
                    i11 = i19;
                    i9 = virtualChildCount;
                    if (bVar.height != -1) {
                        i12 = b2.getBaseline();
                        i13 = bVar.h;
                        if (i13 < 0) {
                            i13 = i18;
                        }
                        i14 = i13 & 112;
                        i10 = i18;
                        if (i14 != 16) {
                            z = true;
                            i15 = ((((paddingBottom2 - measuredHeight) / 2) + paddingTop) + bVar.topMargin) - bVar.bottomMargin;
                        } else if (i14 != 48) {
                            if (i14 != 80) {
                                i15 = paddingTop;
                            } else {
                                int i21 = (paddingBottom - measuredHeight) - bVar.bottomMargin;
                                if (i12 != -1) {
                                    i21 -= iArr2[2] - (b2.getMeasuredHeight() - i12);
                                }
                                i15 = i21;
                            }
                            z = true;
                        } else {
                            int i22 = bVar.topMargin + paddingTop;
                            if (i12 != -1) {
                                z = true;
                                i22 += iArr[1] - i12;
                            } else {
                                z = true;
                            }
                            i15 = i22;
                        }
                        if (c(i20)) {
                            paddingLeft += this.x;
                        }
                        int i23 = bVar.leftMargin + paddingLeft;
                        i8 = paddingTop;
                        a(b2, i23 + a(b2), i15, measuredWidth, measuredHeight);
                        int b3 = i23 + measuredWidth + bVar.rightMargin + b(b2);
                        i19 = i11 + a(b2, i20);
                        paddingLeft = b3;
                        i19++;
                        z3 = z;
                        virtualChildCount = i9;
                        i18 = i10;
                        paddingTop = i8;
                    }
                } else {
                    i11 = i19;
                    i9 = virtualChildCount;
                }
                i12 = -1;
                i13 = bVar.h;
                if (i13 < 0) {
                }
                i14 = i13 & 112;
                i10 = i18;
                if (i14 != 16) {
                }
                if (c(i20)) {
                }
                int i232 = bVar.leftMargin + paddingLeft;
                i8 = paddingTop;
                a(b2, i232 + a(b2), i15, measuredWidth, measuredHeight);
                int b32 = i232 + measuredWidth + bVar.rightMargin + b(b2);
                i19 = i11 + a(b2, i20);
                paddingLeft = b32;
                i19++;
                z3 = z;
                virtualChildCount = i9;
                i18 = i10;
                paddingTop = i8;
            } else {
                i8 = paddingTop;
                i9 = virtualChildCount;
                i10 = i18;
                z = true;
            }
            i19++;
            z3 = z;
            virtualChildCount = i9;
            i18 = i10;
            paddingTop = i8;
        }
    }

    private void a(View view, int i2, int i3, int i4, int i5) {
        view.layout(i2, i3, i4 + i2, i5 + i3);
    }

    public void setOrientation(int i2) {
        if (this.d != i2) {
            this.d = i2;
            requestLayout();
        }
    }

    public int getOrientation() {
        return this.d;
    }

    public void setGravity(int i2) {
        if (this.k != i2) {
            if ((8388615 & i2) == 0) {
                i2 |= androidx.core.n.h.b;
            }
            if ((i2 & 112) == 0) {
                i2 |= 48;
            }
            this.k = i2;
            requestLayout();
        }
    }

    public int getGravity() {
        return this.k;
    }

    public void setHorizontalGravity(int i2) {
        int i3 = i2 & androidx.core.n.h.d;
        if ((8388615 & this.k) != i3) {
            this.k = i3 | (this.k & (-8388616));
            requestLayout();
        }
    }

    public void setVerticalGravity(int i2) {
        int i3 = i2 & 112;
        if ((this.k & 112) != i3) {
            this.k = i3 | (this.k & (-113));
            requestLayout();
        }
    }

    @Override // android.view.ViewGroup
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public b generateLayoutParams(AttributeSet attributeSet) {
        return new b(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public b generateDefaultLayoutParams() {
        if (this.d == 0) {
            return new b(-2, -2);
        }
        if (this.d == 1) {
            return new b(-1, -2);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public b generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new b(layoutParams);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof b;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(v);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(v);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class b extends ViewGroup.MarginLayoutParams {
        public float g;
        public int h;

        public b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.h = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.m.LinearLayoutCompat_Layout);
            this.g = obtainStyledAttributes.getFloat(a.m.LinearLayoutCompat_Layout_android_layout_weight, 0.0f);
            this.h = obtainStyledAttributes.getInt(a.m.LinearLayoutCompat_Layout_android_layout_gravity, -1);
            obtainStyledAttributes.recycle();
        }

        public b(int i, int i2) {
            super(i, i2);
            this.h = -1;
            this.g = 0.0f;
        }

        public b(int i, int i2, float f) {
            super(i, i2);
            this.h = -1;
            this.g = f;
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.h = -1;
        }

        public b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.h = -1;
        }

        public b(b bVar) {
            super((ViewGroup.MarginLayoutParams) bVar);
            this.h = -1;
            this.g = bVar.g;
            this.h = bVar.h;
        }
    }
}
