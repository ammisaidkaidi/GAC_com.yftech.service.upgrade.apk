package com.google.android.material.b;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import com.google.android.material.b.a;
import com.google.android.material.internal.k;

@ap(a = {ap.a.LIBRARY})
/* loaded from: /home/user/work/dex/classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean f1176a;

    static {
        f1176a = Build.VERSION.SDK_INT < 18;
    }

    private b() {
    }

    public static void a(@ah Rect rect, float f, float f2, float f3, float f4) {
        rect.set((int) (f - f3), (int) (f2 - f4), (int) (f + f3), (int) (f2 + f4));
    }

    public static void a(@ah a aVar, @ah View view, @ah FrameLayout frameLayout) {
        c(aVar, view, frameLayout);
        if (f1176a) {
            frameLayout.setForeground(aVar);
        } else {
            view.getOverlay().add(aVar);
        }
    }

    public static void b(@ai a aVar, @ah View view, @ah FrameLayout frameLayout) {
        if (aVar == null) {
            return;
        }
        if (f1176a) {
            frameLayout.setForeground(null);
        } else {
            view.getOverlay().remove(aVar);
        }
    }

    public static void c(@ah a aVar, @ah View view, @ah FrameLayout frameLayout) {
        Rect rect = new Rect();
        (f1176a ? frameLayout : view).getDrawingRect(rect);
        aVar.setBounds(rect);
        aVar.a(view, frameLayout);
    }

    @ah
    public static k a(@ah SparseArray<a> sparseArray) {
        k kVar = new k();
        for (int i = 0; i < sparseArray.size(); i++) {
            int keyAt = sparseArray.keyAt(i);
            a valueAt = sparseArray.valueAt(i);
            if (valueAt == null) {
                throw new IllegalArgumentException("badgeDrawable cannot be null");
            }
            kVar.put(keyAt, valueAt.a());
        }
        return kVar;
    }

    @ah
    public static SparseArray<a> a(Context context, @ah k kVar) {
        SparseArray<a> sparseArray = new SparseArray<>(kVar.size());
        for (int i = 0; i < kVar.size(); i++) {
            int keyAt = kVar.keyAt(i);
            a.b bVar = (a.b) kVar.valueAt(i);
            if (bVar == null) {
                throw new IllegalArgumentException("BadgeDrawable's savedState cannot be null");
            }
            sparseArray.put(keyAt, a.a(context, bVar));
        }
        return sparseArray;
    }
}
