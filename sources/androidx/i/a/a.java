package androidx.i.a;

import android.os.Bundle;
import androidx.annotation.ae;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.i.b.c;
import androidx.lifecycle.j;
import androidx.lifecycle.y;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class a {

    /* renamed from: androidx.i.a.a$a, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface InterfaceC0062a<D> {
        @ae
        @ah
        c<D> a(int i, @ai Bundle bundle);

        @ae
        void a(@ah c<D> cVar);

        @ae
        void a(@ah c<D> cVar, D d);
    }

    @ae
    @ah
    public abstract <D> c<D> a(int i, @ai Bundle bundle, @ah InterfaceC0062a<D> interfaceC0062a);

    public abstract void a();

    @ae
    public abstract void a(int i);

    @Deprecated
    public abstract void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    @ai
    public abstract <D> c<D> b(int i);

    @ae
    @ah
    public abstract <D> c<D> b(int i, @ai Bundle bundle, @ah InterfaceC0062a<D> interfaceC0062a);

    public boolean b() {
        return false;
    }

    @ah
    public static <T extends j & y> a a(@ah T t) {
        return new b(t, t.d());
    }

    public static void a(boolean z) {
        b.b = z;
    }
}
