package androidx.appcompat.view;

import android.view.View;
import android.view.animation.Interpolator;
import androidx.annotation.ap;
import androidx.core.n.aj;
import androidx.core.n.ak;
import androidx.core.n.al;
import java.util.ArrayList;
import java.util.Iterator;

@ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public class h {
    ak b;
    private Interpolator d;
    private boolean e;
    private long c = -1;
    private final al f = new al() { // from class: androidx.appcompat.view.h.1
        private boolean b = false;
        private int c = 0;

        @Override // androidx.core.n.al, androidx.core.n.ak
        public void a(View view) {
            if (this.b) {
                return;
            }
            this.b = true;
            if (h.this.b != null) {
                h.this.b.a(null);
            }
        }

        void a() {
            this.c = 0;
            this.b = false;
            h.this.b();
        }

        @Override // androidx.core.n.al, androidx.core.n.ak
        public void b(View view) {
            int i = this.c + 1;
            this.c = i;
            if (i == h.this.f118a.size()) {
                if (h.this.b != null) {
                    h.this.b.b(null);
                }
                a();
            }
        }
    };

    /* renamed from: a, reason: collision with root package name */
    final ArrayList<aj> f118a = new ArrayList<>();

    public h a(aj ajVar) {
        if (!this.e) {
            this.f118a.add(ajVar);
        }
        return this;
    }

    public h a(aj ajVar, aj ajVar2) {
        this.f118a.add(ajVar);
        ajVar2.b(ajVar.a());
        this.f118a.add(ajVar2);
        return this;
    }

    public void a() {
        if (this.e) {
            return;
        }
        Iterator<aj> it = this.f118a.iterator();
        while (it.hasNext()) {
            aj next = it.next();
            if (this.c >= 0) {
                next.a(this.c);
            }
            if (this.d != null) {
                next.a(this.d);
            }
            if (this.b != null) {
                next.a(this.f);
            }
            next.e();
        }
        this.e = true;
    }

    void b() {
        this.e = false;
    }

    public void c() {
        if (this.e) {
            Iterator<aj> it = this.f118a.iterator();
            while (it.hasNext()) {
                it.next().d();
            }
            this.e = false;
        }
    }

    public h a(long j) {
        if (!this.e) {
            this.c = j;
        }
        return this;
    }

    public h a(Interpolator interpolator) {
        if (!this.e) {
            this.d = interpolator;
        }
        return this;
    }

    public h a(ak akVar) {
        if (!this.e) {
            this.b = akVar;
        }
        return this;
    }
}
