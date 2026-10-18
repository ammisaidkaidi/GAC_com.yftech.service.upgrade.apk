package androidx.d.e;

import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import androidx.d.e.d;

/* loaded from: /home/user/work/dex/classes.dex */
public class f {
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    public static final int f = 4;
    public static final int g = 5;
    public static final int h = 6;
    public static final int i = 7;
    public static final int j = -1;
    public static final int k = 0;
    public static final int l = 0;
    public static final int m = -2;
    public static final int n = 1;
    public static final int o = 0;

    /* renamed from: a, reason: collision with root package name */
    d.a f724a;
    View b;

    private String p(int i2) {
        switch (i2) {
            case 1:
                return "left";
            case 2:
                return "right";
            case 3:
                return "top";
            case 4:
                return "bottom";
            case 5:
                return "baseline";
            case 6:
                return "start";
            case 7:
                return "end";
            default:
                return "undefined";
        }
    }

    public void c() {
    }

    public f i(float f2) {
        return this;
    }

    public f a(int i2, int i3, int i4, int i5, int i6, int i7, float f2) {
        if (i4 < 0) {
            throw new IllegalArgumentException("margin must be > 0");
        }
        if (i7 < 0) {
            throw new IllegalArgumentException("margin must be > 0");
        }
        if (f2 <= 0.0f || f2 > 1.0f) {
            throw new IllegalArgumentException("bias must be between 0 and 1 inclusive");
        }
        if (i3 == 1 || i3 == 2) {
            a(1, i2, i3, i4);
            a(2, i5, i6, i7);
            this.f724a.R = f2;
        } else if (i3 == 6 || i3 == 7) {
            a(6, i2, i3, i4);
            a(7, i5, i6, i7);
            this.f724a.R = f2;
        } else {
            a(3, i2, i3, i4);
            a(4, i5, i6, i7);
            this.f724a.S = f2;
        }
        return this;
    }

    public f b(int i2, int i3, int i4, int i5, int i6, int i7, float f2) {
        a(1, i2, i3, i4);
        a(2, i5, i6, i7);
        this.f724a.R = f2;
        return this;
    }

    public f c(int i2, int i3, int i4, int i5, int i6, int i7, float f2) {
        a(6, i2, i3, i4);
        a(7, i5, i6, i7);
        this.f724a.R = f2;
        return this;
    }

    public f d(int i2, int i3, int i4, int i5, int i6, int i7, float f2) {
        a(3, i2, i3, i4);
        a(4, i5, i6, i7);
        this.f724a.S = f2;
        return this;
    }

    public f a(int i2) {
        if (i2 == 0) {
            a(0, 1, 0, 0, 2, 0, 0.5f);
        } else {
            a(i2, 2, 0, i2, 1, 0, 0.5f);
        }
        return this;
    }

    public f b(int i2) {
        if (i2 == 0) {
            a(0, 6, 0, 0, 7, 0, 0.5f);
        } else {
            a(i2, 7, 0, i2, 6, 0, 0.5f);
        }
        return this;
    }

    public f c(int i2) {
        if (i2 == 0) {
            a(0, 3, 0, 0, 4, 0, 0.5f);
        } else {
            a(i2, 4, 0, i2, 3, 0, 0.5f);
        }
        return this;
    }

