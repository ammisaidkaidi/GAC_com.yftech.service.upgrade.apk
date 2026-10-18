package androidx.core.n.a;

import android.os.Build;
import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import androidx.annotation.ai;
import androidx.annotation.am;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    public static final int f520a = -1;
    private final Object b;

    @ai
    public d a(int i) {
        return null;
    }

    @ai
    public List<d> a(String str, int i) {
        return null;
    }

    public boolean a(int i, int i2, Bundle bundle) {
        return false;
    }

    @ai
    public d b(int i) {
        return null;
    }

    @am(a = 16)
    /* loaded from: /home/user/work/dex/classes.dex */
    static class a extends AccessibilityNodeProvider {

        /* renamed from: a, reason: collision with root package name */
        final e f521a;

        a(e eVar) {
            this.f521a = eVar;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public AccessibilityNodeInfo createAccessibilityNodeInfo(int i) {
            d a2 = this.f521a.a(i);
            if (a2 == null) {
                return null;
            }
            return a2.a();
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String str, int i) {
            List<d> a2 = this.f521a.a(str, i);
            if (a2 == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            int size = a2.size();
            for (int i2 = 0; i2 < size; i2++) {
                arrayList.add(a2.get(i2).a());
            }
            return arrayList;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public boolean performAction(int i, int i2, Bundle bundle) {
            return this.f521a.a(i, i2, bundle);
        }
    }

    @am(a = 19)
    /* loaded from: /home/user/work/dex/classes.dex */
    static class b extends a {
        b(e eVar) {
            super(eVar);
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public AccessibilityNodeInfo findFocus(int i) {
            d b = this.f521a.b(i);
            if (b == null) {
                return null;
            }
            return b.a();
        }
    }

    public e() {
        if (Build.VERSION.SDK_INT >= 19) {
            this.b = new b(this);
        } else if (Build.VERSION.SDK_INT >= 16) {
            this.b = new a(this);
        } else {
            this.b = null;
        }
    }

    public e(Object obj) {
        this.b = obj;
    }

    public Object a() {
        return this.b;
    }
}
