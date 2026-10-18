package androidx.appcompat.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.annotation.ap;
import androidx.appcompat.view.menu.o;
import java.util.ArrayList;

@ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public class f extends BaseAdapter {

    /* renamed from: a, reason: collision with root package name */
    g f135a;
    private int b = -1;
    private boolean c;
    private final boolean d;
    private final LayoutInflater e;
    private final int f;

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    public f(g gVar, LayoutInflater layoutInflater, boolean z, int i) {
        this.d = z;
        this.e = layoutInflater;
        this.f135a = gVar;
        this.f = i;
        c();
    }

    public boolean a() {
        return this.c;
    }

    public void a(boolean z) {
        this.c = z;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        ArrayList<j> n = this.d ? this.f135a.n() : this.f135a.k();
        if (this.b < 0) {
            return n.size();
        }
        return n.size() - 1;
    }

    public g b() {
        return this.f135a;
    }

    @Override // android.widget.Adapter
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public j getItem(int i) {
        ArrayList<j> n = this.d ? this.f135a.n() : this.f135a.k();
        if (this.b >= 0 && i >= this.b) {
            i++;
        }
        return n.get(i);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.e.inflate(this.f, viewGroup, false);
        }
        int groupId = getItem(i).getGroupId();
        int i2 = i - 1;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        listMenuItemView.setGroupDividerEnabled(this.f135a.b() && groupId != (i2 >= 0 ? getItem(i2).getGroupId() : groupId));
        o.a aVar = (o.a) view;
        if (this.c) {
            listMenuItemView.setForceShowIcon(true);
        }
        aVar.a(getItem(i), 0);
        return view;
    }

    void c() {
        j t = this.f135a.t();
        if (t != null) {
            ArrayList<j> n = this.f135a.n();
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
        c();
        super.notifyDataSetChanged();
    }
}
