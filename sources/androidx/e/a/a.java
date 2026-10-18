package androidx.e.a;

import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.FilterQueryProvider;
import android.widget.Filterable;
import androidx.annotation.ap;
import androidx.e.a.b;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class a extends BaseAdapter implements Filterable, b.a {

    @Deprecated
    public static final int n = 1;
    public static final int o = 2;

    @ap(a = {ap.a.LIBRARY_GROUP})
    protected boolean e;

    @ap(a = {ap.a.LIBRARY_GROUP})
    protected boolean f;

    @ap(a = {ap.a.LIBRARY_GROUP})
    protected Cursor g;

    @ap(a = {ap.a.LIBRARY_GROUP})
    protected Context h;

    @ap(a = {ap.a.LIBRARY_GROUP})
    protected int i;

    @ap(a = {ap.a.LIBRARY_GROUP})
    protected C0053a j;

    @ap(a = {ap.a.LIBRARY_GROUP})
    protected DataSetObserver k;

    @ap(a = {ap.a.LIBRARY_GROUP})
    protected androidx.e.a.b l;

    @ap(a = {ap.a.LIBRARY_GROUP})
    protected FilterQueryProvider m;

    public abstract View a(Context context, Cursor cursor, ViewGroup viewGroup);

    public abstract void a(View view, Context context, Cursor cursor);

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }

    @Deprecated
    public a(Context context, Cursor cursor) {
        a(context, cursor, 1);
    }

    public a(Context context, Cursor cursor, boolean z) {
        a(context, cursor, z ? 1 : 2);
    }

    public a(Context context, Cursor cursor, int i) {
        a(context, cursor, i);
    }

    @Deprecated
    protected void a(Context context, Cursor cursor, boolean z) {
        a(context, cursor, z ? 1 : 2);
    }

    void a(Context context, Cursor cursor, int i) {
        if ((i & 1) == 1) {
            i |= 2;
            this.f = true;
        } else {
            this.f = false;
        }
        boolean z = cursor != null;
        this.g = cursor;
        this.e = z;
        this.h = context;
        this.i = z ? cursor.getColumnIndexOrThrow("_id") : -1;
        if ((i & 2) == 2) {
            this.j = new C0053a();
            this.k = new b();
        } else {
            this.j = null;
            this.k = null;
        }
        if (z) {
            if (this.j != null) {
                cursor.registerContentObserver(this.j);
            }
            if (this.k != null) {
                cursor.registerDataSetObserver(this.k);
            }
        }
    }

    @Override // androidx.e.a.b.a
    public Cursor c() {
        return this.g;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (!this.e || this.g == null) {
            return 0;
        }
        return this.g.getCount();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        if (!this.e || this.g == null) {
            return null;
        }
        this.g.moveToPosition(i);
        return this.g;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        if (this.e && this.g != null && this.g.moveToPosition(i)) {
            return this.g.getLong(this.i);
        }
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (!this.e) {
            throw new IllegalStateException("this should only be called when the cursor is valid");
        }
        if (!this.g.moveToPosition(i)) {
            throw new IllegalStateException("couldn't move cursor to position " + i);
        }
        if (view == null) {
            view = a(this.h, this.g, viewGroup);
        }
        a(view, this.h, this.g);
        return view;
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        if (!this.e) {
            return null;
        }
        this.g.moveToPosition(i);
        if (view == null) {
            view = b(this.h, this.g, viewGroup);
        }
        a(view, this.h, this.g);
        return view;
    }

    public View b(Context context, Cursor cursor, ViewGroup viewGroup) {
        return a(context, cursor, viewGroup);
    }

    public void a(Cursor cursor) {
        Cursor c = c(cursor);
        if (c != null) {
            c.close();
        }
    }

    public Cursor c(Cursor cursor) {
        if (cursor == this.g) {
            return null;
        }
        Cursor cursor2 = this.g;
        if (cursor2 != null) {
            if (this.j != null) {
                cursor2.unregisterContentObserver(this.j);
            }
            if (this.k != null) {
                cursor2.unregisterDataSetObserver(this.k);
            }
        }
        this.g = cursor;
        if (cursor != null) {
            if (this.j != null) {
                cursor.registerContentObserver(this.j);
            }
            if (this.k != null) {
                cursor.registerDataSetObserver(this.k);
            }
            this.i = cursor.getColumnIndexOrThrow("_id");
            this.e = true;
            notifyDataSetChanged();
        } else {
            this.i = -1;
            this.e = false;
            notifyDataSetInvalidated();
        }
        return cursor2;
    }

    public CharSequence b(Cursor cursor) {
        return cursor == null ? com.yftech.service.upgrade.a.d : cursor.toString();
    }

    public Cursor a(CharSequence charSequence) {
        if (this.m != null) {
            return this.m.runQuery(charSequence);
        }
        return this.g;
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        if (this.l == null) {
            this.l = new androidx.e.a.b(this);
        }
        return this.l;
    }

    public FilterQueryProvider d() {
        return this.m;
    }

    public void a(FilterQueryProvider filterQueryProvider) {
        this.m = filterQueryProvider;
    }

    protected void e() {
        if (!this.f || this.g == null || this.g.isClosed()) {
            return;
        }
        this.e = this.g.requery();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.e.a.a$a, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class C0053a extends ContentObserver {
        @Override // android.database.ContentObserver
        public boolean deliverSelfNotifications() {
            return true;
        }

        C0053a() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            a.this.e();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class b extends DataSetObserver {
        b() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            a.this.e = true;
            a.this.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            a.this.e = false;
            a.this.notifyDataSetInvalidated();
        }
    }
}
