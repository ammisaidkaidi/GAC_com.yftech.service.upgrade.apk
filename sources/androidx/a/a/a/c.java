package androidx.a.a.a;

import androidx.annotation.ah;
import androidx.annotation.ap;

@ap(a = {ap.a.LIBRARY_GROUP})
/* loaded from: /home/user/work/dex/classes.dex */
public abstract class c {
    public abstract void a(@ah Runnable runnable);

    public abstract void b(@ah Runnable runnable);

    public abstract boolean d();

    public void c(@ah Runnable runnable) {
        if (d()) {
            runnable.run();
        } else {
            b(runnable);
        }
    }
}
