package androidx.lifecycle;

import androidx.annotation.ap;
import java.util.HashMap;
import java.util.Map;

@ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public class o {

    /* renamed from: a, reason: collision with root package name */
    private Map<String, Integer> f975a = new HashMap();

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public boolean a(String str, int i) {
        Integer num = this.f975a.get(str);
        int intValue = num != null ? num.intValue() : 0;
        boolean z = (intValue & i) != 0;
        this.f975a.put(str, Integer.valueOf(i | intValue));
        return !z;
    }
}
