package androidx.j;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.TypeEvaluator;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.j.am;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes.dex */
public class g extends ag {

    /* renamed from: a, reason: collision with root package name */
    private static final String f892a = "android:changeImageTransform:matrix";
    private static final String b = "android:changeImageTransform:bounds";
    private static final String[] o = {f892a, b};
    private static final TypeEvaluator<Matrix> p = new TypeEvaluator<Matrix>() { // from class: androidx.j.g.1
        @Override // android.animation.TypeEvaluator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Matrix evaluate(float f, Matrix matrix, Matrix matrix2) {
            return null;
        }
    };
    private static final Property<ImageView, Matrix> q = new Property<ImageView, Matrix>(Matrix.class, "animatedTransform") { // from class: androidx.j.g.2
        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Matrix get(ImageView imageView) {
            return null;
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void set(ImageView imageView, Matrix matrix) {
            t.a(imageView, matrix);
        }
    };

    public g() {
    }

    public g(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void d(an anVar) {
        View view = anVar.b;
        if ((view instanceof ImageView) && view.getVisibility() == 0) {
            ImageView imageView = (ImageView) view;
            if (imageView.getDrawable() == null) {
                return;
            }
            Map<String, Object> map = anVar.f859a;
            map.put(b, new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
            map.put(f892a, b(imageView));
        }
    }

    @Override // androidx.j.ag
    public void a(@androidx.annotation.ah an anVar) {
        d(anVar);
    }

    @Override // androidx.j.ag
    public void b(@androidx.annotation.ah an anVar) {
        d(anVar);
    }

    @Override // androidx.j.ag
    public String[] a() {
        return o;
    }

    @Override // androidx.j.ag
    public Animator a(@androidx.annotation.ah ViewGroup viewGroup, an anVar, an anVar2) {
        if (anVar == null || anVar2 == null) {
            return null;
        }
        Rect rect = (Rect) anVar.f859a.get(b);
        Rect rect2 = (Rect) anVar2.f859a.get(b);
        if (rect == null || rect2 == null) {
            return null;
        }
        Matrix matrix = (Matrix) anVar.f859a.get(f892a);
        Matrix matrix2 = (Matrix) anVar2.f859a.get(f892a);
        boolean z = (matrix == null && matrix2 == null) || (matrix != null && matrix.equals(matrix2));
        if (rect.equals(rect2) && z) {
            return null;
        }
        ImageView imageView = (ImageView) anVar2.b;
        Drawable drawable = imageView.getDrawable();
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
            return a(imageView);
        }
        if (matrix == null) {
            matrix = u.f915a;
        }
        if (matrix2 == null) {
            matrix2 = u.f915a;
        }
        q.set(imageView, matrix);
        return a(imageView, matrix, matrix2);
    }

    @androidx.annotation.ah
    private ObjectAnimator a(@androidx.annotation.ah ImageView imageView) {
        return ObjectAnimator.ofObject(imageView, (Property<ImageView, V>) q, (TypeEvaluator) p, (Object[]) new Matrix[]{u.f915a, u.f915a});
    }

    private ObjectAnimator a(ImageView imageView, Matrix matrix, Matrix matrix2) {
        return ObjectAnimator.ofObject(imageView, (Property<ImageView, V>) q, (TypeEvaluator) new am.a(), (Object[]) new Matrix[]{matrix, matrix2});
    }

    @androidx.annotation.ah
    private static Matrix b(@androidx.annotation.ah ImageView imageView) {
        Drawable drawable = imageView.getDrawable();
        if (drawable.getIntrinsicWidth() > 0 && drawable.getIntrinsicHeight() > 0) {
            switch (AnonymousClass3.f893a[imageView.getScaleType().ordinal()]) {
                case 1:
                    return c(imageView);
                case 2:
                    return d(imageView);
            }
        }
        return new Matrix(imageView.getImageMatrix());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.j.g$3, reason: invalid class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static /* synthetic */ class AnonymousClass3 {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f893a = new int[ImageView.ScaleType.values().length];

        static {
            try {
                f893a[ImageView.ScaleType.FIT_XY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f893a[ImageView.ScaleType.CENTER_CROP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private static Matrix c(ImageView imageView) {
        Drawable drawable = imageView.getDrawable();
        Matrix matrix = new Matrix();
        matrix.postScale(imageView.getWidth() / drawable.getIntrinsicWidth(), imageView.getHeight() / drawable.getIntrinsicHeight());
        return matrix;
    }

    private static Matrix d(ImageView imageView) {
        Drawable drawable = imageView.getDrawable();
        int intrinsicWidth = drawable.getIntrinsicWidth();
        float width = imageView.getWidth();
        float f = intrinsicWidth;
        int intrinsicHeight = drawable.getIntrinsicHeight();
        float height = imageView.getHeight();
        float f2 = intrinsicHeight;
        float max = Math.max(width / f, height / f2);
        int round = Math.round((width - (f * max)) / 2.0f);
        int round2 = Math.round((height - (f2 * max)) / 2.0f);
        Matrix matrix = new Matrix();
        matrix.postScale(max, max);
        matrix.postTranslate(round, round2);
        return matrix;
    }
}
