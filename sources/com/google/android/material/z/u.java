package com.google.android.material.z;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Build;
import android.view.View;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.w;
import androidx.j.ag;
import androidx.j.al;
import com.google.android.material.t.o;

/* loaded from: /home/user/work/dex/classes.dex */
class u {

    /* renamed from: a, reason: collision with root package name */
    private static final RectF f1562a = new RectF();

    /* loaded from: /home/user/work/dex/classes.dex */
    interface a {
        void a(Canvas canvas);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface b {
        @ah
        com.google.android.material.t.d a(@ah com.google.android.material.t.d dVar, @ah com.google.android.material.t.d dVar2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float a(float f, float f2, @androidx.annotation.r(a = 0.0d, b = 1.0d) float f3) {
        return f + (f3 * (f2 - f));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ah
    public static <T> T a(@ai T t, @ah T t2) {
        return t != null ? t : t2;
    }

    private u() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.google.android.material.t.o a(com.google.android.material.t.o oVar, final RectF rectF) {
        return oVar.a(new o.b() { // from class: com.google.android.material.z.u.1
            @Override // com.google.android.material.t.o.b
            @ah
            public com.google.android.material.t.d a(@ah com.google.android.material.t.d dVar) {
                return dVar instanceof com.google.android.material.t.m ? dVar : new com.google.android.material.t.m(dVar.a(rectF) / rectF.height());
            }
        });
    }

    static com.google.android.material.t.o a(com.google.android.material.t.o oVar, com.google.android.material.t.o oVar2, RectF rectF, b bVar) {
        return (b(oVar, rectF) ? oVar : oVar2).n().b(bVar.a(oVar.f(), oVar2.f())).c(bVar.a(oVar.g(), oVar2.g())).e(bVar.a(oVar.i(), oVar2.i())).d(bVar.a(oVar.h(), oVar2.h())).a();
    }

    private static boolean b(com.google.android.material.t.o oVar, RectF rectF) {
        return (oVar.f().a(rectF) == 0.0f && oVar.g().a(rectF) == 0.0f && oVar.h().a(rectF) == 0.0f && oVar.i().a(rectF) == 0.0f) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float a(float f, float f2, @androidx.annotation.r(a = 0.0d, b = 1.0d) float f3, @androidx.annotation.r(a = 0.0d, b = 1.0d) float f4, @androidx.annotation.r(a = 0.0d, b = 1.0d) float f5) {
        return f5 < f3 ? f : f5 > f4 ? f2 : a(f, f2, (f5 - f3) / (f4 - f3));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i, int i2, @androidx.annotation.r(a = 0.0d, b = 1.0d) float f, @androidx.annotation.r(a = 0.0d, b = 1.0d) float f2, @androidx.annotation.r(a = 0.0d, b = 1.0d) float f3) {
        return f3 < f ? i : f3 > f2 ? i2 : (int) a(i, i2, (f3 - f) / (f2 - f));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.google.android.material.t.o a(com.google.android.material.t.o oVar, com.google.android.material.t.o oVar2, final RectF rectF, final RectF rectF2, @androidx.annotation.r(a = 0.0d, b = 1.0d) final float f, @androidx.annotation.r(a = 0.0d, b = 1.0d) final float f2, @androidx.annotation.r(a = 0.0d, b = 1.0d) final float f3) {
        return f3 < f ? oVar : f3 > f2 ? oVar2 : a(oVar, oVar2, rectF, new b() { // from class: com.google.android.material.z.u.2
            @Override // com.google.android.material.z.u.b
            @ah
            public com.google.android.material.t.d a(@ah com.google.android.material.t.d dVar, @ah com.google.android.material.t.d dVar2) {
                return new com.google.android.material.t.a(u.a(dVar.a(rectF), dVar2.a(rectF2), f, f2, f3));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Shader a(@androidx.annotation.k int i) {
        return new LinearGradient(0.0f, 0.0f, 0.0f, 0.0f, i, i, Shader.TileMode.CLAMP);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static View a(View view, @w int i) {
        View findViewById = view.findViewById(i);
        return findViewById != null ? findViewById : b(view, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static View b(View view, @w int i) {
        String resourceName = view.getResources().getResourceName(i);
        while (view != null) {
            if (view.getId() != i) {
                Object parent = view.getParent();
                if (!(parent instanceof View)) {
                    break;
                }
                view = (View) parent;
            } else {
                return view;
            }
        }
        throw new IllegalArgumentException(resourceName + " is not a valid ancestor");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static RectF a(View view) {
        return new RectF(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }

    static Rect b(View view) {
        return new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static RectF c(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return new RectF(iArr[0], iArr[1], view.getWidth() + r1, view.getHeight() + r0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float a(@ah RectF rectF) {
        return rectF.width() * rectF.height();
    }

    private static int a(Canvas canvas, Rect rect, int i) {
        f1562a.set(rect);
        if (Build.VERSION.SDK_INT >= 21) {
            return canvas.saveLayerAlpha(f1562a, i);
        }
        return canvas.saveLayerAlpha(f1562a.left, f1562a.top, f1562a.right, f1562a.bottom, i, 31);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Canvas canvas, Rect rect, float f, float f2, float f3, int i, a aVar) {
        if (i <= 0) {
            return;
        }
        int save = canvas.save();
        canvas.translate(f, f2);
        canvas.scale(f3, f3);
        if (i < 255) {
            a(canvas, rect, i);
        }
        aVar.a(canvas);
        canvas.restoreToCount(save);
    }

    static void a(al alVar, @ai ag agVar) {
        if (agVar != null) {
            alVar.a(agVar);
        }
    }

    static void b(al alVar, @ai ag agVar) {
        if (agVar != null) {
            alVar.b(agVar);
        }
    }
}
