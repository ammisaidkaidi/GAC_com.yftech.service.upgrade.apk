package androidx.coordinatorlayout.widget;

import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import androidx.c.i;
import androidx.core.m.h;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

@ap(a = {ap.a.LIBRARY})
/* loaded from: /home/user/work/dex/classes.dex */
public final class a<T> {

    /* renamed from: a, reason: collision with root package name */
    private final h.a<ArrayList<T>> f328a = new h.b(10);
    private final i<T, ArrayList<T>> b = new i<>();
    private final ArrayList<T> c = new ArrayList<>();
    private final HashSet<T> d = new HashSet<>();

    public void a(@ah T t) {
        if (this.b.containsKey(t)) {
            return;
        }
        this.b.put(t, null);
    }

    public boolean b(@ah T t) {
        return this.b.containsKey(t);
    }

    public void a(@ah T t, @ah T t2) {
        if (!this.b.containsKey(t) || !this.b.containsKey(t2)) {
            throw new IllegalArgumentException("All nodes must be present in the graph before being added as an edge");
        }
        ArrayList<T> arrayList = this.b.get(t);
        if (arrayList == null) {
            arrayList = d();
            this.b.put(t, arrayList);
        }
        arrayList.add(t2);
    }

    @ai
    public List c(@ah T t) {
        return this.b.get(t);
    }

    @ai
    public List<T> d(@ah T t) {
        int size = this.b.size();
        ArrayList arrayList = null;
        for (int i = 0; i < size; i++) {
            ArrayList<T> c = this.b.c(i);
            if (c != null && c.contains(t)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(this.b.b(i));
            }
        }
        return arrayList;
    }

    public boolean e(@ah T t) {
        int size = this.b.size();
        for (int i = 0; i < size; i++) {
            ArrayList<T> c = this.b.c(i);
            if (c != null && c.contains(t)) {
                return true;
            }
        }
        return false;
    }

    public void a() {
        int size = this.b.size();
        for (int i = 0; i < size; i++) {
            ArrayList<T> c = this.b.c(i);
            if (c != null) {
                a((ArrayList) c);
            }
        }
        this.b.clear();
    }

    @ah
    public ArrayList<T> b() {
        this.c.clear();
        this.d.clear();
        int size = this.b.size();
        for (int i = 0; i < size; i++) {
            a(this.b.b(i), this.c, this.d);
        }
        return this.c;
    }

    private void a(T t, ArrayList<T> arrayList, HashSet<T> hashSet) {
        if (arrayList.contains(t)) {
            return;
        }
        if (hashSet.contains(t)) {
            throw new RuntimeException("This graph contains cyclic dependencies");
        }
        hashSet.add(t);
        ArrayList<T> arrayList2 = this.b.get(t);
        if (arrayList2 != null) {
            int size = arrayList2.size();
            for (int i = 0; i < size; i++) {
                a(arrayList2.get(i), arrayList, hashSet);
            }
        }
        hashSet.remove(t);
        arrayList.add(t);
    }

    int c() {
        return this.b.size();
    }

    @ah
    private ArrayList<T> d() {
        ArrayList<T> a2 = this.f328a.a();
        return a2 == null ? new ArrayList<>() : a2;
    }

    private void a(@ah ArrayList<T> arrayList) {
        arrayList.clear();
        this.f328a.a(arrayList);
    }
}
