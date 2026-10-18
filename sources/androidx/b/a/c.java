package androidx.b.a;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.View;
import androidx.annotation.ai;
import androidx.annotation.am;

/* JADX INFO: Access modifiers changed from: package-private */
@am(a = 21)
/* loaded from: /home/user/work/dex/classes.dex */
public class c implements f {
    @Override // androidx.b.a.f
    public void a() {
    }

    @Override // androidx.b.a.f
    public void a(e eVar, Context context, ColorStateList colorStateList, float f, float f2, float f3) {
        eVar.a(new g(colorStateList, f));
        View d = eVar.d();
        d.setClipToOutline(true);
        d.setElevation(f2);
        b(eVar, f3);
    }

    @Override // androidx.b.a.f
    public void a(e eVar, float f) {
        j(eVar).a(f);
    }

    @Override // androidx.b.a.f
    public void b(e eVar, float f) {
        j(eVar).a(f, eVar.a(), eVar.b());
        f(eVar);
    }

    @Override // androidx.b.a.f
    public float a(e eVar) {
        return j(eVar).a();
    }

    @Override // androidx.b.a.f
    public float b(e eVar) {
        return d(eVar) * 2.0f;
    }

    @Override // androidx.b.a.f
    public float c(e eVar) {
        return d(eVar) * 2.0f;
    }

    @Override // androidx.b.a.f
    public float d(e eVar) {
        return j(eVar).b();
    }

    @Override // androidx.b.a.f
    public void c(e eVar, float f) {
        eVar.d().setElevation(f);
    }

    @Override // androidx.b.a.f
    public float e(e eVar) {
        return eVar.d().getElevation();
    }

    @Override // androidx.b.a.f
    public void f(e eVar) {
        if (!eVar.a()) {
            eVar.a(0, 0, 0, 0);
            return;
        }
        float a2 = a(eVar);
        float d = d(eVar);
        int ceil = (int) Math.ceil(h.b(a2, d, eVar.b()));
        int ceil2 = (int) Math.ceil(h.a(a2, d, eVar.b()));
        eVar.a(ceil, ceil2, ceil, ceil2);
    }

    @Override // androidx.b.a.f
    public void g(e eVar) {
        b(eVar, a(eVar));
    }

    @Override // androidx.b.a.f
    public void h(e eVar) {
        b(eVar, a(eVar));
    }

    @Override // androidx.b.a.f
    public void a(e eVar, @ai ColorStateList colorStateList) {
        j(eVar).a(colorStateList);
    }

    @Override // androidx.b.a.f
    public ColorStateList i(e eVar) {
        return j(eVar).c();
    }

    private g j(e eVar) {
        return (g) eVar.c();
    }
}