    public f d(int i2) {
        switch (i2) {
            case 1:
                d.a aVar = this.f724a;
                d.a aVar2 = this.f724a;
                aVar.w = -1;
                d.a aVar3 = this.f724a;
                d.a aVar4 = this.f724a;
                aVar3.v = -1;
                d.a aVar5 = this.f724a;
                d.a aVar6 = this.f724a;
                aVar5.leftMargin = -1;
                d.a aVar7 = this.f724a;
                d.a aVar8 = this.f724a;
                aVar7.L = -1;
                return this;
            case 2:
                d.a aVar9 = this.f724a;
                d.a aVar10 = this.f724a;
                aVar9.y = -1;
                d.a aVar11 = this.f724a;
                d.a aVar12 = this.f724a;
                aVar11.x = -1;
                d.a aVar13 = this.f724a;
                d.a aVar14 = this.f724a;
                aVar13.rightMargin = -1;
                d.a aVar15 = this.f724a;
                d.a aVar16 = this.f724a;
                aVar15.N = -1;
                return this;
            case 3:
                d.a aVar17 = this.f724a;
                d.a aVar18 = this.f724a;
                aVar17.A = -1;
                d.a aVar19 = this.f724a;
                d.a aVar20 = this.f724a;
                aVar19.z = -1;
                d.a aVar21 = this.f724a;
                d.a aVar22 = this.f724a;
                aVar21.topMargin = -1;
                d.a aVar23 = this.f724a;
                d.a aVar24 = this.f724a;
                aVar23.M = -1;
                return this;
            case 4:
                d.a aVar25 = this.f724a;
                d.a aVar26 = this.f724a;
                aVar25.B = -1;
                d.a aVar27 = this.f724a;
                d.a aVar28 = this.f724a;
                aVar27.C = -1;
                d.a aVar29 = this.f724a;
                d.a aVar30 = this.f724a;
                aVar29.bottomMargin = -1;
                d.a aVar31 = this.f724a;
                d.a aVar32 = this.f724a;
                aVar31.O = -1;
                return this;
            case 5:
                d.a aVar33 = this.f724a;
                d.a aVar34 = this.f724a;
                aVar33.D = -1;
                return this;
            case 6:
                d.a aVar35 = this.f724a;
                d.a aVar36 = this.f724a;
                aVar35.H = -1;
                d.a aVar37 = this.f724a;
                d.a aVar38 = this.f724a;
                aVar37.I = -1;
                d.a aVar39 = this.f724a;
                d.a aVar40 = this.f724a;
                aVar39.setMarginStart(-1);
                d.a aVar41 = this.f724a;
                d.a aVar42 = this.f724a;
                aVar41.P = -1;
                return this;
            case 7:
                d.a aVar43 = this.f724a;
                d.a aVar44 = this.f724a;
                aVar43.J = -1;
                d.a aVar45 = this.f724a;
                d.a aVar46 = this.f724a;
                aVar45.K = -1;
                d.a aVar47 = this.f724a;
                d.a aVar48 = this.f724a;
                aVar47.setMarginEnd(-1);
                d.a aVar49 = this.f724a;
                d.a aVar50 = this.f724a;
                aVar49.Q = -1;
                return this;
            default:
                throw new IllegalArgumentException("unknown constraint");
        }
    }

    public f a(int i2, int i3) {
        switch (i2) {
            case 1:
                this.f724a.leftMargin = i3;
                return this;
            case 2:
                this.f724a.rightMargin = i3;
                return this;
            case 3:
                this.f724a.topMargin = i3;
                return this;
            case 4:
                this.f724a.bottomMargin = i3;
                return this;
            case 5:
                throw new IllegalArgumentException("baseline does not support margins");
            case 6:
                this.f724a.setMarginStart(i3);
                return this;
            case 7:
                this.f724a.setMarginEnd(i3);
                return this;
            default:
                throw new IllegalArgumentException("unknown constraint");
        }
    }

    public f b(int i2, int i3) {
        switch (i2) {
            case 1:
                this.f724a.L = i3;
                return this;
            case 2:
                this.f724a.N = i3;
                return this;
            case 3:
                this.f724a.M = i3;
                return this;
            case 4:
                this.f724a.O = i3;
                return this;
            case 5:
                throw new IllegalArgumentException("baseline does not support margins");
            case 6:
                this.f724a.P = i3;
                return this;
            case 7:
                this.f724a.Q = i3;
                return this;
            default:
                throw new IllegalArgumentException("unknown constraint");
        }
    }

    public f a(float f2) {
        this.f724a.R = f2;
        return this;
    }

    public f b(float f2) {
        this.f724a.S = f2;
        return this;
    }

    public f a(String str) {
        this.f724a.T = str;
        return this;
    }

    public f e(int i2) {
        this.b.setVisibility(i2);
        return this;
    }

    public f c(float f2) {
        this.b.setAlpha(f2);
        return this;
    }

