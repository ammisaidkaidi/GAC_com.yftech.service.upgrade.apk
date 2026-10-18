package androidx.lifecycle;

import androidx.annotation.ae;
import androidx.annotation.ah;
import androidx.annotation.ap;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class g {

    /* renamed from: a, reason: collision with root package name */
    @ah
    @ap(a = {ap.a.LIBRARY_GROUP})
    AtomicReference<Object> f968a = new AtomicReference<>();

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum a {
        ON_CREATE,
        ON_START,
        ON_RESUME,
        ON_PAUSE,
        ON_STOP,
        ON_DESTROY,
        ON_ANY
    }

    @ae
    @ah
    public abstract b a();

    @ae
    public abstract void a(@ah i iVar);

    @ae
    public abstract void b(@ah i iVar);

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum b {
        DESTROYED,
        INITIALIZED,
        CREATED,
        STARTED,
        RESUMED;

        public boolean a(@ah b bVar) {
            return compareTo(bVar) >= 0;
        }
    }
}
