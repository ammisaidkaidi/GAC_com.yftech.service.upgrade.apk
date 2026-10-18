package androidx.core.b.a;

import android.app.Person;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ShortcutInfo;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.PersistableBundle;
import android.text.TextUtils;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.am;
import androidx.annotation.ap;
import androidx.annotation.ax;
import androidx.core.app.v;
import androidx.core.graphics.drawable.IconCompat;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

/* loaded from: /home/user/work/dex/classes.dex */
public class d {
    private static final String n = "extraPersonCount";
    private static final String o = "extraPerson_";
    private static final String p = "extraLongLived";

    /* renamed from: a, reason: collision with root package name */
    Context f394a;
    String b;
    Intent[] c;
    ComponentName d;
    CharSequence e;
    CharSequence f;
    CharSequence g;
    IconCompat h;
    boolean i;
    v[] j;
    Set<String> k;
    boolean l;
    int m;

    d() {
    }

    @am(a = 25)
    public ShortcutInfo a() {
        ShortcutInfo.Builder intents = new ShortcutInfo.Builder(this.f394a, this.b).setShortLabel(this.e).setIntents(this.c);
        if (this.h != null) {
            intents.setIcon(this.h.a(this.f394a));
        }
        if (!TextUtils.isEmpty(this.f)) {
            intents.setLongLabel(this.f);
        }
        if (!TextUtils.isEmpty(this.g)) {
            intents.setDisabledMessage(this.g);
        }
        if (this.d != null) {
            intents.setActivity(this.d);
        }
        if (this.k != null) {
            intents.setCategories(this.k);
        }
        intents.setRank(this.m);
        if (Build.VERSION.SDK_INT >= 29) {
            if (this.j != null && this.j.length > 0) {
                Person[] personArr = new Person[this.j.length];
                for (int i = 0; i < personArr.length; i++) {
                    personArr[i] = this.j[i].d();
                }
                intents.setPersons(personArr);
            }
            intents.setLongLived(this.l);
        } else {
            intents.setExtras(l());
        }
        return intents.build();
    }

