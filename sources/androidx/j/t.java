package androidx.j;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.ImageView;
import java.lang.reflect.Field;

/* loaded from: /home/user/work/dex/classes.dex */
class t {

    /* renamed from: a, reason: collision with root package name */
    private static boolean f914a = true;
    private static Field b;
    private static boolean c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(@androidx.annotation.ah ImageView imageView, @androidx.annotation.ai Matrix matrix) {
        if (Build.VERSION.SDK_INT >= 29) {
            imageView.animateTransform(matrix);
            return;
        }
        if (matrix == null) {
            Drawable drawable = imageView.getDrawable();
            if (drawable != null) {
                drawable.setBounds(0, 0, (imageView.getWidth() - imageView.getPaddingLeft()) - imageView.getPaddingRight(), (imageView.getHeight() - imageView.getPaddingTop()) - imageView.getPaddingBottom());
                imageView.invalidate();
                return;
            }
            return;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            b(imageView, matrix);
            return;
        }
        Drawable drawable2 = imageView.getDrawable();
        if (drawable2 != null) {
            drawable2.setBounds(0, 0, drawable2.getIntrinsicWidth(), drawable2.getIntrinsicHeight());
            Matrix matrix2 = null;
            a();
            if (b != null) {
                try {
                    Matrix matrix3 = (Matrix) b.get(imageView);
                    if (matrix3 == null) {
                        try {
                            matrix2 = new Matrix();
                            b.set(imageView, matrix2);
                        } catch (IllegalAccessException unused) {
                        }
                    }
                    matrix2 = matrix3;
                } catch (IllegalAccessException unused2) {
                }
            }
            if (matrix2 != null) {
                matrix2.set(matrix);
            }
            imageView.invalidate();
        }
    }

    @androidx.annotation.am(a = 21)
    @SuppressLint({"NewApi"})
    private static void b(@androidx.annotation.ah ImageView imageView, @androidx.annotation.ai Matrix matrix) {
        if (f914a) {
            try {
                imageView.animateTransform(matrix);
            } catch (NoSuchMethodError unused) {
                f914a = false;
            }
        }
    }

    private static void a() {
        if (c) {
            return;
        }
        try {
            b = ImageView.class.getDeclaredField("mDrawMatrix");
            b.setAccessible(true);
        } catch (NoSuchFieldException unused) {
        }
        c = true;
    }

    private t() {
    }
}
