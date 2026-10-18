package androidx.core.n.c;

import android.content.ClipDescription;
import android.net.Uri;
import android.os.Build;
import android.view.inputmethod.InputContentInfo;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.am;

/* loaded from: /home/user/work/dex/classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    private final InterfaceC0044c f554a;

    /* renamed from: androidx.core.n.c.c$c, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    private interface InterfaceC0044c {
        @ah
        Uri a();

        @ah
        ClipDescription b();

        @ai
        Uri c();

        @ai
        Object d();

        void e();

        void f();
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static final class b implements InterfaceC0044c {

        /* renamed from: a, reason: collision with root package name */
        @ah
        private final Uri f556a;

        @ah
        private final ClipDescription b;

        @ai
        private final Uri c;

        @Override // androidx.core.n.c.c.InterfaceC0044c
        @ai
        public Object d() {
            return null;
        }

        @Override // androidx.core.n.c.c.InterfaceC0044c
        public void e() {
        }

        @Override // androidx.core.n.c.c.InterfaceC0044c
        public void f() {
        }

        b(@ah Uri uri, @ah ClipDescription clipDescription, @ai Uri uri2) {
            this.f556a = uri;
            this.b = clipDescription;
            this.c = uri2;
        }

        @Override // androidx.core.n.c.c.InterfaceC0044c
        @ah
        public Uri a() {
            return this.f556a;
        }

        @Override // androidx.core.n.c.c.InterfaceC0044c
        @ah
        public ClipDescription b() {
            return this.b;
        }

        @Override // androidx.core.n.c.c.InterfaceC0044c
        @ai
        public Uri c() {
            return this.c;
        }
    }

    @am(a = 25)
    /* loaded from: /home/user/work/dex/classes.dex */
    private static final class a implements InterfaceC0044c {

        /* renamed from: a, reason: collision with root package name */
        @ah
        final InputContentInfo f555a;

        a(@ah Object obj) {
            this.f555a = (InputContentInfo) obj;
        }

        a(@ah Uri uri, @ah ClipDescription clipDescription, @ai Uri uri2) {
            this.f555a = new InputContentInfo(uri, clipDescription, uri2);
        }

        @Override // androidx.core.n.c.c.InterfaceC0044c
        @ah
        public Uri a() {
            return this.f555a.getContentUri();
        }

        @Override // androidx.core.n.c.c.InterfaceC0044c
        @ah
        public ClipDescription b() {
            return this.f555a.getDescription();
        }

        @Override // androidx.core.n.c.c.InterfaceC0044c
        @ai
        public Uri c() {
            return this.f555a.getLinkUri();
        }

        @Override // androidx.core.n.c.c.InterfaceC0044c
        @ai
        public Object d() {
            return this.f555a;
        }

        @Override // androidx.core.n.c.c.InterfaceC0044c
        public void e() {
            this.f555a.requestPermission();
        }

        @Override // androidx.core.n.c.c.InterfaceC0044c
        public void f() {
            this.f555a.releasePermission();
        }
    }

    public c(@ah Uri uri, @ah ClipDescription clipDescription, @ai Uri uri2) {
        if (Build.VERSION.SDK_INT >= 25) {
            this.f554a = new a(uri, clipDescription, uri2);
        } else {
            this.f554a = new b(uri, clipDescription, uri2);
        }
    }

    private c(@ah InterfaceC0044c interfaceC0044c) {
        this.f554a = interfaceC0044c;
    }

    @ah
    public Uri a() {
        return this.f554a.a();
    }

    @ah
    public ClipDescription b() {
        return this.f554a.b();
    }

    @ai
    public Uri c() {
        return this.f554a.c();
    }

    @ai
    public static c a(@ai Object obj) {
        if (obj != null && Build.VERSION.SDK_INT >= 25) {
            return new c(new a(obj));
        }
        return null;
    }

    @ai
    public Object d() {
        return this.f554a.d();
    }

    public void e() {
        this.f554a.e();
    }

    public void f() {
        this.f554a.f();
    }
}
