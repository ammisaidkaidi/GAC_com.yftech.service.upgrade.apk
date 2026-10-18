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
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.HashSet;

/* loaded from: /home/user/work/dex/classes.dex */
public class n extends e {
    public static final int C = 5;
    private static final String D = "KeyTrigger";
    static final String y = "KeyTrigger";
    private Method Q;
    private Method R;
    private Method S;
    private float T;
    private int E = -1;
    private String F = null;
    private int G = f606a;
    private String H = null;
    private String I = null;
    private int J = f606a;
    private int K = f606a;
    private View L = null;
    float z = 0.1f;
    private boolean M = true;
    private boolean N = true;
    private boolean O = true;
    private float P = Float.NaN;
    private boolean U = false;
    RectF A = new RectF();
    RectF B = new RectF();

    @Override // androidx.d.b.b.e
    public void a(String str, Object obj) {
    }

    @Override // androidx.d.b.b.e
    public void a(HashMap<String, w> hashMap) {
    }

    @Override // androidx.d.b.b.e
    public void a(HashSet<String> hashSet) {
    }

    public n() {
        this.e = 5;
        this.f = new HashMap<>();
    }

    @Override // androidx.d.b.b.e
    public void a(Context context, AttributeSet attributeSet) {
        a.a(this, context.obtainStyledAttributes(attributeSet, m.C0052m.KeyTrigger), context);
    }

    int a() {
        return this.E;
    }

