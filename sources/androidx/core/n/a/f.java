package androidx.core.n.a;

import android.os.Build;
import android.os.Parcelable;
import android.view.View;
import android.view.accessibility.AccessibilityRecord;
import androidx.annotation.ah;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    private final AccessibilityRecord f522a;

    @Deprecated
    public f(Object obj) {
        this.f522a = (AccessibilityRecord) obj;
    }

    @Deprecated
    public Object a() {
        return this.f522a;
    }

    @Deprecated
    public static f a(f fVar) {
        return new f(AccessibilityRecord.obtain(fVar.f522a));
    }

    @Deprecated
    public static f b() {
        return new f(AccessibilityRecord.obtain());
    }

    @Deprecated
    public void a(View view) {
        this.f522a.setSource(view);
    }

    @Deprecated
    public void a(View view, int i) {
        a(this.f522a, view, i);
    }

    public static void a(@ah AccessibilityRecord accessibilityRecord, View view, int i) {
        if (Build.VERSION.SDK_INT >= 16) {
            accessibilityRecord.setSource(view, i);
        }
    }

    @Deprecated
    public d c() {
        return d.a((Object) this.f522a.getSource());
    }

    @Deprecated
    public int d() {
        return this.f522a.getWindowId();
    }

    @Deprecated
    public boolean e() {
        return this.f522a.isChecked();
    }

    @Deprecated
    public void a(boolean z) {
        this.f522a.setChecked(z);
    }

    @Deprecated
    public boolean f() {
        return this.f522a.isEnabled();
    }

    @Deprecated
    public void b(boolean z) {
        this.f522a.setEnabled(z);
    }

    @Deprecated
    public boolean g() {
        return this.f522a.isPassword();
    }

    @Deprecated
    public void c(boolean z) {
        this.f522a.setPassword(z);
    }

    @Deprecated
    public boolean h() {
        return this.f522a.isFullScreen();
    }

    @Deprecated
    public void d(boolean z) {
        this.f522a.setFullScreen(z);
    }

    @Deprecated
    public boolean i() {
        return this.f522a.isScrollable();
    }

    @Deprecated
    public void e(boolean z) {
        this.f522a.setScrollable(z);
    }

    @Deprecated
    public int j() {
        return this.f522a.getItemCount();
    }

    @Deprecated
    public void a(int i) {
        this.f522a.setItemCount(i);
    }

    @Deprecated
    public int k() {
        return this.f522a.getCurrentItemIndex();
    }

    @Deprecated
    public void b(int i) {
        this.f522a.setCurrentItemIndex(i);
    }

    @Deprecated
    public int l() {
        return this.f522a.getFromIndex();
    }

    @Deprecated
    public void c(int i) {
        this.f522a.setFromIndex(i);
    }

    @Deprecated
    public int m() {
        return this.f522a.getToIndex();
    }

    @Deprecated
    public void d(int i) {
        this.f522a.setToIndex(i);
    }

    @Deprecated
    public int n() {
        return this.f522a.getScrollX();
    }

    @Deprecated
    public void e(int i) {
        this.f522a.setScrollX(i);
    }

    @Deprecated
    public int o() {
        return this.f522a.getScrollY();
    }

    @Deprecated
    public void f(int i) {
        this.f522a.setScrollY(i);
    }

    @Deprecated
    public int p() {
        return a(this.f522a);
    }

    public static int a(AccessibilityRecord accessibilityRecord) {
        if (Build.VERSION.SDK_INT >= 15) {
            return accessibilityRecord.getMaxScrollX();
        }
        return 0;
    }

    @Deprecated
    public void g(int i) {
        a(this.f522a, i);
    }

    public static void a(AccessibilityRecord accessibilityRecord, int i) {
        if (Build.VERSION.SDK_INT >= 15) {
            accessibilityRecord.setMaxScrollX(i);
        }
    }

    @Deprecated
    public int q() {
        return b(this.f522a);
    }

    public static int b(AccessibilityRecord accessibilityRecord) {
        if (Build.VERSION.SDK_INT >= 15) {
            return accessibilityRecord.getMaxScrollY();
        }
        return 0;
    }

    @Deprecated
    public void h(int i) {
        b(this.f522a, i);
    }

    public static void b(AccessibilityRecord accessibilityRecord, int i) {
        if (Build.VERSION.SDK_INT >= 15) {
            accessibilityRecord.setMaxScrollY(i);
        }
    }

    @Deprecated
    public int r() {
        return this.f522a.getAddedCount();
    }

    @Deprecated
    public void i(int i) {
        this.f522a.setAddedCount(i);
    }

    @Deprecated
    public int s() {
        return this.f522a.getRemovedCount();
    }

    @Deprecated
    public void j(int i) {
        this.f522a.setRemovedCount(i);
    }

    @Deprecated
    public CharSequence t() {
        return this.f522a.getClassName();
    }

    @Deprecated
    public void a(CharSequence charSequence) {
        this.f522a.setClassName(charSequence);
    }

    @Deprecated
    public List<CharSequence> u() {
        return this.f522a.getText();
    }

    @Deprecated
    public CharSequence v() {
        return this.f522a.getBeforeText();
    }

    @Deprecated
    public void b(CharSequence charSequence) {
        this.f522a.setBeforeText(charSequence);
    }

    @Deprecated
    public CharSequence w() {
        return this.f522a.getContentDescription();
    }

    @Deprecated
    public void c(CharSequence charSequence) {
        this.f522a.setContentDescription(charSequence);
    }

    @Deprecated
    public Parcelable x() {
        return this.f522a.getParcelableData();
    }

    @Deprecated
    public void a(Parcelable parcelable) {
        this.f522a.setParcelableData(parcelable);
    }

    @Deprecated
    public void y() {
        this.f522a.recycle();
    }

    @Deprecated
    public int hashCode() {
        if (this.f522a == null) {
            return 0;
        }
        return this.f522a.hashCode();
    }

    @Deprecated
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        if (this.f522a == null) {
            if (fVar.f522a != null) {
                return false;
            }
        } else if (!this.f522a.equals(fVar.f522a)) {
            return false;
        }
        return true;
    }
}
