package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import androidx.annotation.ap;
import androidx.appcompat.a;

/* loaded from: /home/user/work/dex/classes.dex */
public class g extends Button implements androidx.core.n.ad, androidx.core.widget.b, androidx.core.widget.o {

    /* renamed from: a, reason: collision with root package name */
    private final f f269a;
    private final z b;

    public g(@androidx.annotation.ah Context context) {
        this(context, null);
    }

    public g(@androidx.annotation.ah Context context, @androidx.annotation.ai AttributeSet attributeSet) {
        this(context, attributeSet, a.b.buttonStyle);
    }

    public g(@androidx.annotation.ah Context context, @androidx.annotation.ai AttributeSet attributeSet, int i) {
        super(ax.a(context), attributeSet, i);
        av.a(this, getContext());
        this.f269a = new f(this);
        this.f269a.a(attributeSet, i);
        this.b = new z(this);
        this.b.a(attributeSet, i);
        this.b.b();
    }

    @Override // android.view.View
    public void setBackgroundResource(@androidx.annotation.q int i) {
        super.setBackgroundResource(i);
        if (this.f269a != null) {
            this.f269a.a(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        if (this.f269a != null) {
            this.f269a.a(drawable);
        }
    }

    @Override // androidx.core.n.ad
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintList(@androidx.annotation.ai ColorStateList colorStateList) {
        if (this.f269a != null) {
            this.f269a.a(colorStateList);
        }
    }

    @Override // androidx.core.n.ad
    @androidx.annotation.ai
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public ColorStateList getSupportBackgroundTintList() {
        if (this.f269a != null) {
            return this.f269a.a();
        }
        return null;
    }

    @Override // androidx.core.n.ad
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintMode(@androidx.annotation.ai PorterDuff.Mode mode) {
        if (this.f269a != null) {
            this.f269a.a(mode);
        }
    }

    @Override // androidx.core.n.ad
    @androidx.annotation.ai
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        if (this.f269a != null) {
            return this.f269a.b();
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.f269a != null) {
            this.f269a.c();
        }
        if (this.b != null) {
            this.b.b();
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        if (this.b != null) {
            this.b.a(context, i);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(Button.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(Button.class.getName());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
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

    public void setSupportAllCaps(boolean z) {
        if (this.b != null) {
            this.b.a(z);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(androidx.core.widget.m.b(this, callback));
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
    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.b.j();
    }

    @Override // androidx.core.widget.o
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void setSupportCompoundDrawablesTintMode(@androidx.annotation.ai PorterDuff.Mode mode) {
        this.b.a(mode);
        this.b.b();
    }

    @Override // androidx.core.widget.o
    @androidx.annotation.ai
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.b.k();
    }
}