    public f d(float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.b.setElevation(f2);
        }
        return this;
    }

    public f e(float f2) {
        this.b.setRotation(f2);
        return this;
    }

    public f f(float f2) {
        this.b.setRotationX(f2);
        return this;
    }

    public f g(float f2) {
        this.b.setRotationY(f2);
        return this;
    }

    public f h(float f2) {
        this.b.setScaleY(f2);
        return this;
    }

    public f j(float f2) {
        this.b.setPivotX(f2);
        return this;
    }

    public f k(float f2) {
        this.b.setPivotY(f2);
        return this;
    }

    public f a(float f2, float f3) {
        this.b.setPivotX(f2);
        this.b.setPivotY(f3);
        return this;
    }

    public f l(float f2) {
        this.b.setTranslationX(f2);
        return this;
    }

    public f m(float f2) {
        this.b.setTranslationY(f2);
        return this;
    }

    public f b(float f2, float f3) {
        this.b.setTranslationX(f2);
        this.b.setTranslationY(f3);
        return this;
    }

    public f n(float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.b.setTranslationZ(f2);
        }
        return this;
    }

    public f f(int i2) {
        this.f724a.height = i2;
        return this;
    }

    public f g(int i2) {
        this.f724a.width = i2;
        return this;
    }

    public f h(int i2) {
        this.f724a.af = i2;
        return this;
    }

    public f i(int i2) {
        this.f724a.ae = i2;
        return this;
    }

    public f j(int i2) {
        this.f724a.ad = i2;
        return this;
    }

    public f k(int i2) {
        this.f724a.ac = i2;
        return this;
    }

    public f l(int i2) {
        this.f724a.ab = i2;
        return this;
    }

    public f m(int i2) {
        this.f724a.aa = i2;
        return this;
    }

    public f o(float f2) {
        this.f724a.W = f2;
        return this;
    }

    public f p(float f2) {
        this.f724a.X = f2;
        return this;
    }

    public f n(int i2) {
        this.f724a.Y = i2;
        return this;
    }

    public f o(int i2) {
        this.f724a.Z = i2;
        return this;
    }

    public f c(int i2, int i3) {
        a(1, i2, i2 == 0 ? 1 : 2, 0);
        a(2, i3, i3 == 0 ? 2 : 1, 0);
        if (i2 != 0) {
            new f(((ViewGroup) this.b.getParent()).findViewById(i2)).a(2, this.b.getId(), 1, 0);
        }
        if (i3 != 0) {
            new f(((ViewGroup) this.b.getParent()).findViewById(i3)).a(1, this.b.getId(), 2, 0);
        }
        return this;
    }

    public f d(int i2, int i3) {
        a(6, i2, i2 == 0 ? 6 : 7, 0);
        a(7, i3, i3 == 0 ? 7 : 6, 0);
        if (i2 != 0) {
            new f(((ViewGroup) this.b.getParent()).findViewById(i2)).a(7, this.b.getId(), 6, 0);
        }
        if (i3 != 0) {
            new f(((ViewGroup) this.b.getParent()).findViewById(i3)).a(6, this.b.getId(), 7, 0);
        }
        return this;
    }

    public f e(int i2, int i3) {
        a(3, i2, i2 == 0 ? 3 : 4, 0);
        a(4, i3, i3 == 0 ? 4 : 3, 0);
        if (i2 != 0) {
            new f(((ViewGroup) this.b.getParent()).findViewById(i2)).a(4, this.b.getId(), 3, 0);
        }
        if (i3 != 0) {
            new f(((ViewGroup) this.b.getParent()).findViewById(i3)).a(3, this.b.getId(), 4, 0);
        }
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x004b, code lost:
    
        if (r1 != (-1)) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0011, code lost:
    
        if (r1 != (-1)) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public f a() {
        int i2 = this.f724a.A;
        int i3 = this.f724a.B;
        d.a aVar = this.f724a;
        if (i2 == -1) {
            d.a aVar2 = this.f724a;
        }
        f fVar = new f(((ViewGroup) this.b.getParent()).findViewById(i2));
        f fVar2 = new f(((ViewGroup) this.b.getParent()).findViewById(i3));
        d.a aVar3 = this.f724a;
        if (i2 != -1) {
            d.a aVar4 = this.f724a;
            if (i3 != -1) {
                fVar.a(4, i3, 3, 0);
                fVar2.a(3, i2, 4, 0);
                d(3);
                d(4);
                return this;
            }
        }
        d.a aVar5 = this.f724a;
        if (i2 == -1) {
            d.a aVar6 = this.f724a;
        }
        int i4 = this.f724a.C;
        d.a aVar7 = this.f724a;
        if (i4 != -1) {
            fVar.a(4, this.f724a.C, 4, 0);
        } else {
            int i5 = this.f724a.z;
            d.a aVar8 = this.f724a;
            if (i5 != -1) {
                fVar2.a(3, this.f724a.z, 3, 0);
            }
        }
        d(3);
        d(4);
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x005d, code lost:
    
        if (r4 != (-1)) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00be, code lost:
    
        if (r1 != (-1)) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0024, code lost:
    
        if (r4 != (-1)) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public f b() {
        int i2 = this.f724a.w;
        int i3 = this.f724a.x;
        d.a aVar = this.f724a;
        if (i2 == -1) {
            d.a aVar2 = this.f724a;
            if (i3 == -1) {
                int i4 = this.f724a.H;
                int i5 = this.f724a.J;
                d.a aVar3 = this.f724a;
                if (i4 == -1) {
                    d.a aVar4 = this.f724a;
                }
                f fVar = new f(((ViewGroup) this.b.getParent()).findViewById(i4));
                f fVar2 = new f(((ViewGroup) this.b.getParent()).findViewById(i5));
                d.a aVar5 = this.f724a;
                if (i4 != -1) {
                    d.a aVar6 = this.f724a;
                    if (i5 != -1) {
                        fVar.a(7, i5, 6, 0);
                        fVar2.a(6, i2, 7, 0);
                        d(6);
                        d(7);
                        return this;
                    }
                }
                d.a aVar7 = this.f724a;
                if (i2 == -1) {
                    d.a aVar8 = this.f724a;
                }
                int i6 = this.f724a.y;
                d.a aVar9 = this.f724a;
                if (i6 != -1) {
                    fVar.a(7, this.f724a.y, 7, 0);
                } else {
                    int i7 = this.f724a.v;
                    d.a aVar10 = this.f724a;
                    if (i7 != -1) {
                        fVar2.a(6, this.f724a.v, 6, 0);
                    }
                }
                d(6);
                d(7);
                return this;
            }
        }
        f fVar3 = new f(((ViewGroup) this.b.getParent()).findViewById(i2));
        f fVar4 = new f(((ViewGroup) this.b.getParent()).findViewById(i3));
        d.a aVar11 = this.f724a;
        if (i2 != -1) {
            d.a aVar12 = this.f724a;
            if (i3 != -1) {
                fVar3.a(2, i3, 1, 0);
                fVar4.a(1, i2, 2, 0);
                d(1);
                d(2);
                return this;
            }
        }
        d.a aVar13 = this.f724a;
        if (i2 == -1) {
            d.a aVar14 = this.f724a;
        }
        int i8 = this.f724a.y;
        d.a aVar15 = this.f724a;
        if (i8 != -1) {
            fVar3.a(2, this.f724a.y, 2, 0);
        } else {
            int i9 = this.f724a.v;
            d.a aVar16 = this.f724a;
            if (i9 != -1) {
                fVar4.a(1, this.f724a.v, 1, 0);
            }
        }
        d(1);
        d(2);
        return this;
    }

    public f a(int i2, int i3, int i4, int i5) {
        switch (i2) {
            case 1:
                if (i4 == 1) {
                    this.f724a.v = i3;
                    d.a aVar = this.f724a;
                    d.a aVar2 = this.f724a;
                    aVar.w = -1;
                } else if (i4 == 2) {
                    this.f724a.w = i3;
                    d.a aVar3 = this.f724a;
                    d.a aVar4 = this.f724a;
                    aVar3.v = -1;
                } else {
                    throw new IllegalArgumentException("Left to " + p(i4) + " undefined");
                }
                this.f724a.leftMargin = i5;
                return this;
            case 2:
                if (i4 == 1) {
                    this.f724a.x = i3;
                    d.a aVar5 = this.f724a;
                    d.a aVar6 = this.f724a;
                    aVar5.y = -1;
                } else if (i4 == 2) {
                    this.f724a.y = i3;
                    d.a aVar7 = this.f724a;
                    d.a aVar8 = this.f724a;
                    aVar7.x = -1;
                } else {
                    throw new IllegalArgumentException("right to " + p(i4) + " undefined");
                }
                this.f724a.rightMargin = i5;
                return this;
            case 3:
                if (i4 == 3) {
                    this.f724a.z = i3;
                    d.a aVar9 = this.f724a;
                    d.a aVar10 = this.f724a;
                    aVar9.A = -1;
                    d.a aVar11 = this.f724a;
                    d.a aVar12 = this.f724a;
                    aVar11.D = -1;
                } else if (i4 == 4) {
                    this.f724a.A = i3;
                    d.a aVar13 = this.f724a;
                    d.a aVar14 = this.f724a;
                    aVar13.z = -1;
                    d.a aVar15 = this.f724a;
                    d.a aVar16 = this.f724a;
                    aVar15.D = -1;
                } else {
                    throw new IllegalArgumentException("right to " + p(i4) + " undefined");
                }
                this.f724a.topMargin = i5;
                return this;
            case 4:
                if (i4 == 4) {
                    this.f724a.C = i3;
                    d.a aVar17 = this.f724a;
                    d.a aVar18 = this.f724a;
                    aVar17.B = -1;
                    d.a aVar19 = this.f724a;
                    d.a aVar20 = this.f724a;
                    aVar19.D = -1;
                } else if (i4 == 3) {
                    this.f724a.B = i3;
                    d.a aVar21 = this.f724a;
                    d.a aVar22 = this.f724a;
                    aVar21.C = -1;
                    d.a aVar23 = this.f724a;
                    d.a aVar24 = this.f724a;
                    aVar23.D = -1;
                } else {
                    throw new IllegalArgumentException("right to " + p(i4) + " undefined");
                }
                this.f724a.bottomMargin = i5;
                return this;
            case 5:
                if (i4 == 5) {
                    this.f724a.D = i3;
                    d.a aVar25 = this.f724a;
                    d.a aVar26 = this.f724a;
                    aVar25.C = -1;
                    d.a aVar27 = this.f724a;
                    d.a aVar28 = this.f724a;
                    aVar27.B = -1;
                    d.a aVar29 = this.f724a;
                    d.a aVar30 = this.f724a;
                    aVar29.z = -1;
                    d.a aVar31 = this.f724a;
                    d.a aVar32 = this.f724a;
                    aVar31.A = -1;
                    return this;
                }
                throw new IllegalArgumentException("right to " + p(i4) + " undefined");
            case 6:
                if (i4 == 6) {
                    this.f724a.I = i3;
                    d.a aVar33 = this.f724a;
                    d.a aVar34 = this.f724a;
                    aVar33.H = -1;
                } else if (i4 == 7) {
                    this.f724a.H = i3;
                    d.a aVar35 = this.f724a;
                    d.a aVar36 = this.f724a;
                    aVar35.I = -1;
                } else {
                    throw new IllegalArgumentException("right to " + p(i4) + " undefined");
                }
                if (Build.VERSION.SDK_INT >= 17) {
                    this.f724a.setMarginStart(i5);
                }
                return this;
            case 7:
                if (i4 == 7) {
                    this.f724a.K = i3;
                    d.a aVar37 = this.f724a;
                    d.a aVar38 = this.f724a;
                    aVar37.J = -1;
                } else if (i4 == 6) {
                    this.f724a.J = i3;
                    d.a aVar39 = this.f724a;
                    d.a aVar40 = this.f724a;
                    aVar39.K = -1;
                } else {
                    throw new IllegalArgumentException("right to " + p(i4) + " undefined");
                }
                if (Build.VERSION.SDK_INT >= 17) {
                    this.f724a.setMarginEnd(i5);
                }
                return this;
            default:
                throw new IllegalArgumentException(p(i2) + " to " + p(i4) + " unknown");
        }
    }

    public f(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof d.a) {
            this.f724a = (d.a) layoutParams;
            this.b = view;
            return;
        }
        throw new RuntimeException("Only children of ConstraintLayout.LayoutParams supported");
    }
}
