package androidx.core.graphics;

import android.graphics.Typeface;
import androidx.annotation.am;
import androidx.annotation.ap;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@am(a = 28)
@ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public class o extends n {
    private static final String h = "createFromFamiliesWithDefault";
    private static final int i = -1;
    private static final String j = "sans-serif";

    @Override // androidx.core.graphics.n
    protected Typeface a(Object obj) {
        try {
            Object newInstance = Array.newInstance(this.f441a, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) this.g.invoke(null, newInstance, j, -1, -1);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // androidx.core.graphics.n
    protected Method f(Class<?> cls) {
        Method declaredMethod = Typeface.class.getDeclaredMethod(h, Array.newInstance(cls, 1).getClass(), String.class, Integer.TYPE, Integer.TYPE);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }
}
