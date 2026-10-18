package androidx.core.graphics;

import android.graphics.PointF;
import androidx.annotation.ah;

/* loaded from: /home/user/work/dex/classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    private final PointF f437a;
    private final float b;
    private final PointF c;
    private final float d;

    public i(@ah PointF pointF, float f, @ah PointF pointF2, float f2) {
        this.f437a = (PointF) androidx.core.m.i.a(pointF, "start == null");
        this.b = f;
        this.c = (PointF) androidx.core.m.i.a(pointF2, "end == null");
        this.d = f2;
    }

    @ah
    public PointF a() {
        return this.f437a;
    }

    public float b() {
        return this.b;
    }

    @ah
    public PointF c() {
        return this.c;
    }

    public float d() {
        return this.d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return Float.compare(this.b, iVar.b) == 0 && Float.compare(this.d, iVar.d) == 0 && this.f437a.equals(iVar.f437a) && this.c.equals(iVar.c);
    }

    public int hashCode() {
        return (((((this.f437a.hashCode() * 31) + (this.b != 0.0f ? Float.floatToIntBits(this.b) : 0)) * 31) + this.c.hashCode()) * 31) + (this.d != 0.0f ? Float.floatToIntBits(this.d) : 0);
    }

    public String toString() {
        return "PathSegment{start=" + this.f437a + ", startFraction=" + this.b + ", end=" + this.c + ", endFraction=" + this.d + '}';
    }
}
