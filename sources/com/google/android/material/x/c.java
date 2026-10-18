package com.google.android.material.x;

import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.a.h;
import com.google.android.material.x.b;
import java.lang.ref.WeakReference;

/* loaded from: /home/user/work/dex/classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    @ah
    private final com.google.android.material.x.b f1502a;

    @ah
    private final h b;
    private final boolean c;
    private final boolean d;
    private final b e;

    @ai
    private RecyclerView.a<?> f;
    private boolean g;

    @ai
    private C0098c h;

    @ai
    private b.e i;

    @ai
    private RecyclerView.c j;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface b {
        void a(@ah b.h hVar, int i);
    }

    public c(@ah com.google.android.material.x.b bVar, @ah h hVar, @ah b bVar2) {
        this(bVar, hVar, true, bVar2);
    }

    public c(@ah com.google.android.material.x.b bVar, @ah h hVar, boolean z, @ah b bVar2) {
        this(bVar, hVar, z, true, bVar2);
    }

    public c(@ah com.google.android.material.x.b bVar, @ah h hVar, boolean z, boolean z2, @ah b bVar2) {
        this.f1502a = bVar;
        this.b = hVar;
        this.c = z;
        this.d = z2;
        this.e = bVar2;
    }

    public void a() {
        if (this.g) {
            throw new IllegalStateException("TabLayoutMediator is already attached");
        }
        this.f = this.b.getAdapter();
        if (this.f == null) {
            throw new IllegalStateException("TabLayoutMediator attached before ViewPager2 has an adapter");
        }
        this.g = true;
        this.h = new C0098c(this.f1502a);
        this.b.a(this.h);
        this.i = new d(this.b, this.d);
        this.f1502a.a(this.i);
        if (this.c) {
            this.j = new a();
            this.f.a(this.j);
        }
        c();
        this.f1502a.a(this.b.getCurrentItem(), 0.0f, true);
    }

    public void b() {
        if (this.c && this.f != null) {
            this.f.b(this.j);
            this.j = null;
        }
        this.f1502a.b(this.i);
        this.b.b(this.h);
        this.i = null;
        this.h = null;
        this.f = null;
        this.g = false;
    }

    void c() {
        this.f1502a.d();
        if (this.f != null) {
            int a2 = this.f.a();
            for (int i = 0; i < a2; i++) {
                b.h b2 = this.f1502a.b();
                this.e.a(b2, i);
                this.f1502a.a(b2, false);
            }
            if (a2 > 0) {
                int min = Math.min(this.b.getCurrentItem(), this.f1502a.getTabCount() - 1);
                if (min != this.f1502a.getSelectedTabPosition()) {
                    this.f1502a.d(this.f1502a.a(min));
                }
            }
        }
    }

    /* renamed from: com.google.android.material.x.c$c, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    private static class C0098c extends h.f {

        /* renamed from: a, reason: collision with root package name */
        @ah
        private final WeakReference<com.google.android.material.x.b> f1504a;
        private int b;
        private int c;

        C0098c(com.google.android.material.x.b bVar) {
            this.f1504a = new WeakReference<>(bVar);
            a();
        }

        @Override // androidx.viewpager2.a.h.f
        public void a(int i) {
            this.b = this.c;
            this.c = i;
        }

        @Override // androidx.viewpager2.a.h.f
        public void a(int i, float f, int i2) {
            com.google.android.material.x.b bVar = this.f1504a.get();
            if (bVar != null) {
                bVar.a(i, f, this.c != 2 || this.b == 1, (this.c == 2 && this.b == 0) ? false : true);
            }
        }

        @Override // androidx.viewpager2.a.h.f
        public void b(int i) {
            com.google.android.material.x.b bVar = this.f1504a.get();
            if (bVar == null || bVar.getSelectedTabPosition() == i || i >= bVar.getTabCount()) {
                return;
            }
            bVar.b(bVar.a(i), this.c == 0 || (this.c == 2 && this.b == 0));
        }

        void a() {
            this.c = 0;
            this.b = 0;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class d implements b.e {

        /* renamed from: a, reason: collision with root package name */
        private final h f1505a;
        private final boolean b;

        @Override // com.google.android.material.x.b.InterfaceC0097b
        public void b(b.h hVar) {
        }

        @Override // com.google.android.material.x.b.InterfaceC0097b
        public void c(b.h hVar) {
        }

        d(h hVar, boolean z) {
            this.f1505a = hVar;
            this.b = z;
        }

        @Override // com.google.android.material.x.b.InterfaceC0097b
        public void a(@ah b.h hVar) {
            this.f1505a.a(hVar.d(), this.b);
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private class a extends RecyclerView.c {
        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.c
        public void a() {
            c.this.c();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.c
        public void a(int i, int i2) {
            c.this.c();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.c
        public void a(int i, int i2, @ai Object obj) {
            c.this.c();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.c
        public void b(int i, int i2) {
            c.this.c();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.c
        public void c(int i, int i2) {
            c.this.c();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.c
        public void a(int i, int i2, int i3) {
            c.this.c();
        }
    }
}
