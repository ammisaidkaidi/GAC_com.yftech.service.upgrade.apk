package androidx.core.j;

import android.util.Base64;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import androidx.annotation.e;
import androidx.core.m.i;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private final String f456a;
    private final String b;
    private final String c;
    private final List<List<byte[]>> d;
    private final int e;
    private final String f;

    public a(@ah String str, @ah String str2, @ah String str3, @ah List<List<byte[]>> list) {
        this.f456a = (String) i.a(str);
        this.b = (String) i.a(str2);
        this.c = (String) i.a(str3);
        this.d = (List) i.a(list);
        this.e = 0;
        this.f = this.f456a + "-" + this.b + "-" + this.c;
    }

    public a(@ah String str, @ah String str2, @ah String str3, @e int i) {
        this.f456a = (String) i.a(str);
        this.b = (String) i.a(str2);
        this.c = (String) i.a(str3);
        this.d = null;
        i.a(i != 0);
        this.e = i;
        this.f = this.f456a + "-" + this.b + "-" + this.c;
    }

    @ah
    public String a() {
        return this.f456a;
    }

    @ah
    public String b() {
        return this.b;
    }

    @ah
    public String c() {
        return this.c;
    }

    @ai
    public List<List<byte[]>> d() {
        return this.d;
    }

    @e
    public int e() {
        return this.e;
    }

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public String f() {
        return this.f;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("FontRequest {mProviderAuthority: " + this.f456a + ", mProviderPackage: " + this.b + ", mQuery: " + this.c + ", mCertificates:");
        for (int i = 0; i < this.d.size(); i++) {
            sb.append(" [");
            List<byte[]> list = this.d.get(i);
            for (int i2 = 0; i2 < list.size(); i2++) {
                sb.append(" \"");
                sb.append(Base64.encodeToString(list.get(i2), 0));
                sb.append("\"");
            }
            sb.append(" ]");
        }
        sb.append("}");
        sb.append("mCertificatesArray: " + this.e);
        return sb.toString();
    }
}
