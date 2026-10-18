package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import androidx.annotation.ah;
import com.google.android.material.a;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public class a extends e {
    private static final int d = 100;
    private static final int e = 150;
    private static final float f = 0.8f;
    private final TextWatcher g;
    private final View.OnFocusChangeListener h;
    private final TextInputLayout.d i;
    private final TextInputLayout.e j;
    private AnimatorSet k;
    private ValueAnimator l;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(@ah TextInputLayout textInputLayout) {
        super(textInputLayout);
        this.g = new TextWatcher() { // from class: com.google.android.material.textfield.a.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(@ah Editable editable) {
                if (a.this.f1460a.getSuffixText() != null) {
                    return;
                }
                a.this.b(a.b(editable));
            }
        };
        this.h = new View.OnFocusChangeListener() { // from class: com.google.android.material.textfield.a.2
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                a.this.b((TextUtils.isEmpty(((EditText) view).getText()) ^ true) && z);
            }
        };
        this.i = new TextInputLayout.d() { // from class: com.google.android.material.textfield.a.3
            @Override // com.google.android.material.textfield.TextInputLayout.d
            public void a(@ah TextInputLayout textInputLayout2) {
                EditText editText = textInputLayout2.getEditText();
                textInputLayout2.setEndIconVisible(editText.hasFocus() && a.b(editText.getText()));
                textInputLayout2.setEndIconCheckable(false);
                editText.setOnFocusChangeListener(a.this.h);
                editText.removeTextChangedListener(a.this.g);
                editText.addTextChangedListener(a.this.g);
            }
        };
        this.j = new TextInputLayout.e() { // from class: com.google.android.material.textfield.a.4
            @Override // com.google.android.material.textfield.TextInputLayout.e
            public void a(@ah TextInputLayout textInputLayout2, int i) {
                EditText editText = textInputLayout2.getEditText();
                if (editText == null || i != 2) {
                    return;
                }
                editText.removeTextChangedListener(a.this.g);
                if (editText.getOnFocusChangeListener() == a.this.h) {
                    editText.setOnFocusChangeListener(null);
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.textfield.e
    public void a() {
        this.f1460a.setEndIconDrawable(androidx.appcompat.a.a.a.b(this.b, a.g.mtrl_ic_cancel));
        this.f1460a.setEndIconContentDescription(this.f1460a.getResources().getText(a.m.clear_text_end_icon_content_description));
        this.f1460a.setEndIconOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.textfield.a.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Editable text = a.this.f1460a.getEditText().getText();
                if (text != null) {
                    text.clear();
                }
            }
        });
        this.f1460a.a(this.i);
        this.f1460a.a(this.j);
        c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.textfield.e
    public void a(boolean z) {
        if (this.f1460a.getSuffixText() == null) {
            return;
        }
        b(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(boolean z) {
        boolean z2 = this.f1460a.j() == z;
        if (z) {
            this.l.cancel();
            this.k.start();
            if (z2) {
                this.k.end();
                return;
            }
            return;
        }
        this.k.cancel();
        this.l.start();
        if (z2) {
            this.l.end();
        }
    }

    private void c() {
        ValueAnimator d2 = d();
        ValueAnimator a2 = a(0.0f, 1.0f);
        this.k = new AnimatorSet();
        this.k.playTogether(d2, a2);
        this.k.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.textfield.a.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                a.this.f1460a.setEndIconVisible(true);
            }
        });
        this.l = a(1.0f, 0.0f);
        this.l.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.textfield.a.7
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                a.this.f1460a.setEndIconVisible(false);
            }
        });
    }

    private ValueAnimator a(float... fArr) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
        ofFloat.setInterpolator(com.google.android.material.a.a.f1146a);
        ofFloat.setDuration(100L);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.textfield.a.8
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(@ah ValueAnimator valueAnimator) {
                a.this.c.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        return ofFloat;
    }

    private ValueAnimator d() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(f, 1.0f);
        ofFloat.setInterpolator(com.google.android.material.a.a.d);
        ofFloat.setDuration(150L);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.textfield.a.9
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(@ah ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                a.this.c.setScaleX(floatValue);
                a.this.c.setScaleY(floatValue);
            }
        });
        return ofFloat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(@ah Editable editable) {
        return editable.length() > 0;
    }
}