    private void a(RectF rectF, View view, boolean z) {
        rectF.top = view.getTop();
        rectF.bottom = view.getBottom();
        rectF.left = view.getLeft();
        rectF.right = view.getRight();
        if (z) {
            view.getMatrix().mapRect(rectF);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x00cf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(float f, View view) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5 = true;
        if (this.K != f606a) {
            if (this.L == null) {
                this.L = ((ViewGroup) view.getParent()).findViewById(this.K);
            }
            a(this.A, this.L, this.U);
            a(this.B, view, this.U);
            if (this.A.intersect(this.B)) {
                if (this.M) {
                    this.M = false;
                    z = true;
                } else {
                    z = false;
                }
                if (this.O) {
                    this.O = false;
                    z4 = true;
                } else {
                    z4 = false;
                }
                this.N = true;
                z5 = z4;
                z3 = false;
            } else {
                if (this.M) {
                    z = false;
                } else {
                    this.M = true;
                    z = true;
                }
                if (this.N) {
                    this.N = false;
                    z3 = true;
                } else {
                    z3 = false;
                }
                this.O = true;
                z5 = false;
            }
            z2 = z3;
        } else {
            if (this.M) {
                if ((f - this.P) * (this.T - this.P) < 0.0f) {
                    this.M = false;
                    z = true;
                    if (!this.N) {
                        float f2 = f - this.P;
                        if ((this.T - this.P) * f2 < 0.0f && f2 < 0.0f) {
                            this.N = false;
                            z2 = true;
                            if (this.O) {
                                float f3 = f - this.P;
                                if ((this.T - this.P) * f3 < 0.0f && f3 > 0.0f) {
                                    this.O = false;
                                }
                            } else if (Math.abs(f - this.P) > this.z) {
                                this.O = true;
                            }
                            z5 = false;
                        }
                    } else if (Math.abs(f - this.P) > this.z) {
                        this.N = true;
                    }
                    z2 = false;
                    if (this.O) {
                    }
                    z5 = false;
                }
            } else if (Math.abs(f - this.P) > this.z) {
                this.M = true;
            }
            z = false;
            if (!this.N) {
            }
            z2 = false;
            if (this.O) {
            }
            z5 = false;
        }
        this.T = f;
        if (z2 || z || z5) {
            ((s) view.getParent()).a(this.J, z5, f);
        }
        if (this.G != f606a) {
            view = ((s) view.getParent()).findViewById(this.G);
        }
        if (z2 && this.H != null) {
            if (this.R == null) {
                try {
                    this.R = view.getClass().getMethod(this.H, new Class[0]);
                } catch (NoSuchMethodException unused) {
                    Log.e("KeyTrigger", "Could not find method \"" + this.H + "\"on class " + view.getClass().getSimpleName() + " " + c.a(view));
                }
            }
            try {
                this.R.invoke(view, new Object[0]);
            } catch (Exception unused2) {
                Log.e("KeyTrigger", "Exception in call \"" + this.H + "\"on class " + view.getClass().getSimpleName() + " " + c.a(view));
            }
        }
        if (z5 && this.I != null) {
            if (this.S == null) {
                try {
                    this.S = view.getClass().getMethod(this.I, new Class[0]);
                } catch (NoSuchMethodException unused3) {
                    Log.e("KeyTrigger", "Could not find method \"" + this.I + "\"on class " + view.getClass().getSimpleName() + " " + c.a(view));
                }
            }
            try {
                this.S.invoke(view, new Object[0]);
            } catch (Exception unused4) {
                Log.e("KeyTrigger", "Exception in call \"" + this.I + "\"on class " + view.getClass().getSimpleName() + " " + c.a(view));
            }
        }
        if (!z || this.F == null) {
            return;
        }
        if (this.Q == null) {
            try {
                this.Q = view.getClass().getMethod(this.F, new Class[0]);
            } catch (NoSuchMethodException unused5) {
                Log.e("KeyTrigger", "Could not find method \"" + this.F + "\"on class " + view.getClass().getSimpleName() + " " + c.a(view));
            }
        }
        try {
            this.Q.invoke(view, new Object[0]);
        } catch (Exception unused6) {
            Log.e("KeyTrigger", "Exception in call \"" + this.F + "\"on class " + view.getClass().getSimpleName() + " " + c.a(view));
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class a {

        /* renamed from: a, reason: collision with root package name */
        private static final int f617a = 1;
        private static final int b = 2;
        private static final int c = 4;
        private static final int d = 5;
        private static final int e = 6;
        private static final int f = 7;
        private static final int g = 8;
        private static final int h = 9;
        private static final int i = 10;
        private static final int j = 11;
        private static SparseIntArray k = new SparseIntArray();

        private a() {
        }

        static {
            k.append(m.C0052m.KeyTrigger_framePosition, 8);
            k.append(m.C0052m.KeyTrigger_onCross, 4);
            k.append(m.C0052m.KeyTrigger_onNegativeCross, 1);
            k.append(m.C0052m.KeyTrigger_onPositiveCross, 2);
            k.append(m.C0052m.KeyTrigger_motionTarget, 7);
            k.append(m.C0052m.KeyTrigger_triggerId, 6);
            k.append(m.C0052m.KeyTrigger_triggerSlack, 5);
            k.append(m.C0052m.KeyTrigger_motion_triggerOnCollision, 9);
            k.append(m.C0052m.KeyTrigger_motion_postLayoutCollision, 10);
            k.append(m.C0052m.KeyTrigger_triggerReceiver, 11);
        }

        public static void a(n nVar, TypedArray typedArray, Context context) {
            int indexCount = typedArray.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = typedArray.getIndex(i2);
                switch (k.get(index)) {
                    case 1:
                        nVar.H = typedArray.getString(index);
                        continue;
                    case 2:
                        nVar.I = typedArray.getString(index);
                        continue;
                    case 4:
                        nVar.F = typedArray.getString(index);
                        continue;
                    case 5:
                        nVar.z = typedArray.getFloat(index, nVar.z);
                        continue;
                    case 6:
                        nVar.J = typedArray.getResourceId(index, nVar.J);
                        continue;
                    case 7:
                        if (s.h) {
                            nVar.c = typedArray.getResourceId(index, nVar.c);
                            if (nVar.c == -1) {
                                nVar.d = typedArray.getString(index);
                                break;
                            } else {
                                continue;
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            nVar.d = typedArray.getString(index);
                            break;
                        } else {
                            nVar.c = typedArray.getResourceId(index, nVar.c);
                            break;
                        }
                    case 8:
                        nVar.b = typedArray.getInteger(index, nVar.b);
                        nVar.P = (nVar.b + 0.5f) / 100.0f;
                        continue;
                    case 9:
                        nVar.K = typedArray.getResourceId(index, nVar.K);
                        continue;
                    case 10:
                        nVar.U = typedArray.getBoolean(index, nVar.U);
                        continue;
                    case 11:
                        nVar.G = typedArray.getResourceId(index, nVar.G);
                        break;
                }
                Log.e("KeyTrigger", "unused attribute 0x" + Integer.toHexString(index) + "   " + k.get(index));
            }
        }
    }
}
