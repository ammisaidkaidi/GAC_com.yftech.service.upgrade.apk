package androidx.d.b.b;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.d.e.m;
import java.util.HashMap;

/* loaded from: /home/user/work/dex/classes.dex */
public class k extends l {
    public static final int I = 2;
    public static final int J = 1;
    public static final int K = 0;
    static final int M = 2;
    private static final String P = "KeyPosition";
    private static final String S = "percentY";
    private static final String T = "percentX";
    static final String y = "KeyPosition";
    String z = null;
    int A = f606a;
    int B = 0;
    float C = Float.NaN;
    float D = Float.NaN;
    float E = Float.NaN;
    float F = Float.NaN;
    float G = Float.NaN;
    float H = Float.NaN;
    int L = 0;
    private float Q = Float.NaN;
    private float R = Float.NaN;

    @Override // androidx.d.b.b.e
    public void a(HashMap<String, w> hashMap) {
    }

    public k() {
        this.e = 2;
    }

    @Override // androidx.d.b.b.e
    public void a(Context context, AttributeSet attributeSet) {
        a.b(this, context.obtainStyledAttributes(attributeSet, m.C0052m.KeyPosition));
    }

    @Override // androidx.d.b.b.l
    void a(int i, int i2, float f, float f2, float f3, float f4) {
        switch (this.L) {
            case 1:
                a(f, f2, f3, f4);
                return;
            case 2:
                a(i, i2);
                return;
            default:
                b(f, f2, f3, f4);
                return;
        }
    }

    private void a(int i, int i2) {
        float f = 0;
        this.Q = ((i - 0) * this.E) + f;
        this.R = ((i2 - 0) * this.E) + f;
    }

    private void a(float f, float f2, float f3, float f4) {
        float f5 = f3 - f;
        float f6 = f4 - f2;
        this.Q = f + (this.E * f5) + ((-f6) * this.F);
        this.R = f2 + (f6 * this.E) + (f5 * this.F);
    }

    private void b(float f, float f2, float f3, float f4) {
        float f5 = f3 - f;
        float f6 = f4 - f2;
        float f7 = Float.isNaN(this.E) ? 0.0f : this.E;
        float f8 = Float.isNaN(this.H) ? 0.0f : this.H;
        float f9 = Float.isNaN(this.F) ? 0.0f : this.F;
        this.Q = (int) (f + (f7 * f5) + ((Float.isNaN(this.G) ? 0.0f : this.G) * f6));
        this.R = (int) (f2 + (f5 * f8) + (f6 * f9));
    }

    @Override // androidx.d.b.b.l
    float a() {
        return this.Q;
    }

    @Override // androidx.d.b.b.l
    float b() {
        return this.R;
    }

    @Override // androidx.d.b.b.l
    public void a(View view, RectF rectF, RectF rectF2, float f, float f2, String[] strArr, float[] fArr) {
        switch (this.L) {
            case 1:
                a(rectF, rectF2, f, f2, strArr, fArr);
                return;
            case 2:
                b(view, rectF, rectF2, f, f2, strArr, fArr);
                return;
            default:
                b(rectF, rectF2, f, f2, strArr, fArr);
                return;
        }
    }

    void a(RectF rectF, RectF rectF2, float f, float f2, String[] strArr, float[] fArr) {
        float centerX = rectF.centerX();
        float centerY = rectF.centerY();
        float centerX2 = rectF2.centerX() - centerX;
        float centerY2 = rectF2.centerY() - centerY;
        float hypot = (float) Math.hypot(centerX2, centerY2);
        if (hypot < 1.0E-4d) {
            System.out.println("distance ~ 0");
            fArr[0] = 0.0f;
            fArr[1] = 0.0f;
            return;
        }
        float f3 = centerX2 / hypot;
        float f4 = centerY2 / hypot;
        float f5 = f2 - centerY;
        float f6 = f - centerX;
        float f7 = ((f3 * f5) - (f6 * f4)) / hypot;
        float f8 = ((f3 * f6) + (f4 * f5)) / hypot;
        if (strArr[0] != null) {
            if (T.equals(strArr[0])) {
                fArr[0] = f8;
                fArr[1] = f7;
                return;
            }
            return;
        }
        strArr[0] = T;
        strArr[1] = S;
        fArr[0] = f8;
        fArr[1] = f7;
    }

    void b(View view, RectF rectF, RectF rectF2, float f, float f2, String[] strArr, float[] fArr) {
        rectF.centerX();
        rectF.centerY();
        rectF2.centerX();
        rectF2.centerY();
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        int width = viewGroup.getWidth();
        int height = viewGroup.getHeight();
        if (strArr[0] != null) {
            if (T.equals(strArr[0])) {
                fArr[0] = f / width;
                fArr[1] = f2 / height;
                return;
            } else {
                fArr[1] = f / width;
                fArr[0] = f2 / height;
                return;
            }
        }
        strArr[0] = T;
        fArr[0] = f / width;
        strArr[1] = S;
        fArr[1] = f2 / height;
    }

