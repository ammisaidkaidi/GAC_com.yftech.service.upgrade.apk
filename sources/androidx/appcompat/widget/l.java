package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Editable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.textclassifier.TextClassifier;
import android.widget.EditText;
import androidx.annotation.ap;
import androidx.appcompat.a;

/* loaded from: /home/user/work/dex/classes.dex */
public class l extends EditText implements androidx.core.n.ad {

    /* renamed from: a, reason: collision with root package name */
    private final f f275a;
    private final z b;
    private final y c;

    public l(@androidx.annotation.ah Context context) {
        this(context, null);
    }

    public l(@androidx.annotation.ah Context context, @androidx.annotation.ai AttributeSet attributeSet) {
        this(context, attributeSet, a.b.editTextStyle);
    }

    public l(@androidx.annotation.ah Context context, @androidx.annotation.ai AttributeSet attributeSet, int i) {
        super(ax.a(context), attributeSet, i);
        av.a(this, getContext());
        this.f275a = new f(this);
        this.f275a.a(attributeSet, i);
        this.b = new z(this);
        this.b.a(attributeSet, i);
        this.b.b();
        this.c = new y(this);
    }

    @Override // android.widget.EditText, android.widget.TextView
    @androidx.annotation.ai
    public Editable getText() {
        if (Build.VERSION.SDK_INT >= 28) {
            return super.getText();
        }
        return super.getEditableText();
    }

    @Override // android.view.View
    public void setBackgroundResource(@androidx.annotation.q int i) {
        super.setBackgroundResource(i);
        if (this.f275a != null) {
            this.f275a.a(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        if (this.f275a != null) {
            this.f275a.a(drawable);
        }
    }

    @Override // androidx.core.n.ad
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintList(@androidx.annotation.ai ColorStateList colorStateList) {
        if (this.f275a != null) {
            this.f275a.a(colorStateList);
        }
    }

    @Override // androidx.core.n.ad
    @androidx.annotation.ai
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public ColorStateList getSupportBackgroundTintList() {
        if (this.f275a != null) {
            return this.f275a.a();
        }
        return null;
    }

    @Override // androidx.core.n.ad
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintMode(@androidx.annotation.ai PorterDuff.Mode mode) {
        if (this.f275a != null) {
            this.f275a.a(mode);
        }
    }

    @Override // androidx.core.n.ad
    @androidx.annotation.ai
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        if (this.f275a != null) {
            return this.f275a.b();
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.f275a != null) {
            this.f275a.c();
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

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return m.a(super.onCreateInputConnection(editorInfo), editorInfo, this);
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(androidx.core.widget.m.b(this, callback));
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
}
