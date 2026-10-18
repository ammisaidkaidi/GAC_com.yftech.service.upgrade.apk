package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.SpinnerAdapter;
import androidx.annotation.ap;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.n;

@androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public interface ae {
    Menu A();

    ViewGroup a();

    androidx.core.n.aj a(int i, long j);

    void a(int i);

    void a(Drawable drawable);

    void a(SparseArray<Parcelable> sparseArray);

    void a(Menu menu, n.a aVar);

    void a(View view);

    void a(Window.Callback callback);

    void a(SpinnerAdapter spinnerAdapter, AdapterView.OnItemSelectedListener onItemSelectedListener);

    void a(n.a aVar, g.a aVar2);

    void a(ar arVar);

    void a(CharSequence charSequence);

    void a(boolean z);

    Context b();

    void b(int i);

    void b(Drawable drawable);

    void b(SparseArray<Parcelable> sparseArray);

    void b(CharSequence charSequence);

    void b(boolean z);

    void c(int i);

    void c(Drawable drawable);

    void c(CharSequence charSequence);

    boolean c();

    void d();

    void d(int i);

    void d(Drawable drawable);

    void d(CharSequence charSequence);

    CharSequence e();

    void e(int i);

    void e(Drawable drawable);

    CharSequence f();

    void f(int i);

    void g();

    void g(int i);

    void h();

    void h(int i);

    void i(int i);

    boolean i();

    void j(int i);

    boolean j();

    boolean k();

    boolean l();

    boolean m();

    boolean n();

    boolean o();

    void p();

    void q();

    int r();

    boolean s();

    boolean t();

    int u();

    int v();

    int w();

    View x();

    int y();

    int z();
}
