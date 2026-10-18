package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import androidx.annotation.ap;
import androidx.appcompat.c.a;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

@androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public final class ao {

    /* renamed from: a, reason: collision with root package name */
    private static final String f223a = "ResourceManagerInternal";
    private static final boolean b = false;
    private static final String d = "appcompat_skip_skip";
    private static final String e = "android.graphics.drawable.VectorDrawable";
    private static ao f;
    private WeakHashMap<Context, androidx.c.j<ColorStateList>> h;
    private androidx.c.i<String, d> i;
    private androidx.c.j<String> j;
    private final WeakHashMap<Context, androidx.c.f<WeakReference<Drawable.ConstantState>>> k = new WeakHashMap<>(0);
    private TypedValue l;
    private boolean m;
    private e n;
    private static final PorterDuff.Mode c = PorterDuff.Mode.SRC_IN;
    private static final c g = new c(6);

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface d {
        Drawable a(@androidx.annotation.ah Context context, @androidx.annotation.ah XmlPullParser xmlPullParser, @androidx.annotation.ah AttributeSet attributeSet, @androidx.annotation.ai Resources.Theme theme);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface e {
        ColorStateList a(@androidx.annotation.ah Context context, @androidx.annotation.q int i);

        PorterDuff.Mode a(int i);

        Drawable a(@androidx.annotation.ah ao aoVar, @androidx.annotation.ah Context context, @androidx.annotation.q int i);

        boolean a(@androidx.annotation.ah Context context, @androidx.annotation.q int i, @androidx.annotation.ah Drawable drawable);

        boolean b(@androidx.annotation.ah Context context, @androidx.annotation.q int i, @androidx.annotation.ah Drawable drawable);
    }

    public static synchronized ao a() {
        ao aoVar;
        synchronized (ao.class) {
            if (f == null) {
                f = new ao();
                a(f);
            }
            aoVar = f;
        }
        return aoVar;
    }

    private static void a(@androidx.annotation.ah ao aoVar) {
        if (Build.VERSION.SDK_INT < 24) {
            aoVar.a("vector", new f());
            aoVar.a("animated-vector", new b());
            aoVar.a("animated-selector", new a());
        }
    }

    public synchronized void a(e eVar) {
        this.n = eVar;
    }

    public synchronized Drawable a(@androidx.annotation.ah Context context, @androidx.annotation.q int i) {
        return a(context, i, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized Drawable a(@androidx.annotation.ah Context context, @androidx.annotation.q int i, boolean z) {
        Drawable d2;
        b(context);
        d2 = d(context, i);
        if (d2 == null) {
            d2 = c(context, i);
        }
        if (d2 == null) {
            d2 = androidx.core.b.c.a(context, i);
        }
        if (d2 != null) {
            d2 = a(context, i, z, d2);
        }
        if (d2 != null) {
            af.b(d2);
        }
        return d2;
    }

    public synchronized void a(@androidx.annotation.ah Context context) {
        androidx.c.f<WeakReference<Drawable.ConstantState>> fVar = this.k.get(context);
        if (fVar != null) {
            fVar.d();
        }
    }

    private static long a(TypedValue typedValue) {
        return (typedValue.assetCookie << 32) | typedValue.data;
    }

    private Drawable c(@androidx.annotation.ah Context context, @androidx.annotation.q int i) {
        if (this.l == null) {
            this.l = new TypedValue();
        }
        TypedValue typedValue = this.l;
        context.getResources().getValue(i, typedValue, true);
        long a2 = a(typedValue);
        Drawable a3 = a(context, a2);
        if (a3 != null) {
            return a3;
        }
        Drawable a4 = this.n == null ? null : this.n.a(this, context, i);
        if (a4 != null) {
            a4.setChangingConfigurations(typedValue.changingConfigurations);
            a(context, a2, a4);
        }
        return a4;
    }

    private Drawable a(@androidx.annotation.ah Context context, @androidx.annotation.q int i, boolean z, @androidx.annotation.ah Drawable drawable) {
        ColorStateList b2 = b(context, i);
        if (b2 != null) {
            if (af.c(drawable)) {
                drawable = drawable.mutate();
            }
            Drawable g2 = androidx.core.graphics.drawable.a.g(drawable);
            androidx.core.graphics.drawable.a.a(g2, b2);
            PorterDuff.Mode a2 = a(i);
            if (a2 == null) {
                return g2;
            }
            androidx.core.graphics.drawable.a.a(g2, a2);
            return g2;
        }
        if ((this.n == null || !this.n.a(context, i, drawable)) && !a(context, i, drawable) && z) {
            return null;
        }
        return drawable;
    }

    private Drawable d(@androidx.annotation.ah Context context, @androidx.annotation.q int i) {
        int next;
        if (this.i == null || this.i.isEmpty()) {
            return null;
        }
        if (this.j != null) {
            String a2 = this.j.a(i);
            if (d.equals(a2) || (a2 != null && this.i.get(a2) == null)) {
                return null;
            }
        } else {
            this.j = new androidx.c.j<>();
        }
        if (this.l == null) {
            this.l = new TypedValue();
        }
        TypedValue typedValue = this.l;
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        long a3 = a(typedValue);
        Drawable a4 = a(context, a3);
        if (a4 != null) {
            return a4;
        }
        if (typedValue.string != null && typedValue.string.toString().endsWith(".xml")) {
            try {
                XmlResourceParser xml = resources.getXml(i);
                AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next != 2) {
                    throw new XmlPullParserException("No start tag found");
                }
                String name = xml.getName();
                this.j.g(i, name);
                d dVar = this.i.get(name);
                if (dVar != null) {
                    a4 = dVar.a(context, xml, asAttributeSet, context.getTheme());
                }
                if (a4 != null) {
                    a4.setChangingConfigurations(typedValue.changingConfigurations);
                    a(context, a3, a4);
                }
            } catch (Exception e2) {
                Log.e(f223a, "Exception while inflating drawable", e2);
            }
        }
        if (a4 == null) {
            this.j.g(i, d);
        }
        return a4;
    }

    private synchronized Drawable a(@androidx.annotation.ah Context context, long j) {
        androidx.c.f<WeakReference<Drawable.ConstantState>> fVar = this.k.get(context);
        if (fVar == null) {
            return null;
        }
        WeakReference<Drawable.ConstantState> a2 = fVar.a(j);
        if (a2 != null) {
            Drawable.ConstantState constantState = a2.get();
            if (constantState != null) {
                return constantState.newDrawable(context.getResources());
            }
            fVar.c(j);
        }
        return null;
    }

    private synchronized boolean a(@androidx.annotation.ah Context context, long j, @androidx.annotation.ah Drawable drawable) {
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (constantState == null) {
            return false;
        }
        androidx.c.f<WeakReference<Drawable.ConstantState>> fVar = this.k.get(context);
        if (fVar == null) {
            fVar = new androidx.c.f<>();
            this.k.put(context, fVar);
        }
        fVar.d(j, new WeakReference<>(constantState));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized Drawable a(@androidx.annotation.ah Context context, @androidx.annotation.ah bf bfVar, @androidx.annotation.q int i) {
        Drawable d2 = d(context, i);
        if (d2 == null) {
            d2 = bfVar.a(i);
        }
        if (d2 == null) {
            return null;
        }
        return a(context, i, false, d2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(@androidx.annotation.ah Context context, @androidx.annotation.q int i, @androidx.annotation.ah Drawable drawable) {
        return this.n != null && this.n.b(context, i, drawable);
    }

    private void a(@androidx.annotation.ah String str, @androidx.annotation.ah d dVar) {
        if (this.i == null) {
            this.i = new androidx.c.i<>();
        }
        this.i.put(str, dVar);
    }

    PorterDuff.Mode a(int i) {
        if (this.n == null) {
            return null;
        }
        return this.n.a(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized ColorStateList b(@androidx.annotation.ah Context context, @androidx.annotation.q int i) {
        ColorStateList e2;
        e2 = e(context, i);
        if (e2 == null) {
            e2 = this.n == null ? null : this.n.a(context, i);
            if (e2 != null) {
                a(context, i, e2);
            }
        }
        return e2;
    }

    private ColorStateList e(@androidx.annotation.ah Context context, @androidx.annotation.q int i) {
        androidx.c.j<ColorStateList> jVar;
        if (this.h == null || (jVar = this.h.get(context)) == null) {
            return null;
        }
        return jVar.a(i);
    }

    private void a(@androidx.annotation.ah Context context, @androidx.annotation.q int i, @androidx.annotation.ah ColorStateList colorStateList) {
        if (this.h == null) {
            this.h = new WeakHashMap<>();
        }
        androidx.c.j<ColorStateList> jVar = this.h.get(context);
        if (jVar == null) {
            jVar = new androidx.c.j<>();
            this.h.put(context, jVar);
        }
        jVar.g(i, colorStateList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class c extends androidx.c.g<Integer, PorterDuffColorFilter> {
        public c(int i) {
            super(i);
        }

        PorterDuffColorFilter a(int i, PorterDuff.Mode mode) {
            return a((c) Integer.valueOf(b(i, mode)));
        }

        PorterDuffColorFilter a(int i, PorterDuff.Mode mode, PorterDuffColorFilter porterDuffColorFilter) {
            return a((c) Integer.valueOf(b(i, mode)), (Integer) porterDuffColorFilter);
        }

        private static int b(int i, PorterDuff.Mode mode) {
            return ((i + 31) * 31) + mode.hashCode();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Drawable drawable, ay ayVar, int[] iArr) {
        if (af.c(drawable) && drawable.mutate() != drawable) {
            Log.d(f223a, "Mutated drawable is not the same instance as the input.");
            return;
        }
        if (ayVar.d || ayVar.c) {
            drawable.setColorFilter(a(ayVar.d ? ayVar.f241a : null, ayVar.c ? ayVar.b : c, iArr));
        } else {
            drawable.clearColorFilter();
        }
        if (Build.VERSION.SDK_INT <= 23) {
            drawable.invalidateSelf();
        }
    }

    private static PorterDuffColorFilter a(ColorStateList colorStateList, PorterDuff.Mode mode, int[] iArr) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return a(colorStateList.getColorForState(iArr, 0), mode);
    }

    public static synchronized PorterDuffColorFilter a(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter a2;
        synchronized (ao.class) {
            a2 = g.a(i, mode);
            if (a2 == null) {
                a2 = new PorterDuffColorFilter(i, mode);
                g.a(i, mode, a2);
            }
        }
        return a2;
    }

    private void b(@androidx.annotation.ah Context context) {
        if (this.m) {
            return;
        }
        this.m = true;
        Drawable a2 = a(context, a.d.abc_vector_test);
        if (a2 == null || !a(a2)) {
            this.m = false;
            throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
        }
    }

    private static boolean a(@androidx.annotation.ah Drawable drawable) {
        return (drawable instanceof androidx.k.b.a.i) || e.equals(drawable.getClass().getName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class f implements d {
        f() {
        }

        @Override // androidx.appcompat.widget.ao.d
        public Drawable a(@androidx.annotation.ah Context context, @androidx.annotation.ah XmlPullParser xmlPullParser, @androidx.annotation.ah AttributeSet attributeSet, @androidx.annotation.ai Resources.Theme theme) {
            try {
                return androidx.k.b.a.i.a(context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("VdcInflateDelegate", "Exception while inflating <vector>", e);
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class b implements d {
        b() {
        }

        @Override // androidx.appcompat.widget.ao.d
        public Drawable a(@androidx.annotation.ah Context context, @androidx.annotation.ah XmlPullParser xmlPullParser, @androidx.annotation.ah AttributeSet attributeSet, @androidx.annotation.ai Resources.Theme theme) {
            try {
                return androidx.k.b.a.c.a(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", e);
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @androidx.annotation.am(a = 11)
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a implements d {
        a() {
        }

        @Override // androidx.appcompat.widget.ao.d
        public Drawable a(@androidx.annotation.ah Context context, @androidx.annotation.ah XmlPullParser xmlPullParser, @androidx.annotation.ah AttributeSet attributeSet, @androidx.annotation.ai Resources.Theme theme) {
            try {
                return androidx.appcompat.b.a.a.a(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("AsldcInflateDelegate", "Exception while inflating <animated-selector>", e);
                return null;
            }
        }
    }
}
