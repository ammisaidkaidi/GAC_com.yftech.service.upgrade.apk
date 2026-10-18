package androidx.appcompat.widget;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import androidx.annotation.ap;
import androidx.core.l.d;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* loaded from: /home/user/work/dex/classes.dex */
public class aa extends TextView implements androidx.core.n.ad, androidx.core.widget.b, androidx.core.widget.o {

    /* renamed from: a, reason: collision with root package name */
    private final f f198a;
    private final z b;
    private final y c;

    @androidx.annotation.ai
    private Future<androidx.core.l.d> e;

    public aa(@androidx.annotation.ah Context context) {
        this(context, null);
    }

    public aa(@androidx.annotation.ah Context context, @androidx.annotation.ai AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textViewStyle);
    }

    public aa(@androidx.annotation.ah Context context, @androidx.annotation.ai AttributeSet attributeSet, int i) {
        super(ax.a(context), attributeSet, i);
        av.a(this, getContext());
        this.f198a = new f(this);
        this.f198a.a(attributeSet, i);
        this.b = new z(this);
        this.b.a(attributeSet, i);
        this.b.b();
        this.c = new y(this);
    }

    @Override // android.view.View
    public void setBackgroundResource(@androidx.annotation.q int i) {
        super.setBackgroundResource(i);
        if (this.f198a != null) {
            this.f198a.a(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        if (this.f198a != null) {
            this.f198a.a(drawable);
        }
    }

    @Override // androidx.core.n.ad
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintList(@androidx.annotation.ai ColorStateList colorStateList) {
        if (this.f198a != null) {
            this.f198a.a(colorStateList);
        }
    }

    @Override // androidx.core.n.ad
    @androidx.annotation.ai
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public ColorStateList getSupportBackgroundTintList() {
        if (this.f198a != null) {
            return this.f198a.a();
        }
        return null;
    }

    @Override // androidx.core.n.ad
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintMode(@androidx.annotation.ai PorterDuff.Mode mode) {
        if (this.f198a != null) {
            this.f198a.a(mode);
        }
    }

    @Override // androidx.core.n.ad
    @androidx.annotation.ai
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        if (this.f198a != null) {
            return this.f198a.b();
        }
        return null;
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        if (this.b != null) {
            this.b.a(context, i);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.f198a != null) {
            this.f198a.c();
        }
        if (this.b != null) {
            this.b.b();
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.b != null) {
            this.b.a(z, i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView
    public void setTextSize(int i, float f) {
        if (d) {
            super.setTextSize(i, f);
        } else if (this.b != null) {
            this.b.a(i, f);
        }
    }

    @Override // android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        if (this.b == null || d || !this.b.d()) {
            return;
        }
        this.b.c();
    }

    @Override // android.widget.TextView, androidx.core.widget.b
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void setAutoSizeTextTypeWithDefaults(int i) {
        if (d) {
            super.setAutoSizeTextTypeWithDefaults(i);
        } else if (this.b != null) {
            this.b.a(i);
        }
    }

    @Override // android.widget.TextView, androidx.core.widget.b
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) {
        if (d) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
        } else if (this.b != null) {
            this.b.a(i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView, androidx.core.widget.b
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void setAutoSizeTextTypeUniformWithPresetSizes(@androidx.annotation.ah int[] iArr, int i) {
        if (d) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
        } else if (this.b != null) {
            this.b.a(iArr, i);
        }
    }

    @Override // android.widget.TextView, androidx.core.widget.b
    @SuppressLint({"WrongConstant"})
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public int getAutoSizeTextType() {
        if (d) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        if (this.b != null) {
            return this.b.e();
        }
        return 0;
    }

    @Override // android.widget.TextView, androidx.core.widget.b
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public int getAutoSizeStepGranularity() {
        if (d) {
            return super.getAutoSizeStepGranularity();
        }
        if (this.b != null) {
            return this.b.f();
        }
        return -1;
    }

    @Override // android.widget.TextView, androidx.core.widget.b
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public int getAutoSizeMinTextSize() {
        if (d) {
            return super.getAutoSizeMinTextSize();
        }
        if (this.b != null) {
            return this.b.g();
        }
        return -1;
    }

    @Override // android.widget.TextView, androidx.core.widget.b
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public int getAutoSizeMaxTextSize() {
        if (d) {
            return super.getAutoSizeMaxTextSize();
        }
        if (this.b != null) {
            return this.b.h();
        }
        return -1;
    }

    @Override // android.widget.TextView, androidx.core.widget.b
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public int[] getAutoSizeTextAvailableSizes() {
        if (d) {
            return super.getAutoSizeTextAvailableSizes();
        }
        if (this.b != null) {
            return this.b.i();
        }
        return new int[0];
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return m.a(super.onCreateInputConnection(editorInfo), editorInfo, this);
    }

    @Override // android.widget.TextView
    public void setFirstBaselineToTopHeight(@androidx.annotation.ak @androidx.annotation.z(a = 0) int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setFirstBaselineToTopHeight(i);
        } else {
            androidx.core.widget.m.c(this, i);
        }
    }

    @Override // android.widget.TextView
    public void setLastBaselineToBottomHeight(@androidx.annotation.ak @androidx.annotation.z(a = 0) int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setLastBaselineToBottomHeight(i);
        } else {
            androidx.core.widget.m.d(this, i);
        }
    }

    @Override // android.widget.TextView
    public int getFirstBaselineToTopHeight() {
        return androidx.core.widget.m.i(this);
    }

    @Override // android.widget.TextView
    public int getLastBaselineToBottomHeight() {
        return androidx.core.widget.m.j(this);
    }

    @Override // android.widget.TextView
    public void setLineHeight(@androidx.annotation.ak @androidx.annotation.z(a = 0) int i) {
        androidx.core.widget.m.e(this, i);
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(androidx.core.widget.m.b(this, callback));
    }

    @androidx.annotation.ah
    public d.a getTextMetricsParamsCompat() {
        return androidx.core.widget.m.k(this);
    }

    public void setTextMetricsParamsCompat(@androidx.annotation.ah d.a aVar) {
        androidx.core.widget.m.a(this, aVar);
    }

    public void setPrecomputedText(@androidx.annotation.ah androidx.core.l.d dVar) {
        androidx.core.widget.m.a(this, dVar);
    }

    private void a() {
        if (this.e != null) {
            try {
                Future<androidx.core.l.d> future = this.e;
                this.e = null;
                androidx.core.widget.m.a(this, future.get());
            } catch (InterruptedException | ExecutionException unused) {
            }
        }
    }

    @Override // android.widget.TextView
    public CharSequence getText() {
        a();
        return super.getText();
    }

    @Override // android.widget.TextView
    @androidx.annotation.am(b = 26)
    public void setTextClassifier(@androidx.annotation.ai TextClassifier textClassifier) {
        if (Build.VERSION.SDK_INT >= 28 || this.c == null) {
            super.setTextClassifier(textClassifier);
        } else {
            this.c.a(textClassifier);
        }
    }

    @Override // android.widget.TextView
    @androidx.annotation.am(b = 26)
    @androidx.annotation.ah
    public TextClassifier getTextClassifier() {
        if (Build.VERSION.SDK_INT >= 28 || this.c == null) {
            return super.getTextClassifier();
        }
        return this.c.a();
    }

    public void setTextFuture(@androidx.annotation.ai Future<androidx.core.l.d> future) {
        this.e = future;
        if (future != null) {
            requestLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        a();
        super.onMeasure(i, i2);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(@androidx.annotation.ai Drawable drawable, @androidx.annotation.ai Drawable drawable2, @androidx.annotation.ai Drawable drawable3, @androidx.annotation.ai Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        if (this.b != null) {
            this.b.a();
        }
    }

    @Override // android.widget.TextView
    @androidx.annotation.am(a = 17)
    public void setCompoundDrawablesRelative(@androidx.annotation.ai Drawable drawable, @androidx.annotation.ai Drawable drawable2, @androidx.annotation.ai Drawable drawable3, @androidx.annotation.ai Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        if (this.b != null) {
            this.b.a();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(@androidx.annotation.ai Drawable drawable, @androidx.annotation.ai Drawable drawable2, @androidx.annotation.ai Drawable drawable3, @androidx.annotation.ai Drawable drawable4) {
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        if (this.b != null) {
            this.b.a();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Context context = getContext();
        setCompoundDrawablesWithIntrinsicBounds(i != 0 ? androidx.appcompat.a.a.a.b(context, i) : null, i2 != 0 ? androidx.appcompat.a.a.a.b(context, i2) : null, i3 != 0 ? androidx.appcompat.a.a.a.b(context, i3) : null, i4 != 0 ? androidx.appcompat.a.a.a.b(context, i4) : null);
        if (this.b != null) {
            this.b.a();
        }
    }

    @Override // android.widget.TextView
    @androidx.annotation.am(a = 17)
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(@androidx.annotation.ai Drawable drawable, @androidx.annotation.ai Drawable drawable2, @androidx.annotation.ai Drawable drawable3, @androidx.annotation.ai Drawable drawable4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        if (this.b != null) {
            this.b.a();
        }
    }

    @Override // android.widget.TextView
    @androidx.annotation.am(a = 17)
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Context context = getContext();
        setCompoundDrawablesRelativeWithIntrinsicBounds(i != 0 ? androidx.appcompat.a.a.a.b(context, i) : null, i2 != 0 ? androidx.appcompat.a.a.a.b(context, i2) : null, i3 != 0 ? androidx.appcompat.a.a.a.b(context, i3) : null, i4 != 0 ? androidx.appcompat.a.a.a.b(context, i4) : null);
        if (this.b != null) {
            this.b.a();
        }
    }

    @Override // androidx.core.widget.o
    @androidx.annotation.ai
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.b.j();
    }

    @Override // androidx.core.widget.o
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void setSupportCompoundDrawablesTintList(@androidx.annotation.ai ColorStateList colorStateList) {
        this.b.a(colorStateList);
        this.b.b();
    }

    @Override // androidx.core.widget.o
    @androidx.annotation.ai
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.b.k();
    }

    @Override // androidx.core.widget.o
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void setSupportCompoundDrawablesTintMode(@androidx.annotation.ai PorterDuff.Mode mode) {
        this.b.a(mode);
        this.b.b();
    }

    @Override // android.widget.TextView
    public void setTypeface(@androidx.annotation.ai Typeface typeface, int i) {
        Typeface a2 = (typeface == null || i <= 0) ? null : androidx.core.graphics.k.a(getContext(), typeface, i);
        if (a2 != null) {
            typeface = a2;
        }
        super.setTypeface(typeface, i);
    }
}