    void b(RectF rectF, RectF rectF2, float f, float f2, String[] strArr, float[] fArr) {
        float centerX = rectF.centerX();
        float centerY = rectF.centerY();
        float centerX2 = rectF2.centerX() - centerX;
        float centerY2 = rectF2.centerY() - centerY;
        if (strArr[0] != null) {
            if (T.equals(strArr[0])) {
                fArr[0] = (f - centerX) / centerX2;
                fArr[1] = (f2 - centerY) / centerY2;
                return;
            } else {
                fArr[1] = (f - centerX) / centerX2;
                fArr[0] = (f2 - centerY) / centerY2;
                return;
            }
        }
        strArr[0] = T;
        fArr[0] = (f - centerX) / centerX2;
        strArr[1] = S;
        fArr[1] = (f2 - centerY) / centerY2;
    }

    @Override // androidx.d.b.b.l
    public boolean a(int i, int i2, RectF rectF, RectF rectF2, float f, float f2) {
        a(i, i2, rectF.centerX(), rectF.centerY(), rectF2.centerX(), rectF2.centerY());
        return Math.abs(f - this.Q) < 20.0f && Math.abs(f2 - this.R) < 20.0f;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class a {

        /* renamed from: a, reason: collision with root package name */
        private static final int f615a = 1;
        private static final int b = 2;
        private static final int c = 3;
        private static final int d = 4;
        private static final int e = 5;
        private static final int f = 6;
        private static final int g = 7;
        private static final int h = 8;
        private static final int i = 9;
        private static final int j = 10;
        private static final int k = 11;
        private static final int l = 12;
        private static SparseIntArray m = new SparseIntArray();

        private a() {
        }

        static {
            m.append(m.C0052m.KeyPosition_motionTarget, 1);
            m.append(m.C0052m.KeyPosition_framePosition, 2);
            m.append(m.C0052m.KeyPosition_transitionEasing, 3);
            m.append(m.C0052m.KeyPosition_curveFit, 4);
            m.append(m.C0052m.KeyPosition_drawPath, 5);
            m.append(m.C0052m.KeyPosition_percentX, 6);
            m.append(m.C0052m.KeyPosition_percentY, 7);
            m.append(m.C0052m.KeyPosition_keyPositionType, 9);
            m.append(m.C0052m.KeyPosition_sizePercent, 8);
            m.append(m.C0052m.KeyPosition_percentWidth, 11);
            m.append(m.C0052m.KeyPosition_percentHeight, 12);
            m.append(m.C0052m.KeyPosition_pathMotionArc, 10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void b(k kVar, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = typedArray.getIndex(i2);
                switch (m.get(index)) {
                    case 1:
                        if (s.h) {
                            kVar.c = typedArray.getResourceId(index, kVar.c);
                            if (kVar.c == -1) {
                                kVar.d = typedArray.getString(index);
                                break;
                            } else {
                                break;
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            kVar.d = typedArray.getString(index);
                            break;
                        } else {
                            kVar.c = typedArray.getResourceId(index, kVar.c);
                            break;
                        }
                    case 2:
                        kVar.b = typedArray.getInt(index, kVar.b);
                        break;
                    case 3:
                        if (typedArray.peekValue(index).type == 3) {
                            kVar.z = typedArray.getString(index);
                            break;
                        } else {
                            kVar.z = androidx.d.b.a.c.c[typedArray.getInteger(index, 0)];
                            break;
                        }
                    case 4:
                        kVar.O = typedArray.getInteger(index, kVar.O);
                        break;
                    case 5:
                        kVar.B = typedArray.getInt(index, kVar.B);
                        break;
                    case 6:
                        kVar.E = typedArray.getFloat(index, kVar.E);
                        break;
                    case 7:
                        kVar.F = typedArray.getFloat(index, kVar.F);
                        break;
                    case 8:
                        float f2 = typedArray.getFloat(index, kVar.D);
                        kVar.C = f2;
                        kVar.D = f2;
                        break;
                    case 9:
                        kVar.L = typedArray.getInt(index, kVar.L);
                        break;
                    case 10:
                        kVar.A = typedArray.getInt(index, kVar.A);
                        break;
                    case 11:
                        kVar.C = typedArray.getFloat(index, kVar.C);
                        break;
                    case 12:
                        kVar.D = typedArray.getFloat(index, kVar.D);
                        break;
                    default:
                        Log.e("KeyPosition", "unused attribute 0x" + Integer.toHexString(index) + "   " + m.get(index));
                        break;
                }
            }
            if (kVar.b == -1) {
                Log.e("KeyPosition", "no frame position");
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // androidx.d.b.b.e
    public void a(String str, Object obj) {
        char c;
        switch (str.hashCode()) {
            case -1812823328:
                if (str.equals("transitionEasing")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -1127236479:
                if (str.equals("percentWidth")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -1017587252:
                if (str.equals("percentHeight")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -827014263:
                if (str.equals("drawPath")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -200259324:
                if (str.equals("sizePercent")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 428090547:
                if (str.equals(T)) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 428090548:
                if (str.equals(S)) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                this.z = obj.toString();
                return;
            case 1:
                this.B = b(obj);
                return;
            case 2:
                this.C = a(obj);
                return;
            case 3:
                this.D = a(obj);
                return;
            case 4:
                float a2 = a(obj);
                this.C = a2;
                this.D = a2;
                return;
            case 5:
                this.E = a(obj);
                return;
            case 6:
                this.F = a(obj);
                return;
            default:
                return;
        }
    }
}
