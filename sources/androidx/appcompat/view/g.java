package androidx.appcompat.view;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.annotation.ac;
import androidx.annotation.ap;
import androidx.appcompat.a;
import androidx.appcompat.view.menu.j;
import androidx.appcompat.view.menu.k;
import androidx.appcompat.widget.af;
import androidx.appcompat.widget.ba;
import androidx.core.n.o;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

@ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public class g extends MenuInflater {

    /* renamed from: a, reason: collision with root package name */
    static final String f115a = "SupportMenuInflater";
    static final int b = 0;
    static final Class<?>[] c = {Context.class};
    static final Class<?>[] d = c;
    private static final String h = "menu";
    private static final String i = "group";
    private static final String j = "item";
    final Object[] e;
    final Object[] f;
    Context g;
    private Object k;

    public g(Context context) {
        super(context);
        this.g = context;
        this.e = new Object[]{context};
        this.f = this.e;
    }

    @Override // android.view.MenuInflater
    public void inflate(@ac int i2, Menu menu) {
        XmlResourceParser layout;
        if (!(menu instanceof androidx.core.e.a.a)) {
            super.inflate(i2, menu);
            return;
        }
        XmlResourceParser xmlResourceParser = null;
        try {
            try {
                layout = this.g.getResources().getLayout(i2);
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException e) {
            e = e;
        } catch (XmlPullParserException e2) {
            e = e2;
        }
        try {
            a(layout, Xml.asAttributeSet(layout), menu);
            if (layout != null) {
                layout.close();
            }
        } catch (IOException e3) {
            e = e3;
            throw new InflateException("Error inflating menu XML", e);
        } catch (XmlPullParserException e4) {
            e = e4;
            throw new InflateException("Error inflating menu XML", e);
        } catch (Throwable th2) {
            th = th2;
            xmlResourceParser = layout;
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0048, code lost:
    
        r4 = r9.getName();
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x004c, code lost:
    
        if (r5 == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0052, code lost:
    
        if (r4.equals(r6) == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0054, code lost:
    
        r6 = null;
        r5 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x00cb, code lost:
    
        r4 = r9.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x005e, code lost:
    
        if (r4.equals(androidx.appcompat.view.g.i) == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0060, code lost:
    
        r0.a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006b, code lost:
    
        if (r4.equals(androidx.appcompat.view.g.j) == false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0071, code lost:
    
        if (r0.d() != false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0075, code lost:
    
        if (r0.f117a == null) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x007d, code lost:
    
        if (r0.f117a.c() == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x007f, code lost:
    
        r0.c();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0083, code lost:
    
        r0.b();
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x008d, code lost:
    
        if (r4.equals(androidx.appcompat.view.g.h) == false) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x008f, code lost:
    
        r11 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0091, code lost:
    
        if (r5 == false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0094, code lost:
    
        r4 = r9.getName();
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x009e, code lost:
    
        if (r4.equals(androidx.appcompat.view.g.i) == false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00a0, code lost:
    
        r0.a(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00aa, code lost:
    
        if (r4.equals(androidx.appcompat.view.g.j) == false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00ac, code lost:
    
        r0.b(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00b6, code lost:
    
        if (r4.equals(androidx.appcompat.view.g.h) == false) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00b8, code lost:
    
        a(r9, r10, r0.c());
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00c0, code lost:
    
        r5 = true;
        r6 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00ca, code lost:
    
        throw new java.lang.RuntimeException("Unexpected end of document");
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00d1, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x003b, code lost:
    
        r4 = r11;
        r6 = null;
        r11 = false;
        r5 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0041, code lost:
    
        if (r11 != false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0043, code lost:
    
        switch(r4) {
            case 1: goto L57;
            case 2: goto L37;
            case 3: goto L16;
            default: goto L69;
        };
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void a(XmlPullParser xmlPullParser, AttributeSet attributeSet, Menu menu) {
        b bVar = new b(menu);
        int eventType = xmlPullParser.getEventType();
        while (true) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if (name.equals(h)) {
                    eventType = xmlPullParser.next();
                } else {
                    throw new RuntimeException("Expecting menu, got " + name);
                }
            } else {
                eventType = xmlPullParser.next();
                if (eventType == 1) {
                    break;
                }
            }
        }
    }

    Object a() {
        if (this.k == null) {
            this.k = a(this.g);
        }
        return this.k;
    }

    private Object a(Object obj) {
        return (!(obj instanceof Activity) && (obj instanceof ContextWrapper)) ? a(((ContextWrapper) obj).getBaseContext()) : obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a implements MenuItem.OnMenuItemClickListener {

        /* renamed from: a, reason: collision with root package name */
        private static final Class<?>[] f116a = {MenuItem.class};
        private Object b;
        private Method c;

        public a(Object obj, String str) {
            this.b = obj;
            Class<?> cls = obj.getClass();
            try {
                this.c = cls.getMethod(str, f116a);
            } catch (Exception e) {
                InflateException inflateException = new InflateException("Couldn't resolve menu item onClick handler " + str + " in class " + cls.getName());
                inflateException.initCause(e);
                throw inflateException;
            }
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            try {
                if (this.c.getReturnType() == Boolean.TYPE) {
                    return ((Boolean) this.c.invoke(this.b, menuItem)).booleanValue();
                }
                this.c.invoke(this.b, menuItem);
                return true;
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class b {
        private static final int G = 0;
        private static final int H = 0;
        private static final int I = 0;
        private static final int J = 0;
        private static final int K = 0;
        private static final boolean L = false;
        private static final boolean M = true;
        private static final boolean N = true;
        private String A;
        private String B;
        private CharSequence C;
        private CharSequence D;
        private ColorStateList E = null;
        private PorterDuff.Mode F = null;

        /* renamed from: a, reason: collision with root package name */
        androidx.core.n.b f117a;
        private Menu c;
        private int d;
        private int e;
        private int f;
        private int g;
        private boolean h;
        private boolean i;
        private boolean j;
        private int k;
        private int l;
        private CharSequence m;
        private CharSequence n;
        private int o;
        private char p;
        private int q;
        private char r;
        private int s;
        private int t;
        private boolean u;
        private boolean v;
        private boolean w;
        private int x;
        private int y;
        private String z;

        public b(Menu menu) {
            this.c = menu;
            a();
        }

        public void a() {
            this.d = 0;
            this.e = 0;
            this.f = 0;
            this.g = 0;
            this.h = true;
            this.i = true;
        }

        public void a(AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = g.this.g.obtainStyledAttributes(attributeSet, a.m.MenuGroup);
            this.d = obtainStyledAttributes.getResourceId(a.m.MenuGroup_android_id, 0);
            this.e = obtainStyledAttributes.getInt(a.m.MenuGroup_android_menuCategory, 0);
            this.f = obtainStyledAttributes.getInt(a.m.MenuGroup_android_orderInCategory, 0);
            this.g = obtainStyledAttributes.getInt(a.m.MenuGroup_android_checkableBehavior, 0);
            this.h = obtainStyledAttributes.getBoolean(a.m.MenuGroup_android_visible, true);
            this.i = obtainStyledAttributes.getBoolean(a.m.MenuGroup_android_enabled, true);
            obtainStyledAttributes.recycle();
        }

        public void b(AttributeSet attributeSet) {
            ba a2 = ba.a(g.this.g, attributeSet, a.m.MenuItem);
            this.k = a2.g(a.m.MenuItem_android_id, 0);
            this.l = (a2.a(a.m.MenuItem_android_menuCategory, this.e) & androidx.core.e.a.a.f) | (a2.a(a.m.MenuItem_android_orderInCategory, this.f) & androidx.core.e.a.a.d);
            this.m = a2.d(a.m.MenuItem_android_title);
            this.n = a2.d(a.m.MenuItem_android_titleCondensed);
            this.o = a2.g(a.m.MenuItem_android_icon, 0);
            this.p = a(a2.e(a.m.MenuItem_android_alphabeticShortcut));
            this.q = a2.a(a.m.MenuItem_alphabeticModifiers, 4096);
            this.r = a(a2.e(a.m.MenuItem_android_numericShortcut));
            this.s = a2.a(a.m.MenuItem_numericModifiers, 4096);
            if (a2.j(a.m.MenuItem_android_checkable)) {
                this.t = a2.a(a.m.MenuItem_android_checkable, false) ? 1 : 0;
            } else {
                this.t = this.g;
            }
            this.u = a2.a(a.m.MenuItem_android_checked, false);
            this.v = a2.a(a.m.MenuItem_android_visible, this.h);
            this.w = a2.a(a.m.MenuItem_android_enabled, this.i);
            this.x = a2.a(a.m.MenuItem_showAsAction, -1);
            this.B = a2.e(a.m.MenuItem_android_onClick);
            this.y = a2.g(a.m.MenuItem_actionLayout, 0);
            this.z = a2.e(a.m.MenuItem_actionViewClass);
            this.A = a2.e(a.m.MenuItem_actionProviderClass);
            boolean z = this.A != null;
            if (z && this.y == 0 && this.z == null) {
                this.f117a = (androidx.core.n.b) a(this.A, g.d, g.this.f);
            } else {
                if (z) {
                    Log.w(g.f115a, "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                }
                this.f117a = null;
            }
            this.C = a2.d(a.m.MenuItem_contentDescription);
            this.D = a2.d(a.m.MenuItem_tooltipText);
            if (a2.j(a.m.MenuItem_iconTintMode)) {
                this.F = af.a(a2.a(a.m.MenuItem_iconTintMode, -1), this.F);
            } else {
                this.F = null;
            }
            if (a2.j(a.m.MenuItem_iconTint)) {
                this.E = a2.g(a.m.MenuItem_iconTint);
            } else {
                this.E = null;
            }
            a2.f();
            this.j = false;
        }

        private char a(String str) {
            if (str == null) {
                return (char) 0;
            }
            return str.charAt(0);
        }

        private void a(MenuItem menuItem) {
            boolean z = false;
            menuItem.setChecked(this.u).setVisible(this.v).setEnabled(this.w).setCheckable(this.t >= 1).setTitleCondensed(this.n).setIcon(this.o);
            if (this.x >= 0) {
                menuItem.setShowAsAction(this.x);
            }
            if (this.B != null) {
                if (g.this.g.isRestricted()) {
                    throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                }
                menuItem.setOnMenuItemClickListener(new a(g.this.a(), this.B));
            }
            if (this.t >= 2) {
                if (menuItem instanceof j) {
                    ((j) menuItem).a(true);
                } else if (menuItem instanceof k) {
                    ((k) menuItem).a(true);
                }
            }
            if (this.z != null) {
                menuItem.setActionView((View) a(this.z, g.c, g.this.e));
                z = true;
            }
            if (this.y > 0) {
                if (!z) {
                    menuItem.setActionView(this.y);
                } else {
                    Log.w(g.f115a, "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
                }
            }
            if (this.f117a != null) {
                o.a(menuItem, this.f117a);
            }
            o.a(menuItem, this.C);
            o.b(menuItem, this.D);
            o.b(menuItem, this.p, this.q);
            o.a(menuItem, this.r, this.s);
            if (this.F != null) {
                o.a(menuItem, this.F);
            }
            if (this.E != null) {
                o.a(menuItem, this.E);
            }
        }

        public void b() {
            this.j = true;
            a(this.c.add(this.d, this.k, this.l, this.m));
        }

        public SubMenu c() {
            this.j = true;
            SubMenu addSubMenu = this.c.addSubMenu(this.d, this.k, this.l, this.m);
            a(addSubMenu.getItem());
            return addSubMenu;
        }

        public boolean d() {
            return this.j;
        }

        private <T> T a(String str, Class<?>[] clsArr, Object[] objArr) {
            try {
                Constructor<?> constructor = Class.forName(str, false, g.this.g.getClassLoader()).getConstructor(clsArr);
                constructor.setAccessible(true);
                return (T) constructor.newInstance(objArr);
            } catch (Exception e) {
                Log.w(g.f115a, "Cannot instantiate class: " + str, e);
                return null;
            }
        }
    }
}
