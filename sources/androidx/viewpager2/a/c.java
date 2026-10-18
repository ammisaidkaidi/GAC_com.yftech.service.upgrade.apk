package androidx.viewpager2.a;

import android.view.View;
import androidx.annotation.ah;
import androidx.viewpager2.a.h;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public final class c implements h.i {

    /* renamed from: a, reason: collision with root package name */
    private final List<h.i> f1118a = new ArrayList();

    public void a(@ah h.i iVar) {
        this.f1118a.add(iVar);
    }

    public void b(@ah h.i iVar) {
        this.f1118a.remove(iVar);
    }

    @Override // androidx.viewpager2.a.h.i
    public void a(@ah View view, float f) {
        Iterator<h.i> it = this.f1118a.iterator();
        while (it.hasNext()) {
            it.next().a(view, f);
        }
    }
}
