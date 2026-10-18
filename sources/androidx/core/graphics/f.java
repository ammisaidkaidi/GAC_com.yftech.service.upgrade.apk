package androidx.core.graphics;

import android.graphics.Insets;
import android.graphics.Rect;
import androidx.annotation.ah;
import androidx.annotation.am;
import androidx.annotation.ap;

/* loaded from: /home/user/work/dex/classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    @ah
    public static final f f432a = new f(0, 0, 0, 0);
    public final int b;
    public final int c;
    public final int d;
    public final int e;

    private f(int i, int i2, int i3, int i4) {
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = i4;
    }

    @ah
    public static f a(int i, int i2, int i3, int i4) {
        if (i == 0 && i2 == 0 && i3 == 0 && i4 == 0) {
            return f432a;
        }
        return new f(i, i2, i3, i4);
    }

    @ah
    public static f a(@ah Rect rect) {
        return a(rect.left, rect.top, rect.right, rect.bottom);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        f fVar = (f) obj;
        return this.e == fVar.e && this.b == fVar.b && this.d == fVar.d && this.c == fVar.c;
    }

    public int hashCode() {
        return (((((this.b * 31) + this.c) * 31) + this.d) * 31) + this.e;
    }

    public String toString() {
        return "Insets{left=" + this.b + ", top=" + this.c + ", right=" + this.d + ", bottom=" + this.e + '}';
    }

    @am(b = 29)
    @Deprecated
    @ah
    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public static f a(@ah Insets insets) {
        return b(insets);
    }

    @am(b = 29)
    @ah
    public static f b(@ah Insets insets) {
        return a(insets.left, insets.top, insets.right, insets.bottom);
    }

    @am(b = 29)
    @ah
    public Insets a() {
        return Insets.of(this.b, this.c, this.d, this.e);
    }
}
