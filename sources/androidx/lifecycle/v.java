package androidx.lifecycle;

import androidx.annotation.ae;
import androidx.annotation.ai;
import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class v {

    /* renamed from: a, reason: collision with root package name */
    @ai
    private final Map<String, Object> f980a = new HashMap();
    private volatile boolean b = false;

    /* JADX INFO: Access modifiers changed from: protected */
    public void a() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ae
    public final void e() {
        this.b = true;
        if (this.f980a != null) {
            synchronized (this.f980a) {
                Iterator<Object> it = this.f980a.values().iterator();
                while (it.hasNext()) {
                    a(it.next());
                }
            }
        }
        a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    <T> T a(String str, T t) {
        Object obj;
        synchronized (this.f980a) {
            obj = this.f980a.get(str);
            if (obj == 0) {
                this.f980a.put(str, t);
            }
        }
        if (obj != 0) {
            t = obj;
        }
        if (this.b) {
            a(t);
        }
        return t;
    }

    <T> T a(String str) {
        T t;
        synchronized (this.f980a) {
            t = (T) this.f980a.get(str);
        }
        return t;
    }

    private static void a(Object obj) {
        if (obj instanceof Closeable) {
            try {
                ((Closeable) obj).close();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }
}
