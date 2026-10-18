package androidx.fragment.app;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import androidx.annotation.as;
import androidx.fragment.app.d;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class j {

    /* renamed from: a, reason: collision with root package name */
    static final h f763a = new h();
    public static final int b = 1;
    private h c = null;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface a {
        int a();

        @as
        int b();

        @as
        int c();

        @ai
        CharSequence d();

        @ai
        CharSequence e();

        @ai
        String m();
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class b {
        public void a(@ah j jVar, @ah d dVar) {
        }

        public void a(@ah j jVar, @ah d dVar, @ah Context context) {
        }

        public void a(@ah j jVar, @ah d dVar, @ai Bundle bundle) {
        }

        public void a(@ah j jVar, @ah d dVar, @ah View view, @ai Bundle bundle) {
        }

        public void b(@ah j jVar, @ah d dVar) {
        }

        public void b(@ah j jVar, @ah d dVar, @ah Context context) {
        }

        public void b(@ah j jVar, @ah d dVar, @ai Bundle bundle) {
        }

        public void c(@ah j jVar, @ah d dVar) {
        }

        public void c(@ah j jVar, @ah d dVar, @ai Bundle bundle) {
        }

        public void d(@ah j jVar, @ah d dVar) {
        }

        public void d(@ah j jVar, @ah d dVar, @ah Bundle bundle) {
        }

        public void e(@ah j jVar, @ah d dVar) {
        }

        public void f(@ah j jVar, @ah d dVar) {
        }

        public void g(@ah j jVar, @ah d dVar) {
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface c {
        void a();
    }

    @ai
    public abstract d.C0058d a(@ah d dVar);

    @ai
    public abstract d a(@androidx.annotation.w int i);

    @ai
    public abstract d a(@ah Bundle bundle, @ah String str);

    @ai
    public abstract d a(@ai String str);

    @ah
    public abstract s a();

    public abstract void a(int i, int i2);

    public abstract void a(@ah Bundle bundle, @ah String str, @ah d dVar);

    public abstract void a(@ah b bVar);

    public abstract void a(@ah b bVar, boolean z);

    public abstract void a(@ah c cVar);

    public abstract void a(@ai String str, int i);

    public abstract void a(@ah String str, @ai FileDescriptor fileDescriptor, @ah PrintWriter printWriter, @ai String[] strArr);

    @ah
    public abstract a b(int i);

    public abstract void b(@ah c cVar);

    public abstract boolean b(int i, int i2);

    public abstract boolean b(@ai String str, int i);

    public abstract boolean c();

    public abstract void d();

    public abstract boolean e();

    public abstract int f();

    @ah
    public abstract List<d> g();

    public abstract boolean h();

    @ai
    public abstract d i();

    public abstract boolean k();

    @ah
    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    @Deprecated
    public s b() {
        return a();
    }

    public void a(@ah h hVar) {
        this.c = hVar;
    }

    @ah
    public h j() {
        if (this.c == null) {
            this.c = f763a;
        }
        return this.c;
    }

    public static void a(boolean z) {
        k.c = z;
    }
}
