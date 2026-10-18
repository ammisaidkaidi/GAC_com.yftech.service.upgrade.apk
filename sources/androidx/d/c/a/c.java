package androidx.d.c.a;

import androidx.d.c.a.e;
import androidx.d.c.b.j;
import java.util.ArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    protected final e f650a;
    final e.d b;
    protected ArrayList<Object> c = new ArrayList<>();
    private j d;

    public void c() {
    }

    public c(e eVar, e.d dVar) {
        this.f650a = eVar;
        this.b = dVar;
    }

    public e.d a() {
        return this.b;
    }

    public c a(Object... objArr) {
        for (Object obj : objArr) {
            this.c.add(obj);
        }
        return this;
    }

    public void a(j jVar) {
        this.d = jVar;
    }

    public j b() {
        return this.d;
    }
}
