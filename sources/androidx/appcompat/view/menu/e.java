package androidx.appcompat.view.menu;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import androidx.annotation.ap;
import androidx.appcompat.a;
import androidx.appcompat.view.menu.n;
import androidx.appcompat.view.menu.o;
import java.util.ArrayList;

@ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public class e implements AdapterView.OnItemClickListener, n {
    public static final String i = "android:menu:list";
    private static final String j = "ListMenuPresenter";

    /* renamed from: a, reason: collision with root package name */
    Context f133a;
    LayoutInflater b;
    g c;
    ExpandedMenuView d;
    int e;
    int f;
    int g;
    a h;
    private n.a k;
    private int l;

    @Override // androidx.appcompat.view.menu.n
    public boolean a(g gVar, j jVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.n
    public boolean b() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.n
    public boolean b(g gVar, j jVar) {
        return false;
    }

    public e(Context context, int i2) {
        this(i2, 0);
        this.f133a = context;
        this.b = LayoutInflater.from(this.f133a);
    }

    public e(int i2, int i3) {
        this.g = i2;
        this.f = i3;
    }

    @Override // androidx.appcompat.view.menu.n
    public void a(Context context, g gVar) {
        if (this.f != 0) {
            this.f133a = new ContextThemeWrapper(context, this.f);
            this.b = LayoutInflater.from(this.f133a);
        } else if (this.f133a != null) {
            this.f133a = context;
            if (this.b == null) {
                this.b = LayoutInflater.from(this.f133a);
            }
        }
        this.c = gVar;
        if (this.h != null) {
            this.h.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.n
    public o a(ViewGroup viewGroup) {
        if (this.d == null) {
            this.d = (ExpandedMenuView) this.b.inflate(a.j.abc_expanded_menu_layout, viewGroup, false);
            if (this.h == null) {
                this.h = new a();
            }
            this.d.setAdapter((ListAdapter) this.h);
            this.d.setOnItemClickListener(this);
        }
        return this.d;
    }

    public ListAdapter a() {
        if (this.h == null) {
            this.h = new a();
        }
        return this.h;
    }

    @Override // androidx.appcompat.view.menu.n
    public void a(boolean z) {
        if (this.h != null) {
            this.h.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.n
    public void a(n.a aVar) {
        this.k = aVar;
    }

    @Override // androidx.appcompat.view.menu.n
    public boolean a(s sVar) {
        if (!sVar.hasVisibleItems()) {
            return false;
        }
        new h(sVar).a((IBinder) null);
        if (this.k == null) {
            return true;
        }
        this.k.a(sVar);
        return true;
    }

    @Override // androidx.appcompat.view.menu.n
    public void a(g gVar, boolean z) {
        if (this.k != null) {
            this.k.a(gVar, z);
        }
    }

    int d() {
        return this.e;
    }

    public void a(int i2) {
        this.e = i2;
        if (this.d != null) {
            a(false);
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
        this.c.a(this.h.getItem(i2), this, 0);
    }

    public void a(Bundle bundle) {
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        if (this.d != null) {
            this.d.saveHierarchyState(sparseArray);
        }
        bundle.putSparseParcelableArray(i, sparseArray);
    }

    public void b(Bundle bundle) {
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(i);
        if (sparseParcelableArray != null) {
            this.d.restoreHierarchyState(sparseParcelableArray);
        }
    }

    public void b(int i2) {
        this.l = i2;
    }

    @Override // androidx.appcompat.view.menu.n
    public int c() {
        return this.l;
    }

    @Override // androidx.appcompat.view.menu.n
    public Parcelable f() {
        if (this.d == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        a(bundle);
        return bundle;
    }

    @Override // androidx.appcompat.view.menu.n
    public void a(Parcelable parcelable) {
        b((Bundle) parcelable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class a extends BaseAdapter {
        private int b = -1;

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        public a() {
            a();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            int size = e.this.c.n().size() - e.this.e;
            return this.b < 0 ? size : size - 1;
        }

        @Override // android.widget.Adapter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public j getItem(int i) {
            ArrayList<j> n = e.this.c.n();
            int i2 = i + e.this.e;
            if (this.b >= 0 && i2 >= this.b) {
                i2++;
            }
            return n.get(i2);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = e.this.b.inflate(e.this.g, viewGroup, false);
            }
            ((o.a) view).a(getItem(i), 0);
            return view;
        }

        void a() {
            j t = e.this.c.t();
            if (t != null) {
                ArrayList<j> n = e.this.c.n();
                int size = n.size();
                for (int i = 0; i < size; i++) {
                    if (n.get(i) == t) {
                        this.b = i;
                        return;
                    }
                }
            }
            this.b = -1;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            a();
            super.notifyDataSetChanged();
        }
    }
}
