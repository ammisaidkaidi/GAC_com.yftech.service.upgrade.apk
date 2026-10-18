package androidx.j;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.j.aa;
import java.util.ArrayList;

@SuppressLint({"ViewConstructor"})
/* loaded from: /home/user/work/dex/classes.dex */
class p extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    @androidx.annotation.ah
    private ViewGroup f910a;
    private boolean b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(ViewGroup viewGroup) {
        super(viewGroup.getContext());
        setClipChildren(false);
        this.f910a = viewGroup;
        this.f910a.setTag(aa.e.ghost_view_holder, this);
        at.a(this.f910a).a(this);
        this.b = true;
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        if (!this.b) {
            throw new IllegalStateException("This GhostViewHolder is detached!");
        }
        super.onViewAdded(view);
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if ((getChildCount() == 1 && getChildAt(0) == view) || getChildCount() == 0) {
            this.f910a.setTag(aa.e.ghost_view_holder, null);
            at.a(this.f910a).b(this);
            this.b = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static p a(@androidx.annotation.ah ViewGroup viewGroup) {
        return (p) viewGroup.getTag(aa.e.ghost_view_holder);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        if (!this.b) {
            throw new IllegalStateException("This GhostViewHolder is detached!");
        }
        at.a(this.f910a).b(this);
        at.a(this.f910a).a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(r rVar) {
        ArrayList<View> arrayList = new ArrayList<>();
        a(rVar.c, arrayList);
        int a2 = a(arrayList);
        if (a2 < 0 || a2 >= getChildCount()) {
            addView(rVar);
        } else {
            addView(rVar, a2);
        }
    }

    private int a(ArrayList<View> arrayList) {
        ArrayList arrayList2 = new ArrayList();
        int childCount = getChildCount() - 1;
        int i = 0;
        while (i <= childCount) {
            int i2 = (i + childCount) / 2;
            a(((r) getChildAt(i2)).c, (ArrayList<View>) arrayList2);
            if (a(arrayList, (ArrayList<View>) arrayList2)) {
                i = i2 + 1;
            } else {
                childCount = i2 - 1;
            }
            arrayList2.clear();
        }
        return i;
    }

    private static boolean a(ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        if (arrayList.isEmpty() || arrayList2.isEmpty() || arrayList.get(0) != arrayList2.get(0)) {
            return true;
        }
        int min = Math.min(arrayList.size(), arrayList2.size());
        for (int i = 1; i < min; i++) {
            View view = arrayList.get(i);
            View view2 = arrayList2.get(i);
            if (view != view2) {
                return a(view, view2);
            }
        }
        return arrayList2.size() == min;
    }

    private static void a(View view, ArrayList<View> arrayList) {
        Object parent = view.getParent();
        if (parent instanceof ViewGroup) {
            a((View) parent, arrayList);
        }
        arrayList.add(view);
    }

    private static boolean a(View view, View view2) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        int childCount = viewGroup.getChildCount();
        if (Build.VERSION.SDK_INT >= 21 && view.getZ() != view2.getZ()) {
            return view.getZ() > view2.getZ();
        }
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(at.a(viewGroup, i));
            if (childAt == view) {
                return false;
            }
            if (childAt == view2) {
                return true;
            }
        }
        return true;
    }
}
