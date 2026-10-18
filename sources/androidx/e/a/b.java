package androidx.e.a;

import android.database.Cursor;
import android.widget.Filter;

/* loaded from: /home/user/work/dex/classes.dex */
class b extends Filter {

    /* renamed from: a, reason: collision with root package name */
    a f739a;

    /* loaded from: /home/user/work/dex/classes.dex */
    interface a {
        Cursor a(CharSequence charSequence);

        void a(Cursor cursor);

        CharSequence b(Cursor cursor);

        Cursor c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(a aVar) {
        this.f739a = aVar;
    }

    @Override // android.widget.Filter
    public CharSequence convertResultToString(Object obj) {
        return this.f739a.b((Cursor) obj);
    }

    @Override // android.widget.Filter
    protected Filter.FilterResults performFiltering(CharSequence charSequence) {
        Cursor a2 = this.f739a.a(charSequence);
        Filter.FilterResults filterResults = new Filter.FilterResults();
        if (a2 != null) {
            filterResults.count = a2.getCount();
            filterResults.values = a2;
        } else {
            filterResults.count = 0;
            filterResults.values = null;
        }
        return filterResults;
    }

    @Override // android.widget.Filter
    protected void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
        Cursor c = this.f739a.c();
        if (filterResults.values == null || filterResults.values == c) {
            return;
        }
        this.f739a.a((Cursor) filterResults.values);
    }
}
