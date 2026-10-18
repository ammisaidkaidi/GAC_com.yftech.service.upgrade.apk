package androidx.appcompat.a.a;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.m;
import androidx.annotation.q;
import androidx.appcompat.widget.ao;
import androidx.core.b.c;
import java.util.WeakHashMap;

@SuppressLint({"RestrictedAPI"})
/* loaded from: /home/user/work/dex/classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f30a = "AppCompatResources";
    private static final ThreadLocal<TypedValue> b = new ThreadLocal<>();
    private static final WeakHashMap<Context, SparseArray<C0009a>> c = new WeakHashMap<>(0);
    private static final Object d = new Object();

    private a() {
    }

    public static ColorStateList a(@ah Context context, @m int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            return context.getColorStateList(i);
        }
        ColorStateList d2 = d(context, i);
        if (d2 != null) {
            return d2;
        }
        ColorStateList c2 = c(context, i);
        if (c2 != null) {
            a(context, i, c2);
            return c2;
        }
        return c.b(context, i);
    }

    @ai
    public static Drawable b(@ah Context context, @q int i) {
        return ao.a().a(context, i);
    }

    @ai
    private static ColorStateList c(Context context, int i) {
        if (e(context, i)) {
            return null;
        }
        Resources resources = context.getResources();
        try {
            return androidx.core.b.b.a.a(resources, resources.getXml(i), context.getTheme());
        } catch (Exception e) {
            Log.e(f30a, "Failed to inflate ColorStateList, leaving it to the framework", e);
            return null;
        }
    }

    @ai
    private static ColorStateList d(@ah Context context, @m int i) {
        C0009a c0009a;
        synchronized (d) {
            SparseArray<C0009a> sparseArray = c.get(context);
            if (sparseArray != null && sparseArray.size() > 0 && (c0009a = sparseArray.get(i)) != null) {
                if (c0009a.b.equals(context.getResources().getConfiguration())) {
                    return c0009a.f31a;
                }
                sparseArray.remove(i);
            }
            return null;
        }
    }

    private static void a(@ah Context context, @m int i, @ah ColorStateList colorStateList) {
        synchronized (d) {
            SparseArray<C0009a> sparseArray = c.get(context);
            if (sparseArray == null) {
                sparseArray = new SparseArray<>();
                c.put(context, sparseArray);
            }
            sparseArray.append(i, new C0009a(colorStateList, context.getResources().getConfiguration()));
        }
    }

    private static boolean e(@ah Context context, @m int i) {
        Resources resources = context.getResources();
        TypedValue a2 = a();
        resources.getValue(i, a2, true);
        return a2.type >= 28 && a2.type <= 31;
    }

    @ah
    private static TypedValue a() {
        TypedValue typedValue = b.get();
        if (typedValue != null) {
            return typedValue;
        }
        TypedValue typedValue2 = new TypedValue();
        b.set(typedValue2);
        return typedValue2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.a.a.a$a, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class C0009a {

        /* renamed from: a, reason: collision with root package name */
        final ColorStateList f31a;
        final Configuration b;

        C0009a(@ah ColorStateList colorStateList, @ah Configuration configuration) {
            this.f31a = colorStateList;
            this.b = configuration;
        }
    }
}
