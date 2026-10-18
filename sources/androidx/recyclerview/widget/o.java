package androidx.recyclerview.widget;

import android.graphics.Canvas;
import android.os.Build;
import android.view.View;
import androidx.recyclerview.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public class o implements n {

    /* renamed from: a, reason: collision with root package name */
    static final n f1089a = new o();

    @Override // androidx.recyclerview.widget.n
    public void b(Canvas canvas, RecyclerView recyclerView, View view, float f, float f2, int i, boolean z) {
    }

    @Override // androidx.recyclerview.widget.n
    public void b(View view) {
    }

    o() {
    }

    @Override // androidx.recyclerview.widget.n
    public void a(Canvas canvas, RecyclerView recyclerView, View view, float f, float f2, int i, boolean z) {
        if (Build.VERSION.SDK_INT >= 21 && z && view.getTag(a.e.item_touch_helper_previous_elevation) == null) {
            Float valueOf = Float.valueOf(androidx.core.n.af.P(view));
            androidx.core.n.af.m(view, a(recyclerView, view) + 1.0f);
            view.setTag(a.e.item_touch_helper_previous_elevation, valueOf);
        }
        view.setTranslationX(f);
        view.setTranslationY(f2);
    }

    private static float a(RecyclerView recyclerView, View view) {
        int childCount = recyclerView.getChildCount();
        float f = 0.0f;
        for (int i = 0; i < childCount; i++) {
            View childAt = recyclerView.getChildAt(i);
            if (childAt != view) {
                float P = androidx.core.n.af.P(childAt);
                if (P > f) {
                    f = P;
                }
            }
        }
        return f;
    }

    @Override // androidx.recyclerview.widget.n
    public void a(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            Object tag = view.getTag(a.e.item_touch_helper_previous_elevation);
            if (tag instanceof Float) {
                androidx.core.n.af.m(view, ((Float) tag).floatValue());
            }
            view.setTag(a.e.item_touch_helper_previous_elevation, null);
        }
        view.setTranslationX(0.0f);
        view.setTranslationY(0.0f);
    }
}
