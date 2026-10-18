package androidx.i.b;

import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import androidx.annotation.ae;
import androidx.annotation.ah;
import androidx.annotation.ai;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* loaded from: /home/user/work/dex/classes.dex */
public class c<D> {
    int p;
    InterfaceC0065c<D> q;
    b<D> r;
    Context s;
    boolean t = false;
    boolean u = false;
    boolean v = true;
    boolean w = false;
    boolean x = false;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface b<D> {
        void a(@ah c<D> cVar);
    }

    /* renamed from: androidx.i.b.c$c, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface InterfaceC0065c<D> {
        void a(@ah c<D> cVar, @ai D d);
    }

    @ae
    protected void C() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @ae
    public void a() {
    }

    @ae
    protected boolean b() {
        return false;
    }

    @ae
    protected void j() {
    }

    @ae
    protected void k() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @ae
    public void l() {
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public final class a extends ContentObserver {
        @Override // android.database.ContentObserver
        public boolean deliverSelfNotifications() {
            return true;
        }

        public a() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            c.this.H();
        }
    }

    public c(@ah Context context) {
        this.s = context.getApplicationContext();
    }

    @ae
    public void b(@ai D d) {
        if (this.q != null) {
            this.q.a(this, d);
        }
    }

    @ae
    public void r() {
        if (this.r != null) {
            this.r.a(this);
        }
    }

    @ah
    public Context s() {
        return this.s;
    }

    public int t() {
        return this.p;
    }

    @ae
    public void a(int i, @ah InterfaceC0065c<D> interfaceC0065c) {
        if (this.q != null) {
            throw new IllegalStateException("There is already a listener registered");
        }
        this.q = interfaceC0065c;
        this.p = i;
    }

    @ae
    public void a(@ah InterfaceC0065c<D> interfaceC0065c) {
        if (this.q == null) {
            throw new IllegalStateException("No listener register");
        }
        if (this.q != interfaceC0065c) {
            throw new IllegalArgumentException("Attempting to unregister the wrong listener");
        }
        this.q = null;
    }

    @ae
    public void a(@ah b<D> bVar) {
        if (this.r != null) {
            throw new IllegalStateException("There is already a listener registered");
        }
        this.r = bVar;
    }

    @ae
    public void b(@ah b<D> bVar) {
        if (this.r == null) {
            throw new IllegalStateException("No listener register");
        }
        if (this.r != bVar) {
            throw new IllegalArgumentException("Attempting to unregister the wrong listener");
        }
        this.r = null;
    }

    public boolean u() {
        return this.t;
    }

    public boolean v() {
        return this.u;
    }

    public boolean w() {
        return this.v;
    }

    @ae
    public final void x() {
        this.t = true;
        this.v = false;
        this.u = false;
        j();
    }

    @ae
    public boolean y() {
        return b();
    }

    @ae
    public void z() {
        a();
    }

    @ae
    public void A() {
        this.t = false;
        k();
    }

    @ae
    public void B() {
        this.u = true;
        C();
    }

    @ae
    public void D() {
        l();
        this.v = true;
        this.t = false;
        this.u = false;
        this.w = false;
        this.x = false;
    }

    public boolean E() {
        boolean z = this.w;
        this.w = false;
        this.x |= z;
        return z;
    }

    public void F() {
        this.x = false;
    }

    public void G() {
        if (this.x) {
            H();
        }
    }

    @ae
    public void H() {
        if (this.t) {
            z();
        } else {
            this.w = true;
        }
    }

    @ah
    public String c(@ai D d) {
        StringBuilder sb = new StringBuilder(64);
        androidx.core.m.c.a(d, sb);
        sb.append("}");
        return sb.toString();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        androidx.core.m.c.a(this, sb);
        sb.append(" id=");
        sb.append(this.p);
        sb.append("}");
        return sb.toString();
    }

    @Deprecated
    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mId=");
        printWriter.print(this.p);
        printWriter.print(" mListener=");
        printWriter.println(this.q);
        if (this.t || this.w || this.x) {
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.print(this.t);
            printWriter.print(" mContentChanged=");
            printWriter.print(this.w);
            printWriter.print(" mProcessingChange=");
            printWriter.println(this.x);
        }
        if (this.u || this.v) {
            printWriter.print(str);
            printWriter.print("mAbandoned=");
            printWriter.print(this.u);
            printWriter.print(" mReset=");
            printWriter.println(this.v);
        }
    }
}
