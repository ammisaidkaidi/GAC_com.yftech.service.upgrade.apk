package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.annotation.ap;
import androidx.core.b.b.g;

@androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public class ba {

    /* renamed from: a, reason: collision with root package name */
    private final Context f244a;
    private final TypedArray b;
    private TypedValue c;

    public static ba a(Context context, AttributeSet attributeSet, int[] iArr) {
        return new ba(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    public static ba a(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2) {
        return new ba(context, context.obtainStyledAttributes(attributeSet, iArr, i, i2));
    }

    public static ba a(Context context, int i, int[] iArr) {
        return new ba(context, context.obtainStyledAttributes(i, iArr));
    }

    private ba(Context context, TypedArray typedArray) {
        this.f244a = context;
        this.b = typedArray;
    }

    public TypedArray a() {
        return this.b;
    }

    public Drawable a(int i) {
        int resourceId;
        if (this.b.hasValue(i) && (resourceId = this.b.getResourceId(i, 0)) != 0) {
            return androidx.appcompat.a.a.a.b(this.f244a, resourceId);
        }
        return this.b.getDrawable(i);
    }

    public Drawable b(int i) {
        int resourceId;
        if (!this.b.hasValue(i) || (resourceId = this.b.getResourceId(i, 0)) == 0) {
            return null;
        }
        return k.b().a(this.f244a, resourceId, true);
    }

    @androidx.annotation.ai
    public Typeface a(@androidx.annotation.au int i, int i2, @androidx.annotation.ai g.a aVar) {
        int resourceId = this.b.getResourceId(i, 0);
        if (resourceId == 0) {
            return null;
        }
        if (this.c == null) {
            this.c = new TypedValue();
        }
        return androidx.core.b.b.g.a(this.f244a, resourceId, this.c, i2, aVar);
    }

    public int b() {
        return this.b.length();
    }

    public int c() {
        return this.b.getIndexCount();
    }

    public int c(int i) {
        return this.b.getIndex(i);
    }

    public Resources d() {
        return this.b.getResources();
    }

    public CharSequence d(int i) {
        return this.b.getText(i);
    }

    public String e(int i) {
        return this.b.getString(i);
    }

    public String f(int i) {
        return this.b.getNonResourceString(i);
    }

    public boolean a(int i, boolean z) {
        return this.b.getBoolean(i, z);
    }

    public int a(int i, int i2) {
        return this.b.getInt(i, i2);
    }

    public float a(int i, float f) {
        return this.b.getFloat(i, f);
    }

    public int b(int i, int i2) {
        return this.b.getColor(i, i2);
    }

    public ColorStateList g(int i) {
        int resourceId;
        ColorStateList a2;
        return (!this.b.hasValue(i) || (resourceId = this.b.getResourceId(i, 0)) == 0 || (a2 = androidx.appcompat.a.a.a.a(this.f244a, resourceId)) == null) ? this.b.getColorStateList(i) : a2;
    }

    public int c(int i, int i2) {
        return this.b.getInteger(i, i2);
    }

    public float b(int i, float f) {
        return this.b.getDimension(i, f);
    }

    public int d(int i, int i2) {
        return this.b.getDimensionPixelOffset(i, i2);
    }

    public int e(int i, int i2) {
        return this.b.getDimensionPixelSize(i, i2);
    }

    public int a(int i, String str) {
        return this.b.getLayoutDimension(i, str);
    }

    public int f(int i, int i2) {
        return this.b.getLayoutDimension(i, i2);
    }

    public float a(int i, int i2, int i3, float f) {
        return this.b.getFraction(i, i2, i3, f);
    }

    public int g(int i, int i2) {
        return this.b.getResourceId(i, i2);
    }

    public CharSequence[] h(int i) {
        return this.b.getTextArray(i);
    }

    public boolean a(int i, TypedValue typedValue) {
        return this.b.getValue(i, typedValue);
    }

    public int i(int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            return this.b.getType(i);
        }
        if (this.c == null) {
            this.c = new TypedValue();
        }
        this.b.getValue(i, this.c);
        return this.c.type;
    }

    public boolean j(int i) {
        return this.b.hasValue(i);
    }

    public TypedValue k(int i) {
        return this.b.peekValue(i);
    }

    public String e() {
        return this.b.getPositionDescription();
    }

    public void f() {
        this.b.recycle();
    }

    @androidx.annotation.am(a = 21)
    public int g() {
        return this.b.getChangingConfigurations();
    }
}
