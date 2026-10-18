package androidx.j;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes.dex */
public class an {
    public View b;

    /* renamed from: a, reason: collision with root package name */
    public final Map<String, Object> f859a = new HashMap();
    final ArrayList<ag> c = new ArrayList<>();

    @Deprecated
    public an() {
    }

    public an(@androidx.annotation.ah View view) {
        this.b = view;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof an)) {
            return false;
        }
        an anVar = (an) obj;
        return this.b == anVar.b && this.f859a.equals(anVar.f859a);
    }

    public int hashCode() {
        return (this.b.hashCode() * 31) + this.f859a.hashCode();
    }

    public String toString() {
        String str = (("TransitionValues@" + Integer.toHexString(hashCode()) + ":\n") + "    view = " + this.b + "\n") + "    values:";
        for (String str2 : this.f859a.keySet()) {
            str = str + "    " + str2 + ": " + this.f859a.get(str2) + "\n";
        }
        return str;
    }
}