    @am(a = 22)
    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    private PersistableBundle l() {
        PersistableBundle persistableBundle = new PersistableBundle();
        if (this.j != null && this.j.length > 0) {
            persistableBundle.putInt(n, this.j.length);
            int i = 0;
            while (i < this.j.length) {
                StringBuilder sb = new StringBuilder();
                sb.append(o);
                int i2 = i + 1;
                sb.append(i2);
                persistableBundle.putPersistableBundle(sb.toString(), this.j[i].b());
                i = i2;
            }
        }
        persistableBundle.putBoolean(p, this.l);
        return persistableBundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Intent a(Intent intent) {
        intent.putExtra("android.intent.extra.shortcut.INTENT", this.c[this.c.length - 1]).putExtra("android.intent.extra.shortcut.NAME", this.e.toString());
        if (this.h != null) {
            Drawable drawable = null;
            if (this.i) {
                PackageManager packageManager = this.f394a.getPackageManager();
                if (this.d != null) {
                    try {
                        drawable = packageManager.getActivityIcon(this.d);
                    } catch (PackageManager.NameNotFoundException unused) {
                    }
                }
                if (drawable == null) {
                    drawable = this.f394a.getApplicationInfo().loadIcon(packageManager);
                }
            }
            this.h.a(intent, drawable, this.f394a);
        }
        return intent;
    }

    @ah
    public String b() {
        return this.b;
    }

    @ai
    public ComponentName c() {
        return this.d;
    }

    @ah
    public CharSequence d() {
        return this.e;
    }

    @ai
    public CharSequence e() {
        return this.f;
    }

    @ai
    public CharSequence f() {
        return this.g;
    }

    @ah
    public Intent g() {
        return this.c[this.c.length - 1];
    }

    @ah
    public Intent[] h() {
        return (Intent[]) Arrays.copyOf(this.c, this.c.length);
    }

    @ai
    public Set<String> i() {
        return this.k;
    }

    public int j() {
        return this.m;
    }

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public IconCompat k() {
        return this.h;
    }

    @am(a = 25)
    @ai
    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    @ax
    static v[] a(@ah PersistableBundle persistableBundle) {
        if (persistableBundle == null || !persistableBundle.containsKey(n)) {
            return null;
        }
        int i = persistableBundle.getInt(n);
        v[] vVarArr = new v[i];
        int i2 = 0;
        while (i2 < i) {
            StringBuilder sb = new StringBuilder();
            sb.append(o);
            int i3 = i2 + 1;
            sb.append(i3);
            vVarArr[i2] = v.a(persistableBundle.getPersistableBundle(sb.toString()));
            i2 = i3;
        }
        return vVarArr;
    }

    @am(a = 25)
    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    @ax
    static boolean b(@ah PersistableBundle persistableBundle) {
        if (persistableBundle == null || !persistableBundle.containsKey(p)) {
            return false;
        }
        return persistableBundle.getBoolean(p);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private final d f395a = new d();

        public a(@ah Context context, @ah String str) {
            this.f395a.f394a = context;
            this.f395a.b = str;
        }

        @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
        public a(@ah d dVar) {
            this.f395a.f394a = dVar.f394a;
            this.f395a.b = dVar.b;
            this.f395a.c = (Intent[]) Arrays.copyOf(dVar.c, dVar.c.length);
            this.f395a.d = dVar.d;
            this.f395a.e = dVar.e;
            this.f395a.f = dVar.f;
            this.f395a.g = dVar.g;
            this.f395a.h = dVar.h;
            this.f395a.i = dVar.i;
            this.f395a.l = dVar.l;
            this.f395a.m = dVar.m;
            if (dVar.j != null) {
                this.f395a.j = (v[]) Arrays.copyOf(dVar.j, dVar.j.length);
            }
            if (dVar.k != null) {
                this.f395a.k = new HashSet(dVar.k);
            }
        }

        @am(a = 25)
        @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
        public a(@ah Context context, @ah ShortcutInfo shortcutInfo) {
            this.f395a.f394a = context;
            this.f395a.b = shortcutInfo.getId();
            Intent[] intents = shortcutInfo.getIntents();
            this.f395a.c = (Intent[]) Arrays.copyOf(intents, intents.length);
            this.f395a.d = shortcutInfo.getActivity();
            this.f395a.e = shortcutInfo.getShortLabel();
            this.f395a.f = shortcutInfo.getLongLabel();
            this.f395a.g = shortcutInfo.getDisabledMessage();
            this.f395a.k = shortcutInfo.getCategories();
            this.f395a.j = d.a(shortcutInfo.getExtras());
            this.f395a.m = shortcutInfo.getRank();
        }

        @ah
        public a a(@ah CharSequence charSequence) {
            this.f395a.e = charSequence;
            return this;
        }

        @ah
        public a b(@ah CharSequence charSequence) {
            this.f395a.f = charSequence;
            return this;
        }

        @ah
        public a c(@ah CharSequence charSequence) {
            this.f395a.g = charSequence;
            return this;
        }

        @ah
        public a a(@ah Intent intent) {
            return a(new Intent[]{intent});
        }

        @ah
        public a a(@ah Intent[] intentArr) {
            this.f395a.c = intentArr;
            return this;
        }

        @ah
        public a a(IconCompat iconCompat) {
            this.f395a.h = iconCompat;
            return this;
        }

        @ah
        public a a(@ah ComponentName componentName) {
            this.f395a.d = componentName;
            return this;
        }

        @ah
        public a a() {
            this.f395a.i = true;
            return this;
        }

        @ah
        public a a(@ah v vVar) {
            return a(new v[]{vVar});
        }

        @ah
        public a a(@ah v[] vVarArr) {
            this.f395a.j = vVarArr;
            return this;
        }

        @ah
        public a a(@ah Set<String> set) {
            this.f395a.k = set;
            return this;
        }

        @ah
        @Deprecated
        public a b() {
            this.f395a.l = true;
            return this;
        }

        @ah
        public a a(boolean z) {
            this.f395a.l = z;
            return this;
        }

        @ah
        public a a(int i) {
            this.f395a.m = i;
            return this;
        }

        @ah
        public d c() {
            if (TextUtils.isEmpty(this.f395a.e)) {
                throw new IllegalArgumentException("Shortcut must have a non-empty label");
            }
            if (this.f395a.c == null || this.f395a.c.length == 0) {
                throw new IllegalArgumentException("Shortcut must have an intent");
            }
            return this.f395a;
        }
    }
}
