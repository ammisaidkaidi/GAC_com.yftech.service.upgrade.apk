package androidx.d.b.b;

import android.content.Context;
import android.util.AttributeSet;
import java.util.HashMap;
import java.util.HashSet;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class e {

    /* renamed from: a, reason: collision with root package name */
    public static int f606a = -1;
    static final String g = "alpha";
    static final String h = "elevation";
    static final String i = "rotation";
    static final String j = "rotationX";
    static final String k = "rotationY";
    static final String l = "transformPivotX";
    static final String m = "transformPivotY";
    static final String n = "transitionPathRotate";
    static final String o = "scaleX";
    static final String p = "scaleY";
    static final String q = "wavePeriod";
    static final String r = "waveOffset";
    static final String s = "waveVariesBy";
    static final String t = "translationX";
    static final String u = "translationY";
    static final String v = "translationZ";
    static final String w = "progress";
    static final String x = "CUSTOM";
    int b = f606a;
    int c = f606a;
    String d = null;
    protected int e;
    HashMap<String, androidx.d.e.b> f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(Context context, AttributeSet attributeSet);

    public abstract void a(String str, Object obj);

    public abstract void a(HashMap<String, w> hashMap);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(HashSet<String> hashSet);

    public void b(HashMap<String, Integer> hashMap) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(String str) {
        if (this.d == null || str == null) {
            return false;
        }
        return str.matches(this.d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float a(Object obj) {
        return obj instanceof Float ? ((Float) obj).floatValue() : Float.parseFloat(obj.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b(Object obj) {
        return obj instanceof Integer ? ((Integer) obj).intValue() : Integer.parseInt(obj.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c(Object obj) {
        return obj instanceof Boolean ? ((Boolean) obj).booleanValue() : Boolean.parseBoolean(obj.toString());
    }
}
