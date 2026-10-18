package com.google.android.material.textfield;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.text.Editable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.appcompat.widget.l;
import com.google.android.material.a;
import com.google.android.material.internal.s;

/* loaded from: /home/user/work/dex/classes.dex */
public class TextInputEditText extends l {

    /* renamed from: a, reason: collision with root package name */
    private final Rect f1432a;
    private boolean b;

    public TextInputEditText(@ah Context context) {
        this(context, null);
    }

    public TextInputEditText(@ah Context context, @ai AttributeSet attributeSet) {
        this(context, attributeSet, a.c.editTextStyle);
    }

    public TextInputEditText(@ah Context context, @ai AttributeSet attributeSet, int i) {
        super(com.google.android.material.theme.a.a.a(context, attributeSet, i, 0), attributeSet, i);
        this.f1432a = new Rect();
        TypedArray a2 = s.a(context, attributeSet, a.o.TextInputEditText, i, a.n.Widget_Design_TextInputEditText, new int[0]);
        setTextInputLayoutFocusedRectEnabled(a2.getBoolean(a.o.TextInputEditText_textInputLayoutFocusedRectEnabled, false));
        a2.recycle();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        TextInputLayout textInputLayout = getTextInputLayout();
        if (textInputLayout != null && textInputLayout.b() && super.getHint() == null && com.google.android.material.internal.g.a()) {
            setHint(com.yftech.service.upgrade.a.d);
        }
    }

    @Override // android.widget.TextView
    @ai
    public CharSequence getHint() {
        TextInputLayout textInputLayout = getTextInputLayout();
        if (textInputLayout != null && textInputLayout.b()) {
            return textInputLayout.getHint();
        }
        return super.getHint();
    }

    @Override // androidx.appcompat.widget.l, android.widget.TextView, android.view.View
    @ai
    public InputConnection onCreateInputConnection(@ah EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        if (onCreateInputConnection != null && editorInfo.hintText == null) {
            editorInfo.hintText = getHintFromLayout();
        }
        return onCreateInputConnection;
    }

    @ai
    private TextInputLayout getTextInputLayout() {
        for (ViewParent parent = getParent(); parent instanceof View; parent = parent.getParent()) {
            if (parent instanceof TextInputLayout) {
                return (TextInputLayout) parent;
            }
        }
        return null;
    }

    @ai
    private CharSequence getHintFromLayout() {
        TextInputLayout textInputLayout = getTextInputLayout();
        if (textInputLayout != null) {
            return textInputLayout.getHint();
        }
        return null;
    }

    public void setTextInputLayoutFocusedRectEnabled(boolean z) {
        this.b = z;
    }

    public boolean a() {
        return this.b;
    }

    @Override // android.widget.TextView, android.view.View
    public void getFocusedRect(@ai Rect rect) {
        super.getFocusedRect(rect);
        TextInputLayout textInputLayout = getTextInputLayout();
        if (textInputLayout == null || !this.b || rect == null) {
            return;
        }
        textInputLayout.getFocusedRect(this.f1432a);
        rect.bottom = this.f1432a.bottom;
    }

    @Override // android.view.View
    public boolean getGlobalVisibleRect(@ai Rect rect, @ai Point point) {
        boolean globalVisibleRect = super.getGlobalVisibleRect(rect, point);
        TextInputLayout textInputLayout = getTextInputLayout();
        if (textInputLayout != null && this.b && rect != null) {
            textInputLayout.getGlobalVisibleRect(this.f1432a, point);
            rect.bottom = this.f1432a.bottom;
        }
        return globalVisibleRect;
    }

    @Override // android.view.View
    public boolean requestRectangleOnScreen(@ai Rect rect) {
        boolean requestRectangleOnScreen = super.requestRectangleOnScreen(rect);
        TextInputLayout textInputLayout = getTextInputLayout();
        if (textInputLayout != null && this.b) {
            this.f1432a.set(0, textInputLayout.getHeight() - getResources().getDimensionPixelOffset(a.f.mtrl_edittext_rectangle_top_offset), textInputLayout.getWidth(), textInputLayout.getHeight());
            textInputLayout.requestRectangleOnScreen(this.f1432a, true);
        }
        return requestRectangleOnScreen;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@ah AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        TextInputLayout textInputLayout = getTextInputLayout();
        if (Build.VERSION.SDK_INT >= 23 || textInputLayout == null) {
            return;
        }
        accessibilityNodeInfo.setText(a(textInputLayout));
    }

    @ah
    private String a(@ah TextInputLayout textInputLayout) {
        String str;
        Editable text = getText();
        CharSequence hint = textInputLayout.getHint();
        CharSequence helperText = textInputLayout.getHelperText();
        CharSequence error = textInputLayout.getError();
        boolean z = !TextUtils.isEmpty(text);
        boolean z2 = !TextUtils.isEmpty(hint);
        boolean z3 = !TextUtils.isEmpty(helperText);
        boolean z4 = !TextUtils.isEmpty(error);
        String charSequence = z2 ? hint.toString() : com.yftech.service.upgrade.a.d;
        StringBuilder sb = new StringBuilder();
        sb.append(charSequence);
        sb.append(((z4 || z3) && !TextUtils.isEmpty(charSequence)) ? ", " : com.yftech.service.upgrade.a.d);
        String sb2 = sb.toString();
        StringBuilder sb3 = new StringBuilder();
        sb3.append(sb2);
        if (z4) {
            helperText = error;
        } else if (!z3) {
            helperText = com.yftech.service.upgrade.a.d;
        }
        sb3.append((Object) helperText);
        String sb4 = sb3.toString();
        if (!z) {
            return !TextUtils.isEmpty(sb4) ? sb4 : com.yftech.service.upgrade.a.d;
        }
        StringBuilder sb5 = new StringBuilder();
        sb5.append((Object) text);
        if (TextUtils.isEmpty(sb4)) {
            str = com.yftech.service.upgrade.a.d;
        } else {
            str = ", " + sb4;
        }
        sb5.append(str);
        return sb5.toString();
    }
}
