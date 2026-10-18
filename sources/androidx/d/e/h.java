package androidx.d.e;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ViewGroup;
import androidx.d.e.d;
import androidx.d.e.m;

/* loaded from: /home/user/work/dex/classes.dex */
public class h extends ViewGroup {

    /* renamed from: a, reason: collision with root package name */
    public static final String f731a = "Constraints";
    g b;

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }

    public h(Context context) {
        super(context);
        super.setVisibility(8);
    }

    public h(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        b(attributeSet);
        super.setVisibility(8);
    }

    public h(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        b(attributeSet);
        super.setVisibility(8);
    }

    @Override // android.view.ViewGroup
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public a generateLayoutParams(AttributeSet attributeSet) {
        return new a(getContext(), attributeSet);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a extends d.a {
        public float aH;
        public boolean aI;
        public float aJ;
        public float aK;
        public float aL;
        public float aM;
        public float aN;
        public float aO;
        public float aP;
        public float aQ;
        public float aR;
        public float aS;
        public float aT;

        public a(int i, int i2) {
            super(i, i2);
            this.aH = 1.0f;
            this.aI = false;
            this.aJ = 0.0f;
            this.aK = 0.0f;
            this.aL = 0.0f;
            this.aM = 0.0f;
            this.aN = 1.0f;
            this.aO = 1.0f;
            this.aP = 0.0f;
            this.aQ = 0.0f;
            this.aR = 0.0f;
            this.aS = 0.0f;
            this.aT = 0.0f;
        }

        public a(a aVar) {
            super((d.a) aVar);
            this.aH = 1.0f;
            this.aI = false;
            this.aJ = 0.0f;
            this.aK = 0.0f;
            this.aL = 0.0f;
            this.aM = 0.0f;
            this.aN = 1.0f;
            this.aO = 1.0f;
            this.aP = 0.0f;
            this.aQ = 0.0f;
            this.aR = 0.0f;
            this.aS = 0.0f;
            this.aT = 0.0f;
        }

        public a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.aH = 1.0f;
            this.aI = false;
            this.aJ = 0.0f;
            this.aK = 0.0f;
            this.aL = 0.0f;
            this.aM = 0.0f;
            this.aN = 1.0f;
            this.aO = 1.0f;
            this.aP = 0.0f;
            this.aQ = 0.0f;
            this.aR = 0.0f;
            this.aS = 0.0f;
            this.aT = 0.0f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, m.C0052m.ConstraintSet);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == m.C0052m.ConstraintSet_android_alpha) {
                    this.aH = obtainStyledAttributes.getFloat(index, this.aH);
                } else if (index == m.C0052m.ConstraintSet_android_elevation) {
                    if (Build.VERSION.SDK_INT >= 21) {
                        this.aJ = obtainStyledAttributes.getFloat(index, this.aJ);
                        this.aI = true;
                    }
                } else if (index == m.C0052m.ConstraintSet_android_rotationX) {
                    this.aL = obtainStyledAttributes.getFloat(index, this.aL);
                } else if (index == m.C0052m.ConstraintSet_android_rotationY) {
                    this.aM = obtainStyledAttributes.getFloat(index, this.aM);
                } else if (index == m.C0052m.ConstraintSet_android_rotation) {
                    this.aK = obtainStyledAttributes.getFloat(index, this.aK);
                } else if (index == m.C0052m.ConstraintSet_android_scaleX) {
                    this.aN = obtainStyledAttributes.getFloat(index, this.aN);
                } else if (index == m.C0052m.ConstraintSet_android_scaleY) {
                    this.aO = obtainStyledAttributes.getFloat(index, this.aO);
                } else if (index == m.C0052m.ConstraintSet_android_transformPivotX) {
                    this.aP = obtainStyledAttributes.getFloat(index, this.aP);
                } else if (index == m.C0052m.ConstraintSet_android_transformPivotY) {
                    this.aQ = obtainStyledAttributes.getFloat(index, this.aQ);
                } else if (index == m.C0052m.ConstraintSet_android_translationX) {
                    this.aR = obtainStyledAttributes.getFloat(index, this.aR);
                } else if (index == m.C0052m.ConstraintSet_android_translationY) {
                    this.aS = obtainStyledAttributes.getFloat(index, this.aS);
                } else if (index == m.C0052m.ConstraintSet_android_translationZ && Build.VERSION.SDK_INT >= 21) {
                    this.aT = obtainStyledAttributes.getFloat(index, this.aT);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public a generateDefaultLayoutParams() {
        return new a(-2, -2);
    }

    private void b(AttributeSet attributeSet) {
        Log.v(f731a, " ################# init");
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new d.a(layoutParams);
    }

    public g getConstraintSet() {
        if (this.b == null) {
            this.b = new g();
        }
        this.b.a(this);
        return this.b;
    }
}
