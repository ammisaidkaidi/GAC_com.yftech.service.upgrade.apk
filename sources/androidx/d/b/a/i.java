package androidx.d.b.a;

import androidx.d.b.b.w;

/* loaded from: /home/user/work/dex/classes.dex */
public class i {
    private static String g = "VelocityMatrix";

    /* renamed from: a, reason: collision with root package name */
    float f603a;
    float b;
    float c;
    float d;
    float e;
    float f;

    public void a() {
        this.e = 0.0f;
        this.d = 0.0f;
        this.c = 0.0f;
        this.b = 0.0f;
        this.f603a = 0.0f;
    }

    public void a(w wVar, float f) {
        if (wVar != null) {
            this.e = wVar.b(f);
            this.f = wVar.a(f);
        }
    }

    public void a(w wVar, w wVar2, float f) {
        if (wVar != null) {
            this.c = wVar.b(f);
        }
        if (wVar2 != null) {
            this.d = wVar2.b(f);
        }
    }

    public void b(w wVar, w wVar2, float f) {
        if (wVar != null) {
            this.f603a = wVar.b(f);
        }
        if (wVar2 != null) {
            this.b = wVar2.b(f);
        }
    }

    public void a(androidx.d.b.b.i iVar, float f) {
        if (iVar != null) {
            this.e = iVar.b(f);
        }
    }

    public void a(androidx.d.b.b.i iVar, androidx.d.b.b.i iVar2, float f) {
        if (iVar != null) {
            this.c = iVar.b(f);
        }
        if (iVar2 != null) {
            this.d = iVar2.b(f);
        }
    }

    public void b(androidx.d.b.b.i iVar, androidx.d.b.b.i iVar2, float f) {
        if (iVar == null && iVar2 == null) {
            return;
        }
        if (iVar == null) {
            this.f603a = iVar.b(f);
        }
        if (iVar2 == null) {
            this.b = iVar2.b(f);
        }
    }

    public void a(float f, float f2, int i, int i2, float[] fArr) {
        float f3 = fArr[0];
        float f4 = fArr[1];
        float f5 = (f2 - 0.5f) * 2.0f;
        float f6 = f3 + this.c;
        float f7 = f4 + this.d;
        float f8 = f6 + (this.f603a * (f - 0.5f) * 2.0f);
        float f9 = f7 + (this.b * f5);
        float radians = (float) Math.toRadians(this.f);
        float radians2 = (float) Math.toRadians(this.e);
        double d = radians;
        double d2 = i2 * f5;
        float sin = f8 + (((float) ((((-i) * r7) * Math.sin(d)) - (Math.cos(d) * d2))) * radians2);
        float cos = f9 + (radians2 * ((float) (((i * r7) * Math.cos(d)) - (d2 * Math.sin(d)))));
        fArr[0] = sin;
        fArr[1] = cos;
    }
}
