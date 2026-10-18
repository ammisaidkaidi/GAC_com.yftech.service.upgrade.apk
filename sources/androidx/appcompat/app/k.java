package androidx.appcompat.app;

import android.R;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.appcompat.a;
import androidx.appcompat.widget.aa;
import androidx.appcompat.widget.ac;
import androidx.appcompat.widget.ax;
import androidx.appcompat.widget.t;
import androidx.appcompat.widget.u;
import androidx.appcompat.widget.v;
import androidx.appcompat.widget.x;
import androidx.core.n.af;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: /home/user/work/dex/classes.dex */
public class k {
    private static final String d = "AppCompatViewInflater";
    private final Object[] f = new Object[2];

    /* renamed from: a, reason: collision with root package name */
    private static final Class<?>[] f80a = {Context.class, AttributeSet.class};
    private static final int[] b = {R.attr.onClick};
    private static final String[] c = {"android.widget.", "android.view.", "android.webkit."};
    private static final androidx.c.i<String, Constructor<? extends View>> e = new androidx.c.i<>();

    @ai
    protected View a(Context context, String str, AttributeSet attributeSet) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final View a(View view, String str, @ah Context context, @ah AttributeSet attributeSet, boolean z, boolean z2, boolean z3, boolean z4) {
        View a2;
        Context context2 = (!z || view == null) ? context : view.getContext();
        if (z2 || z3) {
            context2 = a(context2, attributeSet, z2, z3);
        }
        if (z4) {
            context2 = ax.a(context2);
        }
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1946472170:
                if (str.equals("RatingBar")) {
                    c2 = 11;
                    break;
                }
                break;
            case -1455429095:
                if (str.equals("CheckedTextView")) {
                    c2 = '\b';
                    break;
                }
                break;
            case -1346021293:
                if (str.equals("MultiAutoCompleteTextView")) {
                    c2 = '\n';
                    break;
                }
                break;
            case -938935918:
                if (str.equals("TextView")) {
                    c2 = 0;
                    break;
                }
                break;
            case -937446323:
                if (str.equals("ImageButton")) {
                    c2 = 5;
                    break;
                }
                break;
            case -658531749:
                if (str.equals("SeekBar")) {
                    c2 = '\f';
                    break;
                }
                break;
            case -339785223:
                if (str.equals("Spinner")) {
                    c2 = 4;
                    break;
                }
                break;
            case 776382189:
                if (str.equals("RadioButton")) {
                    c2 = 7;
                    break;
                }
                break;
            case 799298502:
                if (str.equals("ToggleButton")) {
                    c2 = '\r';
                    break;
                }
                break;
            case 1125864064:
                if (str.equals("ImageView")) {
                    c2 = 1;
                    break;
                }
                break;
            case 1413872058:
                if (str.equals("AutoCompleteTextView")) {
                    c2 = '\t';
                    break;
                }
                break;
            case 1601505219:
                if (str.equals("CheckBox")) {
                    c2 = 6;
                    break;
                }
                break;
            case 1666676343:
                if (str.equals("EditText")) {
                    c2 = 3;
                    break;
                }
                break;
            case 2001146706:
                if (str.equals("Button")) {
                    c2 = 2;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                a2 = a(context2, attributeSet);
                a(a2, str);
                break;
            case 1:
                a2 = b(context2, attributeSet);
                a(a2, str);
                break;
            case 2:
                a2 = c(context2, attributeSet);
                a(a2, str);
                break;
            case 3:
                a2 = d(context2, attributeSet);
                a(a2, str);
                break;
            case 4:
                a2 = e(context2, attributeSet);
                a(a2, str);
                break;
            case 5:
                a2 = f(context2, attributeSet);
                a(a2, str);
                break;
            case 6:
                a2 = g(context2, attributeSet);
                a(a2, str);
                break;
            case 7:
                a2 = h(context2, attributeSet);
                a(a2, str);
                break;
            case '\b':
                a2 = i(context2, attributeSet);
                a(a2, str);
                break;
            case '\t':
                a2 = j(context2, attributeSet);
                a(a2, str);
                break;
            case '\n':
                a2 = k(context2, attributeSet);
                a(a2, str);
                break;
            case 11:
                a2 = l(context2, attributeSet);
                a(a2, str);
                break;
            case '\f':
                a2 = m(context2, attributeSet);
                a(a2, str);
                break;
            case '\r':
                a2 = n(context2, attributeSet);
                a(a2, str);
                break;
            default:
                a2 = a(context2, str, attributeSet);
                break;
        }
        if (a2 == null && context != context2) {
            a2 = b(context2, str, attributeSet);
        }
        if (a2 != null) {
            a(a2, attributeSet);
        }
        return a2;
    }

    @ah
    protected aa a(Context context, AttributeSet attributeSet) {
        return new aa(context, attributeSet);
    }

    @ah
    protected androidx.appcompat.widget.p b(Context context, AttributeSet attributeSet) {
        return new androidx.appcompat.widget.p(context, attributeSet);
    }

    @ah
    protected androidx.appcompat.widget.g c(Context context, AttributeSet attributeSet) {
        return new androidx.appcompat.widget.g(context, attributeSet);
    }

    @ah
    protected androidx.appcompat.widget.l d(Context context, AttributeSet attributeSet) {
        return new androidx.appcompat.widget.l(context, attributeSet);
    }

    @ah
    protected x e(Context context, AttributeSet attributeSet) {
        return new x(context, attributeSet);
    }

