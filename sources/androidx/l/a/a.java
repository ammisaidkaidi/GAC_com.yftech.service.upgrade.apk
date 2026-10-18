package androidx.l.a;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.ah;
import androidx.annotation.ai;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class a {
    public static final int c = -1;
    public static final int d = -2;

    /* renamed from: a, reason: collision with root package name */
    private final DataSetObservable f936a = new DataSetObservable();
    private DataSetObserver b;

    public int a(@ah Object obj) {
        return -1;
    }

    @ai
    public Parcelable a() {
        return null;
    }

    public void a(@ai Parcelable parcelable, @ai ClassLoader classLoader) {
    }

    @Deprecated
    public void a(@ah View view) {
    }

    public abstract boolean a(@ah View view, @ah Object obj);

    public abstract int b();

    @Deprecated
    public void b(@ah View view) {
    }

    @Deprecated
    public void b(@ah View view, int i, @ah Object obj) {
    }

    @ai
    public CharSequence c(int i) {
        return null;
    }

    public float d(int i) {
        return 1.0f;
    }

    public void a(@ah ViewGroup viewGroup) {
        a((View) viewGroup);
    }

    @ah
    public Object a(@ah ViewGroup viewGroup, int i) {
        return a((View) viewGroup, i);
    }

    public void a(@ah ViewGroup viewGroup, int i, @ah Object obj) {
        a((View) viewGroup, i, obj);
    }

    public void b(@ah ViewGroup viewGroup, int i, @ah Object obj) {
        b((View) viewGroup, i, obj);
    }

    public void b(@ah ViewGroup viewGroup) {
        b((View) viewGroup);
    }

    @ah
    @Deprecated
    public Object a(@ah View view, int i) {
        throw new UnsupportedOperationException("Required method instantiateItem was not overridden");
    }

    @Deprecated
    public void a(@ah View view, int i, @ah Object obj) {
        throw new UnsupportedOperationException("Required method destroyItem was not overridden");
    }

    public void c() {
        synchronized (this) {
            if (this.b != null) {
                this.b.onChanged();
            }
        }
        this.f936a.notifyChanged();
    }

    public void a(@ah DataSetObserver dataSetObserver) {
        this.f936a.registerObserver(dataSetObserver);
    }

    public void b(@ah DataSetObserver dataSetObserver) {
        this.f936a.unregisterObserver(dataSetObserver);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(DataSetObserver dataSetObserver) {
        synchronized (this) {
            this.b = dataSetObserver;
        }
    }
}
