package androidx.core.app;

import android.app.Person;
import android.os.Bundle;
import android.os.PersistableBundle;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.am;
import androidx.annotation.ap;
import androidx.core.graphics.drawable.IconCompat;

/* loaded from: /home/user/work/dex/classes.dex */
public class v {
    private static final String g = "name";
    private static final String h = "icon";
    private static final String i = "uri";
    private static final String j = "key";
    private static final String k = "isBot";
    private static final String l = "isImportant";

    /* renamed from: a, reason: collision with root package name */
    @ai
    CharSequence f384a;

    @ai
    IconCompat b;

    @ai
    String c;

    @ai
    String d;
    boolean e;
    boolean f;

    @ah
    public static v a(@ah Bundle bundle) {
        Bundle bundle2 = bundle.getBundle(h);
        return new a().a(bundle.getCharSequence(g)).a(bundle2 != null ? IconCompat.a(bundle2) : null).a(bundle.getString(i)).b(bundle.getString(j)).a(bundle.getBoolean(k)).b(bundle.getBoolean(l)).a();
    }

    @am(a = 22)
    @ah
    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public static v a(@ah PersistableBundle persistableBundle) {
        return new a().a((CharSequence) persistableBundle.getString(g)).a(persistableBundle.getString(i)).b(persistableBundle.getString(j)).a(persistableBundle.getBoolean(k)).b(persistableBundle.getBoolean(l)).a();
    }

    @am(a = 28)
    @ah
    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public static v a(@ah Person person) {
        return new a().a(person.getName()).a(person.getIcon() != null ? IconCompat.a(person.getIcon()) : null).a(person.getUri()).b(person.getKey()).a(person.isBot()).b(person.isImportant()).a();
    }

    v(a aVar) {
        this.f384a = aVar.f385a;
        this.b = aVar.b;
        this.c = aVar.c;
        this.d = aVar.d;
        this.e = aVar.e;
        this.f = aVar.f;
    }

    @ah
    public Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putCharSequence(g, this.f384a);
        bundle.putBundle(h, this.b != null ? this.b.g() : null);
        bundle.putString(i, this.c);
        bundle.putString(j, this.d);
        bundle.putBoolean(k, this.e);
        bundle.putBoolean(l, this.f);
        return bundle;
    }

    @am(a = 22)
    @ah
    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public PersistableBundle b() {
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putString(g, this.f384a != null ? this.f384a.toString() : null);
        persistableBundle.putString(i, this.c);
        persistableBundle.putString(j, this.d);
        persistableBundle.putBoolean(k, this.e);
        persistableBundle.putBoolean(l, this.f);
        return persistableBundle;
    }

    @ah
    public a c() {
        return new a(this);
    }

    @am(a = 28)
    @ah
    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public Person d() {
        return new Person.Builder().setName(e()).setIcon(f() != null ? f().f() : null).setUri(g()).setKey(h()).setBot(i()).setImportant(j()).build();
    }

    @ai
    public CharSequence e() {
        return this.f384a;
    }

    @ai
    public IconCompat f() {
        return this.b;
    }

    @ai
    public String g() {
        return this.c;
    }

    @ai
    public String h() {
        return this.d;
    }

    public boolean i() {
        return this.e;
    }

    public boolean j() {
        return this.f;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        @ai
        CharSequence f385a;

        @ai
        IconCompat b;

        @ai
        String c;

        @ai
        String d;
        boolean e;
        boolean f;

        public a() {
        }

        a(v vVar) {
            this.f385a = vVar.f384a;
            this.b = vVar.b;
            this.c = vVar.c;
            this.d = vVar.d;
            this.e = vVar.e;
            this.f = vVar.f;
        }

        @ah
        public a a(@ai CharSequence charSequence) {
            this.f385a = charSequence;
            return this;
        }

        @ah
        public a a(@ai IconCompat iconCompat) {
            this.b = iconCompat;
            return this;
        }

        @ah
        public a a(@ai String str) {
            this.c = str;
            return this;
        }

        @ah
        public a b(@ai String str) {
            this.d = str;
            return this;
        }

        @ah
        public a a(boolean z) {
            this.e = z;
            return this;
        }

        @ah
        public a b(boolean z) {
            this.f = z;
            return this;
        }

        @ah
        public v a() {
            return new v(this);
        }
    }
}
