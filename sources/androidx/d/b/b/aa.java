package androidx.d.b.b;

import androidx.d.b.b.u;

/* loaded from: /home/user/work/dex/classes.dex */
public class aa {

    /* renamed from: a, reason: collision with root package name */
    private static final String f604a = "TransitionBuilder";

    public static void a(s sVar) {
        if (sVar.i == null) {
            throw new RuntimeException("Invalid motion layout. Layout missing Motion Scene.");
        }
        u uVar = sVar.i;
        if (!uVar.a(sVar)) {
            throw new RuntimeException("MotionLayout doesn't have the right motion scene.");
        }
        if (uVar.f == null || uVar.a().isEmpty()) {
            throw new RuntimeException("Invalid motion layout. Motion Scene doesn't have any transition.");
        }
    }

    public static u.a a(u uVar, int i, int i2, androidx.d.e.g gVar, int i3, androidx.d.e.g gVar2) {
        u.a aVar = new u.a(i, uVar, i2, i3);
        a(uVar, aVar, gVar, gVar2);
        return aVar;
    }

    private static void a(u uVar, u.a aVar, androidx.d.e.g gVar, androidx.d.e.g gVar2) {
        int e = aVar.e();
        int d = aVar.d();
        uVar.a(e, gVar);
        uVar.a(d, gVar2);
    }
}
