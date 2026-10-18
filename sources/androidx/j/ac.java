package androidx.j;

import android.content.Context;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.j.aa;

/* loaded from: /home/user/work/dex/classes.dex */
public class ac {

    /* renamed from: a, reason: collision with root package name */
    private Context f831a;
    private int b;
    private ViewGroup c;
    private View d;
    private Runnable e;
    private Runnable f;

    @androidx.annotation.ah
    public static ac a(@androidx.annotation.ah ViewGroup viewGroup, @androidx.annotation.ac int i, @androidx.annotation.ah Context context) {
        SparseArray sparseArray = (SparseArray) viewGroup.getTag(aa.e.transition_scene_layoutid_cache);
        if (sparseArray == null) {
            sparseArray = new SparseArray();
            viewGroup.setTag(aa.e.transition_scene_layoutid_cache, sparseArray);
        }
        ac acVar = (ac) sparseArray.get(i);
        if (acVar != null) {
            return acVar;
        }
        ac acVar2 = new ac(viewGroup, i, context);
        sparseArray.put(i, acVar2);
        return acVar2;
    }

    public ac(@androidx.annotation.ah ViewGroup viewGroup) {
        this.b = -1;
        this.c = viewGroup;
    }

    private ac(ViewGroup viewGroup, int i, Context context) {
        this.b = -1;
        this.f831a = context;
        this.c = viewGroup;
        this.b = i;
    }

    public ac(@androidx.annotation.ah ViewGroup viewGroup, @androidx.annotation.ah View view) {
        this.b = -1;
        this.c = viewGroup;
        this.d = view;
    }

    @androidx.annotation.ah
    public ViewGroup a() {
        return this.c;
    }

    public void b() {
        if (a(this.c) != this || this.f == null) {
            return;
        }
        this.f.run();
    }

    public void c() {
        if (this.b > 0 || this.d != null) {
            a().removeAllViews();
            if (this.b > 0) {
                LayoutInflater.from(this.f831a).inflate(this.b, this.c);
            } else {
                this.c.addView(this.d);
            }
        }
        if (this.e != null) {
            this.e.run();
        }
        a(this.c, this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(@androidx.annotation.ah ViewGroup viewGroup, @androidx.annotation.ai ac acVar) {
        viewGroup.setTag(aa.e.transition_current_scene, acVar);
    }

    @androidx.annotation.ai
    public static ac a(@androidx.annotation.ah ViewGroup viewGroup) {
        return (ac) viewGroup.getTag(aa.e.transition_current_scene);
    }

    public void a(@androidx.annotation.ai Runnable runnable) {
        this.e = runnable;
    }

    public void b(@androidx.annotation.ai Runnable runnable) {
        this.f = runnable;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d() {
        return this.b > 0;
    }
}
