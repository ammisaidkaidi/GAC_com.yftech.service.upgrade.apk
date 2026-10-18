package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.ap;
import androidx.appcompat.view.menu.n;
import androidx.appcompat.view.menu.o;
import java.util.ArrayList;

@ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public abstract class b implements n {

    /* renamed from: a, reason: collision with root package name */
    protected Context f125a;
    protected Context b;
    protected g c;
    protected LayoutInflater d;
    protected LayoutInflater e;
    protected o f;
    private n.a g;
    private int h;
    private int i;
    private int j;

    public abstract void a(j jVar, o.a aVar);

    public boolean a(int i, j jVar) {
        return true;
    }

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

    public b(Context context, int i, int i2) {
        this.f125a = context;
        this.d = LayoutInflater.from(context);
        this.h = i;
        this.i = i2;
    }

    @Override // androidx.appcompat.view.menu.n
    public void a(Context context, g gVar) {
        this.b = context;
        this.e = LayoutInflater.from(this.b);
        this.c = gVar;
    }

    @Override // androidx.appcompat.view.menu.n
    public o a(ViewGroup viewGroup) {
        if (this.f == null) {
            this.f = (o) this.d.inflate(this.h, viewGroup, false);
            this.f.a(this.c);
            a(true);
        }
        return this.f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.appcompat.view.menu.n
    public void a(boolean z) {
        ViewGroup viewGroup = (ViewGroup) this.f;
        if (viewGroup == null) {
            return;
        }
        int i = 0;
        if (this.c != null) {
            this.c.l();
            ArrayList<j> k = this.c.k();
            int size = k.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                j jVar = k.get(i3);
                if (a(i2, jVar)) {
                    View childAt = viewGroup.getChildAt(i2);
                    j itemData = childAt instanceof o.a ? ((o.a) childAt).getItemData() : null;
                    View a2 = a(jVar, childAt, viewGroup);
                    if (jVar != itemData) {
                        a2.setPressed(false);
                        a2.jumpDrawablesToCurrentState();
                    }
                    if (a2 != childAt) {
                        a(a2, i2);
                    }
                    i2++;
                }
            }
            i = i2;
        }
        while (i < viewGroup.getChildCount()) {
            if (!a(viewGroup, i)) {
                i++;
            }
        }
    }

    protected void a(View view, int i) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(view);
        }
        ((ViewGroup) this.f).addView(view, i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean a(ViewGroup viewGroup, int i) {
        viewGroup.removeViewAt(i);
        return true;
    }

    @Override // androidx.appcompat.view.menu.n
    public void a(n.a aVar) {
        this.g = aVar;
    }

    public n.a a() {
        return this.g;
    }

    public o.a b(ViewGroup viewGroup) {
        return (o.a) this.d.inflate(this.i, viewGroup, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public View a(j jVar, View view, ViewGroup viewGroup) {
        o.a aVar;
        if (view instanceof o.a) {
            aVar = (o.a) view;
        } else {
            aVar = b(viewGroup);
        }
        a(jVar, aVar);
        return (View) aVar;
    }

    @Override // androidx.appcompat.view.menu.n
    public void a(g gVar, boolean z) {
        if (this.g != null) {
            this.g.a(gVar, z);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [androidx.appcompat.view.menu.g] */
    @Override // androidx.appcompat.view.menu.n
    public boolean a(s sVar) {
        if (this.g == null) {
            return false;
        }
        n.a aVar = this.g;
        s sVar2 = sVar;
        if (sVar == null) {
            sVar2 = this.c;
        }
        return aVar.a(sVar2);
    }

    @Override // androidx.appcompat.view.menu.n
    public int c() {
        return this.j;
    }

    public void a(int i) {
        this.j = i;
    }
}
