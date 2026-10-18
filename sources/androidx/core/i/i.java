package androidx.core.i;

import android.os.LocaleList;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.am;
import java.util.Locale;

@am(a = 24)
/* loaded from: /home/user/work/dex/classes.dex */
final class i implements h {

    /* renamed from: a, reason: collision with root package name */
    private final LocaleList f452a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(LocaleList localeList) {
        this.f452a = localeList;
    }

    @Override // androidx.core.i.h
    public Object a() {
        return this.f452a;
    }

    @Override // androidx.core.i.h
    public Locale a(int i) {
        return this.f452a.get(i);
    }

    @Override // androidx.core.i.h
    public boolean b() {
        return this.f452a.isEmpty();
    }

    @Override // androidx.core.i.h
    public int c() {
        return this.f452a.size();
    }

    @Override // androidx.core.i.h
    public int a(Locale locale) {
        return this.f452a.indexOf(locale);
    }

    public boolean equals(Object obj) {
        return this.f452a.equals(((h) obj).a());
    }

    public int hashCode() {
        return this.f452a.hashCode();
    }

    public String toString() {
        return this.f452a.toString();
    }

    @Override // androidx.core.i.h
    public String d() {
        return this.f452a.toLanguageTags();
    }

    @Override // androidx.core.i.h
    @ai
    public Locale a(@ah String[] strArr) {
        return this.f452a.getFirstMatch(strArr);
    }
}
