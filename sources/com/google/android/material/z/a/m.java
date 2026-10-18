package com.google.android.material.z.a;

import android.app.Activity;
import android.app.SharedElementCallback;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Parcelable;
import android.transition.Transition;
import android.view.View;
import android.view.Window;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.am;
import com.google.android.material.a;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;

@am(a = 21)
/* loaded from: /home/user/work/dex/classes.dex */
public class m extends SharedElementCallback {

    /* renamed from: a, reason: collision with root package name */
    @ai
    private static WeakReference<View> f1524a;

    @ai
    private Rect e;
    private boolean b = true;
    private boolean c = true;
    private boolean d = false;

    @ai
    private a f = new b();

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface a {
        @ai
        com.google.android.material.t.o a(@ah View view);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class b implements a {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.z.a.m.a
        @ai
        public com.google.android.material.t.o a(@ah View view) {
            if (view instanceof com.google.android.material.t.s) {
                return ((com.google.android.material.t.s) view).getShapeAppearanceModel();
            }
            return null;
        }
    }

    @Override // android.app.SharedElementCallback
    @ai
    public Parcelable onCaptureSharedElementSnapshot(@ah View view, @ah Matrix matrix, @ah RectF rectF) {
        f1524a = new WeakReference<>(view);
        return super.onCaptureSharedElementSnapshot(view, matrix, rectF);
    }

    @Override // android.app.SharedElementCallback
    @ai
    public View onCreateSnapshotView(@ah Context context, @ai Parcelable parcelable) {
        View view;
        com.google.android.material.t.o a2;
        View onCreateSnapshotView = super.onCreateSnapshotView(context, parcelable);
        if (onCreateSnapshotView != null && f1524a != null && this.f != null && (view = f1524a.get()) != null && (a2 = this.f.a(view)) != null) {
            onCreateSnapshotView.setTag(a.h.mtrl_motion_snapshot_view, a2);
        }
        return onCreateSnapshotView;
    }

    @Override // android.app.SharedElementCallback
    public void onMapSharedElements(@ah List<String> list, @ah Map<String, View> map) {
        View view;
        Activity a2;
        if (list.isEmpty() || map.isEmpty() || (view = map.get(list.get(0))) == null || (a2 = com.google.android.material.internal.b.a(view.getContext())) == null) {
            return;
        }
        Window window = a2.getWindow();
        if (this.b) {
            c(window);
        } else {
            a(a2, window);
        }
    }

    @Override // android.app.SharedElementCallback
    public void onSharedElementStart(@ah List<String> list, @ah List<View> list2, @ah List<View> list3) {
        if (!list2.isEmpty() && !list3.isEmpty()) {
            list2.get(0).setTag(a.h.mtrl_motion_snapshot_view, list3.get(0));
        }
        if (this.b || list2.isEmpty() || this.e == null) {
            return;
        }
        View view = list2.get(0);
        view.measure(View.MeasureSpec.makeMeasureSpec(this.e.width(), androidx.d.c.b.a.b.b), View.MeasureSpec.makeMeasureSpec(this.e.height(), androidx.d.c.b.a.b.b));
        view.layout(this.e.left, this.e.top, this.e.right, this.e.bottom);
    }

    @Override // android.app.SharedElementCallback
    public void onSharedElementEnd(@ah List<String> list, @ah List<View> list2, @ah List<View> list3) {
        if (!list2.isEmpty() && (list2.get(0).getTag(a.h.mtrl_motion_snapshot_view) instanceof View)) {
            list2.get(0).setTag(a.h.mtrl_motion_snapshot_view, null);
        }
        if (!this.b && !list2.isEmpty()) {
            this.e = v.b(list2.get(0));
        }
        this.b = false;
    }

    @ai
    public a a() {
        return this.f;
    }

    public void a(@ai a aVar) {
        this.f = aVar;
    }

    public boolean b() {
        return this.c;
    }

    public void a(boolean z) {
        this.c = z;
    }

    public boolean c() {
        return this.d;
    }

    public void b(boolean z) {
        this.d = z;
    }

    private void c(final Window window) {
        Transition sharedElementEnterTransition = window.getSharedElementEnterTransition();
        if (sharedElementEnterTransition instanceof l) {
            l lVar = (l) sharedElementEnterTransition;
            if (!this.d) {
                window.setSharedElementReenterTransition(null);
            }
            if (this.c) {
                a(window, lVar);
                lVar.addListener(new u() { // from class: com.google.android.material.z.a.m.1
                    @Override // com.google.android.material.z.a.u, android.transition.Transition.TransitionListener
                    public void onTransitionStart(Transition transition) {
                        m.d(window);
                    }

                    @Override // com.google.android.material.z.a.u, android.transition.Transition.TransitionListener
                    public void onTransitionEnd(Transition transition) {
                        m.e(window);
                    }
                });
            }
        }
    }

    private void a(final Activity activity, final Window window) {
        Transition sharedElementReturnTransition = window.getSharedElementReturnTransition();
        if (sharedElementReturnTransition instanceof l) {
            l lVar = (l) sharedElementReturnTransition;
            lVar.b(true);
            lVar.addListener(new u() { // from class: com.google.android.material.z.a.m.2
                @Override // com.google.android.material.z.a.u, android.transition.Transition.TransitionListener
                public void onTransitionEnd(Transition transition) {
                    View view;
                    if (m.f1524a != null && (view = (View) m.f1524a.get()) != null) {
                        view.setAlpha(1.0f);
                        WeakReference unused = m.f1524a = null;
                    }
                    activity.finish();
                    activity.overridePendingTransition(0, 0);
                }
            });
            if (this.c) {
                a(window, lVar);
                lVar.addListener(new u() { // from class: com.google.android.material.z.a.m.3
                    @Override // com.google.android.material.z.a.u, android.transition.Transition.TransitionListener
                    public void onTransitionStart(Transition transition) {
                        m.d(window);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(Window window) {
        window.getDecorView().getBackground().mutate().setColorFilter(androidx.core.graphics.b.a(0, androidx.core.graphics.c.CLEAR));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void e(Window window) {
        window.getDecorView().getBackground().mutate().clearColorFilter();
    }

    private static void a(Window window, l lVar) {
        window.setTransitionBackgroundFadeDuration(lVar.getDuration());
    }
}
