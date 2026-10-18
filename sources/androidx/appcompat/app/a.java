package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SpinnerAdapter;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import androidx.annotation.as;
import androidx.appcompat.a;
import androidx.appcompat.view.b;
import androidx.fragment.app.s;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    @Deprecated
    public static final int f45a = 0;

    @Deprecated
    public static final int b = 1;

    @Deprecated
    public static final int c = 2;
    public static final int d = 1;
    public static final int e = 2;
    public static final int f = 4;
    public static final int g = 8;
    public static final int h = 16;

    @Retention(RetentionPolicy.SOURCE)
    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    /* renamed from: androidx.appcompat.app.a$a, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface InterfaceC0011a {
    }

    @Retention(RetentionPolicy.SOURCE)
    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface c {
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface d {
        void a(boolean z);
    }

    @Deprecated
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface e {
        boolean a(int i, long j);
    }

    @Deprecated
    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class f {

        /* renamed from: a, reason: collision with root package name */
        public static final int f47a = -1;

        public abstract int a();

        public abstract f a(@androidx.annotation.q int i);

        public abstract f a(Drawable drawable);

        public abstract f a(View view);

        public abstract f a(g gVar);

        public abstract f a(CharSequence charSequence);

        public abstract f a(Object obj);

        public abstract Drawable b();

        public abstract f b(int i);

        public abstract f b(CharSequence charSequence);

        public abstract f c(int i);

        public abstract CharSequence c();

        public abstract View d();

        public abstract f d(@as int i);

        public abstract Object e();

        public abstract void f();

        public abstract CharSequence g();
    }

    @Deprecated
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface g {
        void a(f fVar, s sVar);

        void b(f fVar, s sVar);

        void c(f fVar, s sVar);
    }

    @Deprecated
    public abstract int a();

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public androidx.appcompat.view.b a(b.a aVar) {
        return null;
    }

    public abstract void a(int i);

    public abstract void a(int i, int i2);

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void a(Configuration configuration) {
    }

    public abstract void a(Drawable drawable);

    public abstract void a(View view);

    public abstract void a(View view, b bVar);

    @Deprecated
    public abstract void a(SpinnerAdapter spinnerAdapter, e eVar);

    public abstract void a(d dVar);

    @Deprecated
    public abstract void a(f fVar);

    @Deprecated
    public abstract void a(f fVar, int i);

    @Deprecated
    public abstract void a(f fVar, int i, boolean z);

    @Deprecated
    public abstract void a(f fVar, boolean z);

    public abstract void a(CharSequence charSequence);

    public abstract void a(boolean z);

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public boolean a(int i, KeyEvent keyEvent) {
        return false;
    }

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public boolean a(KeyEvent keyEvent) {
        return false;
    }

    @Deprecated
    public abstract int b();

    public abstract void b(@androidx.annotation.q int i);

    public abstract void b(Drawable drawable);

    public abstract void b(d dVar);

    @Deprecated
    public abstract void b(f fVar);

    public abstract void b(CharSequence charSequence);

    public abstract void b(boolean z);

    public abstract View c();

    public abstract void c(@androidx.annotation.q int i);

    public abstract void c(@ai Drawable drawable);

    @Deprecated
    public abstract void c(f fVar);

    public void c(@ai CharSequence charSequence) {
    }

    public abstract void c(boolean z);

    @ai
    public abstract CharSequence d();

    @Deprecated
    public abstract void d(int i);

    public void d(Drawable drawable) {
    }

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void d(CharSequence charSequence) {
    }

    public abstract void d(boolean z);

    @ai
    public abstract CharSequence e();

    public abstract void e(@as int i);

    public void e(Drawable drawable) {
    }

    public abstract void e(boolean z);

    @Deprecated
    public abstract int f();

    public abstract void f(int i);

    public void f(@ai Drawable drawable) {
    }

    public void f(boolean z) {
    }

    public abstract int g();

    public abstract void g(int i);

    @Deprecated
    public abstract f h();

    @Deprecated
    public abstract void h(int i);

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void h(boolean z) {
    }

    @Deprecated
    public abstract void i();

    @Deprecated
    public abstract void i(int i);

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void i(boolean z) {
    }

    @ai
    @Deprecated
    public abstract f j();

    @Deprecated
    public abstract f j(int i);

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void j(boolean z) {
    }

    @Deprecated
    public abstract int k();

    public void k(@androidx.annotation.q int i) {
    }

    public abstract int l();

    public void l(@as int i) {
    }

    public abstract void m();

    public abstract void n();

    public abstract boolean o();

    public Context p() {
        return null;
    }

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public boolean q() {
        return false;
    }

    public boolean r() {
        return false;
    }

    public int s() {
        return 0;
    }

    public float t() {
        return 0.0f;
    }

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public boolean u() {
        return false;
    }

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public boolean v() {
        return false;
    }

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public boolean w() {
        return false;
    }

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public boolean x() {
        return false;
    }

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    boolean y() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void z() {
    }

    public void g(boolean z) {
        if (z) {
            throw new UnsupportedOperationException("Hide on content scroll is not supported in this action bar configuration.");
        }
    }

    public void m(int i) {
        if (i != 0) {
            throw new UnsupportedOperationException("Setting an explicit action bar hide offset is not supported in this action bar configuration.");
        }
    }

    public void a(float f2) {
        if (f2 != 0.0f) {
            throw new UnsupportedOperationException("Setting a non-zero elevation is not supported in this action bar configuration.");
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class b extends ViewGroup.MarginLayoutParams {

        /* renamed from: a, reason: collision with root package name */
        public int f46a;

        public b(@ah Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f46a = 0;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.m.ActionBarLayout);
            this.f46a = obtainStyledAttributes.getInt(a.m.ActionBarLayout_android_layout_gravity, 0);
            obtainStyledAttributes.recycle();
        }

        public b(int i, int i2) {
            super(i, i2);
            this.f46a = 0;
            this.f46a = 8388627;
        }

        public b(int i, int i2, int i3) {
            super(i, i2);
            this.f46a = 0;
            this.f46a = i3;
        }

        public b(int i) {
            this(-2, -1, i);
        }

        public b(b bVar) {
            super((ViewGroup.MarginLayoutParams) bVar);
            this.f46a = 0;
            this.f46a = bVar.f46a;
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f46a = 0;
        }
    }
}
