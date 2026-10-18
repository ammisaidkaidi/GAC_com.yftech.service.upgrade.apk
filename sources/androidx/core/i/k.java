package androidx.core.i;

import androidx.annotation.ai;

/* loaded from: /home/user/work/dex/classes.dex */
public class k extends RuntimeException {
    public k() {
        this(null);
    }

    public k(@ai String str) {
        super(str == null ? "The operation has been canceled." : str);
    }
}
