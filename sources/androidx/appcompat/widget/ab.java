package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.widget.TextView;
import androidx.annotation.ap;
import androidx.appcompat.a;
import androidx.appcompat.widget.ActivityChooserView;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public class ab {

    /* renamed from: a, reason: collision with root package name */
    static final float f199a = -1.0f;
    private static final String b = "ACTVAutoSizeHelper";
    private static final int d = 12;
    private static final int e = 112;
    private static final int f = 1;
    private static final int i = 1048576;
    private int j = 0;
    private boolean k = false;
    private float l = f199a;
    private float m = f199a;
    private float n = f199a;
    private int[] o = new int[0];
    private boolean p = false;
    private TextPaint q;

    @androidx.annotation.ah
    private final TextView r;
    private final Context s;
    private final a t;
    private static final RectF c = new RectF();
    private static ConcurrentHashMap<String, Method> g = new ConcurrentHashMap<>();
    private static ConcurrentHashMap<String, Field> h = new ConcurrentHashMap<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a {
        void a(StaticLayout.Builder builder, TextView textView) {
        }

        a() {
        }

        boolean a(TextView textView) {
            return ((Boolean) ab.a(textView, "getHorizontallyScrolling", false)).booleanValue();
        }
    }

    @androidx.annotation.am(a = 23)
    /* loaded from: /home/user/work/dex/classes.dex */
    private static class b extends a {
        b() {
        }

        @Override // androidx.appcompat.widget.ab.a
        void a(StaticLayout.Builder builder, TextView textView) {
            builder.setTextDirection((TextDirectionHeuristic) ab.a(textView, "getTextDirectionHeuristic", TextDirectionHeuristics.FIRSTSTRONG_LTR));
        }
    }

    @androidx.annotation.am(a = 29)
    /* loaded from: /home/user/work/dex/classes.dex */
    private static class c extends b {
        c() {
        }

        @Override // androidx.appcompat.widget.ab.a
        boolean a(TextView textView) {
            return textView.isHorizontallyScrollable();
        }

        @Override // androidx.appcompat.widget.ab.b, androidx.appcompat.widget.ab.a
        void a(StaticLayout.Builder builder, TextView textView) {
            builder.setTextDirection(textView.getTextDirectionHeuristic());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ab(@androidx.annotation.ah TextView textView) {
        this.r = textView;
        this.s = this.r.getContext();
        if (Build.VERSION.SDK_INT >= 29) {
            this.t = new c();
        } else if (Build.VERSION.SDK_INT >= 23) {
            this.t = new b();
        } else {
            this.t = new a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@androidx.annotation.ai AttributeSet attributeSet, int i2) {
        int resourceId;
        TypedArray obtainStyledAttributes = this.s.obtainStyledAttributes(attributeSet, a.m.AppCompatTextView, i2, 0);
        androidx.core.n.af.a(this.r, this.r.getContext(), a.m.AppCompatTextView, attributeSet, obtainStyledAttributes, i2, 0);
        if (obtainStyledAttributes.hasValue(a.m.AppCompatTextView_autoSizeTextType)) {
            this.j = obtainStyledAttributes.getInt(a.m.AppCompatTextView_autoSizeTextType, 0);
        }
        float dimension = obtainStyledAttributes.hasValue(a.m.AppCompatTextView_autoSizeStepGranularity) ? obtainStyledAttributes.getDimension(a.m.AppCompatTextView_autoSizeStepGranularity, f199a) : -1.0f;
        float dimension2 = obtainStyledAttributes.hasValue(a.m.AppCompatTextView_autoSizeMinTextSize) ? obtainStyledAttributes.getDimension(a.m.AppCompatTextView_autoSizeMinTextSize, f199a) : -1.0f;
        float dimension3 = obtainStyledAttributes.hasValue(a.m.AppCompatTextView_autoSizeMaxTextSize) ? obtainStyledAttributes.getDimension(a.m.AppCompatTextView_autoSizeMaxTextSize, f199a) : -1.0f;
        if (obtainStyledAttributes.hasValue(a.m.AppCompatTextView_autoSizePresetSizes) && (resourceId = obtainStyledAttributes.getResourceId(a.m.AppCompatTextView_autoSizePresetSizes, 0)) > 0) {
            TypedArray obtainTypedArray = obtainStyledAttributes.getResources().obtainTypedArray(resourceId);
            a(obtainTypedArray);
            obtainTypedArray.recycle();
        }
        obtainStyledAttributes.recycle();
        if (k()) {
            if (this.j == 1) {
                if (!this.p) {
                    DisplayMetrics displayMetrics = this.s.getResources().getDisplayMetrics();
                    if (dimension2 == f199a) {
                        dimension2 = TypedValue.applyDimension(2, 12.0f, displayMetrics);
                    }
                    if (dimension3 == f199a) {
                        dimension3 = TypedValue.applyDimension(2, 112.0f, displayMetrics);
                    }
                    if (dimension == f199a) {
                        dimension = 1.0f;
                    }
                    a(dimension2, dimension3, dimension);
                }
                i();
                return;
            }
            return;
        }
        this.j = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void a(int i2) {
        if (k()) {
            switch (i2) {
                case 0:
                    j();
                    return;
                case 1:
                    DisplayMetrics displayMetrics = this.s.getResources().getDisplayMetrics();
                    a(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
                    if (i()) {
                        f();
                        return;
                    }
                    return;
                default:
                    throw new IllegalArgumentException("Unknown auto-size text type: " + i2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void a(int i2, int i3, int i4, int i5) {
        if (k()) {
            DisplayMetrics displayMetrics = this.s.getResources().getDisplayMetrics();
            a(TypedValue.applyDimension(i5, i2, displayMetrics), TypedValue.applyDimension(i5, i3, displayMetrics), TypedValue.applyDimension(i5, i4, displayMetrics));
            if (i()) {
                f();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void a(@androidx.annotation.ah int[] iArr, int i2) {
        if (k()) {
            int length = iArr.length;
            if (length > 0) {
                int[] iArr2 = new int[length];
                if (i2 == 0) {
                    iArr2 = Arrays.copyOf(iArr, length);
                } else {
                    DisplayMetrics displayMetrics = this.s.getResources().getDisplayMetrics();
                    for (int i3 = 0; i3 < length; i3++) {
                        iArr2[i3] = Math.round(TypedValue.applyDimension(i2, iArr[i3], displayMetrics));
                    }
                }
                this.o = a(iArr2);
                if (!h()) {
                    throw new IllegalArgumentException("None of the preset sizes is valid: " + Arrays.toString(iArr));
                }
            } else {
                this.p = false;
            }
            if (i()) {
                f();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public int a() {
        return this.j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public int b() {
        return Math.round(this.l);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public int c() {
        return Math.round(this.m);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public int d() {
        return Math.round(this.n);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public int[] e() {
        return this.o;
    }

    private void a(TypedArray typedArray) {
        int length = typedArray.length();
        int[] iArr = new int[length];
        if (length > 0) {
            for (int i2 = 0; i2 < length; i2++) {
                iArr[i2] = typedArray.getDimensionPixelSize(i2, -1);
            }
            this.o = a(iArr);
            h();
        }
    }

    private boolean h() {
        this.p = this.o.length > 0;
        if (this.p) {
            this.j = 1;
            this.m = this.o[0];
            this.n = this.o[r0 - 1];
            this.l = f199a;
        }
        return this.p;
    }

    private int[] a(int[] iArr) {
        int length = iArr.length;
        if (length == 0) {
            return iArr;
        }
        Arrays.sort(iArr);
        ArrayList arrayList = new ArrayList();
        for (int i2 : iArr) {
            if (i2 > 0 && Collections.binarySearch(arrayList, Integer.valueOf(i2)) < 0) {
                arrayList.add(Integer.valueOf(i2));
            }
        }
        if (length == arrayList.size()) {
            return iArr;
        }
        int size = arrayList.size();
        int[] iArr2 = new int[size];
        for (int i3 = 0; i3 < size; i3++) {
            iArr2[i3] = ((Integer) arrayList.get(i3)).intValue();
        }
        return iArr2;
    }

    private void a(float f2, float f3, float f4) {
        if (f2 <= 0.0f) {
            throw new IllegalArgumentException("Minimum auto-size text size (" + f2 + "px) is less or equal to (0px)");
        }
        if (f3 <= f2) {
            throw new IllegalArgumentException("Maximum auto-size text size (" + f3 + "px) is less or equal to minimum auto-size text size (" + f2 + "px)");
        }
        if (f4 <= 0.0f) {
            throw new IllegalArgumentException("The auto-size step granularity (" + f4 + "px) is less or equal to (0px)");
        }
        this.j = 1;
        this.m = f2;
        this.n = f3;
        this.l = f4;
        this.p = false;
    }

    private boolean i() {
        if (k() && this.j == 1) {
            if (!this.p || this.o.length == 0) {
                int floor = ((int) Math.floor((this.n - this.m) / this.l)) + 1;
                int[] iArr = new int[floor];
                for (int i2 = 0; i2 < floor; i2++) {
                    iArr[i2] = Math.round(this.m + (i2 * this.l));
                }
                this.o = a(iArr);
            }
            this.k = true;
        } else {
            this.k = false;
        }
        return this.k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void f() {
        if (g()) {
            if (this.k) {
                if (this.r.getMeasuredHeight() <= 0 || this.r.getMeasuredWidth() <= 0) {
                    return;
                }
                int measuredWidth = this.t.a(this.r) ? 1048576 : (this.r.getMeasuredWidth() - this.r.getTotalPaddingLeft()) - this.r.getTotalPaddingRight();
                int height = (this.r.getHeight() - this.r.getCompoundPaddingBottom()) - this.r.getCompoundPaddingTop();
                if (measuredWidth <= 0 || height <= 0) {
                    return;
                }
                synchronized (c) {
                    c.setEmpty();
                    c.right = measuredWidth;
                    c.bottom = height;
                    float a2 = a(c);
                    if (a2 != this.r.getTextSize()) {
                        a(0, a2);
                    }
                }
            }
            this.k = true;
        }
    }

    private void j() {
        this.j = 0;
        this.m = f199a;
        this.n = f199a;
        this.l = f199a;
        this.o = new int[0];
        this.k = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void a(int i2, float f2) {
        Resources resources;
        if (this.s == null) {
            resources = Resources.getSystem();
        } else {
            resources = this.s.getResources();
        }
        a(TypedValue.applyDimension(i2, f2, resources.getDisplayMetrics()));
    }

    private void a(float f2) {
        if (f2 != this.r.getPaint().getTextSize()) {
            this.r.getPaint().setTextSize(f2);
            boolean isInLayout = Build.VERSION.SDK_INT >= 18 ? this.r.isInLayout() : false;
            if (this.r.getLayout() != null) {
                this.k = false;
                try {
                    Method a2 = a("nullLayouts");
                    if (a2 != null) {
                        a2.invoke(this.r, new Object[0]);
                    }
                } catch (Exception e2) {
                    Log.w(b, "Failed to invoke TextView#nullLayouts() method", e2);
                }
                if (!isInLayout) {
                    this.r.requestLayout();
                } else {
                    this.r.forceLayout();
                }
                this.r.invalidate();
            }
        }
    }

    private int a(RectF rectF) {
        int i2;
        int length = this.o.length;
        if (length == 0) {
            throw new IllegalStateException("No available text sizes to choose from.");
        }
        int i3 = 0;
        int i4 = 1;
        int i5 = length - 1;
        while (true) {
            int i6 = i4;
            int i7 = i3;
            i3 = i6;
            while (i3 <= i5) {
                i2 = (i3 + i5) / 2;
                if (a(this.o[i2], rectF)) {
                    break;
                }
                i7 = i2 - 1;
                i5 = i7;
            }
            return this.o[i7];
            i4 = i2 + 1;
        }
    }

    @androidx.annotation.ax
    void b(int i2) {
        if (this.q == null) {
            this.q = new TextPaint();
        } else {
            this.q.reset();
        }
        this.q.set(this.r.getPaint());
        this.q.setTextSize(i2);
    }

    @androidx.annotation.ax
    StaticLayout a(CharSequence charSequence, Layout.Alignment alignment, int i2, int i3) {
        if (Build.VERSION.SDK_INT >= 23) {
            return b(charSequence, alignment, i2, i3);
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return a(charSequence, alignment, i2);
        }
        return b(charSequence, alignment, i2);
    }

    private boolean a(int i2, RectF rectF) {
        CharSequence transformation;
        CharSequence text = this.r.getText();
        TransformationMethod transformationMethod = this.r.getTransformationMethod();
        if (transformationMethod != null && (transformation = transformationMethod.getTransformation(text, this.r)) != null) {
            text = transformation;
        }
        int maxLines = Build.VERSION.SDK_INT >= 16 ? this.r.getMaxLines() : -1;
        b(i2);
        StaticLayout a2 = a(text, (Layout.Alignment) a(this.r, "getLayoutAlignment", Layout.Alignment.ALIGN_NORMAL), Math.round(rectF.right), maxLines);
        return (maxLines == -1 || (a2.getLineCount() <= maxLines && a2.getLineEnd(a2.getLineCount() - 1) == text.length())) && ((float) a2.getHeight()) <= rectF.bottom;
    }

    @androidx.annotation.am(a = 23)
    private StaticLayout b(CharSequence charSequence, Layout.Alignment alignment, int i2, int i3) {
        StaticLayout.Builder obtain = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), this.q, i2);
        StaticLayout.Builder hyphenationFrequency = obtain.setAlignment(alignment).setLineSpacing(this.r.getLineSpacingExtra(), this.r.getLineSpacingMultiplier()).setIncludePad(this.r.getIncludeFontPadding()).setBreakStrategy(this.r.getBreakStrategy()).setHyphenationFrequency(this.r.getHyphenationFrequency());
        if (i3 == -1) {
            i3 = ActivityChooserView.a.f166a;
        }
        hyphenationFrequency.setMaxLines(i3);
        try {
            this.t.a(obtain, this.r);
        } catch (ClassCastException unused) {
            Log.w(b, "Failed to obtain TextDirectionHeuristic, auto size may be incorrect");
        }
        return obtain.build();
    }

    @androidx.annotation.am(a = 16)
    private StaticLayout a(CharSequence charSequence, Layout.Alignment alignment, int i2) {
        return new StaticLayout(charSequence, this.q, i2, alignment, this.r.getLineSpacingMultiplier(), this.r.getLineSpacingExtra(), this.r.getIncludeFontPadding());
    }

    private StaticLayout b(CharSequence charSequence, Layout.Alignment alignment, int i2) {
        return new StaticLayout(charSequence, this.q, i2, alignment, ((Float) b(this.r, "mSpacingMult", Float.valueOf(1.0f))).floatValue(), ((Float) b(this.r, "mSpacingAdd", Float.valueOf(0.0f))).floatValue(), ((Boolean) b(this.r, "mIncludePad", true)).booleanValue());
    }

    static <T> T a(@androidx.annotation.ah Object obj, @androidx.annotation.ah String str, @androidx.annotation.ah T t) {
        try {
            return (T) a(str).invoke(obj, new Object[0]);
        } catch (Exception e2) {
            Log.w(b, "Failed to invoke TextView#" + str + "() method", e2);
            return t;
        }
    }

    private static <T> T b(@androidx.annotation.ah Object obj, @androidx.annotation.ah String str, @androidx.annotation.ah T t) {
        try {
            Field b2 = b(str);
            return b2 == null ? t : (T) b2.get(obj);
        } catch (IllegalAccessException e2) {
            Log.w(b, "Failed to access TextView#" + str + " member", e2);
            return t;
        }
    }

    @androidx.annotation.ai
    private static Method a(@androidx.annotation.ah String str) {
        try {
            Method method = g.get(str);
            if (method == null && (method = TextView.class.getDeclaredMethod(str, new Class[0])) != null) {
                method.setAccessible(true);
                g.put(str, method);
            }
            return method;
        } catch (Exception e2) {
            Log.w(b, "Failed to retrieve TextView#" + str + "() method", e2);
            return null;
        }
    }

    @androidx.annotation.ai
    private static Field b(@androidx.annotation.ah String str) {
        try {
            Field field = h.get(str);
            if (field == null && (field = TextView.class.getDeclaredField(str)) != null) {
                field.setAccessible(true);
                h.put(str, field);
            }
            return field;
        } catch (NoSuchFieldException e2) {
            Log.w(b, "Failed to access TextView#" + str + " member", e2);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public boolean g() {
        return k() && this.j != 0;
    }

    private boolean k() {
        return !(this.r instanceof l);
    }
}