    @ah
    protected androidx.appcompat.widget.n f(Context context, AttributeSet attributeSet) {
        return new androidx.appcompat.widget.n(context, attributeSet);
    }

    @ah
    protected androidx.appcompat.widget.h g(Context context, AttributeSet attributeSet) {
        return new androidx.appcompat.widget.h(context, attributeSet);
    }

    @ah
    protected t h(Context context, AttributeSet attributeSet) {
        return new t(context, attributeSet);
    }

    @ah
    protected androidx.appcompat.widget.i i(Context context, AttributeSet attributeSet) {
        return new androidx.appcompat.widget.i(context, attributeSet);
    }

    @ah
    protected androidx.appcompat.widget.e j(Context context, AttributeSet attributeSet) {
        return new androidx.appcompat.widget.e(context, attributeSet);
    }

    @ah
    protected androidx.appcompat.widget.q k(Context context, AttributeSet attributeSet) {
        return new androidx.appcompat.widget.q(context, attributeSet);
    }

    @ah
    protected u l(Context context, AttributeSet attributeSet) {
        return new u(context, attributeSet);
    }

    @ah
    protected v m(Context context, AttributeSet attributeSet) {
        return new v(context, attributeSet);
    }

    @ah
    protected ac n(Context context, AttributeSet attributeSet) {
        return new ac(context, attributeSet);
    }

    private void a(View view, String str) {
        if (view != null) {
            return;
        }
        throw new IllegalStateException(getClass().getName() + " asked to inflate view for <" + str + ">, but returned null");
    }

    private View b(Context context, String str, AttributeSet attributeSet) {
        if (str.equals("view")) {
            str = attributeSet.getAttributeValue(null, "class");
        }
        try {
            this.f[0] = context;
            this.f[1] = attributeSet;
            if (-1 != str.indexOf(46)) {
                return a(context, str, (String) null);
            }
            for (int i = 0; i < c.length; i++) {
                View a2 = a(context, str, c[i]);
                if (a2 != null) {
                    return a2;
                }
            }
            return null;
        } catch (Exception unused) {
            return null;
        } finally {
            this.f[0] = null;
            this.f[1] = null;
        }
    }

    private void a(View view, AttributeSet attributeSet) {
        Context context = view.getContext();
        if (context instanceof ContextWrapper) {
            if (Build.VERSION.SDK_INT < 15 || af.al(view)) {
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b);
                String string = obtainStyledAttributes.getString(0);
                if (string != null) {
                    view.setOnClickListener(new a(view, string));
                }
                obtainStyledAttributes.recycle();
            }
        }
    }

    private View a(Context context, String str, String str2) {
        String str3;
        Constructor<? extends View> constructor = e.get(str);
        if (constructor == null) {
            if (str2 != null) {
                try {
                    str3 = str2 + str;
                } catch (Exception unused) {
                    return null;
                }
            } else {
                str3 = str;
            }
            constructor = Class.forName(str3, false, context.getClassLoader()).asSubclass(View.class).getConstructor(f80a);
            e.put(str, constructor);
        }
        constructor.setAccessible(true);
        return constructor.newInstance(this.f);
    }

    private static Context a(Context context, AttributeSet attributeSet, boolean z, boolean z2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.m.View, 0, 0);
        int resourceId = z ? obtainStyledAttributes.getResourceId(a.m.View_android_theme, 0) : 0;
        if (z2 && resourceId == 0 && (resourceId = obtainStyledAttributes.getResourceId(a.m.View_theme, 0)) != 0) {
            Log.i(d, "app:theme is now deprecated. Please move to using android:theme instead.");
        }
        obtainStyledAttributes.recycle();
        return resourceId != 0 ? ((context instanceof androidx.appcompat.view.d) && ((androidx.appcompat.view.d) context).getThemeResId() == resourceId) ? context : new androidx.appcompat.view.d(context, resourceId) : context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a implements View.OnClickListener {

        /* renamed from: a, reason: collision with root package name */
        private final View f81a;
        private final String b;
        private Method c;
        private Context d;

        public a(@ah View view, @ah String str) {
            this.f81a = view;
            this.b = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(@ah View view) {
            if (this.c == null) {
                a(this.f81a.getContext());
            }
            try {
                this.c.invoke(this.d, view);
            } catch (IllegalAccessException e) {
                throw new IllegalStateException("Could not execute non-public method for android:onClick", e);
            } catch (InvocationTargetException e2) {
                throw new IllegalStateException("Could not execute method for android:onClick", e2);
            }
        }

        private void a(@ai Context context) {
            String str;
            Method method;
            while (context != null) {
                try {
                    if (!context.isRestricted() && (method = context.getClass().getMethod(this.b, View.class)) != null) {
                        this.c = method;
                        this.d = context;
                        return;
                    }
                } catch (NoSuchMethodException unused) {
                }
                context = context instanceof ContextWrapper ? ((ContextWrapper) context).getBaseContext() : null;
            }
            int id = this.f81a.getId();
            if (id == -1) {
                str = com.yftech.service.upgrade.a.d;
            } else {
                str = " with id '" + this.f81a.getContext().getResources().getResourceEntryName(id) + "'";
            }
            throw new IllegalStateException("Could not find method " + this.b + "(View) in a parent or ancestor Context for android:onClick attribute defined on view " + this.f81a.getClass() + str);
        }
    }
}
